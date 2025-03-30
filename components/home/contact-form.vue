<template>
  <form @submit.prevent="handleSubmit" class="space-y-6">
    <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
      <div class="space-y-2">
        <Label for="name">Name</Label>
        <Input id="name" v-model="form.name" placeholder="John Doe" required />
      </div>
      <div class="space-y-2">
        <Label for="email">Email</Label>
        <Input id="email" v-model="form.email" type="email" placeholder="john@example.com" required />
      </div>
    </div>

    <div class="space-y-2">
      <Label for="subject">Subject</Label>
      <Input id="subject" v-model="form.subject" placeholder="How can we help?" required />
    </div>

    <div class="space-y-2">
      <Label for="message">Message</Label>
      <Textarea id="message" v-model="form.message" placeholder="Your message..." required />
    </div>

    <div class="flex items-center space-x-2">
      <Checkbox id="terms" v-model="form.terms" required />
      <Label for="terms" class="text-sm">
        I agree to the <NuxtLink to="/privacy" class="text-primary hover:underline">Privacy Policy</NuxtLink> and 
        <NuxtLink to="/terms" class="text-primary hover:underline">Terms of Service</NuxtLink>
      </Label>
    </div>

    <Button type="submit" class="w-full" :disabled="isSubmitting">
      <Loader2 v-if="isSubmitting" class="mr-2 h-4 w-4 animate-spin" />
      {{ isSubmitting ? 'Sending...' : 'Send Message' }}
    </Button>

    <Alert v-if="error" variant="destructive">
      {{ error }}
    </Alert>

    <Alert v-if="success" variant="success">
      Thank you for your message! We'll get back to you soon.
    </Alert>
  </form>
</template>

<script setup lang="ts">
import { ref } from 'vue'
import { Loader2 } from 'lucide-vue-next'

const form = ref({
  name: '',
  email: '',
  subject: '',
  message: '',
  terms: false,
})

const isSubmitting = ref(false)
const error = ref('')
const success = ref(false)

async function handleSubmit() {
  isSubmitting.value = true
  error.value = ''
  success.value = false

  try {
    // Here you would typically send the form data to your backend
    // For now, we'll simulate an API call
    await new Promise(resolve => setTimeout(resolve, 1000))
    success.value = true
    form.value = {
      name: '',
      email: '',
      subject: '',
      message: '',
      terms: false,
    }
  } catch (e) {
    error.value = 'Failed to send message. Please try again.'
  } finally {
    isSubmitting.value = false
  }
}
</script> 