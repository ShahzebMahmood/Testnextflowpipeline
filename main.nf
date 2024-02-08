// Define the container with its tag
container "public.ecr.aws/fluent-pipseeker/fluent-pipseeker:3.0.5"

// Define container options with the specified entrypoint
containerOptions '--entrypoint ""'

// Define a simple process that runs a command in the container
process testProcess {
    // Input parameter (if any)
    input:
    // Command to be executed inside the container
    script:
    """
    # Command to test
    echo "Hello from the container"
    """

    // Use the specified container and its options
    container "public.ecr.aws/fluent-pipseeker/fluent-pipseeker:3.0.5"
    containerOptions '--entrypoint ""'
}

// Run the process
workflow {
    // Run the defined process
    testProcess
}
