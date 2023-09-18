include { cat_file } from './modules/bakta'

workflow {
    input_ch = Channel.from( [ 'input.fna', ] )
    input_ch | cat_file
}
