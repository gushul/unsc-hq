<template>
  <div id="campaign-missions">
    <b-container class="bv-example-row">
      <b-row>
        <div v-for="mission in missions">
          <div class="mission-card">
            <b-card overlay
                    :img-src="mission.imageUrl"
                    :img-alt="mission.name"
                    text-variant="white"
                    :title="mission.name"
                    :sub-title="mission.type">
              <p class="card-text">
                {{mission.description}}
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
        name: 'missions',

        data: function () {
            return {
                missions: []
            }
        },

        mounted: function () {
            let self = this;

            axios.get('/api/v1/campaign-missions')
                .then(function (response) {
                    self.missions = response.data;
                })
                .catch(function (error) {
                    console.log(error.message);
                });
        }
    };
</script>
