<template>
  <div>
    <!-- Hero Section -->
    <section class="py-20 bg-gradient-to-b from-primary/10 to-transparent">
      <div class="container mx-auto px-4">
        <div class="max-w-3xl mx-auto text-center">
          <h1 class="text-4xl md:text-6xl font-bold mb-6">
            Transforming Finance Through Technology
          </h1>
          <p class="text-xl text-muted-foreground mb-8">
            Money Forward India is revolutionizing financial technology with innovative solutions for businesses and individuals.
          </p>
          <NuxtLink to="/contact" class="inline-flex items-center justify-center rounded-md text-sm font-medium transition-colors focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:opacity-50 disabled:pointer-events-none ring-offset-background bg-primary text-primary-foreground hover:bg-primary/90 h-10 py-2 px-4">
            Get Started
          </NuxtLink>
        </div>
      </div>
    </section>

    <!-- Features Section -->
    <section class="py-20">
      <div class="container mx-auto px-4">
        <h2 class="text-3xl font-bold text-center mb-12">Our Solutions</h2>
        <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
          <div class="p-6 bg-card rounded-lg shadow-sm">
            <h3 class="text-xl font-semibold mb-4">Digital Banking</h3>
            <p class="text-muted-foreground">Next-generation banking solutions for the modern age.</p>
          </div>
          <div class="p-6 bg-card rounded-lg shadow-sm">
            <h3 class="text-xl font-semibold mb-4">Investment Platform</h3>
            <p class="text-muted-foreground">Smart investment tools for better financial decisions.</p>
          </div>
          <div class="p-6 bg-card rounded-lg shadow-sm">
            <h3 class="text-xl font-semibold mb-4">Business Solutions</h3>
            <p class="text-muted-foreground">Enterprise-grade financial management tools.</p>
          </div>
        </div>
      </div>
    </section>

    <!-- Latest Blog Posts -->
    <section class="py-20 bg-muted">
      <div class="container mx-auto px-4">
        <h2 class="text-3xl font-bold text-center mb-12">Latest from Our Blog</h2>
        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
          <div v-for="i in 3" :key="i" class="bg-card rounded-lg overflow-hidden">
            <div class="aspect-video bg-muted"></div>
            <div class="p-6">
              <h3 class="text-xl font-semibold mb-2">Blog Post Title</h3>
              <p class="text-muted-foreground mb-4">
                A brief description of the blog post content goes here...
              </p>
              <NuxtLink to="/blog" class="text-primary hover:underline">Read More →</NuxtLink>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
</template>