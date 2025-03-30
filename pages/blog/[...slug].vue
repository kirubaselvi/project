<template>
  <article class="container mx-auto px-4 py-12">
    <div class="max-w-3xl mx-auto">
      <div class="mb-8">
        <h1 class="text-4xl font-bold mb-4">{{ page.title }}</h1>
        <div class="text-muted-foreground">
          {{ formatDate(page.date) }} • {{ page.author }}
        </div>
      </div>
      <ContentDoc />
    </div>
  </article>
</template>

<script setup>
const { page } = useContent()

const formatDate = (date) => {
  return new Date(date).toLocaleDateString('en-US', {
    year: 'numeric',
    month: 'long',
    day: 'numeric'
  })
}
</script>