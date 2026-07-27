# Anything specific to the architecture analysis goes in here.

-config=B.INDEPENDENCE,component_tag+=
  {"^MODULES_DEBUG.*$", role, Debugging},
  {"^ZEPHYR_SUBSYS_(SHELL|DEBUG|TRACING|TESTSUITE|LOGGING)$", role, Debugging},
  {"^ZEPHYR_LIB_OS_(ASSERT|PRINTK|FORMATTED_OUTPUT)$", role, Debugging},
  {"^(ZEPHYR_SUBSYS|ZEPHYR_DRIVERS|ZEPHYR_LIB|ZEPHYR_MODULES).*$", role, System},
  {"^ZEPHYR_KERNEL_(ARCH_INTERFACE|INIT|INTERNAL)$", role , KernelPrivate},
  {"^ZEPHYR_KERNEL_.*$", role, KernelPublic}

####################################################################
#                    GLOBAL PERMISSIONS                            #
####################################################################

-doc_begin="Global architecture layer rule: Permits internal tracking within
the architecture subsystem."
-config=B.INDEPENDENCE,component_allows+=
  "from(^ZEPHYR_ARCH.*$)&&to(^ZEPHYR_ARCH.*$)&&action(include||call)"
-doc_end

-doc_begin="Global architecture layer rule: Permits low-levelarchitecture blocks
to communicate with external vendor hardware abstraction layers."
-config=B.INDEPENDENCE,component_allows+=
  "from(^ZEPHYR_ARCH.*$)&&to(^MODULES_HAL.*$)&&action(include||call)"
-doc_end

-doc_begin="Global architecture layer rule: Permits core architecture interfaces
to invoke public kernel routines."
-config=B.INDEPENDENCE,component_allows+=
  "from(^ZEPHYR_ARCH.*$)&&to(tag(role = ^KernelPublic$))&&action(include||call)"
-doc_end

-doc_begin="Global kernel layer rule: Permits core kernel implementations to
access machine-specific architecture hooks."
-config=B.INDEPENDENCE,component_allows+=
  "from(^ZEPHYR_KERNEL.*$)&&to(^ZEPHYR_ARCH.*$)&&action(include||call)"
-doc_end

-doc_begin="Global kernel layer rule: Permits internal subsystems of the
kernel to interface with one another."
-config=B.INDEPENDENCE,component_allows+=
  "from(^ZEPHYR_KERNEL.*$)&&to(^ZEPHYR_KERNEL.*$)&&action(include||call)"
-doc_end

-doc_begin="Global driver layer rule: Permits hardware drivers to
interface directly with core architecture contexts."
-config=B.INDEPENDENCE,component_allows+=
  "from(^ZEPHYR_DRIVERS.*$)&&to(^ZEPHYR_ARCH.*$)&&action(include||call)"
-doc_end

-doc_begin="Global driver layer rule: Permits hardware drivers to interact
with Vendor SoC HAL code blocks."
-config=B.INDEPENDENCE,component_allows+=
  "from(^ZEPHYR_DRIVERS.*$)&&to(^MODULES_HAL.*$)&&action(include||call)"
-doc_end

-doc_begin="Global role permissions: System components are allowed to
invoke public kernel primitives."
-config=B.INDEPENDENCE,component_allows+=
  "from(tag(role = ^System$))&&to(tag(role = ^KernelPublic$))&&action(include||call)"
-doc_end

-doc_begin="Global utility permission: Permits any Zephyr platform block
to access general utility code libraries."
-config=B.INDEPENDENCE,component_allows+=
  "from(^ZEPHYR.*$)&&to(^ZEPHYR_LIB_UTILS.*$)&&action(include||call)"
-doc_end

-doc_begin="Global debugging exceptions: The tracking, shell, and logging tools
have bidirectional access permissions across the system for diagnostic tracking."
-config=B.INDEPENDENCE,component_allows+=
  "to(tag(role = ^Debugging$))&&action(include||call)",
  "from(tag(role = ^Debugging$))&&action(include||call)"
-doc_end


###################################
#        ZEPHYR_PLATFORM          #
###################################

-doc_begin="The ZEPHYR_PLATFORM component defines board and SoC configurations.
- It requires inclusion/calls to external MODULES_HAL code to configure
foundational hardware layout boundaries."
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_PLATFORM)&&to(^MODULES_HAL.*$)&&action(include||call)"
-doc_end

###################################
#     MODULES_CRYPTO_MBEDTLS      #
###################################

-doc_begin="The MODULES_CRYPTO_MBEDTLS component integrates the MbedTLS crypto engine.
- It requires access to MODULES_CRYPTO_TF_PSA_CRYPTO to offload standard security primitives through the PSA API."
-config=B.INDEPENDENCE,component_allows+=
  "from(MODULES_CRYPTO_MBEDTLS)&&to(MODULES_CRYPTO_TF_PSA_CRYPTO)&&action(include||call)"
-doc_end

###################################
#   MODULES_CRYPTO_MLDSA_NATIVE   #
###################################

-doc_begin="The MODULES_CRYPTO_MLDSA_NATIVE component provides quantum-safe ML-DSA logic.
- It requires access to MODULES_CRYPTO_TF_PSA_CRYPTO for baseline random generation and key wrapping features."
-config=B.INDEPENDENCE,component_allows+=
  "from(MODULES_CRYPTO_MLDSA_NATIVE)&&to(MODULES_CRYPTO_TF_PSA_CRYPTO)&&action(include||call)"
-doc_end

###################################
#      MODULES_LIB_CMSIS_DSP      #
###################################

-doc_begin="The MODULES_LIB_CMSIS_DSP component manages optimized mathematical computing libraries.
- It requires direct interaction with MODULES_HAL_CMSIS to access targeted ARM core register abstractions."
-config=B.INDEPENDENCE,component_allows+=
  "from(MODULES_LIB_CMSIS_DSP)&&to(MODULES_HAL_CMSIS)&&action(include||call)"
-doc_end

###################################
#         ZEPHYR_ARCH_API         #
###################################

-doc_begin="The ZEPHYR_ARCH_API component details abstract high-level hardware interfaces.
- It requires access to ZEPHYR_LIB_OS_CACHE to assert memory synchronization rules across thread executions."
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_ARCH_API)&&to(ZEPHYR_LIB_OS_CACHE)&&action(include||call)"
-doc_end

###################################
#       ZEPHYR_ARCH_COMMON        #
###################################

