include { annotate } from './modules/bakta'

workflow {
    input_ch = Channel.from( [ 'input.fna', ] )
    input_ch | annotate
}
