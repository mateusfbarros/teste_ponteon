<template>
    <!-- This example requires Tailwind CSS v2.0+ -->
    <nav
        class="border-t border-gray-200 px-4 flex items-center justify-between sm:px-0 "
    >
        <div class="-mt-px w-0 flex-1 flex ">
            <inertia-link
                v-if="data.prev_page_url"
                :href="data.prev_page_url"
                class="border-t-2 border-transparent pt-4 pr-1 inline-flex items-center text-sm font-medium text-gray-500 hover:text-gray-700 hover:border-gray-300 "
            >
                <!-- Heroicon name: solid/arrow-narrow-left -->


            </inertia-link>
        </div>
        <center>
            <div class="hidden md:-mt-px md:flex text-centerr">
                <inertia-link
                    v-for="link in cleanLinks"
                    :key="link.label"
                    :href="link.url"
                    :class="{ 'border-indigo-500 text-indigo-600': link.active }"
                    class="border-transparent text-gray-500 hover:text-gray-700 hover:border-gray-300  inline-flex items-center text-sm font-medium btn btn-outline-primary">
                    {{ link.label }}
                </inertia-link>
            </div>
        </center>

        <div class="-mt-px w-0 flex-1 flex justify-end">
            <inertia-link
                v-if="data.next_page_url"
                :href="data.next_page_url"
                class="border-t-2 border-transparent pt-4 pl-1 inline-flex items-center text-sm font-medium text-gray-500 hover:text-gray-700 hover:border-gray-300"
            >

                <!-- Heroicon name: solid/arrow-narrow-right -->

            </inertia-link>
        </div>
    </nav>
</template>

<script>
export default {
    name: "Pagination",
    props: {
        data: Object,
    },
    computed: {
        cleanLinks() {
            const cleanLinks = [...this.data.links];
            cleanLinks.shift();
            cleanLinks.pop();
            return cleanLinks;
        },
    },
};
</script>
