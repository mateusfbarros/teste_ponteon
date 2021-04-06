<template>
    <div class="container " :style="styles">
        <div style="padding-top: 30px"></div>
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Cadastro de Empresários</div>

                    <div class="card-body">
                        <CadastroEmpresaio :lista_pai_empresarial="pai_empresarial"></CadastroEmpresaio>

                    </div>
                </div>
            </div>
        </div>
        <div style="padding-top: 30px"></div>
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">Listagem de Empresários</div>
                    <div class="card-body">
                        <ListagemEmpresarios :empresarios="empresarios"/>

                    </div>
                </div>
            </div>
        </div>
        <div style="padding-top: 30px"></div>

    </div>



</template>

<script>
    const BACKDROP_BASE = 'https://image.tmdb.org/t/p/w1280';
    import CadastroEmpresaio from "./CadastroEmpresaio";
    import ListagemEmpresarios from "./ListagemEmpresarios";
    export default {
        components: {ListagemEmpresarios, CadastroEmpresaio},
        props: {
            empresarios: Object,
            pai_empresarial: Array,

        },
        mounted() {
            console.log(this.empresarios)
        },

    }
</script>



