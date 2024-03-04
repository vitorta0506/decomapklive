package io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v3;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Status;
import io.grpc.xds.shaded.udpa.annotations.Versioning;
/* loaded from: classes6.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f49646a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f49647b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f49648c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f49649d;

    /* renamed from: e  reason: collision with root package name */
    private static Descriptors.FileDescriptor f49650e = Descriptors.FileDescriptor.s(new String[]{"\n'envoy/config/trace/v3/http_tracer.proto\u0012\u0015envoy.config.trace.v3\u001a\u0019google/protobuf/any.proto\u001a\u001dudpa/annotations/status.proto\u001a!udpa/annotations/versioning.proto\u001a\u0017validate/validate.proto\"ø\u0001\n\u0007Tracing\u00121\n\u0004http\u0018\u0001 \u0001(\u000b2#.envoy.config.trace.v3.Tracing.Http\u001a\u0093\u0001\n\u0004Http\u0012\u0015\n\u0004name\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001\u0012,\n\ftyped_config\u0018\u0003 \u0001(\u000b2\u0014.google.protobuf.AnyH\u0000:)\u009aÅ\u0088\u001e$\n\"envoy.config.trace.v2.Tracing.HttpB\r\n\u000bconfig_typeJ\u0004\b\u0002\u0010\u0003R\u0006config:$\u009aÅ\u0088\u001e\u001f\n\u001denvoy.config.trace.v2.TracingB@\n#io.envoyproxy.envoy.config.trace.v3B\u000fHttpTracerProtoP\u0001º\u0080ÈÑ\u0006\u0002\u0010\u0002b\u0006proto3"}, new Descriptors.FileDescriptor[]{com.google.protobuf.g.a(), Status.c(), Versioning.c(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f49646a = bVar;
        f49647b = new GeneratedMessageV3.e(bVar, new String[]{"Http"});
        Descriptors.b bVar2 = bVar.o().get(0);
        f49648c = bVar2;
        f49649d = new GeneratedMessageV3.e(bVar2, new String[]{"Name", "TypedConfig", "ConfigType"});
        d0 k10 = d0.k();
        k10.f(Status.f50839a);
        k10.f(Versioning.f50845a);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(f49650e, k10);
        com.google.protobuf.g.a();
        Status.c();
        Versioning.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f49650e;
    }
}
