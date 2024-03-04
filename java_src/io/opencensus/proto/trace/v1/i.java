package io.opencensus.proto.trace.v1;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
/* loaded from: classes7.dex */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f51221a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f51222b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f51223c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f51224d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f51225e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f51226f;

    /* renamed from: g  reason: collision with root package name */
    static final Descriptors.b f51227g;

    /* renamed from: h  reason: collision with root package name */
    static final GeneratedMessageV3.e f51228h;

    /* renamed from: i  reason: collision with root package name */
    private static Descriptors.FileDescriptor f51229i;

    /* loaded from: classes7.dex */
    static class a implements Descriptors.FileDescriptor.a {
        a() {
        }

        @Override // com.google.protobuf.Descriptors.FileDescriptor.a
        public d0 a(Descriptors.FileDescriptor fileDescriptor) {
            Descriptors.FileDescriptor unused = i.f51229i = fileDescriptor;
            return null;
        }
    }

    static {
        Descriptors.FileDescriptor.t(new String[]{"\n,opencensus/proto/trace/v1/trace_config.proto\u0012\u0019opencensus.proto.trace.v1\"\u0087\u0003\n\u000bTraceConfig\u0012L\n\u0013probability_sampler\u0018\u0001 \u0001(\u000b2-.opencensus.proto.trace.v1.ProbabilitySamplerH\u0000\u0012F\n\u0010constant_sampler\u0018\u0002 \u0001(\u000b2*.opencensus.proto.trace.v1.ConstantSamplerH\u0000\u0012O\n\u0015rate_limiting_sampler\u0018\u0003 \u0001(\u000b2..opencensus.proto.trace.v1.RateLimitingSamplerH\u0000\u0012 \n\u0018max_number_of_attributes\u0018\u0004 \u0001(\u0003\u0012!\n\u0019max_number_of_annotations\u0018\u0005 \u0001(\u0003\u0012$\n\u001cmax_number_of_message_events\u0018\u0006 \u0001(\u0003\u0012\u001b\n\u0013max_number_of_links\u0018\u0007 \u0001(\u0003B\t\n\u0007sampler\"1\n\u0012ProbabilitySampler\u0012\u001b\n\u0013samplingProbability\u0018\u0001 \u0001(\u0001\"¦\u0001\n\u000fConstantSampler\u0012M\n\bdecision\u0018\u0001 \u0001(\u000e2;.opencensus.proto.trace.v1.ConstantSampler.ConstantDecision\"D\n\u0010ConstantDecision\u0012\u000e\n\nALWAYS_OFF\u0010\u0000\u0012\r\n\tALWAYS_ON\u0010\u0001\u0012\u0011\n\rALWAYS_PARENT\u0010\u0002\"\"\n\u0013RateLimitingSampler\u0012\u000b\n\u0003qps\u0018\u0001 \u0001(\u0003Bv\n\u001cio.opencensus.proto.trace.v1B\u0010TraceConfigProtoP\u0001ZBgithub.com/census-instrumentation/opencensus-proto/gen-go/trace/v1b\u0006proto3"}, new Descriptors.FileDescriptor[0], new a());
        Descriptors.b bVar = b().m().get(0);
        f51221a = bVar;
        f51222b = new GeneratedMessageV3.e(bVar, new String[]{"ProbabilitySampler", "ConstantSampler", "RateLimitingSampler", "MaxNumberOfAttributes", "MaxNumberOfAnnotations", "MaxNumberOfMessageEvents", "MaxNumberOfLinks", "Sampler"});
        Descriptors.b bVar2 = b().m().get(1);
        f51223c = bVar2;
        f51224d = new GeneratedMessageV3.e(bVar2, new String[]{"SamplingProbability"});
        Descriptors.b bVar3 = b().m().get(2);
        f51225e = bVar3;
        f51226f = new GeneratedMessageV3.e(bVar3, new String[]{"Decision"});
        Descriptors.b bVar4 = b().m().get(3);
        f51227g = bVar4;
        f51228h = new GeneratedMessageV3.e(bVar4, new String[]{"Qps"});
    }

    public static Descriptors.FileDescriptor b() {
        return f51229i;
    }
}
