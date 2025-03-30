<template>
  <div class="grid md:grid-cols-3 gap-8">
    <div v-for="(value, index) in values" :key="index" class="bg-gray-50 rounded-xl p-8 space-y-4">
      <div class="w-16 h-16 bg-primary/10 rounded-lg flex items-center justify-center mb-6">
        <component :is="value.icon" class="w-8 h-8 text-primary" />
      </div>
      <h3 class="text-2xl font-semibold">{{ value.title }}</h3>
      <p class="text-gray-600 leading-relaxed">{{ value.description }}</p>
    </div>
  </div>
</template>

<script setup lang="ts">
import { Users, Lightbulb, Scale } from 'lucide-vue-next'

const values = [
  {
    icon: Users,
    title: 'User Focus',
    description: 'We always keep our users foremost in our minds, no matter the constraints. We seek to understand their core challenges and deliver value that exceeds both user expectations and imagination.'
  },
  {
    icon: Lightbulb,
    title: 'Tech & Design',
    description: 'We believe that technology and design can truly make a difference in the world. By leveraging the best of both, we can bring new value to our users and move society forward.'
  },
  {
    icon: Scale,
    title: 'Fairness',
    description: 'We vow to be fair, honest, and open-minded in every interaction with our stakeholders. This includes our users, employees, shareholders, and society as a whole.'
  }
]
</script> 