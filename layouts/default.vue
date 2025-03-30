<template>
  <div class="min-h-screen bg-background">
    <header class="border-b">
      <nav class="container mx-auto px-4 py-4 flex items-center justify-between">
        <NuxtLink to="/" class="text-2xl font-bold text-primary">
          Money Forward India
        </NuxtLink>
        <div class="flex gap-6">
          <NuxtLink to="/" class="hover:text-primary">Home</NuxtLink>
          <NuxtLink to="/blog" class="hover:text-primary">Blog</NuxtLink>
          <NuxtLink to="/careers" class="hover:text-primary">Careers</NuxtLink>
        </div>
      </nav>
    </header>

    <main>
      <slot />
    </main>

    <footer class="bg-muted mt-20 py-12">
      <div class="container mx-auto px-4">
        <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
          <div>
            <h3 class="text-lg font-semibold mb-4">Money Forward India</h3>
            <p class="text-muted-foreground">
              Transforming financial technology in India
            </p>
          </div>
          <div>
            <h3 class="text-lg font-semibold mb-4">Quick Links</h3>
            <ul class="space-y-2">
              <li><NuxtLink to="/about" class="hover:text-primary">About Us</NuxtLink></li>
              <li><NuxtLink to="/blog" class="hover:text-primary">Blog</NuxtLink></li>
              <li><NuxtLink to="/careers" class="hover:text-primary">Careers</NuxtLink></li>
            </ul>
          </div>
          <div>
            <h3 class="text-lg font-semibold mb-4">Contact</h3>
            <p class="text-muted-foreground">
              Email: contact@moneyforward.in<br>
              Phone: +91 XXX XXX XXXX
            </p>
          </div>
        </div>
        <div class="mt-8 pt-8 border-t text-center text-muted-foreground">
          <p>&copy; {{ new Date().getFullYear() }} Money Forward India. All rights reserved.</p>
        </div>
      </div>
    </footer>
  </div>
</template>