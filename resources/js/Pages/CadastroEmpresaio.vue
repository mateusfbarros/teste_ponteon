<template>
    <form @submit.prevent="store">
        <div class="form-group col-md-8 mb-4">
            <label for="nome_completo" value="nome_completo">Nome Completo:</label>
            <input id="nome_completo" type="text" class="form-control" v-model="form.nome_completo" autofocus required/>
            <!--div v-if="errors.nome_completo">{{ errors.nome_completo }}</div-->
        </div>
        <div class="form-group col-md-4 mb-2">
            <label for="celular" value="celular">Celular:</label>
            <input id="celular" type="text" class="form-control" v-mask="'(##) #####-####'" v-model="form.celular" autofocus required/>

        </div>
        <div class="row" style="padding-left: 15px">
            <div class="form-group col-md-4 mb-2">
                <label for="estado" value="estado">Estado</label>
                <!--input id="estado" type="text" class="form-control" v-model="form.estado" autofocus /-->
                <select id="estado" onchange="buscaCidades(this.value)" class="custom-select" v-model="form.estado" required>
                    <option value=""></option>
                    <option value="AC">Acre</option>
                    <option value="AL">Alagoas</option>
                    <option value="AP">Amapá</option>
                    <option value="AM">Amazonas</option>
                    <option value="BA">Bahia</option>
                    <option value="CE">Ceará</option>
                    <option value="DF">Distrito Federal</option>
                    <option value="ES">Espírito Santo</option>
                    <option value="GO">Goiás</option>
                    <option value="MA">Maranhão</option>
                    <option value="MT">Mato Grosso</option>
                    <option value="MS">Mato Grosso do Sul</option>
                    <option value="MG">Minas Gerais</option>
                    <option value="PA">Pará</option>
                    <option value="PB">Paraíba</option>
                    <option value="PR">Paraná</option>
                    <option value="PE">Pernambuco</option>
                    <option value="PI">Piauí</option>
                    <option value="RJ">Rio de Janeiro</option>
                    <option value="RN">Rio Grande do Norte</option>
                    <option value="RS">Rio Grande do Sul</option>
                    <option value="RO">Rondônia</option>
                    <option value="RR">Roraima</option>
                    <option value="SC">Santa Catarina</option>
                    <option value="SP">São Paulo</option>
                    <option value="SE">Sergipe</option>
                    <option value="TO">Tocantins</option>
                </select>

            </div>
            <div class="form-group col-md-6 mb-3">
                <label for="cidades" value="cidade">Cidade</label>
                <!--input id="cidade" class="form-control"  autofocus/-->
                <select id="cidades" class="custom-select" v-model="form.cidade" required>
                </select>

            </div>
        </div>
        <div class="form-group col-md-8 mb-4">
            <label value="pai_empresarial">Pai Empresarial:</label>
            <select v-model="form.pai_empresarial" class="custom-select">
                <option value=""></option>
                <option v-for="pai_empresarial in lista_pai_empresarial"
                        :key="pai_empresarial.id">{{ pai_empresarial.nome_completo }}</option>
            </select>

        </div>
        <div class="float-right">
            <button type="submit" class="btn btn-success">
                Salvar
            </button>
        </div>

    </form>





</template>

<script>

import ListagemEmpresarios from "./ListagemEmpresarios";
import ComboboxPaiEmpresarios from "./ComboboxPaiEmpresarios";


export default {
    name: "CadastroEmpresarios",
    components: {
        ComboboxPaiEmpresarios,
        ListagemEmpresarios,
    },
    props: {
        lista_pai_empresarial: Array,


    },

    data() {
        return {
            form: {
                nome_completo: '',
                celular: '',
                estado: '',
                cidade: '',
                pai_empresarial: '',
                created_at: '',
            },
            empresarios: {
                nome_completo: String
            }




        }
    },



    methods: {
        store() {
            this.$inertia.post('/', this.form,{
                    onSuccess: () => form.reset()
            }

            )


        },


    },


}

</script>