-doc_begin="The ZEPHYR_ARCH_COMMON component represents shared, non-vendor-specific architecture code blocks.
- It requires access to ZEPHYR_PLATFORM to run early board bootstrap methods.
- It requires access to ZEPHYR_KERNEL_INIT to tie early low-level processing states into core kernel tracking sequences."
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_ARCH_COMMON)&&to(ZEPHYR_PLATFORM)&&action(include||call)"
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_ARCH_COMMON)&&to(ZEPHYR_KERNEL_INIT)&&action(include||call)"
-doc_end

###################################
#       ZEPHYR_ARCH_GENERIC       #
###################################

-doc_begin="The ZEPHYR_ARCH_GENERIC component addresses fallback/generic CPU target logic loops.
- It requires access to ZEPHYR_PLATFORM to identify localized execution profiles.
- It requires read access to ZEPHYR_KERNEL_STRUCTS to analyze safe pointer layouts during thread context changes.
- It requires access to ZEPHYR_MODULES_CMSIS to align basic microcontroller register definitions.
- It requires access to ZEPHYR_KERNEL_FATAL to throw kernel exceptions when low-level hardware faults surface."
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_ARCH_GENERIC)&&to(ZEPHYR_PLATFORM)&&action(include||call)"
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_ARCH_GENERIC)&&to(ZEPHYR_KERNEL_STRUCTS)&&action(read)"
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_ARCH_GENERIC)&&to(ZEPHYR_MODULES_CMSIS)&&action(include||call)"
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_ARCH_GENERIC)&&to(ZEPHYR_KERNEL_FATAL)&&action(include||call)"
-doc_end

###################################
#        ZEPHYR_DRIVERS_ADC       #
###################################

-doc_begin="The ZEPHYR_DRIVERS_ADC component handles Analog-to-Digital data conversions.
- It requires access to ZEPHYR_SUBSYS_RTIO to manage non-blocking, multi-request hardware sample collections."
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_DRIVERS_ADC)&&to(ZEPHYR_SUBSYS_RTIO)&&action(include||call)"
-doc_end

###################################
#     ZEPHYR_DRIVERS_BLUETOOTH    #
###################################

-doc_begin="The ZEPHYR_DRIVERS_BLUETOOTH component operates hardware HCI communication devices.
- It requires access to ZEPHYR_LIB_NET_BUF to wrap received packet streams into generic memory fragments.
- It requires access to ZEPHYR_SUBSYS_BLUETOOTH to exchange low-level driver events with the application-facing stack."
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_DRIVERS_BLUETOOTH)&&to(ZEPHYR_LIB_NET_BUF)&&action(include||call)"
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_DRIVERS_BLUETOOTH)&&to(ZEPHYR_SUBSYS_BLUETOOTH)&&action(include||call)"
-doc_end

###################################
#      ZEPHYR_DRIVERS_CONSOLE     #
###################################

-doc_begin="The ZEPHYR_DRIVERS_CONSOLE component outputs system strings to terminal interfaces.
- It requires access to ZEPHYR_DRIVERS_SERIAL to print raw bytes out over physical UART pins.
- It requires access to ZEPHYR_LIB_LIBC to use string processing tools during print parsing steps."
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_DRIVERS_CONSOLE)&&to(ZEPHYR_DRIVERS_SERIAL)&&action(include||call)"
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_DRIVERS_CONSOLE)&&to(ZEPHYR_LIB_LIBC)&&action(include||call)"
-doc_end

###################################
#      ZEPHYR_DRIVERS_CRYPTO      #
###################################

-doc_begin="The ZEPHYR_DRIVERS_CRYPTO component drives hardware security acceleration modules.
- It requires access to MODULES_CRYPTO_TF_PSA_CRYPTO to bind custom vendor engine pipelines to standard PSA security calls."
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_DRIVERS_CRYPTO)&&to(MODULES_CRYPTO_TF_PSA_CRYPTO)&&action(include||call)"
-doc_end

###################################
#       ZEPHYR_DRIVERS_DISK       #
###################################

-doc_begin="The ZEPHYR_DRIVERS_DISK component processes structural raw flash blocks or SD storage targets.
- It requires access to ZEPHYR_SUBSYS_FS to resolve partition boundaries.
- It requires access to ZEPHYR_SUBSYS_DISK to leverage baseline disk access abstraction routines."
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_DRIVERS_DISK)&&to(ZEPHYR_SUBSYS_FS)&&action(include||call)"
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_DRIVERS_DISK)&&to(ZEPHYR_SUBSYS_DISK)&&action(include||call)"
-doc_end

###################################
#     ZEPHYR_DRIVERS_DISPLAY      #
###################################

-doc_begin="The ZEPHYR_DRIVERS_DISPLAY component renders graphical framebuffers to screens.
- It requires access to ZEPHYR_DRIVERS_MIPI_DBI to format display streams according to standard MIPI control bus expectations."
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_DRIVERS_DISPLAY)&&to(ZEPHYR_DRIVERS_MIPI_DBI)&&action(include||call)"
-doc_end

###################################
#      ZEPHYR_DRIVERS_EEPROM      #
###################################

-doc_begin="The ZEPHYR_DRIVERS_EEPROM component tracks static byte data over persistent storage devices.
- It requires access to ZEPHYR_DRIVERS_I2C to transport register reads and writes over physical target buses."
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_DRIVERS_EEPROM)&&to(ZEPHYR_DRIVERS_I2C)&&action(include||call)"
-doc_end

###################################
#     ZEPHYR_DRIVERS_FIRMWARE     #
###################################

-doc_begin="The ZEPHYR_DRIVERS_FIRMWARE component handles bootloader or vendor update abstractions.
- It requires access to ZEPHYR_SUBSYS_CRC to check the data integrity of partition images during verification checks."
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_DRIVERS_FIRMWARE)&&to(ZEPHYR_SUBSYS_CRC)&&action(include||call)"
-doc_end

###################################
#       ZEPHYR_DRIVERS_GPIO       #
###################################

-doc_begin="The ZEPHYR_DRIVERS_GPIO component monitors input and output states across physical microcontroller pins.
- It requires access to ZEPHYR_DRIVERS_CLOCK_CONTROL to toggle and configure clock lines for targeted peripheral ports."
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_DRIVERS_GPIO)&&to(ZEPHYR_DRIVERS_CLOCK_CONTROL)&&action(include||call)"
-doc_end

###################################
#       ZEPHYR_DRIVERS_I2C        #
###################################

