if(MSVC)
    set(LUMINA_COMPILER_FLAGS
        /W4           # Advance Warning
        /WX           # Warning as Error
        /permissive-  # Same Standard
        /Zc:__cplusplus
        $<$<CONFIG:Debug>:
            /Od        # No Optimize
            /Zi        # Debug Info
            /MTd       # Debug Runtime
        >
        $<$<CONFIG:Release>:
            /O2        # Optimize Level 2
            /Ob2       # Inline
            /MT        # Release Runtime
        >
    )
else()
    set(LUMINA_COMPILER_FLAGS
        -Wall
        -Wextra
        -Werror
        -fexceptions
        -frtti
        $<$<CONFIG:Debug>:
            -O0
            -g
            -DDEBUG
        >
        $<$<CONFIG:Release>:
            -O3
            -DNDEBUG
        >
    )
endif()

add_compile_options(${LUMINA_COMPILER_FLAGS})