<template>
    <div>


    <table class="table">
        <thead class="thead-light">
        <tr>
            <th scope="col">
                Nome Completo
            </th>
            <th cope="col">
                Celular
            </th>
            <th scope="col">
                Cidade / UF
            </th>

            <th scope="col">
                Cadastrado em
            </th>

            <th scope="col">
                Pai Empresarial
            </th>
            <th scope="col">
                Rede
            </th>
            <th scope="col">

            </th>
        </tr>
        </thead>
        <tbody
            v-for="empresario in empresarios.data"
            :key="empresario.id"

        >
        <tr>
            <td scope="row">
                {{ empresario.nome_completo }}
            </td>
            <td scope="row">
                {{ empresario.celular }}
            </td>
            <td scope="row">
                {{ empresario.cidade }} / {{ empresario.estado }}
            </td>

            <td scope="row">
                <span>{{ formatDate(empresario.created_at) }}</span>
            </td>

            <td scope="row">
                    {{ empresario. pai_empresarial }}

            </td>
            <td scope="row">
                <a href="#">[VER REDE]</a>
            </td>
            <td scope="row">
                <button type="button" class="btn btn-danger" @click="destroy(empresario.id)" ><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash" viewBox="0 0 16 16">
                    <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z"/>
                    <path fill-rule="evenodd" d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z"/>
                </svg></button>
            </td>
        </tr>
        </tbody>

    </table>

        <div class="px-6 pb-4 bg-white">
            <pagination :data="empresarios" />
        </div>


    </div>

</template>

<script>
import Pagination from "../Shared/Pagination";
import moment from 'moment';


export default {
    name: "ListagemEmpresarios",
    components: { Pagination },

    props: {
        empresarios: Object,


    },
    data() {
        return {
            empresario: {
                created_at: new Date()
            }
        }
    },
    methods: {
        destroy(id) {
            //if (!confirm('Are you sure want to remove?')) return;
            //console.log(empresario.id)
            this.$inertia.delete(`/${id}`, {
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



//function (data) {
if (!confirm('Are you sure want to remove?')) return;
data._method = 'DELETE';
this.$inertia.post('/posts/' + data.id, data)
this.reset();