-doc_begin="The ZEPHYR_DRIVERS_I2C component exposes programmatic 2-wire serial bus protocols.
- It requires access to ZEPHYR_SUBSYS_RTIO to host async, low-overhead transaction queues.
- It requires access to ZEPHYR_LIB_OS_MPSC to track incoming data buffers across ring queues securely.
- It requires access to ZEPHYR_DRIVERS_CLOCK_CONTROL to modify frequency targets across active devices.
- It requires access to ZEPHYR_SUBSYS_STATS to update bus collision and telemetry data points."
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_DRIVERS_I2C)&&to(ZEPHYR_SUBSYS_RTIO)&&action(include||call)"
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_DRIVERS_I2C)&&to(ZEPHYR_LIB_OS_MPSC)&&action(include||call)"
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_DRIVERS_I2C)&&to(ZEPHYR_DRIVERS_CLOCK_CONTROL)&&action(include||call)"
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_DRIVERS_I2C)&&to(ZEPHYR_SUBSYS_STATS)&&action(include||call)"
-doc_end

###################################
#       ZEPHYR_DRIVERS_I3C        #
###################################

-doc_begin="The ZEPHYR_DRIVERS_I3C component handles high-speed updated multi-drop serial buses.
- It requires access to ZEPHYR_SUBSYS_RTIO to parse low-overhead task lists.
- It requires access to ZEPHYR_LIB_OS_MPSC to queue multi-consumer transfer packets.
- It requires access to ZEPHYR_DRIVERS_I2C to manage legacy fallback translation mechanisms for older devices."
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_DRIVERS_I3C)&&to(ZEPHYR_SUBSYS_RTIO)&&action(include||call)"
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_DRIVERS_I3C)&&to(ZEPHYR_LIB_OS_MPSC)&&action(include||call)"
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_DRIVERS_I3C)&&to(ZEPHYR_DRIVERS_I2C)&&action(include||call)"
-doc_end

###################################
#      ZEPHYR_DRIVERS_INPUT       #
###################################

-doc_begin="The ZEPHYR_DRIVERS_INPUT component monitors matrix buttons, dials, or touch controllers.
- It requires access to ZEPHYR_DRIVERS_GPIO to sample structural input lines.
- It requires access to ZEPHYR_SUBSYS_PM to wake up or suspend devices during state alterations.
- It requires access to ZEPHYR_SUBSYS_INPUT to pass parsed switch triggers into the OS event stream."
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_DRIVERS_INPUT)&&to(ZEPHYR_DRIVERS_GPIO)&&action(include||call)"
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_DRIVERS_INPUT)&&to(ZEPHYR_SUBSYS_PM)&&action(include||call)"
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_DRIVERS_INPUT)&&to(ZEPHYR_SUBSYS_INPUT)&&action(include||call)"
-doc_end

###################################
#        ZEPHYR_DRIVERS_LED       #
###################################

-doc_begin="The ZEPHYR_DRIVERS_LED component drives individual state or status indicators.
- It requires access to ZEPHYR_DRIVERS_GPIO to toggle line output configurations directly."
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_DRIVERS_LED)&&to(ZEPHYR_DRIVERS_GPIO)&&action(include||call)"
-doc_end

###################################
#        ZEPHYR_DRIVERS_MODEM     #
###################################

-doc_begin="The ZEPHYR_DRIVERS_MODEM component exposes cellular or serial data modules.
- It requires access to ZEPHYR_LIB_NET_BUF to manage incoming character and transmission blocks.
- It requires access to ZEPHYR_LIB_OS_ZVFS to manage file descriptors and virtual socket routing boundaries.
- It requires access to ZEPHYR_DRIVERS_SERIAL to push commands out across UART connections.
- It requires access to ZEPHYR_SUBSYS_NET to hand off active data packets to the network layer.
- It requires access to ZEPHYR_SUBSYS_PM to put radios to sleep during low-power operational steps."
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_DRIVERS_MODEM)&&to(ZEPHYR_LIB_NET_BUF)&&action(include||call)"
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_DRIVERS_MODEM)&&to(ZEPHYR_LIB_OS_ZVFS)&&action(include||call)"
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_DRIVERS_MODEM)&&to(ZEPHYR_DRIVERS_SERIAL)&&action(include||call)"
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_DRIVERS_MODEM)&&to(ZEPHYR_SUBSYS_NET)&&action(include||call)"
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_DRIVERS_MODEM)&&to(ZEPHYR_SUBSYS_PM)&&action(include||call)"
-doc_end

###################################
#       ZEPHYR_DRIVERS_NET        #
###################################

-doc_begin="The ZEPHYR_DRIVERS_NET component operates physical Ethernet or Wi-Fi controllers.
- It requires access to ZEPHYR_SUBSYS_NET to dispatch frame buffers to the networking stack.
- It requires access to ZEPHYR_LIB_NET_BUF to extract tracking memory segments for storage blocks.
- It requires access to ZEPHYR_SUBSYS_RANDOM to compute collision backoff intervals.
- It requires access to ZEPHYR_DRIVERS_SERIAL to assist SLIP/PPP configurations over serial links."
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_DRIVERS_NET)&&to(ZEPHYR_SUBSYS_NET)&&action(include||call)"
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_DRIVERS_NET)&&to(ZEPHYR_LIB_NET_BUF)&&action(include||call)"
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_DRIVERS_NET)&&to(ZEPHYR_SUBSYS_RANDOM)&&action(include||call)"
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_DRIVERS_NET)&&to(ZEPHYR_DRIVERS_SERIAL)&&action(include||call)"
-doc_end

###################################
#      ZEPHYR_DRIVERS_SENSOR      #
###################################

-doc_begin="The ZEPHYR_DRIVERS_SENSOR component monitors environmental, structural, or motion metrics.
- It requires access to ZEPHYR_SUBSYS_RTIO to support continuous asynchronous sensor readings without blocking thread operations."
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_DRIVERS_SENSOR)&&to(ZEPHYR_SUBSYS_RTIO)&&action(include||call)"
-doc_end

###################################
#      ZEPHYR_DRIVERS_SERIAL      #
###################################

-doc_begin="The ZEPHYR_DRIVERS_SERIAL component runs physical UART blocks.
- It requires access to ZEPHYR_DRIVERS_PINCTRL to bind internal communication lines to external package coordinates.
- It requires access to ZEPHYR_DRIVERS_CLOCK_CONTROL to calculate matching baud rate parameters from base bus ticks."
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_DRIVERS_SERIAL)&&to(ZEPHYR_DRIVERS_PINCTRL)&&action(include||call)"
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_DRIVERS_SERIAL)&&to(ZEPHYR_DRIVERS_CLOCK_CONTROL)&&action(include||call)"
-doc_end

