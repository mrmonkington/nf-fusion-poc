include { cat_file } from './modules/bakta'

workflow {
    input_ch = Channel.from( [ 'sampleA', 'sampleB' ] )
    input_ch | cat_file
}
