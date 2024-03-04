package io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Status;
/* loaded from: classes6.dex */
public final class v {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f48290a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f48291b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f48292c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f48293d;

    /* renamed from: e  reason: collision with root package name */
    private static Descriptors.FileDescriptor f48294e = Descriptors.FileDescriptor.s(new String[]{"\n$envoy/config/core/v3/extension.proto\u0012\u0014envoy.config.core.v3\u001a(envoy/config/core/v3/config_source.proto\u001a\u0019google/protobuf/any.proto\u001a\u001dudpa/annotations/status.proto\u001a\u0017validate/validate.proto\"c\n\u0014TypedExtensionConfig\u0012\u0015\n\u0004name\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001\u00124\n\ftyped_config\u0018\u0002 \u0001(\u000b2\u0014.google.protobuf.AnyB\búB\u0005¢\u0001\u0002\b\u0001\"Õ\u0001\n\u0015ExtensionConfigSource\u0012C\n\rconfig_source\u0018\u0001 \u0001(\u000b2\".envoy.config.core.v3.ConfigSourceB\búB\u0005¢\u0001\u0002\b\u0001\u0012,\n\u000edefault_config\u0018\u0002 \u0001(\u000b2\u0014.google.protobuf.Any\u0012,\n$apply_default_config_without_warming\u0018\u0003 \u0001(\b\u0012\u001b\n\ttype_urls\u0018\u0004 \u0003(\tB\búB\u0005\u0092\u0001\u0002\b\u0001B>\n\"io.envoyproxy.envoy.config.core.v3B\u000eExtensionProtoP\u0001º\u0080ÈÑ\u0006\u0002\u0010\u0002b\u0006proto3"}, new Descriptors.FileDescriptor[]{l.a(), com.google.protobuf.g.a(), Status.c(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f48290a = bVar;
        f48291b = new GeneratedMessageV3.e(bVar, new String[]{"Name", "TypedConfig"});
        Descriptors.b bVar2 = a().m().get(1);
        f48292c = bVar2;
        f48293d = new GeneratedMessageV3.e(bVar2, new String[]{"ConfigSource", "DefaultConfig", "ApplyDefaultConfigWithoutWarming", "TypeUrls"});
        com.google.protobuf.d0 k10 = com.google.protobuf.d0.k();
        k10.f(Status.f50839a);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(f48294e, k10);
        l.a();
        com.google.protobuf.g.a();
        Status.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f48294e;
    }
}
