<template>
  <div id='app'>
    <b-jumbotron header="UNSC Headquarters" :lead="message" >
    </b-jumbotron>
  </div>
</template>

<script>
    export default {
        data: function () {
            return {
                message: "Welcome to UNSC HQ!"
            }
        }
    }
</script>

<style scoped>
  p {
  }
</style>