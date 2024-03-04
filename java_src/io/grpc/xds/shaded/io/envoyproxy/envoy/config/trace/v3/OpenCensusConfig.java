package io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v3;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.h2;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import com.google.protobuf.u0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.w;
import io.opencensus.proto.trace.v1.TraceConfig;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class OpenCensusConfig extends GeneratedMessageV3 implements r1 {
    public static final int INCOMING_TRACE_CONTEXT_FIELD_NUMBER = 8;
    public static final int OCAGENT_ADDRESS_FIELD_NUMBER = 12;
    public static final int OCAGENT_EXPORTER_ENABLED_FIELD_NUMBER = 11;
    public static final int OCAGENT_GRPC_SERVICE_FIELD_NUMBER = 14;
    public static final int OUTGOING_TRACE_CONTEXT_FIELD_NUMBER = 9;
    public static final int STACKDRIVER_ADDRESS_FIELD_NUMBER = 10;
    public static final int STACKDRIVER_EXPORTER_ENABLED_FIELD_NUMBER = 3;
    public static final int STACKDRIVER_GRPC_SERVICE_FIELD_NUMBER = 13;
    public static final int STACKDRIVER_PROJECT_ID_FIELD_NUMBER = 4;
    public static final int STDOUT_EXPORTER_ENABLED_FIELD_NUMBER = 2;
    public static final int TRACE_CONFIG_FIELD_NUMBER = 1;
    public static final int ZIPKIN_EXPORTER_ENABLED_FIELD_NUMBER = 5;
    public static final int ZIPKIN_URL_FIELD_NUMBER = 6;
    private static final long serialVersionUID = 0;
    private int incomingTraceContextMemoizedSerializedSize;
    private List<Integer> incomingTraceContext_;
    private byte memoizedIsInitialized;
    private volatile Object ocagentAddress_;
    private boolean ocagentExporterEnabled_;
    private GrpcService ocagentGrpcService_;
    private int outgoingTraceContextMemoizedSerializedSize;
    private List<Integer> outgoingTraceContext_;
    private volatile Object stackdriverAddress_;
    private boolean stackdriverExporterEnabled_;
    private GrpcService stackdriverGrpcService_;
    private volatile Object stackdriverProjectId_;
    private boolean stdoutExporterEnabled_;
    private TraceConfig traceConfig_;
    private boolean zipkinExporterEnabled_;
    private volatile Object zipkinUrl_;
    private static final u0.h.a<Integer, TraceContext> incomingTraceContext_converter_ = new a();
    private static final u0.h.a<Integer, TraceContext> outgoingTraceContext_converter_ = new b();
    private static final OpenCensusConfig DEFAULT_INSTANCE = new OpenCensusConfig();
    private static final e2<OpenCensusConfig> PARSER = new c();

    /* loaded from: classes6.dex */
    public enum TraceContext implements h2 {
        NONE(0),
        TRACE_CONTEXT(1),
        GRPC_TRACE_BIN(2),
        CLOUD_TRACE_CONTEXT(3),
        B3(4),
        UNRECOGNIZED(-1);
        
        public static final int B3_VALUE = 4;
        public static final int CLOUD_TRACE_CONTEXT_VALUE = 3;
        public static final int GRPC_TRACE_BIN_VALUE = 2;
        public static final int NONE_VALUE = 0;
        public static final int TRACE_CONTEXT_VALUE = 1;
        private final int value;
        private static final u0.d<TraceContext> internalValueMap = new a();
        private static final TraceContext[] VALUES = values();

        /* loaded from: classes6.dex */
        class a implements u0.d<TraceContext> {
            a() {
            }

            @Override // com.google.protobuf.u0.d
            /* renamed from: b */
            public TraceContext a(int i9) {
                return TraceContext.forNumber(i9);
            }
        }

        TraceContext(int i9) {
            this.value = i9;
        }

        public static TraceContext forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 != 2) {
                        if (i9 != 3) {
                            if (i9 != 4) {
                                return null;
                            }
                            return B3;
                        }
                        return CLOUD_TRACE_CONTEXT;
                    }
                    return GRPC_TRACE_BIN;
                }
                return TRACE_CONTEXT;
            }
            return NONE;
        }

        public static final Descriptors.d getDescriptor() {
            return OpenCensusConfig.getDescriptor().k().get(0);
        }

        public static u0.d<TraceContext> internalGetValueMap() {
            return internalValueMap;
        }

        public final Descriptors.d getDescriptorForType() {
            return getDescriptor();
        }

        @Override // com.google.protobuf.u0.c
        public final int getNumber() {
            if (this != UNRECOGNIZED) {
                return this.value;
            }
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }

        public final Descriptors.e getValueDescriptor() {
            if (this != UNRECOGNIZED) {
                return getDescriptor().k().get(ordinal());
            }
            throw new IllegalStateException("Can't get the descriptor of an unrecognized enum value.");
        }

        @Deprecated
        public static TraceContext valueOf(int i9) {
            return forNumber(i9);
        }

        public static TraceContext valueOf(Descriptors.e eVar) {
            if (eVar.h() == getDescriptor()) {
                if (eVar.g() == -1) {
                    return UNRECOGNIZED;
                }
                return VALUES[eVar.g()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a implements u0.h.a<Integer, TraceContext> {
        a() {
        }

        @Override // com.google.protobuf.u0.h.a
        /* renamed from: a */
        public TraceContext convert(Integer num) {
            TraceContext valueOf = TraceContext.valueOf(num.intValue());
            return valueOf == null ? TraceContext.UNRECOGNIZED : valueOf;
        }
    }

    /* loaded from: classes6.dex */
    class b implements u0.h.a<Integer, TraceContext> {
        b() {
        }

        @Override // com.google.protobuf.u0.h.a
        /* renamed from: a */
        public TraceContext convert(Integer num) {
            TraceContext valueOf = TraceContext.valueOf(num.intValue());
            return valueOf == null ? TraceContext.UNRECOGNIZED : valueOf;
        }
    }

    /* loaded from: classes6.dex */
    class c extends com.google.protobuf.c<OpenCensusConfig> {
        c() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public OpenCensusConfig m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new OpenCensusConfig(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class d extends GeneratedMessageV3.b<d> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private int f49607e;

        /* renamed from: f  reason: collision with root package name */
        private TraceConfig f49608f;

        /* renamed from: g  reason: collision with root package name */
        private q2<TraceConfig, TraceConfig.c, io.opencensus.proto.trace.v1.h> f49609g;

        /* renamed from: h  reason: collision with root package name */
        private boolean f49610h;

        /* renamed from: i  reason: collision with root package name */
        private boolean f49611i;

        /* renamed from: j  reason: collision with root package name */
        private Object f49612j;

        /* renamed from: k  reason: collision with root package name */
        private Object f49613k;

        /* renamed from: l  reason: collision with root package name */
        private GrpcService f49614l;

        /* renamed from: m  reason: collision with root package name */
        private q2<GrpcService, GrpcService.c, w> f49615m;

        /* renamed from: n  reason: collision with root package name */
        private boolean f49616n;

        /* renamed from: o  reason: collision with root package name */
        private Object f49617o;

        /* renamed from: p  reason: collision with root package name */
        private boolean f49618p;

        /* renamed from: q  reason: collision with root package name */
        private Object f49619q;

        /* renamed from: r  reason: collision with root package name */
        private GrpcService f49620r;

        /* renamed from: s  reason: collision with root package name */
        private q2<GrpcService, GrpcService.c, w> f49621s;

        /* renamed from: t  reason: collision with root package name */
        private List<Integer> f49622t;

        /* renamed from: u  reason: collision with root package name */
        private List<Integer> f49623u;

        /* synthetic */ d(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f49607e & 1) == 0) {
                this.f49622t = new ArrayList(this.f49622t);
                this.f49607e |= 1;
            }
        }

        private void b0() {
            if ((this.f49607e & 2) == 0) {
                this.f49623u = new ArrayList(this.f49623u);
                this.f49607e |= 2;
            }
        }

        private void e0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return e.f49655b.d(OpenCensusConfig.class, d.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public d L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (d) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public OpenCensusConfig build() {
            OpenCensusConfig I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public OpenCensusConfig I() {
            OpenCensusConfig openCensusConfig = new OpenCensusConfig(this, (a) null);
            q2<TraceConfig, TraceConfig.c, io.opencensus.proto.trace.v1.h> q2Var = this.f49609g;
            if (q2Var == null) {
                openCensusConfig.traceConfig_ = this.f49608f;
            } else {
                openCensusConfig.traceConfig_ = q2Var.b();
            }
            openCensusConfig.stdoutExporterEnabled_ = this.f49610h;
            openCensusConfig.stackdriverExporterEnabled_ = this.f49611i;
            openCensusConfig.stackdriverProjectId_ = this.f49612j;
            openCensusConfig.stackdriverAddress_ = this.f49613k;
            q2<GrpcService, GrpcService.c, w> q2Var2 = this.f49615m;
            if (q2Var2 == null) {
                openCensusConfig.stackdriverGrpcService_ = this.f49614l;
            } else {
                openCensusConfig.stackdriverGrpcService_ = q2Var2.b();
            }
            openCensusConfig.zipkinExporterEnabled_ = this.f49616n;
            openCensusConfig.zipkinUrl_ = this.f49617o;
            openCensusConfig.ocagentExporterEnabled_ = this.f49618p;
            openCensusConfig.ocagentAddress_ = this.f49619q;
            q2<GrpcService, GrpcService.c, w> q2Var3 = this.f49621s;
            if (q2Var3 == null) {
                openCensusConfig.ocagentGrpcService_ = this.f49620r;
            } else {
                openCensusConfig.ocagentGrpcService_ = q2Var3.b();
            }
            if ((this.f49607e & 1) != 0) {
                this.f49622t = Collections.unmodifiableList(this.f49622t);
                this.f49607e &= -2;
            }
            openCensusConfig.incomingTraceContext_ = this.f49622t;
            if ((this.f49607e & 2) != 0) {
                this.f49623u = Collections.unmodifiableList(this.f49623u);
                this.f49607e &= -3;
            }
            openCensusConfig.outgoingTraceContext_ = this.f49623u;
            Q();
            return openCensusConfig;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public d n() {
            return (d) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: d0 */
        public OpenCensusConfig getDefaultInstanceForType() {
            return OpenCensusConfig.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v3.OpenCensusConfig.d u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v3.OpenCensusConfig.access$1800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v3.OpenCensusConfig r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v3.OpenCensusConfig) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.i0(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v3.OpenCensusConfig r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v3.OpenCensusConfig) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.i0(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v3.OpenCensusConfig.d.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v3.OpenCensusConfig$d");
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return e.f49654a;
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public d v(l1 l1Var) {
            if (l1Var instanceof OpenCensusConfig) {
                return i0((OpenCensusConfig) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public d i0(OpenCensusConfig openCensusConfig) {
            if (openCensusConfig == OpenCensusConfig.getDefaultInstance()) {
                return this;
            }
            if (openCensusConfig.hasTraceConfig()) {
                l0(openCensusConfig.getTraceConfig());
            }
            if (openCensusConfig.getStdoutExporterEnabled()) {
                r0(openCensusConfig.getStdoutExporterEnabled());
            }
            if (openCensusConfig.getStackdriverExporterEnabled()) {
                q0(openCensusConfig.getStackdriverExporterEnabled());
            }
            if (!openCensusConfig.getStackdriverProjectId().isEmpty()) {
                this.f49612j = openCensusConfig.stackdriverProjectId_;
                R();
            }
            if (!openCensusConfig.getStackdriverAddress().isEmpty()) {
                this.f49613k = openCensusConfig.stackdriverAddress_;
                R();
            }
            if (openCensusConfig.hasStackdriverGrpcService()) {
                k0(openCensusConfig.getStackdriverGrpcService());
            }
            if (openCensusConfig.getZipkinExporterEnabled()) {
                t0(openCensusConfig.getZipkinExporterEnabled());
            }
            if (!openCensusConfig.getZipkinUrl().isEmpty()) {
                this.f49617o = openCensusConfig.zipkinUrl_;
                R();
            }
            if (openCensusConfig.getOcagentExporterEnabled()) {
                o0(openCensusConfig.getOcagentExporterEnabled());
            }
            if (!openCensusConfig.getOcagentAddress().isEmpty()) {
                this.f49619q = openCensusConfig.ocagentAddress_;
                R();
            }
            if (openCensusConfig.hasOcagentGrpcService()) {
                j0(openCensusConfig.getOcagentGrpcService());
            }
            if (!openCensusConfig.incomingTraceContext_.isEmpty()) {
                if (this.f49622t.isEmpty()) {
                    this.f49622t = openCensusConfig.incomingTraceContext_;
                    this.f49607e &= -2;
                } else {
                    a0();
                    this.f49622t.addAll(openCensusConfig.incomingTraceContext_);
                }
                R();
            }
            if (!openCensusConfig.outgoingTraceContext_.isEmpty()) {
                if (this.f49623u.isEmpty()) {
                    this.f49623u = openCensusConfig.outgoingTraceContext_;
                    this.f49607e &= -3;
                } else {
                    b0();
                    this.f49623u.addAll(openCensusConfig.outgoingTraceContext_);
                }
                R();
            }
            z(((GeneratedMessageV3) openCensusConfig).unknownFields);
            R();
            return this;
        }

        public d j0(GrpcService grpcService) {
            q2<GrpcService, GrpcService.c, w> q2Var = this.f49621s;
            if (q2Var == null) {
                GrpcService grpcService2 = this.f49620r;
                if (grpcService2 != null) {
                    this.f49620r = GrpcService.newBuilder(grpcService2).j0(grpcService).I();
                } else {
                    this.f49620r = grpcService;
                }
                R();
            } else {
                q2Var.e(grpcService);
            }
            return this;
        }

        public d k0(GrpcService grpcService) {
            q2<GrpcService, GrpcService.c, w> q2Var = this.f49615m;
            if (q2Var == null) {
                GrpcService grpcService2 = this.f49614l;
                if (grpcService2 != null) {
                    this.f49614l = GrpcService.newBuilder(grpcService2).j0(grpcService).I();
                } else {
                    this.f49614l = grpcService;
                }
                R();
            } else {
                q2Var.e(grpcService);
            }
            return this;
        }

        public d l0(TraceConfig traceConfig) {
            q2<TraceConfig, TraceConfig.c, io.opencensus.proto.trace.v1.h> q2Var = this.f49609g;
            if (q2Var == null) {
                TraceConfig traceConfig2 = this.f49608f;
                if (traceConfig2 != null) {
                    this.f49608f = TraceConfig.newBuilder(traceConfig2).h0(traceConfig).I();
                } else {
                    this.f49608f = traceConfig;
                }
                R();
            } else {
                q2Var.e(traceConfig);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: m0 */
        public final d z(h3 h3Var) {
            return (d) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: n0 */
        public d c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (d) super.c(fieldDescriptor, obj);
        }

        public d o0(boolean z10) {
            this.f49618p = z10;
            R();
            return this;
        }

        public d q0(boolean z10) {
            this.f49611i = z10;
            R();
            return this;
        }

        public d r0(boolean z10) {
            this.f49610h = z10;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: s0 */
        public final d f1(h3 h3Var) {
            return (d) super.f1(h3Var);
        }

        @Deprecated
        public d t0(boolean z10) {
            this.f49616n = z10;
            R();
            return this;
        }

        /* synthetic */ d(a aVar) {
            this();
        }

        private d() {
            this.f49612j = "";
            this.f49613k = "";
            this.f49617o = "";
            this.f49619q = "";
            this.f49622t = Collections.emptyList();
            this.f49623u = Collections.emptyList();
            e0();
        }

        private d(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f49612j = "";
            this.f49613k = "";
            this.f49617o = "";
            this.f49619q = "";
            this.f49622t = Collections.emptyList();
            this.f49623u = Collections.emptyList();
            e0();
        }
    }

    /* synthetic */ OpenCensusConfig(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static OpenCensusConfig getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return e.f49654a;
    }

    public static d newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static OpenCensusConfig parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (OpenCensusConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static OpenCensusConfig parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<OpenCensusConfig> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof OpenCensusConfig)) {
            return super.equals(obj);
        }
        OpenCensusConfig openCensusConfig = (OpenCensusConfig) obj;
        if (hasTraceConfig() != openCensusConfig.hasTraceConfig()) {
            return false;
        }
        if ((!hasTraceConfig() || getTraceConfig().equals(openCensusConfig.getTraceConfig())) && getStdoutExporterEnabled() == openCensusConfig.getStdoutExporterEnabled() && getStackdriverExporterEnabled() == openCensusConfig.getStackdriverExporterEnabled() && getStackdriverProjectId().equals(openCensusConfig.getStackdriverProjectId()) && getStackdriverAddress().equals(openCensusConfig.getStackdriverAddress()) && hasStackdriverGrpcService() == openCensusConfig.hasStackdriverGrpcService()) {
            if ((!hasStackdriverGrpcService() || getStackdriverGrpcService().equals(openCensusConfig.getStackdriverGrpcService())) && getZipkinExporterEnabled() == openCensusConfig.getZipkinExporterEnabled() && getZipkinUrl().equals(openCensusConfig.getZipkinUrl()) && getOcagentExporterEnabled() == openCensusConfig.getOcagentExporterEnabled() && getOcagentAddress().equals(openCensusConfig.getOcagentAddress()) && hasOcagentGrpcService() == openCensusConfig.hasOcagentGrpcService()) {
                return (!hasOcagentGrpcService() || getOcagentGrpcService().equals(openCensusConfig.getOcagentGrpcService())) && this.incomingTraceContext_.equals(openCensusConfig.incomingTraceContext_) && this.outgoingTraceContext_.equals(openCensusConfig.outgoingTraceContext_) && this.unknownFields.equals(openCensusConfig.unknownFields);
            }
            return false;
        }
        return false;
    }

    public TraceContext getIncomingTraceContext(int i9) {
        return incomingTraceContext_converter_.convert(this.incomingTraceContext_.get(i9));
    }

    public int getIncomingTraceContextCount() {
        return this.incomingTraceContext_.size();
    }

    public List<TraceContext> getIncomingTraceContextList() {
        return new u0.h(this.incomingTraceContext_, incomingTraceContext_converter_);
    }

    public int getIncomingTraceContextValue(int i9) {
        return this.incomingTraceContext_.get(i9).intValue();
    }

    public List<Integer> getIncomingTraceContextValueList() {
        return this.incomingTraceContext_;
    }

    public String getOcagentAddress() {
        Object obj = this.ocagentAddress_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.ocagentAddress_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getOcagentAddressBytes() {
        Object obj = this.ocagentAddress_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.ocagentAddress_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public boolean getOcagentExporterEnabled() {
        return this.ocagentExporterEnabled_;
    }

    public GrpcService getOcagentGrpcService() {
        GrpcService grpcService = this.ocagentGrpcService_;
        return grpcService == null ? GrpcService.getDefaultInstance() : grpcService;
    }

    public w getOcagentGrpcServiceOrBuilder() {
        return getOcagentGrpcService();
    }

    public TraceContext getOutgoingTraceContext(int i9) {
        return outgoingTraceContext_converter_.convert(this.outgoingTraceContext_.get(i9));
    }

    public int getOutgoingTraceContextCount() {
        return this.outgoingTraceContext_.size();
    }

    public List<TraceContext> getOutgoingTraceContextList() {
        return new u0.h(this.outgoingTraceContext_, outgoingTraceContext_converter_);
    }

    public int getOutgoingTraceContextValue(int i9) {
        return this.outgoingTraceContext_.get(i9).intValue();
    }

    public List<Integer> getOutgoingTraceContextValueList() {
        return this.outgoingTraceContext_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<OpenCensusConfig> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.traceConfig_ != null ? CodedOutputStream.G(1, getTraceConfig()) + 0 : 0;
        boolean z10 = this.stdoutExporterEnabled_;
        if (z10) {
            G += CodedOutputStream.e(2, z10);
        }
        boolean z11 = this.stackdriverExporterEnabled_;
        if (z11) {
            G += CodedOutputStream.e(3, z11);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.stackdriverProjectId_)) {
            G += GeneratedMessageV3.computeStringSize(4, this.stackdriverProjectId_);
        }
        boolean z12 = this.zipkinExporterEnabled_;
        if (z12) {
            G += CodedOutputStream.e(5, z12);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.zipkinUrl_)) {
            G += GeneratedMessageV3.computeStringSize(6, this.zipkinUrl_);
        }
        int i10 = 0;
        for (int i11 = 0; i11 < this.incomingTraceContext_.size(); i11++) {
            i10 += CodedOutputStream.m(this.incomingTraceContext_.get(i11).intValue());
        }
        int i12 = G + i10;
        if (!getIncomingTraceContextList().isEmpty()) {
            i12 = i12 + 1 + CodedOutputStream.Z(i10);
        }
        this.incomingTraceContextMemoizedSerializedSize = i10;
        int i13 = 0;
        for (int i14 = 0; i14 < this.outgoingTraceContext_.size(); i14++) {
            i13 += CodedOutputStream.m(this.outgoingTraceContext_.get(i14).intValue());
        }
        int i15 = i12 + i13;
        if (!getOutgoingTraceContextList().isEmpty()) {
            i15 = i15 + 1 + CodedOutputStream.Z(i13);
        }
        this.outgoingTraceContextMemoizedSerializedSize = i13;
        if (!GeneratedMessageV3.isStringEmpty(this.stackdriverAddress_)) {
            i15 += GeneratedMessageV3.computeStringSize(10, this.stackdriverAddress_);
        }
        boolean z13 = this.ocagentExporterEnabled_;
        if (z13) {
            i15 += CodedOutputStream.e(11, z13);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.ocagentAddress_)) {
            i15 += GeneratedMessageV3.computeStringSize(12, this.ocagentAddress_);
        }
        if (this.stackdriverGrpcService_ != null) {
            i15 += CodedOutputStream.G(13, getStackdriverGrpcService());
        }
        if (this.ocagentGrpcService_ != null) {
            i15 += CodedOutputStream.G(14, getOcagentGrpcService());
        }
        int serializedSize = i15 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public String getStackdriverAddress() {
        Object obj = this.stackdriverAddress_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.stackdriverAddress_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getStackdriverAddressBytes() {
        Object obj = this.stackdriverAddress_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.stackdriverAddress_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public boolean getStackdriverExporterEnabled() {
        return this.stackdriverExporterEnabled_;
    }

    public GrpcService getStackdriverGrpcService() {
        GrpcService grpcService = this.stackdriverGrpcService_;
        return grpcService == null ? GrpcService.getDefaultInstance() : grpcService;
    }

    public w getStackdriverGrpcServiceOrBuilder() {
        return getStackdriverGrpcService();
    }

    public String getStackdriverProjectId() {
        Object obj = this.stackdriverProjectId_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.stackdriverProjectId_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getStackdriverProjectIdBytes() {
        Object obj = this.stackdriverProjectId_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.stackdriverProjectId_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public boolean getStdoutExporterEnabled() {
        return this.stdoutExporterEnabled_;
    }

    public TraceConfig getTraceConfig() {
        TraceConfig traceConfig = this.traceConfig_;
        return traceConfig == null ? TraceConfig.getDefaultInstance() : traceConfig;
    }

    public io.opencensus.proto.trace.v1.h getTraceConfigOrBuilder() {
        return getTraceConfig();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    @Deprecated
    public boolean getZipkinExporterEnabled() {
        return this.zipkinExporterEnabled_;
    }

    @Deprecated
    public String getZipkinUrl() {
        Object obj = this.zipkinUrl_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.zipkinUrl_ = stringUtf8;
        return stringUtf8;
    }

    @Deprecated
    public ByteString getZipkinUrlBytes() {
        Object obj = this.zipkinUrl_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.zipkinUrl_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public boolean hasOcagentGrpcService() {
        return this.ocagentGrpcService_ != null;
    }

    public boolean hasStackdriverGrpcService() {
        return this.stackdriverGrpcService_ != null;
    }

    public boolean hasTraceConfig() {
        return this.traceConfig_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasTraceConfig()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getTraceConfig().hashCode();
        }
        int d10 = (((((((((((((((hashCode * 37) + 2) * 53) + u0.d(getStdoutExporterEnabled())) * 37) + 3) * 53) + u0.d(getStackdriverExporterEnabled())) * 37) + 4) * 53) + getStackdriverProjectId().hashCode()) * 37) + 10) * 53) + getStackdriverAddress().hashCode();
        if (hasStackdriverGrpcService()) {
            d10 = (((d10 * 37) + 13) * 53) + getStackdriverGrpcService().hashCode();
        }
        int d11 = (((((((((((((((d10 * 37) + 5) * 53) + u0.d(getZipkinExporterEnabled())) * 37) + 6) * 53) + getZipkinUrl().hashCode()) * 37) + 11) * 53) + u0.d(getOcagentExporterEnabled())) * 37) + 12) * 53) + getOcagentAddress().hashCode();
        if (hasOcagentGrpcService()) {
            d11 = (((d11 * 37) + 14) * 53) + getOcagentGrpcService().hashCode();
        }
        if (getIncomingTraceContextCount() > 0) {
            d11 = (((d11 * 37) + 8) * 53) + this.incomingTraceContext_.hashCode();
        }
        if (getOutgoingTraceContextCount() > 0) {
            d11 = (((d11 * 37) + 9) * 53) + this.outgoingTraceContext_.hashCode();
        }
        int hashCode2 = (d11 * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return e.f49655b.d(OpenCensusConfig.class, d.class);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.p1
    public final boolean isInitialized() {
        byte b10 = this.memoizedIsInitialized;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.memoizedIsInitialized = (byte) 1;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public Object newInstance(GeneratedMessageV3.f fVar) {
        return new OpenCensusConfig();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        getSerializedSize();
        if (this.traceConfig_ != null) {
            codedOutputStream.L0(1, getTraceConfig());
        }
        boolean z10 = this.stdoutExporterEnabled_;
        if (z10) {
            codedOutputStream.n0(2, z10);
        }
        boolean z11 = this.stackdriverExporterEnabled_;
        if (z11) {
            codedOutputStream.n0(3, z11);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.stackdriverProjectId_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 4, this.stackdriverProjectId_);
        }
        boolean z12 = this.zipkinExporterEnabled_;
        if (z12) {
            codedOutputStream.n0(5, z12);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.zipkinUrl_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 6, this.zipkinUrl_);
        }
        if (getIncomingTraceContextList().size() > 0) {
            codedOutputStream.d1(66);
            codedOutputStream.d1(this.incomingTraceContextMemoizedSerializedSize);
        }
        for (int i9 = 0; i9 < this.incomingTraceContext_.size(); i9++) {
            codedOutputStream.w0(this.incomingTraceContext_.get(i9).intValue());
        }
        if (getOutgoingTraceContextList().size() > 0) {
            codedOutputStream.d1(74);
            codedOutputStream.d1(this.outgoingTraceContextMemoizedSerializedSize);
        }
        for (int i10 = 0; i10 < this.outgoingTraceContext_.size(); i10++) {
            codedOutputStream.w0(this.outgoingTraceContext_.get(i10).intValue());
        }
        if (!GeneratedMessageV3.isStringEmpty(this.stackdriverAddress_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 10, this.stackdriverAddress_);
        }
        boolean z13 = this.ocagentExporterEnabled_;
        if (z13) {
            codedOutputStream.n0(11, z13);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.ocagentAddress_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 12, this.ocagentAddress_);
        }
        if (this.stackdriverGrpcService_ != null) {
            codedOutputStream.L0(13, getStackdriverGrpcService());
        }
        if (this.ocagentGrpcService_ != null) {
            codedOutputStream.L0(14, getOcagentGrpcService());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ OpenCensusConfig(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static d newBuilder(OpenCensusConfig openCensusConfig) {
        return DEFAULT_INSTANCE.toBuilder().i0(openCensusConfig);
    }

    public static OpenCensusConfig parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private OpenCensusConfig(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static OpenCensusConfig parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (OpenCensusConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static OpenCensusConfig parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public OpenCensusConfig getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public d toBuilder() {
        return this == DEFAULT_INSTANCE ? new d((a) null) : new d((a) null).i0(this);
    }

    public static OpenCensusConfig parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public d newBuilderForType() {
        return newBuilder();
    }

    private OpenCensusConfig() {
        this.memoizedIsInitialized = (byte) -1;
        this.stackdriverProjectId_ = "";
        this.stackdriverAddress_ = "";
        this.zipkinUrl_ = "";
        this.ocagentAddress_ = "";
        this.incomingTraceContext_ = Collections.emptyList();
        this.outgoingTraceContext_ = Collections.emptyList();
    }

    public static OpenCensusConfig parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public d newBuilderForType(GeneratedMessageV3.c cVar) {
        return new d(cVar, null);
    }

    public static OpenCensusConfig parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static OpenCensusConfig parseFrom(InputStream inputStream) throws IOException {
        return (OpenCensusConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static OpenCensusConfig parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (OpenCensusConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static OpenCensusConfig parseFrom(p pVar) throws IOException {
        return (OpenCensusConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    private OpenCensusConfig(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        boolean z11 = false;
        while (!z10) {
            try {
                try {
                    int L = pVar.L();
                    switch (L) {
                        case 0:
                            break;
                        case 10:
                            TraceConfig traceConfig = this.traceConfig_;
                            TraceConfig.c builder = traceConfig != null ? traceConfig.toBuilder() : null;
                            TraceConfig traceConfig2 = (TraceConfig) pVar.B(TraceConfig.parser(), f0Var);
                            this.traceConfig_ = traceConfig2;
                            if (builder != null) {
                                builder.h0(traceConfig2);
                                this.traceConfig_ = builder.I();
                            } else {
                                continue;
                            }
                        case 16:
                            this.stdoutExporterEnabled_ = pVar.r();
                            continue;
                        case 24:
                            this.stackdriverExporterEnabled_ = pVar.r();
                            continue;
                        case 34:
                            this.stackdriverProjectId_ = pVar.K();
                            continue;
                        case 40:
                            this.zipkinExporterEnabled_ = pVar.r();
                            continue;
                        case 50:
                            this.zipkinUrl_ = pVar.K();
                            continue;
                        case 64:
                            int u10 = pVar.u();
                            if (!(z11 & true)) {
                                this.incomingTraceContext_ = new ArrayList();
                                z11 |= true;
                            }
                            this.incomingTraceContext_.add(Integer.valueOf(u10));
                            continue;
                        case 66:
                            int q10 = pVar.q(pVar.D());
                            while (pVar.e() > 0) {
                                int u11 = pVar.u();
                                if (!(z11 & true)) {
                                    this.incomingTraceContext_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.incomingTraceContext_.add(Integer.valueOf(u11));
                            }
                            pVar.p(q10);
                            continue;
                        case 72:
                            int u12 = pVar.u();
                            if (!(z11 & true)) {
                                this.outgoingTraceContext_ = new ArrayList();
                                z11 |= true;
                            }
                            this.outgoingTraceContext_.add(Integer.valueOf(u12));
                            continue;
                        case 74:
                            int q11 = pVar.q(pVar.D());
                            while (pVar.e() > 0) {
                                int u13 = pVar.u();
                                if (!(z11 & true)) {
                                    this.outgoingTraceContext_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.outgoingTraceContext_.add(Integer.valueOf(u13));
                            }
                            pVar.p(q11);
                            continue;
                        case 82:
                            this.stackdriverAddress_ = pVar.K();
                            continue;
                        case 88:
                            this.ocagentExporterEnabled_ = pVar.r();
                            continue;
                        case 98:
                            this.ocagentAddress_ = pVar.K();
                            continue;
                        case 106:
                            GrpcService grpcService = this.stackdriverGrpcService_;
                            GrpcService.c builder2 = grpcService != null ? grpcService.toBuilder() : null;
                            GrpcService grpcService2 = (GrpcService) pVar.B(GrpcService.parser(), f0Var);
                            this.stackdriverGrpcService_ = grpcService2;
                            if (builder2 != null) {
                                builder2.j0(grpcService2);
                                this.stackdriverGrpcService_ = builder2.I();
                            } else {
                                continue;
                            }
                        case 114:
                            GrpcService grpcService3 = this.ocagentGrpcService_;
                            GrpcService.c builder3 = grpcService3 != null ? grpcService3.toBuilder() : null;
                            GrpcService grpcService4 = (GrpcService) pVar.B(GrpcService.parser(), f0Var);
                            this.ocagentGrpcService_ = grpcService4;
                            if (builder3 != null) {
                                builder3.j0(grpcService4);
                                this.ocagentGrpcService_ = builder3.I();
                            } else {
                                continue;
                            }
                        default:
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                break;
                            } else {
                                continue;
                            }
                    }
                    z10 = true;
                } catch (InvalidProtocolBufferException e10) {
                    throw e10.setUnfinishedMessage(this);
                } catch (IOException e11) {
                    throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                }
            } finally {
                if (z11 & true) {
                    this.incomingTraceContext_ = Collections.unmodifiableList(this.incomingTraceContext_);
                }
                if (z11 & true) {
                    this.outgoingTraceContext_ = Collections.unmodifiableList(this.outgoingTraceContext_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static OpenCensusConfig parseFrom(p pVar, f0 f0Var) throws IOException {
        return (OpenCensusConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
