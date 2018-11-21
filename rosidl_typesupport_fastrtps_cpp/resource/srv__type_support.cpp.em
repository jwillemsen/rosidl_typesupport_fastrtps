// generated from rosidl_typesupport_fastrtps_cpp/resource/srv__type_support.cpp.em
// generated code does not contain a copyright notice

@#######################################################################
@# EmPy template for generating <srv>__type_support.cpp files
@#
@# Context:
@#  - spec (rosidl_parser.ServiceSpecification)
@#    Parsed specification of the .srv file
@#  - subfolder (string)
@#    The subfolder / subnamespace of the message
@#    Either 'srv' or 'action'
@#  - get_header_filename_from_msg_name (function)
@#######################################################################
@
#include "@(spec.pkg_name)/@(subfolder)/@(get_header_filename_from_msg_name(spec.srv_name))__rosidl_typesupport_fastrtps_cpp.hpp"

#include "rmw/error_handling.h"
#include "rosidl_typesupport_fastrtps_cpp/identifier.hpp"
#include "rosidl_typesupport_fastrtps_cpp/service_type_support.h"
#include "rosidl_typesupport_fastrtps_cpp/service_type_support_decl.hpp"

@{
header_filename = get_header_filename_from_msg_name(spec.srv_name)
if header_filename.endswith('__goal'):
    header_filename = header_filename[:-6]
elif header_filename.endswith('__result'):
    header_filename = header_filename[:-8]
elif header_filename.endswith('__feedback'):
    header_filename = header_filename[:-10]
}@
#include "@(spec.pkg_name)/@(subfolder)/@(header_filename)__struct.hpp"
#include "@(spec.pkg_name)/@(subfolder)/@(get_header_filename_from_msg_name(spec.srv_name + '_Request'))__rosidl_typesupport_fastrtps_cpp.hpp"
#include "@(spec.pkg_name)/@(subfolder)/@(get_header_filename_from_msg_name(spec.srv_name + '_Response'))__rosidl_typesupport_fastrtps_cpp.hpp"

namespace @(spec.pkg_name)
{

namespace @(subfolder)
{

namespace typesupport_fastrtps_cpp
{

static service_type_support_callbacks_t callbacks = {
  "@(spec.pkg_name)",
  "@(spec.srv_name)",
  ROSIDL_TYPESUPPORT_INTERFACE__MESSAGE_SYMBOL_NAME(rosidl_typesupport_fastrtps_cpp, @(spec.pkg_name), @(subfolder), @(spec.srv_name)_Request)(),
  ROSIDL_TYPESUPPORT_INTERFACE__MESSAGE_SYMBOL_NAME(rosidl_typesupport_fastrtps_cpp, @(spec.pkg_name), @(subfolder), @(spec.srv_name)_Response)(),
};

static rosidl_service_type_support_t handle = {
  rosidl_typesupport_fastrtps_cpp::typesupport_identifier,
  &callbacks,
  get_service_typesupport_handle_function,
};

}  // namespace typesupport_fastrtps_cpp

}  // namespace @(subfolder)

}  // namespace @(spec.pkg_name)

namespace rosidl_typesupport_fastrtps_cpp
{

template<>
ROSIDL_TYPESUPPORT_FASTRTPS_CPP_EXPORT_@(spec.pkg_name)
const rosidl_service_type_support_t *
get_service_type_support_handle<@(spec.pkg_name)::@(subfolder)::@(spec.srv_name)>()
{
  return &@(spec.pkg_name)::@(subfolder)::typesupport_fastrtps_cpp::handle;
}

}  // namespace rosidl_typesupport_fastrtps_cpp

#ifdef __cplusplus
extern "C"
{
#endif

const rosidl_service_type_support_t *
ROSIDL_TYPESUPPORT_INTERFACE__SERVICE_SYMBOL_NAME(rosidl_typesupport_fastrtps_cpp, @(spec.pkg_name), @(subfolder), @(spec.srv_name))() {
  return &@(spec.pkg_name)::@(subfolder)::typesupport_fastrtps_cpp::handle;
}

#ifdef __cplusplus
}
#endif
