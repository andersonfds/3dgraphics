# Check for Homebrew or exit with message
brew --version || echo "Homebrew not found, please install it."

# Check for vulkaninfo or exit with code 1 and message
vulkaninfo || (echo "Vulkan not found, please install it." && exit 1)

# Install dependencies
brew install glfw
brew install glm
