package io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v2;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import com.google.protobuf.v2;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Status;
/* loaded from: classes6.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f49579a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f49580b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f49581c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f49582d;

    /* renamed from: e  reason: collision with root package name */
    private static Descriptors.FileDescriptor f49583e = Descriptors.FileDescriptor.s(new String[]{"\n'envoy/config/trace/v2/http_tracer.proto\u0012\u0015envoy.config.trace.v2\u001a\u0019google/protobuf/any.proto\u001a\u001cgoogle/protobuf/struct.proto\u001a\u001dudpa/annotations/status.proto\u001a\u0017validate/validate.proto\"È\u0001\n\u0007Tracing\u00121\n\u0004http\u0018\u0001 \u0001(\u000b2#.envoy.config.trace.v2.Tracing.Http\u001a\u0089\u0001\n\u0004Http\u0012\u0015\n\u0004name\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002 \u0001\u0012-\n\u0006config\u0018\u0002 \u0001(\u000b2\u0017.google.protobuf.StructB\u0002\u0018\u0001H\u0000\u0012,\n\ftyped_config\u0018\u0003 \u0001(\u000b2\u0014.google.protobuf.AnyH\u0000B\r\n\u000bconfig_typeB@\n#io.envoyproxy.envoy.config.trace.v2B\u000fHttpTracerProtoP\u0001º\u0080ÈÑ\u0006\u0002\u0010\u0001b\u0006proto3"}, new Descriptors.FileDescriptor[]{com.google.protobuf.g.a(), v2.a(), Status.c(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f49579a = bVar;
        f49580b = new GeneratedMessageV3.e(bVar, new String[]{"Http"});
        Descriptors.b bVar2 = bVar.o().get(0);
        f49581c = bVar2;
        f49582d = new GeneratedMessageV3.e(bVar2, new String[]{"Name", "Config", "TypedConfig", "ConfigType"});
        d0 k10 = d0.k();
        k10.f(Status.f50839a);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(f49583e, k10);
        com.google.protobuf.g.a();
        v2.a();
        Status.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f49583e;
    }
}