###################################
#       ZEPHYR_DRIVERS_SMBUS       #
###################################

-doc_begin="The ZEPHYR_DRIVERS_SMBUS component acts over System Management Bus hardware routes.
- It requires access to ZEPHYR_SUBSYS_CRC to execute Packet Error Checking calculations over packet data fields."
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_DRIVERS_SMBUS)&&to(ZEPHYR_SUBSYS_CRC)&&action(include||call)"
-doc_end

###################################
#        ZEPHYR_DRIVERS_SPI       #
###################################

-doc_begin="The ZEPHYR_DRIVERS_SPI component operates high-speed synchronous chip interfaces.
- It requires access to ZEPHYR_SUBSYS_RTIO to manage low-overhead, multi-device job blocks.
- It requires access to ZEPHYR_LIB_OS_MPSC to stream incoming and outgoing buffers.
- It requires access to ZEPHYR_DRIVERS_GPIO to toggle distinct hardware slave select (CS) lines."
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_DRIVERS_SPI)&&to(ZEPHYR_SUBSYS_RTIO)&&action(include||call)"
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_DRIVERS_SPI)&&to(ZEPHYR_LIB_OS_MPSC)&&action(include||call)"
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_DRIVERS_SPI)&&to(ZEPHYR_DRIVERS_GPIO)&&action(include||call)"
-doc_end

###################################
#     ZEPHYR_DRIVERS_STEPPER      #
###################################

-doc_begin="The ZEPHYR_DRIVERS_STEPPER component commands position-indexed physical step motors.
- It requires access to ZEPHYR_DRIVERS_SERIAL to assign targets over smart controller endpoints.
- It requires access to ZEPHYR_DRIVERS_GPIO to apply rapid pulse/direction signals to simple controller controllers.
- It requires access to ZEPHYR_DRIVERS_SPI to set active coil current values over register interfaces."
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_DRIVERS_STEPPER)&&to(ZEPHYR_DRIVERS_SERIAL)&&action(include||call)"
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_DRIVERS_STEPPER)&&to(ZEPHYR_DRIVERS_GPIO)&&action(include||call)"
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_DRIVERS_STEPPER)&&to(ZEPHYR_DRIVERS_SPI)&&action(include||call)"
-doc_end

###################################
#       ZEPHYR_DRIVERS_TIMER       #
###################################

-doc_begin="The ZEPHYR_DRIVERS_TIMER component configures low-level counter/timer targets.
- It requires access to ZEPHYR_DRIVERS_CLOCK_CONTROL to calculate reliable intervals matching active silicon frequency targets."
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_DRIVERS_TIMER)&&to(ZEPHYR_DRIVERS_CLOCK_CONTROL)&&action(include||call)"
-doc_end

###################################
#        ZEPHYR_DRIVERS_USB       #
###################################

-doc_begin="The ZEPHYR_DRIVERS_USB component orchestrates fundamental controller endpoints.
- It requires access to ZEPHYR_LIB_NET_BUF to store streaming endpoint buffers during raw transaction steps."
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_DRIVERS_USB)&&to(ZEPHYR_LIB_NET_BUF)&&action(include||call)"
-doc_end

###################################
#       ZEPHYR_DRIVERS_VIDEO       #
###################################

-doc_begin="The ZEPHYR_DRIVERS_VIDEO component interfaces with image capture modules.
- It requires access to ZEPHYR_LIB_HEAP to provision dynamic frame allocation layers.
- It requires access to ZEPHYR_DRIVERS_I2C to pass initial parameter structures over camera configuration buses."
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_DRIVERS_VIDEO)&&to(ZEPHYR_LIB_HEAP)&&action(include||call)"
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_DRIVERS_VIDEO)&&to(ZEPHYR_DRIVERS_I2C)&&action(include||call)"
-doc_end

###################################
#        ZEPHYR_DRIVERS_W1        #
###################################

-doc_begin="The ZEPHYR_DRIVERS_W1 component runs single-wire protocol tracking networks.
- It requires access to ZEPHYR_SUBSYS_CRC to evaluate internal packet error configurations on data payloads."
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_DRIVERS_W1)&&to(ZEPHYR_SUBSYS_CRC)&&action(include||call)"
-doc_end

###################################
#        ZEPHYR_KERNEL_API        #
###################################

-doc_begin="The ZEPHYR_KERNEL_API component manages public system primitives.
- It requires access to ZEPHYR_LIB_HEAP to resolve memory space requests for application threads."
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_KERNEL_API)&&to(ZEPHYR_LIB_HEAP)&&action(include||call)"
-doc_end

###################################
#       ZEPHYR_KERNEL_DEVICE      #
###################################

-doc_begin="The ZEPHYR_KERNEL_DEVICE component exposes core device-tree structures.
- It requires access to ZEPHYR_DRIVERS_MM to configure virtual boundaries during initialization steps.
- It requires access to ZEPHYR_SUBSYS_PM to cascade system suspension steps to physical hardware units."
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_KERNEL_DEVICE)&&to(ZEPHYR_DRIVERS_MM)&&action(include||call)"
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_KERNEL_DEVICE)&&to(ZEPHYR_SUBSYS_PM)&&action(include||call)"
-doc_end

###################################
#       ZEPHYR_KERNEL_TIMING      #
###################################

-doc_begin="The ZEPHYR_KERNEL_TIMING component implements systemic calendar and step tracking.
- It requires access to ZEPHYR_DRIVERS_TIMER to drive uptime counters using physical hardware counter mechanisms."
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_KERNEL_TIMING)&&to(ZEPHYR_DRIVERS_TIMER)&&action(include||call)"
-doc_end

###################################
#        ZEPHYR_KERNEL_INIT       #
###################################

-doc_begin="The ZEPHYR_KERNEL_INIT component maps core startup and post-boot scheduling logic.
- It requires access to ZEPHYR_PLATFORM to call hardware configuration tables early in the boot sequence."
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_KERNEL_INIT)&&to(ZEPHYR_PLATFORM)&&action(include||call)"
-doc_end

###################################
#      ZEPHYR_KERNEL_INTERNAL     #
###################################

-doc_begin="The ZEPHYR_KERNEL_INTERNAL component manages private operating system behaviors.
- It requires access to ZEPHYR_LIB_HEAP to carve out resources for hidden execution spaces."
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_KERNEL_INTERNAL)&&to(ZEPHYR_LIB_HEAP)&&action(include||call)"
-doc_end

