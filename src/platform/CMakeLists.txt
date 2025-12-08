if(WIN32)
    list (APPEND PLATFORM_SOURCES)
#    list(APPEND PLATFORM_SOURCES
#        windows/WindowsPlatform.cpp
#        windows/WindowsWindow.cpp
#    )
#    target_compile_definitions(LuminaPlatform PRIVATE LUMINA_PLATFORM_WINDOWS=1)
endif()

# create library
add_library(LuminaPlatform STATIC ${PLATFORM_SOURCES})

# dependencies
target_link_libraries(LuminaPlatform PUBLIC 
    LuminaFoundation
)

# platform link libraries
if(WIN32)
    target_link_libraries(LuminaPlatform PRIVATE 
        d3d11.lib dxgi.lib d3dcompiler.lib
        user32.lib gdi32.lib shell32.lib
    )
endif()

# Compile Definitions
target_compile_definitions(LuminaPlatform PUBLIC
    LUMINA_PLATFORM_LAYER=1
)