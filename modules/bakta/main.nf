process cat_file {
    input: val(sampleName)
    // TODO get Conda builds working - conda 'bioconda:bakta=1.8.1'
    script:
        """
            echo "Rundir: ${params.rundir}/$sampleName"
            echo "\\n"
            # test we can write to S3 as if local
            mkdir -p ${params.rundir}
            echo "BOOM" > ${params.rundir}/$sampleName
            echo "\\n"
            # test S3 file is available locally
            cat /fusion/s3/microbesng-sandpit/fusion_test/power.txt
            echo "\\n"
        """
}