###################################
#       ZEPHYR_KERNEL_USAGE       #
###################################

-doc_begin="The ZEPHYR_KERNEL_USAGE component details runtime operational tracking metrics.
- It requires access to ZEPHYR_PLATFORM to coordinate performance monitoring strategies across specific boards."
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_KERNEL_USAGE)&&to(ZEPHYR_PLATFORM)&&action(include||call)"
-doc_end

###################################
#        ZEPHYR_LIB_LIBC          #
###################################

-doc_begin="The ZEPHYR_LIB_LIBC component routes common generic standard C operations.
- It requires access to ZEPHYR_LIB_POSIX to export standardized interface conventions.
- It requires access to ZEPHYR_LIB_HEAP to support low-overhead `malloc` operations."
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_LIB_LIBC)&&to(ZEPHYR_LIB_POSIX)&&action(include||call)"
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_LIB_LIBC)&&to(ZEPHYR_LIB_HEAP)&&action(include||call)"
-doc_end

###################################
#     ZEPHYR_LIB_MEM_BLOCKS       #
###################################

-doc_begin="The ZEPHYR_LIB_MEM_BLOCKS component defines fixed-size block tracking models.
- It requires access to ZEPHYR_LIB_HEAP to initialize underlying storage arenas dynamically."
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_LIB_MEM_BLOCKS)&&to(ZEPHYR_LIB_HEAP)&&action(include||call)"
-doc_end

###################################
#        ZEPHYR_LIB_MIDI2         #
###################################

-doc_begin="The ZEPHYR_LIB_MIDI2 component sets up parameters for MIDI streaming frameworks.
- It requires access to ZEPHYR_DRIVERS_HWINFO to query unique board ID values for device registration paths."
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_LIB_MIDI2)&&to(ZEPHYR_DRIVERS_HWINFO)&&action(include||call)"
-doc_end

###################################
#       ZEPHYR_LIB_OS_MPSC        #
###################################

-doc_begin="The ZEPHYR_LIB_OS_MPSC component defines Multi-Producer Single-Consumer lockless buffers.
- It requires access to ZEPHYR_ARCH_API to invoke atomic synchronization routines safely."
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_LIB_OS_MPSC)&&to(ZEPHYR_ARCH_API)&&action(include||call)"
-doc_end

###################################
#       ZEPHYR_LIB_OS_P4WQ        #
###################################

-doc_begin="The ZEPHYR_LIB_OS_P4WQ component introduces multi-priority waiting queues.
- It requires access to ZEPHYR_ARCH_API to execute lockless thread adjustments."
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_LIB_OS_P4WQ)&&to(ZEPHYR_ARCH_API)&&action(include||call)"
-doc_end

###################################
#      ZEPHYR_LIB_OS_REBOOT       #
###################################

-doc_begin="The ZEPHYR_LIB_OS_REBOOT component generates software reset scripts.
- It requires access to ZEPHYR_ARCH_API to target actual hardware reset registers directly."
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_LIB_OS_REBOOT)&&to(ZEPHYR_ARCH_API)&&action(include||call)"
-doc_end

###################################
#       ZEPHYR_LIB_OS_SPSC        #
###################################

-doc_begin="The ZEPHYR_LIB_OS_SPSC component houses Single-Producer Single-Consumer pipelines.
- It requires access to ZEPHYR_LIB_OS_CACHE to manage cache-line alignment and coherency rules."
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_LIB_OS_SPSC)&&to(ZEPHYR_LIB_OS_CACHE)&&action(include||call)"
-doc_end

###################################
#       ZEPHYR_LIB_OS_ZVFS        #
###################################

-doc_begin="The ZEPHYR_LIB_OS_ZVFS component implements virtual filesystem tracking objects.
- It requires access to ZEPHYR_SUBSYS_FS to bridge calls into actual file structure libraries.
- It requires access to ZEPHYR_LIB_OS_SPECULATION to deploy secure tracking barriers against microarchitectural speculation attacks."
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_LIB_OS_ZVFS)&&to(ZEPHYR_SUBSYS_FS)&&action(include||call)"
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_LIB_OS_ZVFS)&&to(ZEPHYR_LIB_OS_SPECULATION)&&action(include||call)"
-doc_end

###################################
#        ZEPHYR_LIB_POSIX         #
###################################

-doc_begin="The ZEPHYR_LIB_POSIX component provides compatibility layouts for POSIX code bases.
- It requires access to ZEPHYR_LIB_OS_ZVFS to expose file descriptors.
- It requires access to ZEPHYR_SUBSYS_NET to enable BSD socket network features.
- It requires access to ZEPHYR_SUBSYS_FS to pass directory tracking steps.
- It requires access to ZEPHYR_DRIVERS_HWINFO to process unique chip telemetry details.
- It requires access to ZEPHYR_LIB_HASH to support quick cryptographic hash operations."
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_LIB_POSIX)&&to(ZEPHYR_LIB_OS_ZVFS)&&action(include||call)"
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_LIB_POSIX)&&to(ZEPHYR_SUBSYS_NET)&&action(include||call)"
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_LIB_POSIX)&&to(ZEPHYR_SUBSYS_FS)&&action(include||call)"
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_LIB_POSIX)&&to(ZEPHYR_DRIVERS_HWINFO)&&action(include||call)"
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_LIB_POSIX)&&to(ZEPHYR_LIB_HASH)&&action(include||call)"
-doc_end

###################################
#     ZEPHYR_LIB_UTILS_DATA       #
###################################

-doc_begin="The ZEPHYR_LIB_UTILS_DATA component implements data tracking profiles.
- It requires access to ZEPHYR_LIB_NET_BUF to pack tracking arrays securely into data blocks."
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_LIB_UTILS_DATA)&&to(ZEPHYR_LIB_NET_BUF)&&action(include||call)"
-doc_end

###################################
#        ZEPHYR_LIB_UUID          #
###################################

-doc_begin="The ZEPHYR_LIB_UUID component configures and prints standard UUID fields.
- It requires access to ZEPHYR_SUBSYS_RANDOM to derive target identifier patterns.
- It requires access to MODULES_CRYPTO_TF_PSA_CRYPTO to build cryptographically secure random sequences."
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_LIB_UUID)&&to(ZEPHYR_SUBSYS_RANDOM)&&action(include||call)"
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_LIB_UUID)&&to(MODULES_CRYPTO_TF_PSA_CRYPTO)&&action(include||call)"
-doc_end

###################################
#       ZEPHYR_MODULES_LVGL       #
###################################

