const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}'
  ],
  theme: {
    colors: {
      site_blue: "#0d5be1",
      site_gold: "#e1930d",
      site_dark_blue: "#0f182b",
      site_dark_gray: "#2b220f",
      site_light_gray: "#f4fdff",
      twitter_blue: "#1DA1F2",
      white: "#fff",
      uranian_blue: "#ADD9F4",
      indian_yellow: "#E09F3E",
      cg_blue: "#247BA0",
      claret: "#89043D",
    },
    extend: {
      fontFamily: {
        sans: ['Inter var', ...defaultTheme.fontFamily.sans],
      },
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
  ]
}
