<template>
  <section class="relative min-h-[90vh] bg-gradient-to-b from-primary/5 to-background pt-32 pb-20">
    <div class="container mx-auto px-4">
      <div class="max-w-4xl mx-auto">
        <div class="text-center mb-12">
          <Badge variant="outline" class="bg-primary/10 text-primary border-primary/20">
            マネーフォワード
          </Badge>
          
          <h1 class="text-5xl md:text-7xl font-bold mt-8 mb-6 leading-tight">
            Money Forward
            <span class="text-primary block mt-2">Move your life forward.</span>
          </h1>
          
          <p class="text-xl text-gray-600 max-w-2xl mx-auto mb-8">
            Leading Fintech Company from Japan
          </p>

          <div class="flex flex-col sm:flex-row gap-4 justify-center">
            <Button size="lg" class="bg-primary hover:bg-primary/90">
              Get Started
              <ArrowRight class="w-4 h-4 ml-2" />
            </Button>
            <Button size="lg" variant="outline">
              Learn More
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
</script> 