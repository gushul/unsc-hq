/* eslint no-console:0 */
// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//
// To reference this file, add <%= javascript_pack_tag 'application' %> to the appropriate
// layout file, like app/views/layouts/application.html.erb

import Vue from 'vue'
import VueRouter from 'vue-router'
import BootstrapVue from 'bootstrap-vue'

import App from './frontend/App.vue'
import Weapons from './frontend/components/Weapons.vue'
import Missions from './frontend/components/Missions.vue'
import Enemies from './frontend/components/Enemies.vue'
import About from './frontend/components/About.vue'

import 'bootstrap/dist/css/bootstrap.css';
import 'bootstrap-vue/dist/bootstrap-vue.css';

import '../src/frontend.scss'

import 'babel-polyfill'

Vue.use(VueRouter);
Vue.use(BootstrapVue);

document.addEventListener('DOMContentLoaded', () => {
    const routes = [
        { path: '/', template: '' },
        { path: '/weapons', component: Weapons },
        { path: '/campaign-missions', component: Missions },
        { path: '/enemies', component: Enemies },
        { path: '/about', component: About }
    ]

    const router = new VueRouter({
        routes,
        mode: 'history'
    })

    const app = new Vue({
        el: '#app',
        router: router,
        render: h => h(App)
    })

    // console.log(app)
})