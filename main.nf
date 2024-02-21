#!/usr/bin/env nextflow

process sayHello {

    // Specify the container image
    container "public.ecr.aws/fluent-pipseeker/fluent-pipseeker:3.0.5"

    // Define input variable
    input:
    val x

    // Define output file
    output:
    stdout

    // Specify the command to be executed inside the container
    script:
    """
    ./custom-entrypoint.sh echo '$x world!' > output.txt
    """

    // Specify the path to the custom entrypoint script
    containerOptions "--entrypoint", "./custom-entrypoint.sh"

}

workflow {
    // Create a channel with values
    Channel.of('Bonjour', 'Ciao', 'Hello', 'Hola') | sayHello | view
}
