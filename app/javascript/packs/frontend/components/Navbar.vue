<template>
  <div class="menu-navbar">
    <b-navbar toggleable="md" type="dark" variant="success">
      <b-nav-toggle target="nav_collapse"></b-nav-toggle>
      <b-navbar-brand href="/">UNSC Headquarters</b-navbar-brand>
      <b-collapse is-nav id="nav_collapse">
        <b-nav is-nav-bar>
          <b-nav-item href="/">Home</b-nav-item>
          <b-nav-item-dropdown text="Halo 5">
            <b-dropdown-item href="/weapons">Weapons</b-dropdown-item>
            <b-dropdown-item href="/campaign-missions">Campaign Missions</b-dropdown-item>
            <b-dropdown-item href="/enemies">Enemies</b-dropdown-item>
          </b-nav-item-dropdown>
          <b-nav-item href="/about">About</b-nav-item>
        </b-nav>
        <!-- Right aligned nav items -->
        <b-nav is-nav-bar class="ml-auto">
          <b-nav-item-dropdown text="Lang" right>
            <b-dropdown-item href="#">EN</b-dropdown-item>
            <b-dropdown-item href="#">ES</b-dropdown-item>
          </b-nav-item-dropdown>
        </b-nav>
      </b-collapse>
    </b-navbar>
  </div>
</template>

<script>
    export default {
        name: 'menu-navbar',
    };
</script>

<style scoped>

</style>