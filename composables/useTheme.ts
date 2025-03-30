import { ref, watch } from 'vue'

export function useTheme() {
  const theme = ref<'light' | 'dark'>('light')

  // Initialize theme from localStorage or system preference
  if (process.client) {
    const savedTheme = localStorage.getItem('theme')
    if (savedTheme) {
      theme.value = savedTheme as 'light' | 'dark'
    } else {
      theme.value = window.matchMedia('(prefers-color-scheme: dark)').matches ? 'dark' : 'light'
    }
  }

  // Watch for theme changes and update DOM
  watch(theme, (newTheme) => {
    if (process.client) {
      localStorage.setItem('theme', newTheme)
      document.documentElement.classList.toggle('dark', newTheme === 'dark')
    }
  }, { immediate: true })

  const toggleTheme = () => {
    theme.value = theme.value === 'light' ? 'dark' : 'light'
  }

  return {
    theme,
    toggleTheme,
  }
} 