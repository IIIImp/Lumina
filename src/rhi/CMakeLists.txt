# Get all source files
aux_source_directory(. RHI_SOURCES)

# create library
add_library(LuminaRHI STATIC ${RHI_SOURCES})

# dependencies
target_link_libraries(LuminaRHI PUBLIC 
    LuminaFoundation
    LuminaPlatform
)

# Vulkan Use
if(LUMINA_USE_VULKAN)
    find_package(Vulkan REQUIRED)
    target_link_libraries(LuminaRHI PRIVATE Vulkan::Vulkan)
    target_compile_definitions(LuminaRHI PRIVATE LUMINA_VULKAN=1)
endif()

# DirectX Use
if(LUMINA_USE_DIRECTX)
    include(FindDirectX)
    target_link_libraries(LuminaRHI PRIVATE DirectX::DirectX)
    target_compile_definitions(LuminaRHI PRIVATE LUMINA_DIRECTX=1)
endif()