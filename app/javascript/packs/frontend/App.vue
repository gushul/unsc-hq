<template>
  <div id='main'>
    <menu-navbar></menu-navbar>

    <router-view></router-view>
  </div>
</template>

<script>
    import Navbar from './components/Navbar.vue';

    export default {
        name: 'App',

        components: {
            'menu-navbar': Navbar
        },

        data: function () {
            return {
                message: "Welcome to UNSC HQ!",
            }
        }
    }
</script>

<style scoped>

</style>