# Get all source files
aux_source_directory(. ECS_SOURCES)

# create library
add_library(LuminaECS STATIC ${ECS_SOURCES})

# add dependencies
target_link_libraries(LuminaECS PUBLIC LuminaFoundation)

# ECS compile options
target_compile_options(LuminaECS PRIVATE
    -ffast-math  # Math Optimized
)