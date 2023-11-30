/** @jsx jsx */
import emoji from 'react-easy-emoji'

function customEmoji(input) {
  return emoji(input, {
    protocol: '',
    baseUrl: '',
    size: '/images/twemoji/72x72'
  })
}


export default customEmoji
