<template>
  <div class="container mx-auto px-4 py-12">
    <h1 class="text-4xl font-bold mb-8">Blog</h1>
    <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
      <article v-for="post in posts" :key="post._path" class="bg-card rounded-lg overflow-hidden shadow-sm">
        <div class="aspect-video bg-muted"></div>
        <div class="p-6">
          <div class="text-sm text-muted-foreground mb-2">{{ formatDate(post.date) }}</div>
          <h2 class="text-xl font-semibold mb-2">{{ post.title }}</h2>
          <p class="text-muted-foreground mb-4">
            {{ post.description }}
          </p>
          <NuxtLink :to="post._path" class="text-primary hover:underline">Read More →</NuxtLink>
        </div>
      </article>
    </div>
  </div>
</template>

<script setup>
const { data: posts } = await useAsyncData('posts', () => queryContent('/blog').find())

const formatDate = (date) => {
  return new Date(date).toLocaleDateString('en-US', {
    year: 'numeric',
    month: 'long',
    day: 'numeric'
  })
}
</script>