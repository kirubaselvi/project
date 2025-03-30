<template>
  <nav class="border-b">
    <div class="container mx-auto px-4">
      <div class="flex h-16 items-center justify-between">
        <!-- Logo -->
        <NuxtLink to="/" class="flex items-center space-x-2">
          <span class="text-2xl font-bold text-primary">Money Forward India</span>
        </NuxtLink>

        <!-- Desktop Navigation -->
        <div class="hidden md:flex items-center space-x-6">
          <NuxtLink 
            v-for="item in navigationItems" 
            :key="item.href"
            :to="item.href"
            class="text-sm font-medium transition-colors hover:text-primary"
          >
            {{ item.label }}
          </NuxtLink>
          <Button variant="default" class="ml-4">Get Started</Button>
        </div>

        <!-- Mobile Menu Button -->
        <Button 
          variant="ghost" 
          class="md:hidden"
          @click="isOpen = !isOpen"
        >
          <Menu class="h-6 w-6" />
        </Button>
      </div>
    </div>

    <!-- Mobile Navigation -->
    <Sheet v-model:open="isOpen" side="right" class="md:hidden">
      <SheetContent>
        <SheetHeader>
          <SheetTitle>Menu</SheetTitle>
        </SheetHeader>
        <div class="flex flex-col space-y-4 mt-4">
          <NuxtLink 
            v-for="item in navigationItems" 
            :key="item.href"
            :to="item.href"
            class="text-sm font-medium transition-colors hover:text-primary"
            @click="isOpen = false"
          >
            {{ item.label }}
          </NuxtLink>
          <Button variant="default" class="w-full">Get Started</Button>
        </div>
      </SheetContent>
    </Sheet>
  </nav>
</template>

<script setup lang="ts">
import { ref } from 'vue'
import { Menu } from 'lucide-vue-next'

const isOpen = ref(false)

const navigationItems = [
  { label: 'Home', href: '/' },
  { label: 'About', href: '/about' },
  { label: 'Services', href: '/services' },
  { label: 'Blog', href: '/blog' },
  { label: 'Careers', href: '/careers' },
  { label: 'Contact', href: '/contact' },
]
</script> 