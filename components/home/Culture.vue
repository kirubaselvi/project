<template>
  <section class="py-24 bg-gradient-to-br from-primary/5 via-orange-50 to-white">
    <div class="container mx-auto px-4">
      <div class="max-w-7xl mx-auto">
        <div class="grid lg:grid-cols-2 gap-16 items-center">
          <div class="relative aspect-[4/3] rounded-xl overflow-hidden shadow-2xl">
            <img src="/office.JPG" alt="Our Team" class="w-full h-full object-cover" />
          </div>
          <div class="space-y-6">
            <Badge variant="secondary">Our Culture</Badge>
            <h2 class="text-4xl font-bold text-gray-900">Where Innovation Meets Tradition</h2>
            <p class="text-xl text-gray-600 leading-relaxed">
              Join us at Money Forward India, where we blend Japanese precision with Indian vibrancy. Our culture celebrates diversity, innovation, and continuous growth.
            </p>
            <CultureGrid />
            <Button variant="outline" class="border-primary text-primary hover:bg-primary hover:text-white">
              Join Our Team
              <ArrowRight class="w-4 h-4 ml-2" />
            </Button>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

<script setup lang="ts">
import { ArrowRight } from 'lucide-vue-next'
import { Button } from '@/components/ui/button'
import { Badge } from '@/components/ui/badge'
import CultureGrid from './CultureGrid.vue'
</script> 