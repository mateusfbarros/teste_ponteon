<template>
    <div>
        <select>
            <option v-for="empresario in empresarios.data"
                    :key="empresario.id" value="">{{ empresario. nome_completo }}</option>
        </select>
    </div>
</template>


<script>
    import Pagination from "../Shared/Pagination";
    import moment from 'moment';


    export default {
    name: "ComboboxPaiEmpresarios",
    components: { Pagination },

        props: {
            empresarios: Object,


        },
        data() {
            return {
                empresario: {
                    nome_completo: String
                }
            }
        },
        methods: {
            destroy(id) {
                //if (!confirm('Are you sure want to remove?')) return;
                //console.log(empresario.id)
                this.$inertia.delete(`/empresarios/${id}`, {
                    onBefore: () => confirm('Tem certeza que deseja excluir registro?'),
                })
                //window.location.reload()
                //alert(this.empresarios)
                //this.$inertia.delete('/empresarios', this.button)

            },
            formatDate(date) {
                return moment(date).format("DD/MM/YYYY kk:mm")
            },
        },

    }


</script>



