import { App, plugin } from '@inertiajs/inertia-vue'
import Vue from 'vue'
import VueMask from 'v-mask'
import moment from "moment";


Vue.use(plugin)
Vue.use(VueMask);
Vue.use(moment);

const el = document.getElementById('app')

new Vue({
    render: h => h(App, {
        props: {
            initialPage: JSON.parse(el.dataset.page),
            resolveComponent: name => require(`./Pages/${name}`).default,
        },
    }),
}).$mount(el)
