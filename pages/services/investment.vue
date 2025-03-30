<template>
  <div class="py-20">
    <!-- Hero Section -->
    <section class="mb-20">
      <div class="container mx-auto px-4">
        <div class="max-w-3xl mx-auto text-center">
          <h1 class="text-4xl md:text-6xl font-bold mb-6">Smart Investment Platform</h1>
          <p class="text-xl text-muted-foreground">
            Make informed investment decisions with our AI-powered platform and expert insights.
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

    <!-- Investment Options -->
    <section class="py-20 bg-muted">
      <div class="container mx-auto px-4">
        <div class="text-center mb-16">
          <h2 class="text-3xl font-bold mb-4">Investment Options</h2>
          <p class="text-muted-foreground max-w-2xl mx-auto">
            Choose from a wide range of investment options tailored to your financial goals.
          </p>
        </div>
        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-8">
          <Card v-for="option in investmentOptions" :key="option.title" class="text-center">
            <CardHeader>
              <div class="bg-primary/10 w-16 h-16 rounded-full flex items-center justify-center mx-auto mb-4">
                <component :is="option.icon" class="h-8 w-8 text-primary" />
              </div>
              <CardTitle>{{ option.title }}</CardTitle>
            </CardHeader>
            <CardContent>
              <p class="text-muted-foreground mb-4">{{ option.description }}</p>
              <ul class="text-left space-y-2 mb-4">
                <li v-for="feature in option.features" :key="feature" class="flex items-center gap-2">
                  <Check class="h-4 w-4 text-primary" />
                  <span class="text-sm">{{ feature }}</span>
                </li>
              </ul>
              <Button variant="outline" class="w-full">
                Learn More
                <ArrowRight class="ml-2 h-4 w-4" />
              </Button>
            </CardContent>
          </Card>
        </div>
      </div>
    </section>

    <!-- Analytics Section -->
    <section class="py-20">
      <div class="container mx-auto px-4">
        <div class="grid grid-cols-1 md:grid-cols-2 gap-12 items-center">
          <div>
            <h2 class="text-3xl font-bold mb-6">Advanced Analytics</h2>
            <p class="text-muted-foreground mb-8">
              Make data-driven investment decisions with our comprehensive analytics tools and market insights.
            </p>
            <ul class="space-y-4">
              <li v-for="analytics in analyticsFeatures" :key="analytics" class="flex items-center gap-2">
                <Check class="h-5 w-5 text-primary" />
                <span>{{ analytics }}</span>
              </li>
            </ul>
          </div>
          <div class="bg-muted p-8 rounded-lg">
            <LineChart class="h-24 w-24 text-primary mx-auto mb-4" />
            <p class="text-center text-muted-foreground">
              Real-time market data and predictive analytics for smarter investment strategies.
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
            <h2 class="text-3xl font-bold mb-4">Start Investing Today</h2>
            <p class="text-lg mb-8 max-w-2xl mx-auto">
              Join thousands of successful investors who trust our platform for their investment needs.
            </p>
            <div class="flex flex-col sm:flex-row gap-4 justify-center">
              <Button size="lg" variant="secondary">
                Open Account
              </Button>
              <Button size="lg" variant="outline" class="bg-transparent text-primary-foreground border-primary-foreground hover:bg-primary-foreground/10">
                Schedule Consultation
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
  LineChart, 
  PieChart, 
  TrendingUp, 
  Target, 
  Shield, 
  Check,
  ArrowRight,
  Coins,
  Building2,
  Globe,
  Wallet,
  Users
} from 'lucide-vue-next'

const features = [
  {
    title: 'Portfolio Management',
    description: 'Professional portfolio management tools with real-time tracking and rebalancing.',
    icon: PieChart
  },
  {
    title: 'Market Analysis',
    description: 'Comprehensive market analysis and research tools for informed decision-making.',
    icon: LineChart
  },
  {
    title: 'Automated Trading',
    description: 'Set up automated trading strategies based on your investment goals.',
    icon: TrendingUp
  },
  {
    title: 'Risk Assessment',
    description: 'Advanced risk assessment tools to help you make safer investment choices.',
    icon: Target
  },
  {
    title: 'Secure Platform',
    description: 'Bank-grade security to protect your investments and personal information.',
    icon: Shield
  },
  {
    title: 'Expert Support',
    description: 'Access to financial experts and investment advisors for guidance.',
    icon: Users
  }
]

const investmentOptions = [
  {
    title: 'Stocks',
    description: 'Invest in individual company stocks with real-time trading.',
    icon: TrendingUp,
    features: [
      'Real-time trading',
      'Market analysis',
      'Portfolio tracking',
      'Dividend reinvestment'
    ]
  },
  {
    title: 'Mutual Funds',
    description: 'Diversified investment options managed by professional fund managers.',
    icon: PieChart,
    features: [
      'Professional management',
      'Diversification',
      'Regular dividends',
      'Low maintenance'
    ]
  },
  {
    title: 'Fixed Deposits',
    description: 'Secure investment options with guaranteed returns.',
    icon: Coins,
    features: [
      'Guaranteed returns',
      'Flexible terms',
      'Tax benefits',
      'Low risk'
    ]
  },
  {
    title: 'International Markets',
    description: 'Access to global markets and international investment opportunities.',
    icon: Globe,
    features: [
      'Global exposure',
      'Currency options',
      'Market diversity',
      'International trading'
    ]
  }
]

const analyticsFeatures = [
  'Real-time market data',
  'Technical analysis tools',
  'Portfolio analytics',
  'Performance tracking',
  'Risk metrics',
  'Market sentiment analysis'
]
</script> 