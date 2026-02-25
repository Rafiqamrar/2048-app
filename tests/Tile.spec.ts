import { describe, it, expect } from 'vitest'
import { mount } from '@vue/test-utils'
import Tile from '../app/components/game/Tile.vue'

describe('Tile Component', () => {
  it('should have amber-100 background when value is 2', () => {
    const wrapper = mount(Tile, {
      props: {
        value: 2
      }
    })
    
    const tileElement = wrapper.find('.tile')
    expect(tileElement.classes()).toContain('bg-amber-100')
  })

  it('should have amber-200 background when value is 4', () => {
    const wrapper = mount(Tile, {
      props: {
        value: 4
      }
    })
    
    const tileElement = wrapper.find('.tile')
    expect(tileElement.classes()).toContain('bg-amber-200')
  })

  it('should display the value when not zero', () => {
    const wrapper = mount(Tile, {
      props: {
        value: 8
      }
    })
    
    expect(wrapper.text()).toBe('8')
  })

  it('should not display value when zero', () => {
    const wrapper = mount(Tile, {
      props: {
        value: 0
      }
    })
    
    expect(wrapper.text()).toBe('')
  })
})
