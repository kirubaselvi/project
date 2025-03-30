<script setup lang="ts">
import { Briefcase, Users, Heart, Lightbulb, GraduationCap, Trophy, Coffee } from 'lucide-vue-next'
import { Button } from '@/components/ui/button'
import { Card, CardContent, CardHeader, CardTitle } from '@/components/ui/card'
import { Badge } from '@/components/ui/badge'

const jobOpenings = [
  {
    title: 'Senior Frontend Developer',
    department: 'Engineering',
    location: 'Bangalore',
    type: 'Full-time',
    description: 'We are looking for an experienced Frontend Developer to join our team and help build the next generation of financial technology solutions.'
  },
  {
    title: 'Product Manager',
    department: 'Product',
    location: 'Bangalore',
    type: 'Full-time',
    description: 'Join our product team to help shape the future of personal finance management in India.'
  },
  {
    title: 'UX Designer',
    department: 'Design',
    location: 'Bangalore',
    type: 'Full-time',
    description: 'Help us create beautiful and intuitive user experiences for our financial products.'
  }
]
</script>

<template>
  <div>
    <!-- Hero Section -->
    <section class="relative bg-gradient-to-b from-primary/5 to-background pt-32 pb-20">
      <div class="container mx-auto px-4">
        <h1 class="text-4xl md:text-5xl font-bold text-center mb-6">Join Our Team</h1>
        <p class="text-xl text-gray-600 text-center max-w-3xl mx-auto">
          Be part of a team that's transforming the future of financial technology in India.
        </p>
      </div>
    </section>

    <!-- Culture Section -->
    <section class="py-20">
      <div class="container mx-auto px-4">
        <h2 class="text-3xl font-bold text-center mb-12">Why Work With Us</h2>
        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-8">
          <Card>
            <CardContent class="pt-6">
              <div class="h-12 w-12 bg-primary/10 rounded-lg flex items-center justify-center mx-auto mb-4">
                <GraduationCap class="h-6 w-6 text-primary" />
              </div>
              <h3 class="text-xl font-semibold mb-2 text-center">Learning & Growth</h3>
              <p class="text-gray-600 text-center">
                Continuous learning opportunities and mentorship programs to help you grow.
              </p>
            </CardContent>
          </Card>

          <Card>
            <CardContent class="pt-6">
              <div class="h-12 w-12 bg-primary/10 rounded-lg flex items-center justify-center mx-auto mb-4">
                <Trophy class="h-6 w-6 text-primary" />
              </div>
              <h3 class="text-xl font-semibold mb-2 text-center">Recognition</h3>
              <p class="text-gray-600 text-center">
                Regular recognition and rewards for outstanding performance.
              </p>
            </CardContent>
          </Card>

          <Card>
            <CardContent class="pt-6">
              <div class="h-12 w-12 bg-primary/10 rounded-lg flex items-center justify-center mx-auto mb-4">
                <Coffee class="h-6 w-6 text-primary" />
              </div>
              <h3 class="text-xl font-semibold mb-2 text-center">Work-Life Balance</h3>
              <p class="text-gray-600 text-center">
                Flexible working hours and remote work options.
              </p>
            </CardContent>
          </Card>

          <Card>
            <CardContent class="pt-6">
              <div class="h-12 w-12 bg-primary/10 rounded-lg flex items-center justify-center mx-auto mb-4">
                <Users class="h-6 w-6 text-primary" />
              </div>
              <h3 class="text-xl font-semibold mb-2 text-center">Inclusive Culture</h3>
              <p class="text-gray-600 text-center">
                A diverse and inclusive workplace where everyone's voice matters.
              </p>
            </CardContent>
          </Card>
        </div>
      </div>
    </section>

    <!-- Job Openings -->
    <section class="py-20 bg-gray-50">
      <div class="container mx-auto px-4">
        <h2 class="text-3xl font-bold text-center mb-12">Open Positions</h2>
        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
          <Card v-for="job in jobOpenings" :key="job.title">
            <CardHeader>
              <CardTitle>{{ job.title }}</CardTitle>
              <div class="flex flex-wrap gap-2 mt-4">
                <Badge variant="secondary">{{ job.department }}</Badge>
                <Badge variant="secondary">{{ job.location }}</Badge>
                <Badge variant="secondary">{{ job.type }}</Badge>
              </div>
            </CardHeader>
            <CardContent>
              <p class="text-gray-600 mb-4">{{ job.description }}</p>
              <Button variant="link" as-child class="p-0">
                <NuxtLink :to="'/careers/' + job.title.toLowerCase().replace(/\s+/g, '-')">
                  Learn More
                  <svg class="h-4 w-4 ml-1" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7" />
                  </svg>
                </NuxtLink>
              </Button>
            </CardContent>
          </Card>
        </div>
      </div>
    </section>

    <!-- Benefits Section -->
    <section class="py-20">
      <div class="container mx-auto px-4">
        <h2 class="text-3xl font-bold text-center mb-12">Employee Benefits</h2>
        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
          <Card>
            <CardHeader>
              <CardTitle>Health & Wellness</CardTitle>
            </CardHeader>
            <CardContent>
              <ul class="space-y-2 text-gray-600">
                <li class="flex items-center">
                  <svg class="h-4 w-4 mr-2 text-primary" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7" />
                  </svg>
                  Comprehensive Health Insurance
                </li>
                <li class="flex items-center">
                  <svg class="h-4 w-4 mr-2 text-primary" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7" />
                  </svg>
                  Mental Health Support
                </li>
                <li class="flex items-center">
                  <svg class="h-4 w-4 mr-2 text-primary" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7" />
                  </svg>
                  Gym Membership
                </li>
              </ul>
            </CardContent>
          </Card>

          <Card>
            <CardHeader>
              <CardTitle>Learning & Development</CardTitle>
            </CardHeader>
            <CardContent>
              <ul class="space-y-2 text-gray-600">
                <li class="flex items-center">
                  <svg class="h-4 w-4 mr-2 text-primary" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7" />
                  </svg>
                  Training Budget
                </li>
                <li class="flex items-center">
                  <svg class="h-4 w-4 mr-2 text-primary" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7" />
                  </svg>
                  Conference Attendance
                </li>
                <li class="flex items-center">
                  <svg class="h-4 w-4 mr-2 text-primary" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7" />
                  </svg>
                  Mentorship Program
                </li>
              </ul>
            </CardContent>
          </Card>

          <Card>
            <CardHeader>
              <CardTitle>Work Environment</CardTitle>
            </CardHeader>
            <CardContent>
              <ul class="space-y-2 text-gray-600">
                <li class="flex items-center">
                  <svg class="h-4 w-4 mr-2 text-primary" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7" />
                  </svg>
                  Flexible Working Hours
                </li>
                <li class="flex items-center">
                  <svg class="h-4 w-4 mr-2 text-primary" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7" />
                  </svg>
                  Remote Work Options
                </li>
                <li class="flex items-center">
                  <svg class="h-4 w-4 mr-2 text-primary" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7" />
                  </svg>
                  Modern Office Space
                </li>
              </ul>
            </CardContent>
          </Card>
        </div>
      </div>
    </section>

    <!-- CTA Section -->
    <section class="py-20 bg-primary text-white">
      <div class="container mx-auto px-4 text-center">
        <h2 class="text-3xl font-bold mb-6">Ready to Join Our Team?</h2>
        <p class="text-xl mb-8 max-w-2xl mx-auto">
          Take the first step towards an exciting career in financial technology.
        </p>
        <Button variant="secondary" as-child>
          <NuxtLink to="/contact">
            Apply Now
          </NuxtLink>
        </Button>
      </div>
    </section>
  </div>
</template> 