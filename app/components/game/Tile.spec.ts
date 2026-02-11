import { describe, it, expect } from 'vitest'
import { mount } from '@vue/test-utils'
import Tile from '~/components/game/Tile.vue'

describe('Tile Component', () => {
  it('should have amber-100 background when value is 2', () => {
    const wrapper = mount(Tile, {
      props: {
        value: 2
      },
      global: {
        stubs: {
          // Stub any child components if needed
        }
      }
    })

    const tileElement = wrapper.find('.tile')
    expect(tileElement.classes()).toContain('bg-amber-100')
  })
})