-doc_begin="The ZEPHYR_MODULES_LVGL component includes the external LVGL UI framework.
- It requires access to ZEPHYR_LIB_HEAP to provision application object groups.
- It requires access to MODULES_LIB_GUI to call foundational canvas rendering rules.
- It requires access to ZEPHYR_SUBSYS_FS to retrieve interface font and image assets.
- It requires access to ZEPHYR_DRIVERS_DISPLAY to draw completed UI layouts onto physical screen drivers."
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_MODULES_LVGL)&&to(ZEPHYR_LIB_HEAP)&&action(include||call)"
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_MODULES_LVGL)&&to(MODULES_LIB_GUI)&&action(include||call)"
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_MODULES_LVGL)&&to(ZEPHYR_SUBSYS_FS)&&action(include||call)"
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_MODULES_LVGL)&&to(ZEPHYR_DRIVERS_DISPLAY)&&action(include||call)"
-doc_end

###################################
#      ZEPHYR_MODULES_MBEDTLS     #
###################################

-doc_begin="The ZEPHYR_MODULES_MBEDTLS component hooks the modular MbedTLS engine into the OS environment.
- It requires access to ZEPHYR_SUBSYS_RANDOM to gather operational entropy seeds.
- It requires access to MODULES_CRYPTO_TF_PSA_CRYPTO to use baseline crypto accelerators."
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_MODULES_MBEDTLS)&&to(ZEPHYR_SUBSYS_RANDOM)&&action(include||call)"
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_MODULES_MBEDTLS)&&to(MODULES_CRYPTO_TF_PSA_CRYPTO)&&action(include||call)"
-doc_end

###################################
#       ZEPHYR_SUBSYS_BINDESC     #
###################################

-doc_begin="The ZEPHYR_SUBSYS_BINDESC component injects firmware metadata into binaries.
- It requires access to ZEPHYR_DRIVERS_FLASH to parse information fields embedded inside boot structures."
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_SUBSYS_BINDESC)&&to(ZEPHYR_DRIVERS_FLASH)&&action(include||call)"
-doc_end

###################################
#     ZEPHYR_SUBSYS_BLUETOOTH     #
###################################

-doc_begin="The ZEPHYR_SUBSYS_BLUETOOTH component operates high-level radio protocol stacks.
- It requires access to ZEPHYR_LIB_NET_BUF to format incoming transmission streams.
- It requires access to MODULES_CRYPTO_TF_PSA_CRYPTO to enforce secure cryptographic pairings.
- It requires access to ZEPHYR_LIB_UUID to process standardized service identification fields.
- It requires access to MODULES_LIB_LIBSBC to coordinate audio streams across SBC profiles.
- It requires access to ZEPHYR_DRIVERS_BLUETOOTH to interface directly with target radio transceiver chips."
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_SUBSYS_BLUETOOTH)&&to(ZEPHYR_LIB_NET_BUF)&&action(include||call)"
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_SUBSYS_BLUETOOTH)&&to(MODULES_CRYPTO_TF_PSA_CRYPTO)&&action(include||call)"
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_SUBSYS_BLUETOOTH)&&to(ZEPHYR_LIB_UUID)&&action(include||call)"
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_SUBSYS_BLUETOOTH)&&to(MODULES_LIB_LIBSBC)&&action(include||call)"
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_SUBSYS_BLUETOOTH)&&to(ZEPHYR_DRIVERS_BLUETOOTH)&&action(include||call)"
-doc_end

###################################
#        ZEPHYR_SUBSYS_DAP        #
###################################

-doc_begin="The ZEPHYR_SUBSYS_DAP component isolates internal target debug access features.
- It requires access to ZEPHYR_DRIVERS_DP to manage physical debugging pin states directly."
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_SUBSYS_DAP)&&to(ZEPHYR_DRIVERS_DP)&&action(include||call)"
-doc_end

###################################
#         ZEPHYR_SUBSYS_FS        #
###################################

-doc_begin="The ZEPHYR_SUBSYS_FS component standardizes high-level file system tasks.
- It requires access to ZEPHYR_SUBSYS_RANDOM to generate session artifacts.
- It requires access to MODULES_FS_FATFS blocks to invoke underlying FatFS logic loops.
- It requires access to MODULES_FS_LITTLEFS to manage flash-optimized LittleFS data tables.
- It requires access to ZEPHYR_SUBSYS_DISK to handle block operations over physical disk drives."
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_SUBSYS_FS)&&to(ZEPHYR_SUBSYS_RANDOM)&&action(include||call)"
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_SUBSYS_FS)&&to(MODULES_FS_FATFS)&&action(include||call||write)"
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_SUBSYS_FS)&&to(MODULES_FS_LITTLEFS)&&action(include||call)"
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_SUBSYS_FS)&&to(ZEPHYR_SUBSYS_DISK)&&action(include||call)"
-doc_end

###################################
#        ZEPHYR_SUBSYS_IPC        #
###################################

-doc_begin="The ZEPHYR_SUBSYS_IPC component transfers tracking records across isolated CPU endpoints.
- It requires access to ZEPHYR_LIB_OS_CACHE to maintain coherent shared memory regions.
- It requires access to ZEPHYR_DRIVERS_MBOX to trigger inter-processor mailbox hardware interrupts."
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_SUBSYS_IPC)&&to(ZEPHYR_LIB_OS_CACHE)&&action(include||call)"
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_SUBSYS_IPC)&&to(ZEPHYR_DRIVERS_MBOX)&&action(include||call)"
-doc_end

###################################
#        ZEPHYR_SUBSYS_JWT        #
###################################

-doc_begin="The ZEPHYR_SUBSYS_JWT component serializes JSON Web Tokens for identity validation.
- It requires access to MODULES_CRYPTO_TF_PSA_CRYPTO to sign cryptographic tokens using secure keys."
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_SUBSYS_JWT)&&to(MODULES_CRYPTO_TF_PSA_CRYPTO)&&action(include||call)"
-doc_end

###################################
#       ZEPHYR_SUBSYS_KVSS        #
###################################

-doc_begin="The ZEPHYR_SUBSYS_KVSS component tracks localized state variables in simple database schemas.
- It requires access to ZEPHYR_DRIVERS_FLASH to save settings records onto permanent storage cells.
- It requires access to ZEPHYR_SUBSYS_CRC to check entries for corruption during boot parsing steps."
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_SUBSYS_KVSS)&&to(ZEPHYR_DRIVERS_FLASH)&&action(include||call)"
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_SUBSYS_KVSS)&&to(ZEPHYR_SUBSYS_CRC)&&action(include||call)"
-doc_end

