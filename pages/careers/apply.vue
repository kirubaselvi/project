<template>
  <div class="container mx-auto px-4 py-12">
    <div class="max-w-2xl mx-auto">
      <h1 class="text-4xl font-bold mb-8">Apply for a Position</h1>
      
      <form @submit.prevent="handleSubmit" class="space-y-6">
        <div>
          <label class="block text-sm font-medium mb-2" for="position">
            Position
          </label>
          <select
            id="position"
            v-model="form.position_id"
            class="w-full rounded-md border border-input bg-background px-3 py-2"
            required
          >
            <option value="">Select a position</option>
            <option v-for="position in positions" :key="position.id" :value="position.id">
              {{ position.title }}
            </option>
          </select>
        </div>

        <div>
          <label class="block text-sm font-medium mb-2" for="name">
            Full Name
          </label>
          <input
            id="name"
            v-model="form.name"
            type="text"
            class="w-full rounded-md border border-input bg-background px-3 py-2"
            required
          />
        </div>

        <div>
          <label class="block text-sm font-medium mb-2" for="email">
            Email
          </label>
          <input
            id="email"
            v-model="form.email"
            type="email"
            class="w-full rounded-md border border-input bg-background px-3 py-2"
            required
          />
        </div>

        <div>
          <label class="block text-sm font-medium mb-2" for="phone">
            Phone
          </label>
          <input
            id="phone"
            v-model="form.phone"
            type="tel"
            class="w-full rounded-md border border-input bg-background px-3 py-2"
            required
          />
        </div>

        <div>
          <label class="block text-sm font-medium mb-2" for="experience">
            Years of Experience
          </label>
          <input
            id="experience"
            v-model="form.experience"
            type="number"
            min="0"
            class="w-full rounded-md border border-input bg-background px-3 py-2"
            required
          />
        </div>

        <div>
          <label class="block text-sm font-medium mb-2" for="resume">
            Resume/CV
          </label>
          <input
            id="resume"
            type="file"
            accept=".pdf,.doc,.docx"
            @change="handleFileUpload"
            class="w-full rounded-md border border-input bg-background px-3 py-2"
            required
          />
        </div>

        <div>
          <label class="block text-sm font-medium mb-2" for="cover-letter">
            Cover Letter
          </label>
          <textarea
            id="cover-letter"
            v-model="form.cover_letter"
            rows="4"
            class="w-full rounded-md border border-input bg-background px-3 py-2"
            required
          ></textarea>
        </div>

        <button
          type="submit"
          :disabled="isSubmitting"
          class="inline-flex items-center justify-center rounded-md text-sm font-medium transition-colors focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:opacity-50 disabled:pointer-events-none ring-offset-background bg-primary text-primary-foreground hover:bg-primary/90 h-10 py-2 px-4 w-full"
        >
          {{ isSubmitting ? 'Submitting...' : 'Submit Application' }}
        </button>

        <div v-if="error" class="text-destructive text-sm mt-2">
          {{ error }}
        </div>
        <div v-if="success" class="text-green-600 text-sm mt-2">
          {{ success }}
        </div>
      </form>
    </div>
  </div>
</template>

<script setup>
import { supabase } from '~/utils/supabase'

const route = useRoute()
const client = useSupabaseClient()
const isSubmitting = ref(false)
const error = ref('')
const success = ref('')

const form = ref({
  position_id: route.query.position || '',
  name: '',
  email: '',
  phone: '',
  experience: '',
  cover_letter: '',
  resume_url: ''
})

// Fetch available positions
const fetchPositions = async () => {
  const { data, error } = await supabase
    .from('job_positions')
    .select('id, title')
    .order('created_at', { ascending: false })

  if (error) {
    console.error('Error fetching positions:', error)
    return
  }

  positions.value = data
}

// Handle file upload
const handleFileUpload = async (event) => {
  const file = event.target.files[0]
  if (!file) return

  const fileExt = file.name.split('.').pop()
  const fileName = `${Math.random().toString(36).substring(2)}.${fileExt}`
  const filePath = `resumes/${fileName}`

  const { error: uploadError } = await supabase.storage
    .from('applications')
    .upload(filePath, file)

  if (uploadError) {
    error.value = 'Error uploading resume. Please try again.'
    return
  }

  const { data } = supabase.storage
    .from('applications')
    .getPublicUrl(filePath)

  form.value.resume_url = data.publicUrl
}

// Handle form submission
const handleSubmit = async () => {
  isSubmitting.value = true
  error.value = ''
  success.value = ''

  try {
    const { error: submitError } = await supabase
      .from('job_applications')
      .insert([
        {
          position_id: form.value.position_id,
          name: form.value.name,
          email: form.value.email,
          phone: form.value.phone,
          experience: parseInt(form.value.experience),
          cover_letter: form.value.cover_letter,
          resume_url: form.value.resume_url
        }
      ])

    if (submitError) throw submitError

    success.value = 'Application submitted successfully!'
    form.value = {
      position_id: '',
      name: '',
      email: '',
      phone: '',
      experience: '',
      cover_letter: '',
      resume_url: ''
    }
  } catch (err) {
    error.value = 'Error submitting application. Please try again.'
    console.error('Error:', err)
  } finally {
    isSubmitting.value = false
  }
}

// Fetch positions on component mount
onMounted(() => {
  fetchPositions()
})
</script>