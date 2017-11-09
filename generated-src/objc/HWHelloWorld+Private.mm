// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from helloworld.djinni

#import "HWHelloWorld+Private.h"
#import "HWHelloWorld.h"
#import "DJICppWrapperCache+Private.h"
#import "DJIError.h"
#import "DJIMarshal+Private.h"
#include <exception>
#include <stdexcept>
#include <utility>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@interface HWHelloWorld ()

- (id)initWithCpp:(const std::shared_ptr<::helloworld::HelloWorld>&)cppRef;

@end

@implementation HWHelloWorld {
    ::djinni::CppProxyCache::Handle<std::shared_ptr<::helloworld::HelloWorld>> _cppRefHandle;
}

- (id)initWithCpp:(const std::shared_ptr<::helloworld::HelloWorld>&)cppRef
{
    if (self = [super init]) {
        _cppRefHandle.assign(cppRef);
    }
    return self;
}

+ (nullable HWHelloWorld *)create {
    try {
        auto objcpp_result_ = ::helloworld::HelloWorld::create();
        return ::djinni_generated::HelloWorld::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nonnull NSString *)getMsg {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->get_msg();
        return ::djinni::String::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (void)setMsg:(nonnull NSString *)msg {
    try {
        _cppRefHandle.get()->set_msg(::djinni::String::toCpp(msg));
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

namespace djinni_generated {

auto HelloWorld::toCpp(ObjcType objc) -> CppType
{
    if (!objc) {
        return nullptr;
    }
    return objc->_cppRefHandle.get();
}

auto HelloWorld::fromCppOpt(const CppOptType& cpp) -> ObjcType
{
    if (!cpp) {
        return nil;
    }
    return ::djinni::get_cpp_proxy<HWHelloWorld>(cpp);
}

}  // namespace djinni_generated

@end
