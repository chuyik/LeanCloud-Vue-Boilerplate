<template lang="pug">
  #app
    navbar
    div
      router-view
</template>

<script>
  import Navbar from './components/NavBar';
  import CurrentUserProvider from './lib/UserProvider'
  import SemanticUI from './semantic/dist/semantic.js'
  
  export default {
    components: {
      Navbar
    },
    ready: function () {
      CurrentUserProvider.installApp(this)
      CurrentUserProvider.loadFromServer()
    }
  };
</script>

<style lang="scss" rel="stylesheet/scss" scoped>
  @import "./semantic/dist/semantic.css";
  @import "../node_modules/nprogress/nprogress.css";
  
  html {
    height: 100%;
  }

  body {
    display: flex;
    align-items: center;
    justify-content: center;
    height: 100%;
  }

  #app {
    margin: 20px auto 0;
    max-width: 1000px;
    padding: 0 20px;
  }
</style>