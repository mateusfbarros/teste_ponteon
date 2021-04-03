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
                UF
            </th>
            <th scope="col">
                Cidade
            </th>
            <th scope="col">
                Pai Empresarial
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
                {{ empresario.estado }}
            </td>
            <td scope="row">
                {{ empresario.cidade }}
            </td>
            <td scope="row">
                {{ empresario. pai_empresarial }}
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

export default {
    name: "ListagemEmpresarios",
    components: { Pagination },
    props: {
        empresarios: Object,
    },
}
</script>



