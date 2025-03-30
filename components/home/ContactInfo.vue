<template>
  <div class="space-y-8">
    <div class="space-y-6">
      <Badge variant="secondary">Contact Us</Badge>
      <h2 class="text-4xl font-bold">Get in Touch</h2>
      <p class="text-xl text-gray-600">
        Ready to learn more about Money Forward? We're here to help.
      </p>
    </div>

    <div class="grid gap-8">
      <div class="space-y-4">
        <h3 class="text-2xl font-semibold">Office Location</h3>
        <p class="text-gray-600 leading-relaxed">
          No. 1001 & 1004, Tower B, 10th Floor,<br>
          World Trade Center, 5/142, Rajiv Gandhi Salai,<br>
          Perungudi, Chennai - 600096
        </p>
      </div>

      <div class="space-y-4">
        <h3 class="text-2xl font-semibold">Contact Information</h3>
        <div class="space-y-2">
          <p class="text-gray-600">
            General: <a href="mailto:info.india@moneyforward.com" class="text-primary hover:underline">info.india@moneyforward.com</a>
          </p>
          <p class="text-gray-600">
            Recruitment: <a href="mailto:recruit.india@moneyforward.com" class="text-primary hover:underline">recruit.india@moneyforward.com</a>
          </p>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup lang="ts">
import { Badge } from '@/components/ui/badge'
</script> 