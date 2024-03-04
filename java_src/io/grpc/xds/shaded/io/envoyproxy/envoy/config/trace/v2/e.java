package io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v2;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.s;
import io.grpc.xds.shaded.udpa.annotations.Status;
import io.opencensus.proto.trace.v1.i;
/* loaded from: classes6.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f49587a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f49588b;

    /* renamed from: c  reason: collision with root package name */
    private static Descriptors.FileDescriptor f49589c = Descriptors.FileDescriptor.s(new String[]{"\n&envoy/config/trace/v2/opencensus.proto\u0012\u0015envoy.config.trace.v2\u001a$envoy/api/v2/core/grpc_service.proto\u001a,opencensus/proto/trace/v1/trace_config.proto\u001a\u001dudpa/annotations/status.proto\"Ø\u0005\n\u0010OpenCensusConfig\u0012<\n\ftrace_config\u0018\u0001 \u0001(\u000b2&.opencensus.proto.trace.v1.TraceConfig\u0012\u001f\n\u0017stdout_exporter_enabled\u0018\u0002 \u0001(\b\u0012$\n\u001cstackdriver_exporter_enabled\u0018\u0003 \u0001(\b\u0012\u001e\n\u0016stackdriver_project_id\u0018\u0004 \u0001(\t\u0012\u001b\n\u0013stackdriver_address\u0018\n \u0001(\t\u0012@\n\u0018stackdriver_grpc_service\u0018\r \u0001(\u000b2\u001e.envoy.api.v2.core.GrpcService\u0012\u001f\n\u0017zipkin_exporter_enabled\u0018\u0005 \u0001(\b\u0012\u0012\n\nzipkin_url\u0018\u0006 \u0001(\t\u0012 \n\u0018ocagent_exporter_enabled\u0018\u000b \u0001(\b\u0012\u0017\n\u000focagent_address\u0018\f \u0001(\t\u0012<\n\u0014ocagent_grpc_service\u0018\u000e \u0001(\u000b2\u001e.envoy.api.v2.core.GrpcService\u0012T\n\u0016incoming_trace_context\u0018\b \u0003(\u000e24.envoy.config.trace.v2.OpenCensusConfig.TraceContext\u0012T\n\u0016outgoing_trace_context\u0018\t \u0003(\u000e24.envoy.config.trace.v2.OpenCensusConfig.TraceContext\"`\n\fTraceContext\u0012\b\n\u0004NONE\u0010\u0000\u0012\u0011\n\rTRACE_CONTEXT\u0010\u0001\u0012\u0012\n\u000eGRPC_TRACE_BIN\u0010\u0002\u0012\u0017\n\u0013CLOUD_TRACE_CONTEXT\u0010\u0003\u0012\u0006\n\u0002B3\u0010\u0004J\u0004\b\u0007\u0010\bB@\n#io.envoyproxy.envoy.config.trace.v2B\u000fOpencensusProtoP\u0001º\u0080ÈÑ\u0006\u0002\u0010\u0001b\u0006proto3"}, new Descriptors.FileDescriptor[]{s.a(), i.b(), Status.c()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f49587a = bVar;
        f49588b = new GeneratedMessageV3.e(bVar, new String[]{"TraceConfig", "StdoutExporterEnabled", "StackdriverExporterEnabled", "StackdriverProjectId", "StackdriverAddress", "StackdriverGrpcService", "ZipkinExporterEnabled", "ZipkinUrl", "OcagentExporterEnabled", "OcagentAddress", "OcagentGrpcService", "IncomingTraceContext", "OutgoingTraceContext"});
        d0 k10 = d0.k();
        k10.f(Status.f50839a);
        Descriptors.FileDescriptor.u(f49589c, k10);
        s.a();
        i.b();
        Status.c();
    }

    public static Descriptors.FileDescriptor a() {
        return f49589c;
    }
}
