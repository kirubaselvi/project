<template>
  <div class="py-20">
    <!-- Hero Section -->
    <section class="mb-20">
      <div class="container mx-auto px-4">
        <div class="max-w-3xl mx-auto text-center">
          <h1 class="text-4xl md:text-6xl font-bold mb-6">Digital Banking Solutions</h1>
          <p class="text-xl text-muted-foreground">
            Experience the future of banking with our cutting-edge digital solutions designed for the modern age.
          </p>
        </div>
      </div>
    </section>

    <!-- Features Grid -->
    <section class="container mx-auto px-4 mb-20">
      <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
        <Card v-for="feature in features" :key="feature.title" class="group hover:shadow-lg transition-shadow">
          <CardHeader>
            <CardTitle class="flex items-center gap-2">
              <component :is="feature.icon" class="h-6 w-6 text-primary" />
              {{ feature.title }}
            </CardTitle>
          </CardHeader>
          <CardContent>
            <p class="text-muted-foreground">{{ feature.description }}</p>
          </CardContent>
        </Card>
      </div>
    </section>

    <!-- How It Works -->
    <section class="py-20 bg-muted">
      <div class="container mx-auto px-4">
        <div class="text-center mb-16">
          <h2 class="text-3xl font-bold mb-4">How It Works</h2>
          <p class="text-muted-foreground max-w-2xl mx-auto">
            Get started with our digital banking solutions in just a few simple steps.
          </p>
        </div>
        <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
          <div v-for="(step, index) in steps" :key="step.title" class="text-center">
            <div class="bg-primary/10 w-12 h-12 rounded-full flex items-center justify-center mx-auto mb-4">
              <span class="text-xl font-bold text-primary">{{ index + 1 }}</span>
            </div>
            <h3 class="text-xl font-semibold mb-2">{{ step.title }}</h3>
            <p class="text-muted-foreground">{{ step.description }}</p>
          </div>
        </div>
      </div>
    </section>

    <!-- Security Section -->
    <section class="py-20">
      <div class="container mx-auto px-4">
        <div class="grid grid-cols-1 md:grid-cols-2 gap-12 items-center">
          <div>
            <h2 class="text-3xl font-bold mb-6">Bank-Grade Security</h2>
            <p class="text-muted-foreground mb-8">
              Your security is our top priority. We implement the latest security measures to protect your financial data and transactions.
            </p>
            <ul class="space-y-4">
              <li v-for="security in securityFeatures" :key="security" class="flex items-center gap-2">
                <Check class="h-5 w-5 text-primary" />
                <span>{{ security }}</span>
              </li>
            </ul>
          </div>
          <div class="bg-muted p-8 rounded-lg">
            <Shield class="h-24 w-24 text-primary mx-auto mb-4" />
            <p class="text-center text-muted-foreground">
              State-of-the-art encryption and security protocols ensure your data is always protected.
            </p>
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
              Join thousands of satisfied customers who have already transformed their banking experience.
            </p>
            <div class="flex flex-col sm:flex-row gap-4 justify-center">
              <Button size="lg" variant="secondary">
                Open Account
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
  CreditCard, 
  Smartphone, 
  Globe, 
  Shield, 
  Check,
  Bell
} from 'lucide-vue-next'

const features = [
  {
    title: '24/7 Account Access',
    description: 'Access your account anytime, anywhere with our secure mobile and web platforms.',
    icon: Smartphone
  },
  {
    title: 'Secure Transactions',
    description: 'Bank-grade security protocols ensure your transactions are always protected.',
    icon: Shield
  },
  {
    title: 'Real-time Notifications',
    description: 'Stay updated with instant notifications for all your account activities.',
    icon: Bell
  },
  {
    title: 'Multi-currency Support',
    description: 'Handle multiple currencies with competitive exchange rates.',
    icon: Globe
  },
  {
    title: 'Digital Cards',
    description: 'Virtual cards for secure online transactions and subscriptions.',
    icon: CreditCard
  },
  {
    title: 'Smart Banking',
    description: 'AI-powered insights and recommendations for better financial decisions.',
    icon: Wallet
  }
]

const steps = [
  {
    title: 'Create Account',
    description: 'Sign up for a digital banking account in minutes with minimal documentation.'
  },
  {
    title: 'Verify Identity',
    description: 'Complete the verification process using our secure digital KYC system.'
  },
  {
    title: 'Start Banking',
    description: 'Access all banking features and start managing your finances digitally.'
  }
]

const securityFeatures = [
  'End-to-end encryption',
  'Two-factor authentication',
  'Biometric security',
  'Fraud detection',
  'Secure data centers',
  'Regular security audits'
]
</script> 