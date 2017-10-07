<template>
  <div id="enemies">
    <b-container class="bv-example-row">
      <b-row>
        <b-card-group>
          <div v-for="enemy in enemies">
            <div class="enemy-card">
              <b-card :title="enemy.name"
                      :img-src="enemy.largeIconImageUrl"
                      :img-alt="enemy.name"
                      img-top>
                <p class="card-text">
                  {{enemy.description}}
                </p>
                <div slot="footer">
                  <small class="text-muted">{{enemy.faction}}</small>
                </div>
              </b-card>
            </div>
          </div>
        </b-card-group>
      </b-row>
    </b-container>
  </div>
</template>

<script>
    import axios from 'axios';

    export default {
        name: 'enemies',

        data: function () {
            return {
                enemies: []
            }
        },

        mounted: function () {
            let self = this;

            axios.get('/api/v1/enemies')
                .then(function (response) {
                    self.enemies = response.data;
                })
                .catch(function (error) {
                    console.log(error.message);
                });
        }
    };
</script>
