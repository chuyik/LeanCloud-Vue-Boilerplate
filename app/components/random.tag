require('./skills.tag')

<random>
  <h3>{ opts.title }</h3>

  <button onclick={ generate }>
    Generate
  </button>

  <h1>
    { number }
  </h1>

  <skills logs={ logs } onclear={ clearLogs }></skills>

  <script>
    this.number = null
    this.logs = []

    generate(e) {
      this.logs.push({ text: "Generate button clicked. Even type is " + e.type })
      this.number = Math.floor(Math.random()*10000)
    }

    clearLogs(e) {
      this.logs = []
    }

    this.generate({ type: 'custom' })
  </script>
</random>