###################################
#       ZEPHYR_SUBSYS_LLEXT       #
###################################

-doc_begin="The ZEPHYR_SUBSYS_LLEXT component handles dynamically loadable extensions and code modules at runtime.
- It requires access to ZEPHYR_SUBSYS_FS to retrieve compiled object files from persistent storage."
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_SUBSYS_LLEXT)&&to(ZEPHYR_SUBSYS_FS)&&action(include||call)"
-doc_end

###################################
#      ZEPHYR_SUBSYS_MEM_MGMT     #
###################################

-doc_begin="The ZEPHYR_SUBSYS_MEM_MGMT component defines multi-tenant partition tracking frameworks.
- It requires access to ZEPHYR_LIB_HEAP to provision systemic memory heaps."
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_SUBSYS_MEM_MGMT)&&to(ZEPHYR_LIB_HEAP)&&action(include||call)"
-doc_end

###################################
#        ZEPHYR_SUBSYS_MGMT       #
###################################

-doc_begin="The ZEPHYR_SUBSYS_MGMT component tracks structural command payloads from host systems.
- It requires access to ZEPHYR_DRIVERS_ESPI to transfer information vectors across physical eSPI links."
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_SUBSYS_MGMT)&&to(ZEPHYR_DRIVERS_ESPI)&&action(include||call)"
-doc_end

###################################
#       ZEPHYR_SUBSYS_MODEM       #
###################################

-doc_begin="The ZEPHYR_SUBSYS_MODEM component abstracts cellular connection profiles.
- It requires access to ZEPHYR_DRIVERS_GPIO to toggle hardware reset and wake pins.
- It requires access to ZEPHYR_SUBSYS_NET to pipe active data packets into the network interface.
- It requires access to ZEPHYR_DRIVERS_SERIAL to pass raw AT commands.
- It requires access to ZEPHYR_SUBSYS_CRC to evaluate incoming block check metrics.
- It requires access to ZEPHYR_SUBSYS_PM to manage peripheral low-power states."
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_SUBSYS_MODEM)&&to(ZEPHYR_DRIVERS_GPIO)&&action(include||call)"
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_SUBSYS_MODEM)&&to(ZEPHYR_SUBSYS_NET)&&action(include||call)"
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_SUBSYS_MODEM)&&to(ZEPHYR_DRIVERS_SERIAL)&&action(include||call)"
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_SUBSYS_MODEM)&&to(ZEPHYR_SUBSYS_CRC)&&action(include||call)"
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_SUBSYS_MODEM)&&to(ZEPHYR_SUBSYS_PM)&&action(include||call)"
-doc_end

###################################
#        ZEPHYR_SUBSYS_NET        #
###################################

-doc_begin="The ZEPHYR_SUBSYS_NET component provides full IP network stack coordination.
- It requires access to MODULES_CRYPTO_TF_PSA_CRYPTO for secure transport protocol handshakes (TLS).
- It requires access to ZEPHYR_ARCH_API to run interrupt locks during packet scheduling steps.
- It requires access to ZEPHYR_LIB_OS_ZVFS to manage socket descriptors natively.
- It requires access to ZEPHYR_LIB_NET_BUF to allocate data fragment buffers.
- It requires access to ZEPHYR_SUBSYS_FS to resolve local configuration parameters.
- It requires access to ZEPHYR_SUBSYS_RANDOM to set up transient port addresses randomly.
- It requires access to MODULES_LIB_ZCBOR to serialize and deserialize structured CBOR payload elements.
- It requires access to ZEPHYR_SUBSYS_NVMEM to track hardware MAC configurations stored in non-volatile memory.
- It requires access to MODULES_CRYPTO_MBEDTLS to run classic cryptographic backends.
- It requires access to ZEPHYR_SUBSYS_CRC to compute header validation metrics.
- It requires access to ZEPHYR_LIB_POSIX to export abstract BSD sockets.
- It requires access to ZEPHYR_DRIVERS_CRYPTO to invoke physical encryption hardware loops.
- It requires access to ZEPHYR_DRIVERS_PTP_CLOCK to coordinate network packet timestamp parameters.
- It requires access to ZEPHYR_LIB_HASH to calculate rapid frame tables.
- It requires access to ZEPHYR_DRIVERS_CAN to transmit protocol frames over controller area networks.
- It requires access to ZEPHYR_DRIVERS_RTC to verify token lease schedules against wall-clock calendars.
- It requires access to ZEPHYR_LIB_MIDI2 to route network-adapted audio transport commands."
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_SUBSYS_NET)&&to(MODULES_CRYPTO_TF_PSA_CRYPTO)&&action(include||call)"
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_SUBSYS_NET)&&to(ZEPHYR_ARCH_API)&&action(include||call)"
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_SUBSYS_NET)&&to(ZEPHYR_LIB_OS_ZVFS)&&action(include||call)"
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_SUBSYS_NET)&&to(ZEPHYR_LIB_NET_BUF)&&action(include||call)"
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_SUBSYS_NET)&&to(ZEPHYR_SUBSYS_FS)&&action(include||call)"
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_SUBSYS_NET)&&to(ZEPHYR_SUBSYS_RANDOM)&&action(include||call)"
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_SUBSYS_NET)&&to(MODULES_LIB_ZCBOR)&&action(include||call)"
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_SUBSYS_NET)&&to(ZEPHYR_SUBSYS_NVMEM)&&action(include||call)"
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_SUBSYS_NET)&&to(MODULES_CRYPTO_MBEDTLS)&&action(include||call)"
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_SUBSYS_NET)&&to(ZEPHYR_SUBSYS_CRC)&&action(include||call)"
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_SUBSYS_NET)&&to(ZEPHYR_LIB_POSIX)&&action(include||call)"
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_SUBSYS_NET)&&to(ZEPHYR_DRIVERS_CRYPTO)&&action(include||call)"
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_SUBSYS_NET)&&to(ZEPHYR_DRIVERS_PTP_CLOCK)&&action(include||call)"
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_SUBSYS_NET)&&to(ZEPHYR_LIB_HASH)&&action(include||call)"
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_SUBSYS_NET)&&to(ZEPHYR_DRIVERS_CAN)&&action(include||call)"
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_SUBSYS_NET)&&to(ZEPHYR_DRIVERS_RTC)&&action(include||call)"
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_SUBSYS_NET)&&to(ZEPHYR_LIB_MIDI2)&&action(include||call)"
-doc_end

###################################
#       ZEPHYR_SUBSYS_NVMEM       #
###################################

