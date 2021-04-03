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
        <div class="form-group">
            <label for="estado" value="estado">Estado</label>
            <input id="estado" type="text" class="form-control" v-model="form.estado" autofocus />

        </div>
        <div class="form-group">
            <label for="cidade" value="cidade">Cidade</label>
            <input id="cidade" class="form-control" v-model="form.cidade" autofocus/>

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
