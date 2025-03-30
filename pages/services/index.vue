<template>
  <div class="py-20">
    <!-- Hero Section -->
    <section class="mb-20">
      <div class="container mx-auto px-4">
        <div class="max-w-3xl mx-auto text-center">
          <h1 class="text-4xl md:text-6xl font-bold mb-6">Our Financial Solutions</h1>
          <p class="text-xl text-muted-foreground">
            Comprehensive financial technology solutions designed to meet the needs of modern businesses and individuals.
          </p>
        </div>
      </div>
    </section>

    <!-- Services Grid -->
    <section class="container mx-auto px-4">
      <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
        <Card v-for="service in services" :key="service.title" class="group hover:shadow-lg transition-shadow">
          <CardHeader>
            <CardTitle class="flex items-center gap-2">
              <component :is="service.icon" class="h-6 w-6 text-primary" />
              {{ service.title }}
            </CardTitle>
          </CardHeader>
          <CardContent>
            <p class="text-muted-foreground mb-4">{{ service.description }}</p>
            <ul class="space-y-2 mb-4">
              <li v-for="feature in service.features" :key="feature" class="flex items-center gap-2">
                <Check class="h-4 w-4 text-primary" />
                <span>{{ feature }}</span>
              </li>
            </ul>
            <Button variant="outline" class="w-full">
              Learn More
              <ArrowRight class="ml-2 h-4 w-4" />
            </Button>
          </CardContent>
        </Card>
      </div>
    </section>

    <!-- Features Section -->
    <section class="py-20 bg-muted mt-20">
      <div class="container mx-auto px-4">
        <div class="text-center mb-16">
          <h2 class="text-3xl font-bold mb-4">Why Choose Us?</h2>
          <p class="text-muted-foreground max-w-2xl mx-auto">
            We provide cutting-edge financial solutions backed by industry expertise and innovative technology.
          </p>
        </div>
        <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
          <div v-for="feature in features" :key="feature.title" class="text-center">
            <div class="bg-primary/10 w-16 h-16 rounded-full flex items-center justify-center mx-auto mb-4">
              <component :is="feature.icon" class="h-8 w-8 text-primary" />
            </div>
            <h3 class="text-xl font-semibold mb-2">{{ feature.title }}</h3>
            <p class="text-muted-foreground">{{ feature.description }}</p>
          </div>
        </div>
      </div>
    </section>

    <!-- CTA Section -->
    <section class="py-20">
      <div class="container mx-auto px-4">
        <Card class="bg-primary text-primary-foreground">
          <CardContent class="py-16 text-center">
            <h2 class="text-3xl font-bold mb-4">Ready to Get Started?</h2>
            <p class="text-lg mb-8 max-w-2xl mx-auto">
              Transform your financial journey with our innovative solutions. Contact us today to learn more.
            </p>
            <div class="flex flex-col sm:flex-row gap-4 justify-center">
              <Button size="lg" variant="secondary">
                Contact Sales
              </Button>
              <Button size="lg" variant="outline" class="bg-transparent text-primary-foreground border-primary-foreground hover:bg-primary-foreground/10">
                Schedule Demo
              </Button>
            </div>
          </CardContent>
        </Card>
      </div>
    </section>
  </div>
</template>

<script setup lang="ts">
import { 
  Wallet, 
  LineChart, 
  Building2, 
  Shield, 
  Clock, 
  Users, 
  Check, 
  ArrowRight 
} from 'lucide-vue-next'

const services = [
  {
    title: 'Digital Banking',
    description: 'Next-generation banking solutions for the modern age with seamless integration and enhanced security.',
    icon: Wallet,
    features: [
      '24/7 Account Access',
      'Secure Transactions',
      'Real-time Notifications',
      'Multi-currency Support'
    ]
  },
  {
    title: 'Investment Platform',
    description: 'Smart investment tools and analytics to help you make informed financial decisions.',
    icon: LineChart,
    features: [
      'Portfolio Management',
      'Market Analysis',
      'Automated Trading',
      'Risk Assessment'
    ]
  },
  {
    title: 'Business Solutions',
    description: 'Enterprise-grade financial management tools designed for modern businesses.',
    icon: Building2,
    features: [
      'Expense Tracking',
      'Invoice Management',
      'Payroll Integration',
      'Financial Reporting'
    ]
  }
]

const features = [
  {
    title: 'Secure & Reliable',
    description: 'Bank-grade security with 99.9% uptime guarantee.',
    icon: Shield
  },
  {
    title: '24/7 Support',
    description: 'Round-the-clock customer support for all your needs.',
    icon: Clock
  },
  {
    title: 'Expert Team',
    description: 'Dedicated team of financial experts at your service.',
    icon: Users
  }
]
</script> 