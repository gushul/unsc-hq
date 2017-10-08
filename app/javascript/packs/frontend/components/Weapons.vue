<template>
  <div id="weapons">
    <b-container class="bv-example-row">
      <b-row>
        <div v-for="weapon in weapons">
          <div class="weapon-card">
            <b-card :title="weapon.name"
                    :img-src="weapon.smallIconImageUrl"
                    :img-alt="weapon.name"
                    img-top
                    tag="article"
                    style="max-width: 30rem;"
                    border-variant="dark"
                    bg-variant="secondary"
                    class="mb-2">
              <p class="card-text">
                <span>{{weapon.type}}</span>
                <span>{{weapon.description}}</span>
              </p>
            </b-card>
          </div>
        </div>
      </b-row>
    </b-container>
  </div>
</template>

<script>
    import axios from 'axios';

    export default {
        name: 'weapons',

        data: function () {
            return {
                weapons: []
            }
        },

        mounted: function () {
            let self = this;

            axios.get('/api/v1/weapons')
                .then(function (response) {
                    self.weapons = response.data;
                })
                .catch(function (error) {
                    console.log(error.message);
                });
        }
    };
</script>

<style scoped>
  p span:first-of-type {
    font-weight: bold;
    display: block;
  }
</style>