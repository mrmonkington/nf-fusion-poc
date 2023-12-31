process annotate {
    memory = 8.GB
    cpus = 2
    scratch = false

    input: val(sampleName)

    // TODO get Conda builds working - conda 'bioconda:bakta=1.8.1'
    script:
        input_file = "/fusion/s3/microbesng-sandpit/fusion_poc/" + params.rundir + "/" + sampleName
        output_dir = "/fusion/s3/microbesng-sandpit/fusion_poc/" + params.rundir + "/results"
        """
            echo "Rundir: ${input_file}"
            echo "\\n"
            mkdir -p $output_dir
            # run bakta against DB file and sample
            bakta --db /fusion/s3/microbesng-sandpit/fusion_poc/db/ --output $output_dir --force $input_file 

            # see what it made
            ls -Rl 
        """
}
