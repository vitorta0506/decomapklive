package io.opencensus.proto.trace.v1;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.o1;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.u0;
import io.opencensus.proto.trace.v1.ConstantSampler;
import io.opencensus.proto.trace.v1.ProbabilitySampler;
import io.opencensus.proto.trace.v1.RateLimitingSampler;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes7.dex */
public final class TraceConfig extends GeneratedMessageV3 implements h {
    public static final int CONSTANT_SAMPLER_FIELD_NUMBER = 2;
    public static final int MAX_NUMBER_OF_ANNOTATIONS_FIELD_NUMBER = 5;
    public static final int MAX_NUMBER_OF_ATTRIBUTES_FIELD_NUMBER = 4;
    public static final int MAX_NUMBER_OF_LINKS_FIELD_NUMBER = 7;
    public static final int MAX_NUMBER_OF_MESSAGE_EVENTS_FIELD_NUMBER = 6;
    public static final int PROBABILITY_SAMPLER_FIELD_NUMBER = 1;
    public static final int RATE_LIMITING_SAMPLER_FIELD_NUMBER = 3;
    private static final long serialVersionUID = 0;
    private long maxNumberOfAnnotations_;
    private long maxNumberOfAttributes_;
    private long maxNumberOfLinks_;
    private long maxNumberOfMessageEvents_;
    private byte memoizedIsInitialized;
    private int samplerCase_;
    private Object sampler_;
    private static final TraceConfig DEFAULT_INSTANCE = new TraceConfig();
    private static final e2<TraceConfig> PARSER = new a();

    /* loaded from: classes7.dex */
    public enum SamplerCase implements u0.c {
        PROBABILITY_SAMPLER(1),
        CONSTANT_SAMPLER(2),
        RATE_LIMITING_SAMPLER(3),
        SAMPLER_NOT_SET(0);
        
        private final int value;

        SamplerCase(int i9) {
            this.value = i9;
        }

