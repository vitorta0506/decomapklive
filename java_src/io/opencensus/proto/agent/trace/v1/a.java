package io.opencensus.proto.agent.trace.v1;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import io.opencensus.proto.resource.v1.b;
import io.opencensus.proto.trace.v1.i;
import io.opencensus.proto.trace.v1.j;
/* loaded from: classes6.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f50959a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f50960b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f50961c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f50962d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f50963e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f50964f;

    /* renamed from: g  reason: collision with root package name */
    static final Descriptors.b f50965g;

    /* renamed from: h  reason: collision with root package name */
    static final GeneratedMessageV3.e f50966h;

    /* renamed from: i  reason: collision with root package name */
    private static Descriptors.FileDescriptor f50967i;

    /* renamed from: io.opencensus.proto.agent.trace.v1.a$a  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    static class C0505a implements Descriptors.FileDescriptor.a {
        C0505a() {
        }

        @Override // com.google.protobuf.Descriptors.FileDescriptor.a
        public d0 a(Descriptors.FileDescriptor fileDescriptor) {
            Descriptors.FileDescriptor unused = a.f50967i = fileDescriptor;
            return null;
        }
    }

    static {
        Descriptors.FileDescriptor.t(new String[]{"\n3opencensus/proto/agent/trace/v1/trace_service.proto\u0012\u001fopencensus.proto.agent.trace.v1\u001a-opencensus/proto/agent/common/v1/common.proto\u001a+opencensus/proto/resource/v1/resource.proto\u001a%opencensus/proto/trace/v1/trace.proto\u001a,opencensus/proto/trace/v1/trace_config.proto\"\u0084\u0001\n\u0014CurrentLibraryConfig\u00124\n\u0004node\u0018\u0001 \u0001(\u000b2&.opencensus.proto.agent.common.v1.Node\u00126\n\u0006config\u0018\u0002 \u0001(\u000b2&.opencensus.proto.trace.v1.TraceConfig\"\u0084\u0001\n\u0014UpdatedLibraryConfig\u00124\n\u0004node\u0018\u0001 \u0001(\u000b2&.opencensus.proto.agent.common.v1.Node\u00126\n\u0006config\u0018\u0002 \u0001(\u000b2&.opencensus.proto.trace.v1.TraceConfig\"»\u0001\n\u0019ExportTraceServiceRequest\u00124\n\u0004node\u0018\u0001 \u0001(\u000b2&.opencensus.proto.agent.common.v1.Node\u0012.\n\u0005spans\u0018\u0002 \u0003(\u000b2\u001f.opencensus.proto.trace.v1.Span\u00128\n\bresource\u0018\u0003 \u0001(\u000b2&.opencensus.proto.resource.v1.Resource\"\u001c\n\u001aExportTraceServiceResponse2\u0096\u0002\n\fTraceService\u0012|\n\u0006Config\u00125.opencensus.proto.agent.trace.v1.CurrentLibraryConfig\u001a5.opencensus.proto.agent.trace.v1.UpdatedLibraryConfig\"\u0000(\u00010\u0001\u0012\u0087\u0001\n\u0006Export\u0012:.opencensus.proto.agent.trace.v1.ExportTraceServiceRequest\u001a;.opencensus.proto.agent.trace.v1.ExportTraceServiceResponse\"\u0000(\u00010\u0001B\u0083\u0001\n\"io.opencensus.proto.agent.trace.v1B\u0011TraceServiceProtoP\u0001ZHgithub.com/census-instrumentation/opencensus-proto/gen-go/agent/trace/v1b\u0006proto3"}, new Descriptors.FileDescriptor[]{io.opencensus.proto.agent.common.v1.a.b(), b.b(), j.b(), i.b()}, new C0505a());
        Descriptors.b bVar = b().m().get(0);
        f50959a = bVar;
        f50960b = new GeneratedMessageV3.e(bVar, new String[]{"Node", "Config"});
        Descriptors.b bVar2 = b().m().get(1);
        f50961c = bVar2;
        f50962d = new GeneratedMessageV3.e(bVar2, new String[]{"Node", "Config"});
        Descriptors.b bVar3 = b().m().get(2);
        f50963e = bVar3;
        f50964f = new GeneratedMessageV3.e(bVar3, new String[]{"Node", "Spans", "Resource"});
        Descriptors.b bVar4 = b().m().get(3);
        f50965g = bVar4;
        f50966h = new GeneratedMessageV3.e(bVar4, new String[0]);
        io.opencensus.proto.agent.common.v1.a.b();
        b.b();
        j.b();
        i.b();
    }

    public static Descriptors.FileDescriptor b() {
        return f50967i;
    }
}
