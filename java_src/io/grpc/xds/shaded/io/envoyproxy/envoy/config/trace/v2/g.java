package io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v2;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import com.google.protobuf.p3;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Status;
/* loaded from: classes6.dex */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f49593a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f49594b;

    /* renamed from: c  reason: collision with root package name */
    private static Descriptors.FileDescriptor f49595c = Descriptors.FileDescriptor.s(new String[]{"\n\"envoy/config/trace/v2/zipkin.proto\u0012\u0015envoy.config.trace.v2\u001a\u001egoogle/protobuf/wrappers.proto\u001a#envoy/annotations/deprecation.proto\u001a\u001dudpa/annotations/status.proto\u001a\u0017validate/validate.proto\"ì\u0002\n\fZipkinConfig\u0012\"\n\u0011collector_cluster\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002 \u0001\u0012#\n\u0012collector_endpoint\u0018\u0002 \u0001(\tB\u0007úB\u0004r\u0002 \u0001\u0012\u0017\n\u000ftrace_id_128bit\u0018\u0003 \u0001(\b\u00127\n\u0013shared_span_context\u0018\u0004 \u0001(\u000b2\u001a.google.protobuf.BoolValue\u0012`\n\u001acollector_endpoint_version\u0018\u0005 \u0001(\u000e2<.envoy.config.trace.v2.ZipkinConfig.CollectorEndpointVersion\"_\n\u0018CollectorEndpointVersion\u0012\u001a\n\fHTTP_JSON_V1\u0010\u0000\u001a\b\b\u0001¨÷´\u008b\u0002\u0001\u0012\r\n\tHTTP_JSON\u0010\u0001\u0012\u000e\n\nHTTP_PROTO\u0010\u0002\u0012\b\n\u0004GRPC\u0010\u0003B<\n#io.envoyproxy.envoy.config.trace.v2B\u000bZipkinProtoP\u0001º\u0080ÈÑ\u0006\u0002\u0010\u0001b\u0006proto3"}, new Descriptors.FileDescriptor[]{p3.a(), io.grpc.xds.shaded.envoy.annotations.a.a(), Status.c(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f49593a = bVar;
        f49594b = new GeneratedMessageV3.e(bVar, new String[]{"CollectorCluster", "CollectorEndpoint", "TraceId128Bit", "SharedSpanContext", "CollectorEndpointVersion"});
        d0 k10 = d0.k();
        k10.f(io.grpc.xds.shaded.envoy.annotations.a.f45759c);
        k10.f(Status.f50839a);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(f49595c, k10);
        p3.a();
        io.grpc.xds.shaded.envoy.annotations.a.a();
        Status.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f49595c;
    }
}