        public static SamplerCase forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 != 2) {
                        if (i9 != 3) {
                            return null;
                        }
                        return RATE_LIMITING_SAMPLER;
                    }
                    return CONSTANT_SAMPLER;
                }
                return PROBABILITY_SAMPLER;
            }
            return SAMPLER_NOT_SET;
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static SamplerCase valueOf(int i9) {
            return forNumber(i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static class a extends com.google.protobuf.c<TraceConfig> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public TraceConfig m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new TraceConfig(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f51209a;

        static {
            int[] iArr = new int[SamplerCase.values().length];
            f51209a = iArr;
            try {
                iArr[SamplerCase.PROBABILITY_SAMPLER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f51209a[SamplerCase.CONSTANT_SAMPLER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f51209a[SamplerCase.RATE_LIMITING_SAMPLER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f51209a[SamplerCase.SAMPLER_NOT_SET.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* loaded from: classes7.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements h {

        /* renamed from: e  reason: collision with root package name */
        private int f51210e;

        /* renamed from: f  reason: collision with root package name */
        private Object f51211f;

        /* renamed from: g  reason: collision with root package name */
        private q2<ProbabilitySampler, ProbabilitySampler.b, io.opencensus.proto.trace.v1.c> f51212g;

        /* renamed from: h  reason: collision with root package name */
        private q2<ConstantSampler, ConstantSampler.b, io.opencensus.proto.trace.v1.a> f51213h;

        /* renamed from: i  reason: collision with root package name */
        private q2<RateLimitingSampler, RateLimitingSampler.b, d> f51214i;

        /* renamed from: j  reason: collision with root package name */
        private long f51215j;

        /* renamed from: k  reason: collision with root package name */
        private long f51216k;

        /* renamed from: l  reason: collision with root package name */
        private long f51217l;

        /* renamed from: m  reason: collision with root package name */
        private long f51218m;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return i.f51222b.d(TraceConfig.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public TraceConfig build() {
            TraceConfig I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public TraceConfig I() {
            TraceConfig traceConfig = new TraceConfig(this, (a) null);
            if (this.f51210e == 1) {
                q2<ProbabilitySampler, ProbabilitySampler.b, io.opencensus.proto.trace.v1.c> q2Var = this.f51212g;
                if (q2Var == null) {
                    traceConfig.sampler_ = this.f51211f;
                } else {
                    traceConfig.sampler_ = q2Var.b();
                }
            }
            if (this.f51210e == 2) {
                q2<ConstantSampler, ConstantSampler.b, io.opencensus.proto.trace.v1.a> q2Var2 = this.f51213h;
                if (q2Var2 == null) {
                    traceConfig.sampler_ = this.f51211f;
                } else {
                    traceConfig.sampler_ = q2Var2.b();
                }
            }
            if (this.f51210e == 3) {
                q2<RateLimitingSampler, RateLimitingSampler.b, d> q2Var3 = this.f51214i;
                if (q2Var3 == null) {
                    traceConfig.sampler_ = this.f51211f;
                } else {
                    traceConfig.sampler_ = q2Var3.b();
                }
            }
            traceConfig.maxNumberOfAttributes_ = this.f51215j;
            traceConfig.maxNumberOfAnnotations_ = this.f51216k;
            traceConfig.maxNumberOfMessageEvents_ = this.f51217l;
            traceConfig.maxNumberOfLinks_ = this.f51218m;
            traceConfig.samplerCase_ = this.f51210e;
            Q();
            return traceConfig;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public TraceConfig getDefaultInstanceForType() {
            return TraceConfig.getDefaultInstance();
        }

        public c d0(ConstantSampler constantSampler) {
            q2<ConstantSampler, ConstantSampler.b, io.opencensus.proto.trace.v1.a> q2Var = this.f51213h;
            if (q2Var == null) {
                if (this.f51210e == 2 && this.f51211f != ConstantSampler.getDefaultInstance()) {
                    this.f51211f = ConstantSampler.newBuilder((ConstantSampler) this.f51211f).g0(constantSampler).I();
                } else {
                    this.f51211f = constantSampler;
                }
                R();
            } else {
                if (this.f51210e == 2) {
                    q2Var.e(constantSampler);
                }
                this.f51213h.g(constantSampler);
            }
            this.f51210e = 2;
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.opencensus.proto.trace.v1.TraceConfig.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.opencensus.proto.trace.v1.TraceConfig.access$1100()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.opencensus.proto.trace.v1.TraceConfig r3 = (io.opencensus.proto.trace.v1.TraceConfig) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.h0(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                io.opencensus.proto.trace.v1.TraceConfig r4 = (io.opencensus.proto.trace.v1.TraceConfig) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.h0(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: io.opencensus.proto.trace.v1.TraceConfig.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.opencensus.proto.trace.v1.TraceConfig$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        public c v(l1 l1Var) {
            if (l1Var instanceof TraceConfig) {
                return h0((TraceConfig) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return i.f51221a;
        }

        public c h0(TraceConfig traceConfig) {
            if (traceConfig == TraceConfig.getDefaultInstance()) {
                return this;
            }
            if (traceConfig.getMaxNumberOfAttributes() != 0) {
                n0(traceConfig.getMaxNumberOfAttributes());
            }
            if (traceConfig.getMaxNumberOfAnnotations() != 0) {
                m0(traceConfig.getMaxNumberOfAnnotations());
            }
            if (traceConfig.getMaxNumberOfMessageEvents() != 0) {
                q0(traceConfig.getMaxNumberOfMessageEvents());
            }
            if (traceConfig.getMaxNumberOfLinks() != 0) {
                o0(traceConfig.getMaxNumberOfLinks());
            }
            int i9 = b.f51209a[traceConfig.getSamplerCase().ordinal()];
            if (i9 == 1) {
                i0(traceConfig.getProbabilitySampler());
            } else if (i9 == 2) {
                d0(traceConfig.getConstantSampler());
            } else if (i9 == 3) {
                j0(traceConfig.getRateLimitingSampler());
            }
            z(((GeneratedMessageV3) traceConfig).unknownFields);
            R();
            return this;
        }

        public c i0(ProbabilitySampler probabilitySampler) {
            q2<ProbabilitySampler, ProbabilitySampler.b, io.opencensus.proto.trace.v1.c> q2Var = this.f51212g;
            if (q2Var == null) {
                if (this.f51210e == 1 && this.f51211f != ProbabilitySampler.getDefaultInstance()) {
                    this.f51211f = ProbabilitySampler.newBuilder((ProbabilitySampler) this.f51211f).g0(probabilitySampler).I();
                } else {
                    this.f51211f = probabilitySampler;
                }
                R();
            } else {
                if (this.f51210e == 1) {
                    q2Var.e(probabilitySampler);
                }
                this.f51212g.g(probabilitySampler);
            }
            this.f51210e = 1;
            return this;
        }

        public c j0(RateLimitingSampler rateLimitingSampler) {
            q2<RateLimitingSampler, RateLimitingSampler.b, d> q2Var = this.f51214i;
            if (q2Var == null) {
                if (this.f51210e == 3 && this.f51211f != RateLimitingSampler.getDefaultInstance()) {
                    this.f51211f = RateLimitingSampler.newBuilder((RateLimitingSampler) this.f51211f).g0(rateLimitingSampler).I();
                } else {
                    this.f51211f = rateLimitingSampler;
                }
                R();
            } else {
                if (this.f51210e == 3) {
                    q2Var.e(rateLimitingSampler);
                }
                this.f51214i.g(rateLimitingSampler);
            }
            this.f51210e = 3;
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: k0 */
        public final c z(h3 h3Var) {
            return (c) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: l0 */
        public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.c(fieldDescriptor, obj);
        }

        public c m0(long j10) {
            this.f51216k = j10;
            R();
            return this;
        }

        public c n0(long j10) {
            this.f51215j = j10;
            R();
            return this;
        }

        public c o0(long j10) {
            this.f51218m = j10;
            R();
            return this;
        }

        public c q0(long j10) {
            this.f51217l = j10;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: r0 */
        public final c f1(h3 h3Var) {
            return (c) super.V(h3Var);
        }

        /* synthetic */ c(a aVar) {
            this();
        }

        private c() {
            this.f51210e = 0;
            b0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f51210e = 0;
            b0();
        }
    }

    /* synthetic */ TraceConfig(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static TraceConfig getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return i.f51221a;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static TraceConfig parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (TraceConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static TraceConfig parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<TraceConfig> parser() {
        return PARSER;
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x0081, code lost:
        if (getRateLimitingSampler().equals(r8.getRateLimitingSampler()) != false) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0083, code lost:
        r1 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0095, code lost:
        if (getConstantSampler().equals(r8.getConstantSampler()) != false) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00a6, code lost:
        if (getProbabilitySampler().equals(r8.getProbabilitySampler()) != false) goto L39;
     */
    @Override // com.google.protobuf.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r8) {
        /*
            r7 = this;
            r0 = 1
            if (r8 != r7) goto L4
            return r0
        L4:
            boolean r1 = r8 instanceof io.opencensus.proto.trace.v1.TraceConfig
            if (r1 != 0) goto Ld
            boolean r8 = super.equals(r8)
            return r8
        Ld:
            io.opencensus.proto.trace.v1.TraceConfig r8 = (io.opencensus.proto.trace.v1.TraceConfig) r8
            long r1 = r7.getMaxNumberOfAttributes()
            long r3 = r8.getMaxNumberOfAttributes()
            r5 = 0
            int r6 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r6 != 0) goto L1e
            r1 = 1
            goto L1f
        L1e:
            r1 = 0
        L1f:
            if (r1 == 0) goto L2f
            long r1 = r7.getMaxNumberOfAnnotations()
            long r3 = r8.getMaxNumberOfAnnotations()
            int r6 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r6 != 0) goto L2f
            r1 = 1
            goto L30
        L2f:
            r1 = 0
        L30:
            if (r1 == 0) goto L40
            long r1 = r7.getMaxNumberOfMessageEvents()
            long r3 = r8.getMaxNumberOfMessageEvents()
            int r6 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r6 != 0) goto L40
            r1 = 1
            goto L41
        L40:
            r1 = 0
        L41:
            if (r1 == 0) goto L51
            long r1 = r7.getMaxNumberOfLinks()
            long r3 = r8.getMaxNumberOfLinks()
            int r6 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r6 != 0) goto L51
            r1 = 1
            goto L52
        L51:
            r1 = 0
        L52:
            if (r1 == 0) goto L64
            io.opencensus.proto.trace.v1.TraceConfig$SamplerCase r1 = r7.getSamplerCase()
            io.opencensus.proto.trace.v1.TraceConfig$SamplerCase r2 = r8.getSamplerCase()
            boolean r1 = r1.equals(r2)
            if (r1 == 0) goto L64
            r1 = 1
            goto L65
        L64:
            r1 = 0
        L65:
            if (r1 != 0) goto L68
            return r5
        L68:
            int r2 = r7.samplerCase_
            if (r2 == r0) goto L98
            r3 = 2
            if (r2 == r3) goto L87
            r3 = 3
            if (r2 == r3) goto L73
            goto La9
        L73:
            if (r1 == 0) goto L85
            io.opencensus.proto.trace.v1.RateLimitingSampler r1 = r7.getRateLimitingSampler()
            io.opencensus.proto.trace.v1.RateLimitingSampler r2 = r8.getRateLimitingSampler()
            boolean r1 = r1.equals(r2)
            if (r1 == 0) goto L85
        L83:
            r1 = 1
            goto La9
        L85:
            r1 = 0
            goto La9
        L87:
            if (r1 == 0) goto L85
            io.opencensus.proto.trace.v1.ConstantSampler r1 = r7.getConstantSampler()
            io.opencensus.proto.trace.v1.ConstantSampler r2 = r8.getConstantSampler()
            boolean r1 = r1.equals(r2)
            if (r1 == 0) goto L85
            goto L83
        L98:
            if (r1 == 0) goto L85
            io.opencensus.proto.trace.v1.ProbabilitySampler r1 = r7.getProbabilitySampler()
            io.opencensus.proto.trace.v1.ProbabilitySampler r2 = r8.getProbabilitySampler()
            boolean r1 = r1.equals(r2)
            if (r1 == 0) goto L85
            goto L83
        La9:
            if (r1 == 0) goto Lb6
            com.google.protobuf.h3 r1 = r7.unknownFields
            com.google.protobuf.h3 r8 = r8.unknownFields
            boolean r8 = r1.equals(r8)
            if (r8 == 0) goto Lb6
            goto Lb7
        Lb6:
            r0 = 0
        Lb7:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: io.opencensus.proto.trace.v1.TraceConfig.equals(java.lang.Object):boolean");
    }

    public ConstantSampler getConstantSampler() {
        if (this.samplerCase_ == 2) {
            return (ConstantSampler) this.sampler_;
        }
        return ConstantSampler.getDefaultInstance();
    }

    public io.opencensus.proto.trace.v1.a getConstantSamplerOrBuilder() {
        if (this.samplerCase_ == 2) {
            return (ConstantSampler) this.sampler_;
        }
        return ConstantSampler.getDefaultInstance();
    }

    public long getMaxNumberOfAnnotations() {
        return this.maxNumberOfAnnotations_;
    }

    public long getMaxNumberOfAttributes() {
        return this.maxNumberOfAttributes_;
    }

    public long getMaxNumberOfLinks() {
        return this.maxNumberOfLinks_;
    }

    public long getMaxNumberOfMessageEvents() {
        return this.maxNumberOfMessageEvents_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<TraceConfig> getParserForType() {
        return PARSER;
    }

    public ProbabilitySampler getProbabilitySampler() {
        if (this.samplerCase_ == 1) {
            return (ProbabilitySampler) this.sampler_;
        }
        return ProbabilitySampler.getDefaultInstance();
    }

    public io.opencensus.proto.trace.v1.c getProbabilitySamplerOrBuilder() {
        if (this.samplerCase_ == 1) {
            return (ProbabilitySampler) this.sampler_;
        }
        return ProbabilitySampler.getDefaultInstance();
    }

    public RateLimitingSampler getRateLimitingSampler() {
        if (this.samplerCase_ == 3) {
            return (RateLimitingSampler) this.sampler_;
        }
        return RateLimitingSampler.getDefaultInstance();
    }

    public d getRateLimitingSamplerOrBuilder() {
        if (this.samplerCase_ == 3) {
            return (RateLimitingSampler) this.sampler_;
        }
        return RateLimitingSampler.getDefaultInstance();
    }

    public SamplerCase getSamplerCase() {
        return SamplerCase.forNumber(this.samplerCase_);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.samplerCase_ == 1 ? 0 + CodedOutputStream.G(1, (ProbabilitySampler) this.sampler_) : 0;
        if (this.samplerCase_ == 2) {
            G += CodedOutputStream.G(2, (ConstantSampler) this.sampler_);
        }
        if (this.samplerCase_ == 3) {
            G += CodedOutputStream.G(3, (RateLimitingSampler) this.sampler_);
        }
        long j10 = this.maxNumberOfAttributes_;
        if (j10 != 0) {
            G += CodedOutputStream.z(4, j10);
        }
        long j11 = this.maxNumberOfAnnotations_;
        if (j11 != 0) {
            G += CodedOutputStream.z(5, j11);
        }
        long j12 = this.maxNumberOfMessageEvents_;
        if (j12 != 0) {
            G += CodedOutputStream.z(6, j12);
        }
        long j13 = this.maxNumberOfLinks_;
        if (j13 != 0) {
            G += CodedOutputStream.z(7, j13);
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasConstantSampler() {
        return this.samplerCase_ == 2;
    }

    public boolean hasProbabilitySampler() {
        return this.samplerCase_ == 1;
    }

    public boolean hasRateLimitingSampler() {
        return this.samplerCase_ == 3;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9;
        int hashCode;
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int hashCode2 = ((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 4) * 53) + u0.i(getMaxNumberOfAttributes())) * 37) + 5) * 53) + u0.i(getMaxNumberOfAnnotations())) * 37) + 6) * 53) + u0.i(getMaxNumberOfMessageEvents())) * 37) + 7) * 53) + u0.i(getMaxNumberOfLinks());
        int i11 = this.samplerCase_;
        if (i11 == 1) {
            i9 = ((hashCode2 * 37) + 1) * 53;
            hashCode = getProbabilitySampler().hashCode();
        } else if (i11 == 2) {
            i9 = ((hashCode2 * 37) + 2) * 53;
            hashCode = getConstantSampler().hashCode();
        } else {
            if (i11 == 3) {
                i9 = ((hashCode2 * 37) + 3) * 53;
                hashCode = getRateLimitingSampler().hashCode();
            }
            int hashCode3 = (hashCode2 * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode3;
            return hashCode3;
        }
        hashCode2 = i9 + hashCode;
        int hashCode32 = (hashCode2 * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode32;
        return hashCode32;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return i.f51222b.d(TraceConfig.class, c.class);
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

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.samplerCase_ == 1) {
            codedOutputStream.L0(1, (ProbabilitySampler) this.sampler_);
        }
        if (this.samplerCase_ == 2) {
            codedOutputStream.L0(2, (ConstantSampler) this.sampler_);
        }
        if (this.samplerCase_ == 3) {
            codedOutputStream.L0(3, (RateLimitingSampler) this.sampler_);
        }
        long j10 = this.maxNumberOfAttributes_;
        if (j10 != 0) {
            codedOutputStream.J0(4, j10);
        }
        long j11 = this.maxNumberOfAnnotations_;
        if (j11 != 0) {
            codedOutputStream.J0(5, j11);
        }
        long j12 = this.maxNumberOfMessageEvents_;
        if (j12 != 0) {
            codedOutputStream.J0(6, j12);
        }
        long j13 = this.maxNumberOfLinks_;
        if (j13 != 0) {
            codedOutputStream.J0(7, j13);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ TraceConfig(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(TraceConfig traceConfig) {
        return DEFAULT_INSTANCE.toBuilder().h0(traceConfig);
    }

    public static TraceConfig parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private TraceConfig(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.samplerCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static TraceConfig parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (TraceConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static TraceConfig parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public TraceConfig getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).h0(this);
    }

    public static TraceConfig parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    public static TraceConfig parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    private TraceConfig() {
        this.samplerCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
        this.maxNumberOfAttributes_ = 0L;
        this.maxNumberOfAnnotations_ = 0L;
        this.maxNumberOfMessageEvents_ = 0L;
        this.maxNumberOfLinks_ = 0L;
    }

    public static TraceConfig parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static TraceConfig parseFrom(InputStream inputStream) throws IOException {
        return (TraceConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static TraceConfig parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (TraceConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static TraceConfig parseFrom(p pVar) throws IOException {
        return (TraceConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    private TraceConfig(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    int L = pVar.L();
                    if (L != 0) {
                        if (L == 10) {
                            ProbabilitySampler.b builder = this.samplerCase_ == 1 ? ((ProbabilitySampler) this.sampler_).toBuilder() : null;
                            o1 B = pVar.B(ProbabilitySampler.parser(), f0Var);
                            this.sampler_ = B;
                            if (builder != null) {
                                builder.g0((ProbabilitySampler) B);
                                this.sampler_ = builder.I();
                            }
                            this.samplerCase_ = 1;
                        } else if (L == 18) {
                            ConstantSampler.b builder2 = this.samplerCase_ == 2 ? ((ConstantSampler) this.sampler_).toBuilder() : null;
                            o1 B2 = pVar.B(ConstantSampler.parser(), f0Var);
                            this.sampler_ = B2;
                            if (builder2 != null) {
                                builder2.g0((ConstantSampler) B2);
                                this.sampler_ = builder2.I();
                            }
                            this.samplerCase_ = 2;
                        } else if (L == 26) {
                            RateLimitingSampler.b builder3 = this.samplerCase_ == 3 ? ((RateLimitingSampler) this.sampler_).toBuilder() : null;
                            o1 B3 = pVar.B(RateLimitingSampler.parser(), f0Var);
                            this.sampler_ = B3;
                            if (builder3 != null) {
                                builder3.g0((RateLimitingSampler) B3);
                                this.sampler_ = builder3.I();
                            }
                            this.samplerCase_ = 3;
                        } else if (L == 32) {
                            this.maxNumberOfAttributes_ = pVar.A();
                        } else if (L == 40) {
                            this.maxNumberOfAnnotations_ = pVar.A();
                        } else if (L == 48) {
                            this.maxNumberOfMessageEvents_ = pVar.A();
                        } else if (L != 56) {
                            if (!parseUnknownFieldProto3(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            this.maxNumberOfLinks_ = pVar.A();
                        }
                    }
                    z10 = true;
                } catch (InvalidProtocolBufferException e10) {
                    throw e10.setUnfinishedMessage(this);
                } catch (IOException e11) {
                    throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                }
            } finally {
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static TraceConfig parseFrom(p pVar, f0 f0Var) throws IOException {
        return (TraceConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
