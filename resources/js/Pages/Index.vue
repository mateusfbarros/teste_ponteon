<template>
    <div class="container">
        <div style="padding-top: 30px"></div>
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">Cadastro de Empresários</div>

                    <div class="card-body">
                        <CadastroEmpresaio></CadastroEmpresaio>
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
    </div>

</template>

<script>
    import CadastroEmpresaio from "./CadastroEmpresaio";
    import ListagemEmpresarios from "./ListagemEmpresarios";
    export default {
        components: {ListagemEmpresarios, CadastroEmpresaio},
        props: {
            empresarios: Object,

        },
        mounted() {
            console.log(this.empresarios)
        }
    }
</script>

