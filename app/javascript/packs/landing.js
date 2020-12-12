require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

import 'bootstrap'

require("asset_js/google_analytics.js")

// Stylesheets
import '../stylesheets/landing'

const images = require.context('../images', true)
const imagePath = (name) => images(name, true)
