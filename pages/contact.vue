<template>
  <div>
    <!-- Hero Section -->
    <section class="relative bg-gradient-to-b from-primary/5 to-background pt-32 pb-20">
      <div class="container mx-auto px-4">
        <h1 class="text-4xl md:text-5xl font-bold text-center mb-6">Contact Us</h1>
        <p class="text-xl text-gray-600 text-center max-w-3xl mx-auto">
          Get in touch with us to learn more about our services or discuss your specific needs.
        </p>
      </div>
    </section>

    <!-- Contact Section -->
    <section class="py-20">
      <div class="container mx-auto px-4">
        <div class="grid grid-cols-1 md:grid-cols-2 gap-12">
          <!-- Contact Form -->
          <div>
            <h2 class="text-3xl font-bold mb-8">Send us a Message</h2>
            <form @submit.prevent="handleSubmit" class="space-y-6">
              <div class="space-y-2">
                <Label for="name">Name</Label>
                <Input id="name" v-model="form.name" required />
              </div>
              <div class="space-y-2">
                <Label for="email">Email</Label>
                <Input id="email" v-model="form.email" type="email" required />
              </div>
              <div class="space-y-2">
                <Label for="subject">Subject</Label>
                <Input id="subject" v-model="form.subject" required />
              </div>
              <div class="space-y-2">
                <Label for="message">Message</Label>
                <Textarea id="message" v-model="form.message" required />
              </div>
              <Button type="submit" class="w-full">Send Message</Button>
            </form>
          </div>

          <!-- Contact Information -->
          <div>
            <h2 class="text-3xl font-bold mb-8">Get in Touch</h2>
            <div class="space-y-6">
              <Card>
                <CardContent class="flex items-start pt-6">
                  <div class="h-12 w-12 bg-primary/10 rounded-lg flex items-center justify-center mr-4">
                    <Mail class="h-6 w-6 text-primary" />
                  </div>
                  <div>
                    <h3 class="text-lg font-semibold mb-1">Email</h3>
                    <p class="text-gray-600">contact@moneyforward.in</p>
                  </div>
                </CardContent>
              </Card>

              <Card>
                <CardContent class="flex items-start pt-6">
                  <div class="h-12 w-12 bg-primary/10 rounded-lg flex items-center justify-center mr-4">
                    <Phone class="h-6 w-6 text-primary" />
                  </div>
                  <div>
                    <h3 class="text-lg font-semibold mb-1">Phone</h3>
                    <p class="text-gray-600">+91 (123) 456-7890</p>
                  </div>
                </CardContent>
              </Card>

              <Card>
                <CardContent class="flex items-start pt-6">
                  <div class="h-12 w-12 bg-primary/10 rounded-lg flex items-center justify-center mr-4">
                    <MapPin class="h-6 w-6 text-primary" />
                  </div>
                  <div>
                    <h3 class="text-lg font-semibold mb-1">Address</h3>
                    <p class="text-gray-600">
                      123 Business Street<br />
                      Bangalore, Karnataka 560001<br />
                      India
                    </p>
                  </div>
                </CardContent>
              </Card>

              <Card>
                <CardContent class="flex items-start pt-6">
                  <div class="h-12 w-12 bg-primary/10 rounded-lg flex items-center justify-center mr-4">
                    <Clock class="h-6 w-6 text-primary" />
                  </div>
                  <div>
                    <h3 class="text-lg font-semibold mb-1">Business Hours</h3>
                    <p class="text-gray-600">
                      Monday - Friday: 9:00 AM - 6:00 PM<br />
                      Saturday: 10:00 AM - 2:00 PM<br />
                      Sunday: Closed
                    </p>
                  </div>
                </CardContent>
              </Card>
            </div>

            <!-- Map -->
            <div class="mt-8">
              <Card>
                <CardContent class="p-0">
                  <div class="aspect-video bg-gray-100 rounded-lg">
                    <!-- Add your map embed code here -->
                    <div class="w-full h-full flex items-center justify-center text-gray-400">
                      Map will be embedded here
                    </div>
                  </div>
                </CardContent>
              </Card>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
</template>

<script setup lang="ts">
import { Mail, Phone, MapPin, Clock } from 'lucide-vue-next'
import { ref } from 'vue'
import { Button } from '@/components/ui/button'
import { Input } from '@/components/ui/input'
import { Textarea } from '@/components/ui/textarea'
import { Card, CardContent } from '@/components/ui/card'
import { Label } from '@/components/ui/label'

const form = ref({
  name: '',
  email: '',
  subject: '',
  message: ''
})

const handleSubmit = () => {
  // Handle form submission
  console.log('Form submitted:', form.value)
}
</script> 