-doc_begin="The ZEPHYR_SUBSYS_NVMEM component standardizes interactions with non-volatile memory chips.
- It requires access to ZEPHYR_DRIVERS_FLASH to perform page layout reads.
- It requires access to ZEPHYR_DRIVERS_BBRAM to reach battery-backed RAM cells.
- It requires access to ZEPHYR_DRIVERS_EEPROM to manage generic internal EEPROM structures.
- It requires access to ZEPHYR_DRIVERS_OTP to control hardware fuses in one-time programmable storage blocks."
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_SUBSYS_NVMEM)&&to(ZEPHYR_DRIVERS_FLASH)&&action(include||call)"
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_SUBSYS_NVMEM)&&to(ZEPHYR_DRIVERS_BBRAM)&&action(include||call)"
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_SUBSYS_NVMEM)&&to(ZEPHYR_DRIVERS_EEPROM)&&action(include||call)"
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_SUBSYS_NVMEM)&&to(ZEPHYR_DRIVERS_OTP)&&action(include||call)"
-doc_end

###################################
#       ZEPHYR_SUBSYS_PMCI        #
###################################

-doc_begin="The ZEPHYR_SUBSYS_PMCI component implements Platform Management Component Interface models.
- It requires access to ZEPHYR_SUBSYS_RTIO to schedule asynchronous tracking requests.
- It requires access to ZEPHYR_LIB_OS_MPSC to queue multi-tenant incoming command packets.
- It requires access to ZEPHYR_LIB_HEAP to provision command parsing resources.
- It requires access to ZEPHYR_DRIVERS_GPIO to toggle alert lines.
- It requires access to MODULES_LIB_LIBMCTP to translate system data frames into explicit MCTP transport formats.
- It requires access to ZEPHYR_DRIVERS_I2C to transport tracking records over active physical SMBus lines.
- It requires access to ZEPHYR_DRIVERS_I3C to handle transactions over high-speed updated networks."
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_SUBSYS_PMCI)&&to(ZEPHYR_SUBSYS_RTIO)&&action(include||call)"
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_SUBSYS_PMCI)&&to(ZEPHYR_LIB_OS_MPSC)&&action(include||call)"
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_SUBSYS_PMCI)&&to(ZEPHYR_LIB_HEAP)&&action(include||call)"
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_SUBSYS_PMCI)&&to(ZEPHYR_DRIVERS_GPIO)&&action(include||call)"
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_SUBSYS_PMCI)&&to(MODULES_LIB_LIBMCTP)&&action(include||call)"
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_SUBSYS_PMCI)&&to(ZEPHYR_DRIVERS_I2C)&&action(include||call)"
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_SUBSYS_PMCI)&&to(ZEPHYR_DRIVERS_I3C)&&action(include||call)"
-doc_end

###################################
# ZEPHYR_SUBSYS_PORTABILITY_CMSIS_RTOS_V1 #
###################################

-doc_begin="The ZEPHYR_SUBSYS_PORTABILITY_CMSIS_RTOS_V1 component implements legacy abstraction translation scripts.
- It requires access to ZEPHYR_ARCH_API to map custom register/context calls down to matching underlying hardware routines."
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_SUBSYS_PORTABILITY_CMSIS_RTOS_V1)&&to(ZEPHYR_ARCH_API)&&action(include||call)"
-doc_end

###################################
#       ZEPHYR_SUBSYS_RTIO        #
###################################

-doc_begin="The ZEPHYR_SUBSYS_RTIO component details the high-efficiency real-time asynchronous I/O framework.
- It requires access to ZEPHYR_LIB_OS_MPSC to host lockless task scheduling ring buffers.
- It requires access to ZEPHYR_LIB_MEM_BLOCKS to manage structural allocation boundaries for execution jobs."
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_SUBSYS_RTIO)&&to(ZEPHYR_LIB_OS_MPSC)&&action(include||call)"
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_SUBSYS_RTIO)&&to(ZEPHYR_LIB_MEM_BLOCKS)&&action(include||call)"
-doc_end

###################################
#        ZEPHYR_SUBSYS_SD         #
###################################

-doc_begin="The ZEPHYR_SUBSYS_SD component manages high-capacity Secure Digital tracking stacks.
- It requires access to ZEPHYR_DRIVERS_SDHC to trigger baseline SD card commands over hardware controllers.
- It requires access to ZEPHYR_ARCH_COMMON to pull universal context models."
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_SUBSYS_SD)&&to(ZEPHYR_DRIVERS_SDHC)&&action(include||call)"
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_SUBSYS_SD)&&to(ZEPHYR_ARCH_COMMON)&&action(include||call)"
-doc_end

###################################
#  ZEPHYR_SUBSYS_SECURE_STORAGE   #
###################################

-doc_begin="The ZEPHYR_SUBSYS_SECURE_STORAGE component protects persistent files and key secrets from tampering.
- It requires access to MODULES_CRYPTO_TF_PSA_CRYPTO to secure data frames behind hardware-isolated cryptography features."
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_SUBSYS_SECURE_STORAGE)&&to(MODULES_CRYPTO_TF_PSA_CRYPTO)&&action(include||call)"
-doc_end

###################################
#       ZEPHYR_SUBSYS_USB         #
###################################

-doc_begin="The ZEPHYR_SUBSYS_USB component standardizes system-level device and host configurations.
- It requires access to ZEPHYR_DRIVERS_USB_C to toggle physical transceiver states during plug identification tasks.
- It requires access to ZEPHYR_LIB_SMF to drive state machines using the native State Machine Framework library."
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_SUBSYS_USB)&&to(ZEPHYR_DRIVERS_USB_C)&&action(include||call)"
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_SUBSYS_USB)&&to(ZEPHYR_LIB_SMF)&&action(include||call)"
-doc_end

###################################
#       ZEPHYR_SUBSYS_ZBUS        #
###################################

-doc_begin="The ZEPHYR_SUBSYS_ZBUS component manages internal publish-subscribe message routing systems.
- It requires access to ZEPHYR_LIB_NET_BUF to pack tracking message buffers securely.
- It requires access to ZEPHYR_SUBSYS_IPC to route events across active CPU cores when handling inter-processor targets."
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_SUBSYS_ZBUS)&&to(ZEPHYR_LIB_NET_BUF)&&action(include||call)"
-config=B.INDEPENDENCE,component_allows+=
  "from(ZEPHYR_SUBSYS_ZBUS)&&to(ZEPHYR_SUBSYS_IPC)&&action(include||call)"
-doc_end
