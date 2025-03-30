<template>
  <div class="min-h-screen flex flex-col">
    <!-- Header -->
    <header class="fixed top-0 left-0 right-0 z-50 bg-white/80 backdrop-blur-sm border-b">
      <nav class="container mx-auto px-4 h-16 flex items-center justify-between">
        <NuxtLink to="/" class="flex items-center">
          <img src="/logo.svg" alt="Money Forward India" class="h-8" />
        </NuxtLink>

        <!-- Desktop Navigation -->
        <div class="hidden md:flex items-center space-x-8">
          <NuxtLink to="/about" class="text-gray-600 hover:text-primary">About</NuxtLink>
          <NuxtLink to="/careers" class="text-gray-600 hover:text-primary">Careers</NuxtLink>
          <NuxtLink to="/contact" class="text-gray-600 hover:text-primary">Contact</NuxtLink>
        </div>

        <!-- Mobile Menu -->
        <Sheet>
          <SheetTrigger as-child>
            <Button variant="ghost" size="icon" class="md:hidden">
              <Menu v-if="!isMenuOpen" class="h-6 w-6" />
              <X v-else class="h-6 w-6" />
            </Button>
          </SheetTrigger>
          <SheetContent side="right" class="w-[300px] sm:w-[400px]">
            <nav class="flex flex-col space-y-4">
              <NuxtLink to="/about" class="text-gray-600 hover:text-primary">About</NuxtLink>
              <NuxtLink to="/careers" class="text-gray-600 hover:text-primary">Careers</NuxtLink>
              <NuxtLink to="/contact" class="text-gray-600 hover:text-primary">Contact</NuxtLink>
            </nav>
          </SheetContent>
        </Sheet>
      </nav>
    </header>

    <!-- Main Content -->
    <main class="flex-grow pt-16">
      <slot />
    </main>

    <!-- Footer -->
    <footer class="bg-gray-50 border-t">
      <div class="container mx-auto px-4 py-12">
        <div class="grid grid-cols-1 md:grid-cols-4 gap-8">
          <div>
            <img src="/logo.svg" alt="Money Forward India" class="h-8 mb-4" />
            <p class="text-gray-600 text-sm">
              Empowering financial wellness through innovative technology solutions.
            </p>
          </div>
          <div>
            <h3 class="font-semibold mb-4">Company</h3>
            <ul class="space-y-2">
              <li><NuxtLink to="/about" class="text-gray-600 hover:text-primary text-sm">About Us</NuxtLink></li>
              <li><NuxtLink to="/careers" class="text-gray-600 hover:text-primary text-sm">Careers</NuxtLink></li>
              <li><NuxtLink to="/contact" class="text-gray-600 hover:text-primary text-sm">Contact</NuxtLink></li>
            </ul>
          </div>
          <div>
            <h3 class="font-semibold mb-4">Connect</h3>
            <ul class="space-y-2">
              <li><a href="#" class="text-gray-600 hover:text-primary text-sm">LinkedIn</a></li>
              <li><a href="#" class="text-gray-600 hover:text-primary text-sm">Twitter</a></li>
            </ul>
          </div>
          <div>
            <h3 class="font-semibold mb-4">Legal</h3>
            <ul class="space-y-2">
              <li><NuxtLink to="/privacy" class="text-gray-600 hover:text-primary text-sm">Privacy Policy</NuxtLink></li>
              <li><NuxtLink to="/security" class="text-gray-600 hover:text-primary text-sm">Security Policy</NuxtLink></li>
            </ul>
          </div>
        </div>
        <div class="mt-8 pt-8 border-t text-center text-gray-600 text-sm">
          <p>&copy; {{ new Date().getFullYear() }} Money Forward India. All rights reserved.</p>
        </div>
      </div>
    </footer>
  </div>
</template>

<script setup lang="ts">
import { ref } from 'vue'
import { Menu, X } from 'lucide-vue-next'
import { Button } from '@/components/ui/button'
import { Sheet, SheetContent, SheetTrigger } from '@/components/ui/sheet'
</script>