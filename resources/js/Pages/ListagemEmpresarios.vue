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
                {{ empresario. created_at }}
            </td>

            <td scope="row">
                {{ empresario. pai_empresarial }}
            </td>
            <td scope="row">
                [VER REDE]
            </td>
            <td scope="row">
                <button type="button" class="btn btn-danger" @click="destroy(empresario.id)" >EXCLUIR</button>
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
import * as empresario from "postcss-selector-parser";


export default {
    name: "ListagemEmpresarios",
    components: { Pagination },

    props: {
        empresarios: Object,
    },
    data() {
        return {

        }
    },
    methods: {
        destroy(id){
            //if (!confirm('Are you sure want to remove?')) return;
            //console.log(empresario.id)
            this.$inertia.delete(`/empresarios/${id}`, {
                onBefore: () => confirm('Tem certeza que deseja excluir o\n' +
                    'registro?'),})
            //window.location.reload()
            //alert(this.empresarios)
            //this.$inertia.delete('/empresarios', this.button)

        },
    },
}
</script>

//function (data) {
if (!confirm('Are you sure want to remove?')) return;
data._method = 'DELETE';
this.$inertia.post('/posts/' + data.id, data)
this.reset();



