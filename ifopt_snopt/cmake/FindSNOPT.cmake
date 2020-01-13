set(SNOPT_DIR "/usr/local")
set(snopt_v76 FALSE) # set true if snopt version >= v7.6

if(IS_DIRECTORY ${SNOPT_DIR}/include)
  set(SNOPT_INCLUDE_DIRS "${SNOPT_DIR}/include")
  set(SNOPT_LIBRARIES    "${SNOPT_DIR}/lib/libsnopt7_cpp.so;"
                         "${SNOPT_DIR}/lib/libsnopt7.so")
  message(STATUS "SNOPT headers found at:  \"" ${SNOPT_INCLUDE_DIRS} "\" ")
                                              
else()
  message(STATUS  "SNOPT directory \"" ${SNOPT_DIR} "\" NOT found. "
                  "Set path to your SNOPT installation in your ~/.bashrc:\n"
                  "export SNOPT_DIR=/home/your_name/Code/Snopt\n"
  )
endif()


mark_as_advanced(SNOPT_INCLUDE_DIRS
                 SNOPT_LIBRARIES)

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(SNOPT DEFAULT_MSG SNOPT_LIBRARIES)
