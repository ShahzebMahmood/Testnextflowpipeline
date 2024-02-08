// Define the container with its tag
container "public.ecr.aws/fluent-pipseeker/fluent-pipseeker:3.0.5"

// Define a simple process that runs a command in the container
process testProcess {
    // Command to be executed inside the container
    script:
    """
    # Command to test
    echo "Hello from the container"
    """

    // Use the specified container
    container "public.ecr.aws/fluent-pipseeker/fluent-pipseeker:3.0.5"
}
