<template>
    <form @submit.prevent="store">
        <div class="form-group">
            <label for="nome_completo" value="nome_completo">Nome Completo:</label>
            <input id="nome_completo" type="text" class="form-control" v-model="form.nome_completo" autofocus />

        </div>
        <div class="form-group">
            <label for="celular" value="celular">Celular:</label>
            <input id="celular" type="text" class="form-control" v-model="form.celular" autofocus />

        </div>
        <div >
            <div class="form-group">
                <label for="estado" value="estado">Estado</label>
                <!--input id="estado" type="text" class="form-control" v-model="form.estado" autofocus /-->
                <select id="estado" onchange="buscaCidades(this.value)" class="custom-select" v-model="form.estado">
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
            <div class="form-group">
                <label for="cidades" value="cidade">Cidade</label>
                <!--input id="cidade" class="form-control"  autofocus/-->
                <select id="cidades" class="custom-select" v-model="form.cidade">
                </select>

            </div>
        </div>

        <div class="form-group">
            <label for="pai_empresarial" value="pai empresarial">Pai Empresarial</label>
            <input id="pai_empresarial" class="form-control" v-model="form.pai_empresarial" autofocus/>

        </div>
        <button type="submit" class="btn btn-primary">
            Salvar
        </button>
    </form>



</template>

<script>

export default {
    components: {

    },
    data() {
        return {
            form: {
                nome_completo: '',
                celular: '',
                estado: '',
                cidade: '',
                pai_empresarial: '',
            }
        }
    },
    methods: {
        store() {
            this.$inertia.post('/empresarios', this.form)

        },
    },
}

</script>
