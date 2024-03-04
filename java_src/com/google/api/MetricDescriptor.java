package com.google.api;

import com.google.api.LabelDescriptor;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.Duration;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.h2;
import com.google.protobuf.h3;
import com.google.protobuf.i2;
import com.google.protobuf.l2;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import com.google.protobuf.u0;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class MetricDescriptor extends GeneratedMessageV3 implements p0 {
    public static final int DESCRIPTION_FIELD_NUMBER = 6;
    public static final int DISPLAY_NAME_FIELD_NUMBER = 7;
    public static final int LABELS_FIELD_NUMBER = 2;
    public static final int LAUNCH_STAGE_FIELD_NUMBER = 12;
    public static final int METADATA_FIELD_NUMBER = 10;
    public static final int METRIC_KIND_FIELD_NUMBER = 3;
    public static final int MONITORED_RESOURCE_TYPES_FIELD_NUMBER = 13;
    public static final int NAME_FIELD_NUMBER = 1;
    public static final int TYPE_FIELD_NUMBER = 8;
    public static final int UNIT_FIELD_NUMBER = 5;
    public static final int VALUE_TYPE_FIELD_NUMBER = 4;
    private static final long serialVersionUID = 0;
    private volatile Object description_;
    private volatile Object displayName_;
    private List<LabelDescriptor> labels_;
    private int launchStage_;
    private byte memoizedIsInitialized;
    private MetricDescriptorMetadata metadata_;
    private int metricKind_;
    private com.google.protobuf.z0 monitoredResourceTypes_;
    private volatile Object name_;
    private volatile Object type_;
    private volatile Object unit_;
    private int valueType_;
    private static final MetricDescriptor DEFAULT_INSTANCE = new MetricDescriptor();
    private static final e2<MetricDescriptor> PARSER = new a();

    /* loaded from: classes2.dex */
    public static final class MetricDescriptorMetadata extends GeneratedMessageV3 implements c {
        public static final int INGEST_DELAY_FIELD_NUMBER = 3;
        public static final int LAUNCH_STAGE_FIELD_NUMBER = 1;
        public static final int SAMPLE_PERIOD_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private Duration ingestDelay_;
        private int launchStage_;
        private byte memoizedIsInitialized;
        private Duration samplePeriod_;
        private static final MetricDescriptorMetadata DEFAULT_INSTANCE = new MetricDescriptorMetadata();
        private static final e2<MetricDescriptorMetadata> PARSER = new a();

        /* loaded from: classes2.dex */
        static class a extends com.google.protobuf.c<MetricDescriptorMetadata> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public MetricDescriptorMetadata m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
                return new MetricDescriptorMetadata(pVar, f0Var, null);
            }
        }

        /* loaded from: classes2.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements c {

            /* renamed from: e  reason: collision with root package name */
            private int f10800e;

            /* renamed from: f  reason: collision with root package name */
            private Duration f10801f;

            /* renamed from: g  reason: collision with root package name */
            private q2<Duration, Duration.b, com.google.protobuf.v> f10802g;

            /* renamed from: h  reason: collision with root package name */
            private Duration f10803h;

            /* renamed from: i  reason: collision with root package name */
            private q2<Duration, Duration.b, com.google.protobuf.v> f10804i;

            /* synthetic */ b(a aVar) {
                this();
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return q0.f11460d.d(MetricDescriptorMetadata.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public MetricDescriptorMetadata build() {
                MetricDescriptorMetadata I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public MetricDescriptorMetadata I() {
                MetricDescriptorMetadata metricDescriptorMetadata = new MetricDescriptorMetadata(this, (a) null);
                metricDescriptorMetadata.launchStage_ = this.f10800e;
                q2<Duration, Duration.b, com.google.protobuf.v> q2Var = this.f10802g;
                if (q2Var == null) {
                    metricDescriptorMetadata.samplePeriod_ = this.f10801f;
                } else {
                    metricDescriptorMetadata.samplePeriod_ = q2Var.b();
                }
                q2<Duration, Duration.b, com.google.protobuf.v> q2Var2 = this.f10804i;
                if (q2Var2 == null) {
                    metricDescriptorMetadata.ingestDelay_ = this.f10803h;
                } else {
                    metricDescriptorMetadata.ingestDelay_ = q2Var2.b();
                }
                Q();
                return metricDescriptorMetadata;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public MetricDescriptorMetadata getDefaultInstanceForType() {
                return MetricDescriptorMetadata.getDefaultInstance();
            }

            public b d0(MetricDescriptorMetadata metricDescriptorMetadata) {
                if (metricDescriptorMetadata == MetricDescriptorMetadata.getDefaultInstance()) {
                    return this;
                }
                if (metricDescriptorMetadata.launchStage_ != 0) {
                    l0(metricDescriptorMetadata.getLaunchStageValue());
                }
                if (metricDescriptorMetadata.hasSamplePeriod()) {
                    i0(metricDescriptorMetadata.getSamplePeriod());
                }
                if (metricDescriptorMetadata.hasIngestDelay()) {
                    h0(metricDescriptorMetadata.getIngestDelay());
                }
                z(((GeneratedMessageV3) metricDescriptorMetadata).unknownFields);
                R();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.google.api.MetricDescriptor.MetricDescriptorMetadata.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = com.google.api.MetricDescriptor.MetricDescriptorMetadata.access$800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    com.google.api.MetricDescriptor$MetricDescriptorMetadata r3 = (com.google.api.MetricDescriptor.MetricDescriptorMetadata) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    if (r3 == 0) goto L10
                    r2.d0(r3)
                L10:
                    return r2
                L11:
                    r3 = move-exception
                    goto L21
                L13:
                    r3 = move-exception
                    com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                    com.google.api.MetricDescriptor$MetricDescriptorMetadata r4 = (com.google.api.MetricDescriptor.MetricDescriptorMetadata) r4     // Catch: java.lang.Throwable -> L11
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                    throw r3     // Catch: java.lang.Throwable -> L1f
                L1f:
                    r3 = move-exception
                    r0 = r4
                L21:
                    if (r0 == 0) goto L26
                    r2.d0(r0)
                L26:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.api.MetricDescriptor.MetricDescriptorMetadata.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.api.MetricDescriptor$MetricDescriptorMetadata$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: g0 */
            public b v(com.google.protobuf.l1 l1Var) {
                if (l1Var instanceof MetricDescriptorMetadata) {
                    return d0((MetricDescriptorMetadata) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return q0.f11459c;
            }

            public b h0(Duration duration) {
                q2<Duration, Duration.b, com.google.protobuf.v> q2Var = this.f10804i;
                if (q2Var == null) {
                    Duration duration2 = this.f10803h;
                    if (duration2 != null) {
                        this.f10803h = Duration.newBuilder(duration2).e0(duration).I();
                    } else {
                        this.f10803h = duration;
                    }
                    R();
                } else {
                    q2Var.e(duration);
                }
                return this;
            }

            public b i0(Duration duration) {
                q2<Duration, Duration.b, com.google.protobuf.v> q2Var = this.f10802g;
                if (q2Var == null) {
                    Duration duration2 = this.f10801f;
                    if (duration2 != null) {
                        this.f10801f = Duration.newBuilder(duration2).e0(duration).I();
                    } else {
                        this.f10801f = duration;
                    }
                    R();
                } else {
                    q2Var.e(duration);
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: j0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: k0 */
            public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.c(fieldDescriptor, obj);
            }

            @Deprecated
            public b l0(int i9) {
                this.f10800e = i9;
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: m0 */
            public final b f1(h3 h3Var) {
                return (b) super.f1(h3Var);
            }

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private b() {
                this.f10800e = 0;
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f10800e = 0;
                b0();
            }
        }

        /* synthetic */ MetricDescriptorMetadata(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static MetricDescriptorMetadata getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return q0.f11459c;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static MetricDescriptorMetadata parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (MetricDescriptorMetadata) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static MetricDescriptorMetadata parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<MetricDescriptorMetadata> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof MetricDescriptorMetadata)) {
                return super.equals(obj);
            }
            MetricDescriptorMetadata metricDescriptorMetadata = (MetricDescriptorMetadata) obj;
            if (this.launchStage_ == metricDescriptorMetadata.launchStage_ && hasSamplePeriod() == metricDescriptorMetadata.hasSamplePeriod()) {
                if ((!hasSamplePeriod() || getSamplePeriod().equals(metricDescriptorMetadata.getSamplePeriod())) && hasIngestDelay() == metricDescriptorMetadata.hasIngestDelay()) {
                    return (!hasIngestDelay() || getIngestDelay().equals(metricDescriptorMetadata.getIngestDelay())) && this.unknownFields.equals(metricDescriptorMetadata.unknownFields);
                }
                return false;
            }
            return false;
        }

        public Duration getIngestDelay() {
            Duration duration = this.ingestDelay_;
            return duration == null ? Duration.getDefaultInstance() : duration;
        }

        public com.google.protobuf.v getIngestDelayOrBuilder() {
            return getIngestDelay();
        }

        @Deprecated
        public LaunchStage getLaunchStage() {
            LaunchStage valueOf = LaunchStage.valueOf(this.launchStage_);
            return valueOf == null ? LaunchStage.UNRECOGNIZED : valueOf;
        }

        @Deprecated
        public int getLaunchStageValue() {
            return this.launchStage_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<MetricDescriptorMetadata> getParserForType() {
            return PARSER;
        }

        public Duration getSamplePeriod() {
            Duration duration = this.samplePeriod_;
            return duration == null ? Duration.getDefaultInstance() : duration;
        }

        public com.google.protobuf.v getSamplePeriodOrBuilder() {
            return getSamplePeriod();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int l10 = this.launchStage_ != LaunchStage.LAUNCH_STAGE_UNSPECIFIED.getNumber() ? 0 + CodedOutputStream.l(1, this.launchStage_) : 0;
            if (this.samplePeriod_ != null) {
                l10 += CodedOutputStream.G(2, getSamplePeriod());
            }
            if (this.ingestDelay_ != null) {
                l10 += CodedOutputStream.G(3, getIngestDelay());
            }
            int serializedSize = l10 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasIngestDelay() {
            return this.ingestDelay_ != null;
        }

        public boolean hasSamplePeriod() {
            return this.samplePeriod_ != null;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + this.launchStage_;
            if (hasSamplePeriod()) {
                hashCode = (((hashCode * 37) + 2) * 53) + getSamplePeriod().hashCode();
            }
            if (hasIngestDelay()) {
                hashCode = (((hashCode * 37) + 3) * 53) + getIngestDelay().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return q0.f11460d.d(MetricDescriptorMetadata.class, b.class);
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
            return new MetricDescriptorMetadata();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (this.launchStage_ != LaunchStage.LAUNCH_STAGE_UNSPECIFIED.getNumber()) {
                codedOutputStream.v0(1, this.launchStage_);
            }
            if (this.samplePeriod_ != null) {
                codedOutputStream.L0(2, getSamplePeriod());
            }
            if (this.ingestDelay_ != null) {
                codedOutputStream.L0(3, getIngestDelay());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ MetricDescriptorMetadata(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(MetricDescriptorMetadata metricDescriptorMetadata) {
            return DEFAULT_INSTANCE.toBuilder().d0(metricDescriptorMetadata);
        }

        public static MetricDescriptorMetadata parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
            return (MetricDescriptorMetadata) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static MetricDescriptorMetadata parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private MetricDescriptorMetadata(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static MetricDescriptorMetadata parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public MetricDescriptorMetadata getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).d0(this);
        }

        public static MetricDescriptorMetadata parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private MetricDescriptorMetadata() {
            this.memoizedIsInitialized = (byte) -1;
            this.launchStage_ = 0;
        }

        public static MetricDescriptorMetadata parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static MetricDescriptorMetadata parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static MetricDescriptorMetadata parseFrom(InputStream inputStream) throws IOException {
            return (MetricDescriptorMetadata) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private MetricDescriptorMetadata(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            this();
            Duration.b builder;
            Objects.requireNonNull(f0Var);
            h3.b h10 = h3.h();
            boolean z10 = false;
            while (!z10) {
                try {
                    try {
                        try {
                            int L = pVar.L();
                            if (L != 0) {
                                if (L != 8) {
                                    if (L == 18) {
                                        Duration duration = this.samplePeriod_;
                                        builder = duration != null ? duration.toBuilder() : null;
                                        Duration duration2 = (Duration) pVar.B(Duration.parser(), f0Var);
                                        this.samplePeriod_ = duration2;
                                        if (builder != null) {
                                            builder.e0(duration2);
                                            this.samplePeriod_ = builder.I();
                                        }
                                    } else if (L != 26) {
                                        if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                        }
                                    } else {
                                        Duration duration3 = this.ingestDelay_;
                                        builder = duration3 != null ? duration3.toBuilder() : null;
                                        Duration duration4 = (Duration) pVar.B(Duration.parser(), f0Var);
                                        this.ingestDelay_ = duration4;
                                        if (builder != null) {
                                            builder.e0(duration4);
                                            this.ingestDelay_ = builder.I();
                                        }
                                    }
                                } else {
                                    this.launchStage_ = pVar.u();
                                }
                            }
                            z10 = true;
                        } catch (IOException e10) {
                            throw new InvalidProtocolBufferException(e10).setUnfinishedMessage(this);
                        }
                    } catch (InvalidProtocolBufferException e11) {
                        throw e11.setUnfinishedMessage(this);
                    }
                } finally {
                    this.unknownFields = h10.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static MetricDescriptorMetadata parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
            return (MetricDescriptorMetadata) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static MetricDescriptorMetadata parseFrom(com.google.protobuf.p pVar) throws IOException {
            return (MetricDescriptorMetadata) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static MetricDescriptorMetadata parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
            return (MetricDescriptorMetadata) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes2.dex */
    public enum MetricKind implements h2 {
        METRIC_KIND_UNSPECIFIED(0),
        GAUGE(1),
        DELTA(2),
        CUMULATIVE(3),
        UNRECOGNIZED(-1);
        
        public static final int CUMULATIVE_VALUE = 3;
        public static final int DELTA_VALUE = 2;
        public static final int GAUGE_VALUE = 1;
        public static final int METRIC_KIND_UNSPECIFIED_VALUE = 0;
        private final int value;
        private static final u0.d<MetricKind> internalValueMap = new a();
        private static final MetricKind[] VALUES = values();

        /* loaded from: classes2.dex */
        static class a implements u0.d<MetricKind> {
            a() {
            }

            @Override // com.google.protobuf.u0.d
            /* renamed from: b */
            public MetricKind a(int i9) {
                return MetricKind.forNumber(i9);
            }
        }

        MetricKind(int i9) {
            this.value = i9;
        }

        public static MetricKind forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 != 2) {
                        if (i9 != 3) {
                            return null;
                        }
                        return CUMULATIVE;
                    }
                    return DELTA;
                }
                return GAUGE;
            }
            return METRIC_KIND_UNSPECIFIED;
        }

        public static final Descriptors.d getDescriptor() {
            return MetricDescriptor.getDescriptor().k().get(0);
        }

        public static u0.d<MetricKind> internalGetValueMap() {
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
        public static MetricKind valueOf(int i9) {
            return forNumber(i9);
        }

        public static MetricKind valueOf(Descriptors.e eVar) {
            if (eVar.h() == getDescriptor()) {
                if (eVar.g() == -1) {
                    return UNRECOGNIZED;
                }
                return VALUES[eVar.g()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    /* loaded from: classes2.dex */
    public enum ValueType implements h2 {
        VALUE_TYPE_UNSPECIFIED(0),
        BOOL(1),
        INT64(2),
        DOUBLE(3),
        STRING(4),
        DISTRIBUTION(5),
        MONEY(6),
        UNRECOGNIZED(-1);
        
        public static final int BOOL_VALUE = 1;
        public static final int DISTRIBUTION_VALUE = 5;
        public static final int DOUBLE_VALUE = 3;
        public static final int INT64_VALUE = 2;
        public static final int MONEY_VALUE = 6;
        public static final int STRING_VALUE = 4;
        public static final int VALUE_TYPE_UNSPECIFIED_VALUE = 0;
        private final int value;
        private static final u0.d<ValueType> internalValueMap = new a();
        private static final ValueType[] VALUES = values();

        /* loaded from: classes2.dex */
        static class a implements u0.d<ValueType> {
            a() {
            }

            @Override // com.google.protobuf.u0.d
            /* renamed from: b */
            public ValueType a(int i9) {
                return ValueType.forNumber(i9);
            }
        }

        ValueType(int i9) {
            this.value = i9;
        }

        public static ValueType forNumber(int i9) {
            switch (i9) {
                case 0:
                    return VALUE_TYPE_UNSPECIFIED;
                case 1:
                    return BOOL;
                case 2:
                    return INT64;
                case 3:
                    return DOUBLE;
                case 4:
                    return STRING;
                case 5:
                    return DISTRIBUTION;
                case 6:
                    return MONEY;
                default:
                    return null;
            }
        }

        public static final Descriptors.d getDescriptor() {
            return MetricDescriptor.getDescriptor().k().get(1);
        }

        public static u0.d<ValueType> internalGetValueMap() {
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
        public static ValueType valueOf(int i9) {
            return forNumber(i9);
        }

        public static ValueType valueOf(Descriptors.e eVar) {
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
    /* loaded from: classes2.dex */
    public static class a extends com.google.protobuf.c<MetricDescriptor> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public MetricDescriptor m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return new MetricDescriptor(pVar, f0Var, null);
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements p0 {

        /* renamed from: e  reason: collision with root package name */
        private int f10805e;

        /* renamed from: f  reason: collision with root package name */
        private Object f10806f;

        /* renamed from: g  reason: collision with root package name */
        private Object f10807g;

        /* renamed from: h  reason: collision with root package name */
        private List<LabelDescriptor> f10808h;

        /* renamed from: i  reason: collision with root package name */
        private l2<LabelDescriptor, LabelDescriptor.b, i0> f10809i;

        /* renamed from: j  reason: collision with root package name */
        private int f10810j;

        /* renamed from: k  reason: collision with root package name */
        private int f10811k;

        /* renamed from: l  reason: collision with root package name */
        private Object f10812l;

        /* renamed from: m  reason: collision with root package name */
        private Object f10813m;

        /* renamed from: n  reason: collision with root package name */
        private Object f10814n;

        /* renamed from: o  reason: collision with root package name */
        private MetricDescriptorMetadata f10815o;

        /* renamed from: p  reason: collision with root package name */
        private q2<MetricDescriptorMetadata, MetricDescriptorMetadata.b, c> f10816p;

        /* renamed from: q  reason: collision with root package name */
        private int f10817q;

        /* renamed from: r  reason: collision with root package name */
        private com.google.protobuf.z0 f10818r;

        /* synthetic */ b(a aVar) {
            this();
        }

        private void a0() {
            if ((this.f10805e & 1) == 0) {
                this.f10808h = new ArrayList(this.f10808h);
                this.f10805e |= 1;
            }
        }

        private void b0() {
            if ((this.f10805e & 2) == 0) {
                this.f10818r = new com.google.protobuf.y0(this.f10818r);
                this.f10805e |= 2;
            }
        }

        private l2<LabelDescriptor, LabelDescriptor.b, i0> e0() {
            if (this.f10809i == null) {
                this.f10809i = new l2<>(this.f10808h, (this.f10805e & 1) != 0, H(), O());
                this.f10808h = null;
            }
            return this.f10809i;
        }

        private void g0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                e0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return q0.f11458b.d(MetricDescriptor.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public MetricDescriptor build() {
            MetricDescriptor I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public MetricDescriptor I() {
            MetricDescriptor metricDescriptor = new MetricDescriptor(this, (a) null);
            metricDescriptor.name_ = this.f10806f;
            metricDescriptor.type_ = this.f10807g;
            l2<LabelDescriptor, LabelDescriptor.b, i0> l2Var = this.f10809i;
            if (l2Var == null) {
                if ((this.f10805e & 1) != 0) {
                    this.f10808h = Collections.unmodifiableList(this.f10808h);
                    this.f10805e &= -2;
                }
                metricDescriptor.labels_ = this.f10808h;
            } else {
                metricDescriptor.labels_ = l2Var.e();
            }
            metricDescriptor.metricKind_ = this.f10810j;
            metricDescriptor.valueType_ = this.f10811k;
            metricDescriptor.unit_ = this.f10812l;
            metricDescriptor.description_ = this.f10813m;
            metricDescriptor.displayName_ = this.f10814n;
            q2<MetricDescriptorMetadata, MetricDescriptorMetadata.b, c> q2Var = this.f10816p;
            if (q2Var == null) {
                metricDescriptor.metadata_ = this.f10815o;
            } else {
                metricDescriptor.metadata_ = q2Var.b();
            }
            metricDescriptor.launchStage_ = this.f10817q;
            if ((this.f10805e & 2) != 0) {
                this.f10818r = this.f10818r.V0();
                this.f10805e &= -3;
            }
            metricDescriptor.monitoredResourceTypes_ = this.f10818r;
            Q();
            return metricDescriptor;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: d0 */
        public MetricDescriptor getDefaultInstanceForType() {
            return MetricDescriptor.getDefaultInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return q0.f11457a;
        }

        public b h0(MetricDescriptor metricDescriptor) {
            if (metricDescriptor == MetricDescriptor.getDefaultInstance()) {
                return this;
            }
            if (!metricDescriptor.getName().isEmpty()) {
                this.f10806f = metricDescriptor.name_;
                R();
            }
            if (!metricDescriptor.getType().isEmpty()) {
                this.f10807g = metricDescriptor.type_;
                R();
            }
            if (this.f10809i == null) {
                if (!metricDescriptor.labels_.isEmpty()) {
                    if (this.f10808h.isEmpty()) {
                        this.f10808h = metricDescriptor.labels_;
                        this.f10805e &= -2;
                    } else {
                        a0();
                        this.f10808h.addAll(metricDescriptor.labels_);
                    }
                    R();
                }
            } else if (!metricDescriptor.labels_.isEmpty()) {
                if (this.f10809i.k()) {
                    this.f10809i.f();
                    this.f10809i = null;
                    this.f10808h = metricDescriptor.labels_;
                    this.f10805e &= -2;
                    this.f10809i = GeneratedMessageV3.alwaysUseFieldBuilders ? e0() : null;
                } else {
                    this.f10809i.b(metricDescriptor.labels_);
                }
            }
            if (metricDescriptor.metricKind_ != 0) {
                o0(metricDescriptor.getMetricKindValue());
            }
            if (metricDescriptor.valueType_ != 0) {
                r0(metricDescriptor.getValueTypeValue());
            }
            if (!metricDescriptor.getUnit().isEmpty()) {
                this.f10812l = metricDescriptor.unit_;
                R();
            }
            if (!metricDescriptor.getDescription().isEmpty()) {
                this.f10813m = metricDescriptor.description_;
                R();
            }
            if (!metricDescriptor.getDisplayName().isEmpty()) {
                this.f10814n = metricDescriptor.displayName_;
                R();
            }
            if (metricDescriptor.hasMetadata()) {
                k0(metricDescriptor.getMetadata());
            }
            if (metricDescriptor.launchStage_ != 0) {
                n0(metricDescriptor.getLaunchStageValue());
            }
            if (!metricDescriptor.monitoredResourceTypes_.isEmpty()) {
                if (this.f10818r.isEmpty()) {
                    this.f10818r = metricDescriptor.monitoredResourceTypes_;
                    this.f10805e &= -3;
                } else {
                    b0();
                    this.f10818r.addAll(metricDescriptor.monitoredResourceTypes_);
                }
                R();
            }
            z(((GeneratedMessageV3) metricDescriptor).unknownFields);
            R();
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.api.MetricDescriptor.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.api.MetricDescriptor.access$2700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.api.MetricDescriptor r3 = (com.google.api.MetricDescriptor) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                com.google.api.MetricDescriptor r4 = (com.google.api.MetricDescriptor) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.api.MetricDescriptor.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.api.MetricDescriptor$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: j0 */
        public b v(com.google.protobuf.l1 l1Var) {
            if (l1Var instanceof MetricDescriptor) {
                return h0((MetricDescriptor) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b k0(MetricDescriptorMetadata metricDescriptorMetadata) {
            q2<MetricDescriptorMetadata, MetricDescriptorMetadata.b, c> q2Var = this.f10816p;
            if (q2Var == null) {
                MetricDescriptorMetadata metricDescriptorMetadata2 = this.f10815o;
                if (metricDescriptorMetadata2 != null) {
                    this.f10815o = MetricDescriptorMetadata.newBuilder(metricDescriptorMetadata2).d0(metricDescriptorMetadata).I();
                } else {
                    this.f10815o = metricDescriptorMetadata;
                }
                R();
            } else {
                q2Var.e(metricDescriptorMetadata);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: l0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: m0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
        }

        public b n0(int i9) {
            this.f10817q = i9;
            R();
            return this;
        }

        public b o0(int i9) {
            this.f10810j = i9;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: q0 */
        public final b f1(h3 h3Var) {
            return (b) super.f1(h3Var);
        }

        public b r0(int i9) {
            this.f10811k = i9;
            R();
            return this;
        }

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private b() {
            this.f10806f = "";
            this.f10807g = "";
            this.f10808h = Collections.emptyList();
            this.f10810j = 0;
            this.f10811k = 0;
            this.f10812l = "";
            this.f10813m = "";
            this.f10814n = "";
            this.f10817q = 0;
            this.f10818r = com.google.protobuf.y0.f15344d;
            g0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f10806f = "";
            this.f10807g = "";
            this.f10808h = Collections.emptyList();
            this.f10810j = 0;
            this.f10811k = 0;
            this.f10812l = "";
            this.f10813m = "";
            this.f10814n = "";
            this.f10817q = 0;
            this.f10818r = com.google.protobuf.y0.f15344d;
            g0();
        }
    }

    /* loaded from: classes2.dex */
    public interface c extends r1 {
    }

    /* synthetic */ MetricDescriptor(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static MetricDescriptor getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return q0.f11457a;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static MetricDescriptor parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (MetricDescriptor) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static MetricDescriptor parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<MetricDescriptor> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof MetricDescriptor)) {
            return super.equals(obj);
        }
        MetricDescriptor metricDescriptor = (MetricDescriptor) obj;
        if (getName().equals(metricDescriptor.getName()) && getType().equals(metricDescriptor.getType()) && getLabelsList().equals(metricDescriptor.getLabelsList()) && this.metricKind_ == metricDescriptor.metricKind_ && this.valueType_ == metricDescriptor.valueType_ && getUnit().equals(metricDescriptor.getUnit()) && getDescription().equals(metricDescriptor.getDescription()) && getDisplayName().equals(metricDescriptor.getDisplayName()) && hasMetadata() == metricDescriptor.hasMetadata()) {
            return (!hasMetadata() || getMetadata().equals(metricDescriptor.getMetadata())) && this.launchStage_ == metricDescriptor.launchStage_ && m196getMonitoredResourceTypesList().equals(metricDescriptor.m196getMonitoredResourceTypesList()) && this.unknownFields.equals(metricDescriptor.unknownFields);
        }
        return false;
    }

    public String getDescription() {
        Object obj = this.description_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.description_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getDescriptionBytes() {
        Object obj = this.description_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.description_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public String getDisplayName() {
        Object obj = this.displayName_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.displayName_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getDisplayNameBytes() {
        Object obj = this.displayName_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.displayName_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public LabelDescriptor getLabels(int i9) {
        return this.labels_.get(i9);
    }

    public int getLabelsCount() {
        return this.labels_.size();
    }

    public List<LabelDescriptor> getLabelsList() {
        return this.labels_;
    }

    public i0 getLabelsOrBuilder(int i9) {
        return this.labels_.get(i9);
    }

    public List<? extends i0> getLabelsOrBuilderList() {
        return this.labels_;
    }

    public LaunchStage getLaunchStage() {
        LaunchStage valueOf = LaunchStage.valueOf(this.launchStage_);
        return valueOf == null ? LaunchStage.UNRECOGNIZED : valueOf;
    }

    public int getLaunchStageValue() {
        return this.launchStage_;
    }

    public MetricDescriptorMetadata getMetadata() {
        MetricDescriptorMetadata metricDescriptorMetadata = this.metadata_;
        return metricDescriptorMetadata == null ? MetricDescriptorMetadata.getDefaultInstance() : metricDescriptorMetadata;
    }

    public c getMetadataOrBuilder() {
        return getMetadata();
    }

    public MetricKind getMetricKind() {
        MetricKind valueOf = MetricKind.valueOf(this.metricKind_);
        return valueOf == null ? MetricKind.UNRECOGNIZED : valueOf;
    }

    public int getMetricKindValue() {
        return this.metricKind_;
    }

    public String getMonitoredResourceTypes(int i9) {
        return this.monitoredResourceTypes_.get(i9);
    }

    public ByteString getMonitoredResourceTypesBytes(int i9) {
        return this.monitoredResourceTypes_.j0(i9);
    }

    public int getMonitoredResourceTypesCount() {
        return this.monitoredResourceTypes_.size();
    }

    public String getName() {
        Object obj = this.name_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.name_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getNameBytes() {
        Object obj = this.name_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.name_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<MetricDescriptor> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = !GeneratedMessageV3.isStringEmpty(this.name_) ? GeneratedMessageV3.computeStringSize(1, this.name_) + 0 : 0;
        for (int i10 = 0; i10 < this.labels_.size(); i10++) {
            computeStringSize += CodedOutputStream.G(2, this.labels_.get(i10));
        }
        if (this.metricKind_ != MetricKind.METRIC_KIND_UNSPECIFIED.getNumber()) {
            computeStringSize += CodedOutputStream.l(3, this.metricKind_);
        }
        if (this.valueType_ != ValueType.VALUE_TYPE_UNSPECIFIED.getNumber()) {
            computeStringSize += CodedOutputStream.l(4, this.valueType_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.unit_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(5, this.unit_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.description_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(6, this.description_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.displayName_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(7, this.displayName_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.type_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(8, this.type_);
        }
        if (this.metadata_ != null) {
            computeStringSize += CodedOutputStream.G(10, getMetadata());
        }
        if (this.launchStage_ != LaunchStage.LAUNCH_STAGE_UNSPECIFIED.getNumber()) {
            computeStringSize += CodedOutputStream.l(12, this.launchStage_);
        }
        int i11 = 0;
        for (int i12 = 0; i12 < this.monitoredResourceTypes_.size(); i12++) {
            i11 += GeneratedMessageV3.computeStringSizeNoTag(this.monitoredResourceTypes_.c1(i12));
        }
        int size = computeStringSize + i11 + (m196getMonitoredResourceTypesList().size() * 1) + this.unknownFields.getSerializedSize();
        this.memoizedSize = size;
        return size;
    }

    public String getType() {
        Object obj = this.type_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.type_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getTypeBytes() {
        Object obj = this.type_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.type_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public String getUnit() {
        Object obj = this.unit_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.unit_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getUnitBytes() {
        Object obj = this.unit_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.unit_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public ValueType getValueType() {
        ValueType valueOf = ValueType.valueOf(this.valueType_);
        return valueOf == null ? ValueType.UNRECOGNIZED : valueOf;
    }

    public int getValueTypeValue() {
        return this.valueType_;
    }

    public boolean hasMetadata() {
        return this.metadata_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = ((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode()) * 37) + 8) * 53) + getType().hashCode();
        if (getLabelsCount() > 0) {
            hashCode = (((hashCode * 37) + 2) * 53) + getLabelsList().hashCode();
        }
        int hashCode2 = (((((((((((((((((((hashCode * 37) + 3) * 53) + this.metricKind_) * 37) + 4) * 53) + this.valueType_) * 37) + 5) * 53) + getUnit().hashCode()) * 37) + 6) * 53) + getDescription().hashCode()) * 37) + 7) * 53) + getDisplayName().hashCode();
        if (hasMetadata()) {
            hashCode2 = (((hashCode2 * 37) + 10) * 53) + getMetadata().hashCode();
        }
        int i10 = (((hashCode2 * 37) + 12) * 53) + this.launchStage_;
        if (getMonitoredResourceTypesCount() > 0) {
            i10 = (((i10 * 37) + 13) * 53) + m196getMonitoredResourceTypesList().hashCode();
        }
        int hashCode3 = (i10 * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode3;
        return hashCode3;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return q0.f11458b.d(MetricDescriptor.class, b.class);
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
        return new MetricDescriptor();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.name_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.name_);
        }
        for (int i9 = 0; i9 < this.labels_.size(); i9++) {
            codedOutputStream.L0(2, this.labels_.get(i9));
        }
        if (this.metricKind_ != MetricKind.METRIC_KIND_UNSPECIFIED.getNumber()) {
            codedOutputStream.v0(3, this.metricKind_);
        }
        if (this.valueType_ != ValueType.VALUE_TYPE_UNSPECIFIED.getNumber()) {
            codedOutputStream.v0(4, this.valueType_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.unit_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 5, this.unit_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.description_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 6, this.description_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.displayName_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 7, this.displayName_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.type_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 8, this.type_);
        }
        if (this.metadata_ != null) {
            codedOutputStream.L0(10, getMetadata());
        }
        if (this.launchStage_ != LaunchStage.LAUNCH_STAGE_UNSPECIFIED.getNumber()) {
            codedOutputStream.v0(12, this.launchStage_);
        }
        for (int i10 = 0; i10 < this.monitoredResourceTypes_.size(); i10++) {
            GeneratedMessageV3.writeString(codedOutputStream, 13, this.monitoredResourceTypes_.c1(i10));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ MetricDescriptor(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(MetricDescriptor metricDescriptor) {
        return DEFAULT_INSTANCE.toBuilder().h0(metricDescriptor);
    }

    public static MetricDescriptor parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (MetricDescriptor) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static MetricDescriptor parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    /* renamed from: getMonitoredResourceTypesList */
    public i2 m196getMonitoredResourceTypesList() {
        return this.monitoredResourceTypes_;
    }

    private MetricDescriptor(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static MetricDescriptor parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public MetricDescriptor getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).h0(this);
    }

    public static MetricDescriptor parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private MetricDescriptor() {
        this.memoizedIsInitialized = (byte) -1;
        this.name_ = "";
        this.type_ = "";
        this.labels_ = Collections.emptyList();
        this.metricKind_ = 0;
        this.valueType_ = 0;
        this.unit_ = "";
        this.description_ = "";
        this.displayName_ = "";
        this.launchStage_ = 0;
        this.monitoredResourceTypes_ = com.google.protobuf.y0.f15344d;
    }

    public static MetricDescriptor parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static MetricDescriptor parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static MetricDescriptor parseFrom(InputStream inputStream) throws IOException {
        return (MetricDescriptor) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static MetricDescriptor parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (MetricDescriptor) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static MetricDescriptor parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (MetricDescriptor) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static MetricDescriptor parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
        return (MetricDescriptor) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private MetricDescriptor(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                            this.name_ = pVar.K();
                            continue;
                        case 18:
                            if (!(z11 & true)) {
                                this.labels_ = new ArrayList();
                                z11 |= true;
                            }
                            this.labels_.add(pVar.B(LabelDescriptor.parser(), f0Var));
                            continue;
                        case 24:
                            this.metricKind_ = pVar.u();
                            continue;
                        case 32:
                            this.valueType_ = pVar.u();
                            continue;
                        case 42:
                            this.unit_ = pVar.K();
                            continue;
                        case 50:
                            this.description_ = pVar.K();
                            continue;
                        case 58:
                            this.displayName_ = pVar.K();
                            continue;
                        case 66:
                            this.type_ = pVar.K();
                            continue;
                        case 82:
                            MetricDescriptorMetadata metricDescriptorMetadata = this.metadata_;
                            MetricDescriptorMetadata.b builder = metricDescriptorMetadata != null ? metricDescriptorMetadata.toBuilder() : null;
                            MetricDescriptorMetadata metricDescriptorMetadata2 = (MetricDescriptorMetadata) pVar.B(MetricDescriptorMetadata.parser(), f0Var);
                            this.metadata_ = metricDescriptorMetadata2;
                            if (builder != null) {
                                builder.d0(metricDescriptorMetadata2);
                                this.metadata_ = builder.I();
                            } else {
                                continue;
                            }
                        case 96:
                            this.launchStage_ = pVar.u();
                            continue;
                        case 106:
                            String K = pVar.K();
                            if (!(z11 & true)) {
                                this.monitoredResourceTypes_ = new com.google.protobuf.y0();
                                z11 |= true;
                            }
                            this.monitoredResourceTypes_.add(K);
                            continue;
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
                    this.labels_ = Collections.unmodifiableList(this.labels_);
                }
                if (z11 & true) {
                    this.monitoredResourceTypes_ = this.monitoredResourceTypes_.V0();
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }
}
