/* eslint no-console:0 */
// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//
// To reference this file, add <%= javascript_pack_tag 'application' %> to the appropriate
// layout file, like app/views/layouts/application.html.erb

import Vue from 'vue'
import BootstrapVue from 'bootstrap-vue'
import App from './frontend/app.vue'

import 'bootstrap/dist/css/bootstrap.css';
import 'bootstrap-vue/dist/bootstrap-vue.css';
import 'babel-polyfill'

Vue.use(BootstrapVue);

document.addEventListener('DOMContentLoaded', () => {
    document.body.appendChild(document.createElement('app'))

    const app = new Vue(App).$mount('app')

    console.log(app)
})