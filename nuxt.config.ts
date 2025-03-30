// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
  compatibilityDate: '2024-04-03',
  devtools: { enabled: true},
  ssr: true,
  nitro: {
    preset: 'netlify',
    prerender: {
      failOnError: false,
      crawlLinks: true
    }
  },
  app: {
    baseURL: '/',
    head: {
      title: 'Money Forward India',
      meta: [
        { charset: 'utf-8' },
        { name: 'viewport', content: 'width=device-width, initial-scale=1' },
        { name: 'description', content: 'Money Forward India - Financial Technology Solutions' },
      ],
      link: [
        { rel: 'icon', type: 'image/x-icon', href: '/favicon.ico' }
      ]
    }
  },
  modules: [
    '@nuxtjs/tailwindcss',
    '@vueuse/nuxt',
    '@nuxt/content',
    'shadcn-nuxt',
    '@nuxt/fonts',
    '@nuxtjs/supabase'
  ],
  shadcn: {
    /**
     * Prefix for all the imported component
     */
    prefix: '',
    /**
     * Directory that the component lives in.
     * @default "./components/ui"
     */
    componentDir: './components/ui'
  },
  content: {
    documentDriven: true
  },
  css: ['~/assets/css/main.css'],
  supabase: {
    redirect: false,
  }
})