package io.grpc.reflection.v1alpha;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.tencent.liteav.txcplayer.ext.host.EngineConst;
@Deprecated
/* loaded from: classes5.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f45364a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f45365b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f45366c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f45367d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f45368e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f45369f;

    /* renamed from: g  reason: collision with root package name */
    static final Descriptors.b f45370g;

    /* renamed from: h  reason: collision with root package name */
    static final GeneratedMessageV3.e f45371h;

    /* renamed from: i  reason: collision with root package name */
    static final Descriptors.b f45372i;

    /* renamed from: j  reason: collision with root package name */
    static final GeneratedMessageV3.e f45373j;

    /* renamed from: k  reason: collision with root package name */
    static final Descriptors.b f45374k;

    /* renamed from: l  reason: collision with root package name */
    static final GeneratedMessageV3.e f45375l;

    /* renamed from: m  reason: collision with root package name */
    static final Descriptors.b f45376m;

    /* renamed from: n  reason: collision with root package name */
    static final GeneratedMessageV3.e f45377n;

    /* renamed from: o  reason: collision with root package name */
    static final Descriptors.b f45378o;

    /* renamed from: p  reason: collision with root package name */
    static final GeneratedMessageV3.e f45379p;

    /* renamed from: q  reason: collision with root package name */
    private static Descriptors.FileDescriptor f45380q = Descriptors.FileDescriptor.s(new String[]{"\n(grpc/reflection/v1alpha/reflection.proto\u0012\u0017grpc.reflection.v1alpha\"\u008a\u0002\n\u0017ServerReflectionRequest\u0012\f\n\u0004host\u0018\u0001 \u0001(\t\u0012\u001a\n\u0010file_by_filename\u0018\u0003 \u0001(\tH\u0000\u0012 \n\u0016file_containing_symbol\u0018\u0004 \u0001(\tH\u0000\u0012N\n\u0019file_containing_extension\u0018\u0005 \u0001(\u000b2).grpc.reflection.v1alpha.ExtensionRequestH\u0000\u0012'\n\u001dall_extension_numbers_of_type\u0018\u0006 \u0001(\tH\u0000\u0012\u0017\n\rlist_services\u0018\u0007 \u0001(\tH\u0000B\u0011\n\u000fmessage_request\"E\n\u0010ExtensionRequest\u0012\u0017\n\u000fcontaining_type\u0018\u0001 \u0001(\t\u0012\u0018\n\u0010extension_number\u0018\u0002 \u0001(\u0005\"Ñ\u0003\n\u0018ServerReflectionResponse\u0012\u0012\n\nvalid_host\u0018\u0001 \u0001(\t\u0012J\n\u0010original_request\u0018\u0002 \u0001(\u000b20.grpc.reflection.v1alpha.ServerReflectionRequest\u0012S\n\u0018file_descriptor_response\u0018\u0004 \u0001(\u000b2/.grpc.reflection.v1alpha.FileDescriptorResponseH\u0000\u0012Z\n\u001eall_extension_numbers_response\u0018\u0005 \u0001(\u000b20.grpc.reflection.v1alpha.ExtensionNumberResponseH\u0000\u0012N\n\u0016list_services_response\u0018\u0006 \u0001(\u000b2,.grpc.reflection.v1alpha.ListServiceResponseH\u0000\u0012@\n\u000eerror_response\u0018\u0007 \u0001(\u000b2&.grpc.reflection.v1alpha.ErrorResponseH\u0000B\u0012\n\u0010message_response\"7\n\u0016FileDescriptorResponse\u0012\u001d\n\u0015file_descriptor_proto\u0018\u0001 \u0003(\f\"K\n\u0017ExtensionNumberResponse\u0012\u0016\n\u000ebase_type_name\u0018\u0001 \u0001(\t\u0012\u0018\n\u0010extension_number\u0018\u0002 \u0003(\u0005\"P\n\u0013ListServiceResponse\u00129\n\u0007service\u0018\u0001 \u0003(\u000b2(.grpc.reflection.v1alpha.ServiceResponse\"\u001f\n\u000fServiceResponse\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\":\n\rErrorResponse\u0012\u0012\n\nerror_code\u0018\u0001 \u0001(\u0005\u0012\u0015\n\rerror_message\u0018\u0002 \u0001(\t2\u0093\u0001\n\u0010ServerReflection\u0012\u007f\n\u0014ServerReflectionInfo\u00120.grpc.reflection.v1alpha.ServerReflectionRequest\u001a1.grpc.reflection.v1alpha.ServerReflectionResponse(\u00010\u0001B8\n\u001aio.grpc.reflection.v1alphaB\u0015ServerReflectionProtoP\u0001¸\u0001\u0001b\u0006proto3"}, new Descriptors.FileDescriptor[0]);

    static {
        Descriptors.b bVar = a().m().get(0);
        f45364a = bVar;
        f45365b = new GeneratedMessageV3.e(bVar, new String[]{EngineConst.PluginName.HOST_NAME, "FileByFilename", "FileContainingSymbol", "FileContainingExtension", "AllExtensionNumbersOfType", "ListServices", "MessageRequest"});
        Descriptors.b bVar2 = a().m().get(1);
        f45366c = bVar2;
        f45367d = new GeneratedMessageV3.e(bVar2, new String[]{"ContainingType", "ExtensionNumber"});
        Descriptors.b bVar3 = a().m().get(2);
        f45368e = bVar3;
        f45369f = new GeneratedMessageV3.e(bVar3, new String[]{"ValidHost", "OriginalRequest", "FileDescriptorResponse", "AllExtensionNumbersResponse", "ListServicesResponse", "ErrorResponse", "MessageResponse"});
        Descriptors.b bVar4 = a().m().get(3);
        f45370g = bVar4;
        f45371h = new GeneratedMessageV3.e(bVar4, new String[]{"FileDescriptorProto"});
        Descriptors.b bVar5 = a().m().get(4);
        f45372i = bVar5;
        f45373j = new GeneratedMessageV3.e(bVar5, new String[]{"BaseTypeName", "ExtensionNumber"});
        Descriptors.b bVar6 = a().m().get(5);
        f45374k = bVar6;
        f45375l = new GeneratedMessageV3.e(bVar6, new String[]{"Service"});
        Descriptors.b bVar7 = a().m().get(6);
        f45376m = bVar7;
        f45377n = new GeneratedMessageV3.e(bVar7, new String[]{"Name"});
        Descriptors.b bVar8 = a().m().get(7);
        f45378o = bVar8;
        f45379p = new GeneratedMessageV3.e(bVar8, new String[]{"ErrorCode", "ErrorMessage"});
    }

    public static Descriptors.FileDescriptor a() {
        return f45380q;
    }
}
