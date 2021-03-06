SET(OBD_SIMGEN_CYCLE "On" CACHE BOOL "Enable cycle obdsim generator")
IF(OBD_SIMGEN_CYCLE)
	FILE(GLOB OBDSIMGEN_CYCLE_SRCS
		generators/cycle/*.c
	)
	ADD_LIBRARY(ckobdsim_cycle STATIC ${OBDSIMGEN_CYCLE_SRCS})
	SET(GENERATOR_LIBS ${GENERATOR_LIBS} ckobdsim_cycle)
	ADD_DEFINITIONS(-DOBDSIMGEN_CYCLE)
ENDIF(OBD_SIMGEN_CYCLE)

