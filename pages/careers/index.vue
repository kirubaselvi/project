<template>
  <div class="container mx-auto px-4 py-12">
    <div class="max-w-3xl mx-auto">
      <h1 class="text-4xl font-bold mb-8">Join Our Team</h1>
      <p class="text-xl text-muted-foreground mb-12">
        We're looking for talented individuals to help us transform the future of finance in India.
      </p>

      <div class="space-y-6">
        <div v-for="position in positions" :key="position.id" class="bg-card rounded-lg p-6 shadow-sm">
          <h2 class="text-xl font-semibold mb-2">{{ position.title }}</h2>
          <div class="flex gap-4 text-sm text-muted-foreground mb-4">
            <span>{{ position.type }}</span>
            <span>•</span>
            <span>{{ position.location }}</span>
          </div>
          <p class="text-muted-foreground mb-4">
            {{ position.description }}
          </p>
          <div class="flex items-center gap-4">
            <NuxtLink
              :to="`/careers/apply?position=${position.id}`"
              class="inline-flex items-center justify-center rounded-md text-sm font-medium transition-colors focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:opacity-50 disabled:pointer-events-none ring-offset-background bg-primary text-primary-foreground hover:bg-primary/90 h-10 py-2 px-4"
            >
              Apply Now
            </NuxtLink>
            <NuxtLink
              :to="`/careers/${position.id}`"
              class="text-primary hover:underline"
            >
              Learn More →
            </NuxtLink>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
const positions = ref([])

const fetchPositions = async () => {
  const { data, error } = await supabase
    .from('job_positions')
    .select('*')
    .order('created_at', { ascending: false })

  if (error) {
    console.error('Error fetching positions:', error)
    return
  }

  positions.value = data
}

onMounted(() => {
  fetchPositions()
})
</script>