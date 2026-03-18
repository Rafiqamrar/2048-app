<script setup lang="ts">
const { isGameOver, isWon, resetGame } = useGameState()

const title = computed(() => isWon.value ? '🎉 You Win!' : '😢 Game Over')
const message = computed(() => isWon.value 
  ? 'Congratulations! You reached 2048!' 
  : 'No more moves available. Try again!')
</script>

<template>
  <div 
    v-if="isGameOver || isWon"
    class="fixed inset-0 bg-black/50 flex items-center justify-center z-50"
  >
    <div class="bg-white dark:bg-gray-800 rounded-xl p-8 text-center shadow-2xl max-w-sm mx-4">
      <h2 class="text-3xl font-bold mb-4" :class="isWon ? 'text-green-500' : 'text-red-500'">
        {{ title }}
      </h2>
      <p class="text-gray-600 dark:text-gray-300 mb-6">{{ message }}</p>
      <UButton 
        size="lg" 
        color="red"
        @click="resetGame"
      >
        Play Again
      </UButton>
    </div>
  </div>
</template>
