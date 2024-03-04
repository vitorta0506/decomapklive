package com.google.api;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.h3;
import com.google.protobuf.i2;
import com.google.protobuf.l2;
import com.google.protobuf.r1;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class Monitoring extends GeneratedMessageV3 implements u0 {
    public static final int CONSUMER_DESTINATIONS_FIELD_NUMBER = 2;
    private static final Monitoring DEFAULT_INSTANCE = new Monitoring();
    private static final e2<Monitoring> PARSER = new a();
    public static final int PRODUCER_DESTINATIONS_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private List<MonitoringDestination> consumerDestinations_;
    private byte memoizedIsInitialized;
    private List<MonitoringDestination> producerDestinations_;

    /* loaded from: classes2.dex */
    public static final class MonitoringDestination extends GeneratedMessageV3 implements c {
        public static final int METRICS_FIELD_NUMBER = 2;
        public static final int MONITORED_RESOURCE_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private com.google.protobuf.z0 metrics_;
        private volatile Object monitoredResource_;
        private static final MonitoringDestination DEFAULT_INSTANCE = new MonitoringDestination();
        private static final e2<MonitoringDestination> PARSER = new a();

        /* loaded from: classes2.dex */
        static class a extends com.google.protobuf.c<MonitoringDestination> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public MonitoringDestination m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
                return new MonitoringDestination(pVar, f0Var, null);
            }
        }

        /* loaded from: classes2.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements c {

            /* renamed from: e  reason: collision with root package name */
            private int f10837e;

            /* renamed from: f  reason: collision with root package name */
            private Object f10838f;

            /* renamed from: g  reason: collision with root package name */
            private com.google.protobuf.z0 f10839g;

            /* synthetic */ b(a aVar) {
                this();
            }

            private void a0() {
                if ((this.f10837e & 1) == 0) {
                    this.f10839g = new com.google.protobuf.y0(this.f10839g);
                    this.f10837e |= 1;
                }
            }

            private void d0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return v0.f11498d.d(MonitoringDestination.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public MonitoringDestination build() {
                MonitoringDestination I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public MonitoringDestination I() {
                MonitoringDestination monitoringDestination = new MonitoringDestination(this, (a) null);
                monitoringDestination.monitoredResource_ = this.f10838f;
                if ((this.f10837e & 1) != 0) {
                    this.f10839g = this.f10839g.V0();
                    this.f10837e &= -2;
                }
                monitoringDestination.metrics_ = this.f10839g;
                Q();
                return monitoringDestination;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: b0 */
            public MonitoringDestination getDefaultInstanceForType() {
                return MonitoringDestination.getDefaultInstance();
            }

            public b e0(MonitoringDestination monitoringDestination) {
                if (monitoringDestination == MonitoringDestination.getDefaultInstance()) {
                    return this;
                }
                if (!monitoringDestination.getMonitoredResource().isEmpty()) {
                    this.f10838f = monitoringDestination.monitoredResource_;
                    R();
                }
                if (!monitoringDestination.metrics_.isEmpty()) {
                    if (this.f10839g.isEmpty()) {
                        this.f10839g = monitoringDestination.metrics_;
                        this.f10837e &= -2;
                    } else {
                        a0();
                        this.f10839g.addAll(monitoringDestination.metrics_);
                    }
                    R();
                }
                z(((GeneratedMessageV3) monitoringDestination).unknownFields);
                R();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: g0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.google.api.Monitoring.MonitoringDestination.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = com.google.api.Monitoring.MonitoringDestination.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    com.google.api.Monitoring$MonitoringDestination r3 = (com.google.api.Monitoring.MonitoringDestination) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    if (r3 == 0) goto L10
                    r2.e0(r3)
                L10:
                    return r2
                L11:
                    r3 = move-exception
                    goto L21
                L13:
                    r3 = move-exception
                    com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                    com.google.api.Monitoring$MonitoringDestination r4 = (com.google.api.Monitoring.MonitoringDestination) r4     // Catch: java.lang.Throwable -> L11
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                    throw r3     // Catch: java.lang.Throwable -> L1f
                L1f:
                    r3 = move-exception
                    r0 = r4
                L21:
                    if (r0 == 0) goto L26
                    r2.e0(r0)
                L26:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.api.Monitoring.MonitoringDestination.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.api.Monitoring$MonitoringDestination$b");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return v0.f11497c;
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: h0 */
            public b v(com.google.protobuf.l1 l1Var) {
                if (l1Var instanceof MonitoringDestination) {
                    return e0((MonitoringDestination) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: i0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: j0 */
            public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.c(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: k0 */
            public final b f1(h3 h3Var) {
                return (b) super.f1(h3Var);
            }

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private b() {
                this.f10838f = "";
                this.f10839g = com.google.protobuf.y0.f15344d;
                d0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f10838f = "";
                this.f10839g = com.google.protobuf.y0.f15344d;
                d0();
            }
        }

        /* synthetic */ MonitoringDestination(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static MonitoringDestination getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return v0.f11497c;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static MonitoringDestination parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (MonitoringDestination) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static MonitoringDestination parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<MonitoringDestination> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof MonitoringDestination)) {
                return super.equals(obj);
            }
            MonitoringDestination monitoringDestination = (MonitoringDestination) obj;
            return getMonitoredResource().equals(monitoringDestination.getMonitoredResource()) && m197getMetricsList().equals(monitoringDestination.m197getMetricsList()) && this.unknownFields.equals(monitoringDestination.unknownFields);
        }

        public String getMetrics(int i9) {
            return this.metrics_.get(i9);
        }

        public ByteString getMetricsBytes(int i9) {
            return this.metrics_.j0(i9);
        }

        public int getMetricsCount() {
            return this.metrics_.size();
        }

        public String getMonitoredResource() {
            Object obj = this.monitoredResource_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.monitoredResource_ = stringUtf8;
            return stringUtf8;
        }

        public ByteString getMonitoredResourceBytes() {
            Object obj = this.monitoredResource_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.monitoredResource_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<MonitoringDestination> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int computeStringSize = !GeneratedMessageV3.isStringEmpty(this.monitoredResource_) ? GeneratedMessageV3.computeStringSize(1, this.monitoredResource_) + 0 : 0;
            int i10 = 0;
            for (int i11 = 0; i11 < this.metrics_.size(); i11++) {
                i10 += GeneratedMessageV3.computeStringSizeNoTag(this.metrics_.c1(i11));
            }
            int size = computeStringSize + i10 + (m197getMetricsList().size() * 1) + this.unknownFields.getSerializedSize();
            this.memoizedSize = size;
            return size;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getMonitoredResource().hashCode();
            if (getMetricsCount() > 0) {
                hashCode = (((hashCode * 37) + 2) * 53) + m197getMetricsList().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return v0.f11498d.d(MonitoringDestination.class, b.class);
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
            return new MonitoringDestination();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (!GeneratedMessageV3.isStringEmpty(this.monitoredResource_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.monitoredResource_);
            }
            for (int i9 = 0; i9 < this.metrics_.size(); i9++) {
                GeneratedMessageV3.writeString(codedOutputStream, 2, this.metrics_.c1(i9));
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ MonitoringDestination(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(MonitoringDestination monitoringDestination) {
            return DEFAULT_INSTANCE.toBuilder().e0(monitoringDestination);
        }

        public static MonitoringDestination parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
            return (MonitoringDestination) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static MonitoringDestination parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        /* renamed from: getMetricsList */
        public i2 m197getMetricsList() {
            return this.metrics_;
        }

        private MonitoringDestination(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static MonitoringDestination parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public MonitoringDestination getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).e0(this);
        }

        public static MonitoringDestination parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private MonitoringDestination() {
            this.memoizedIsInitialized = (byte) -1;
            this.monitoredResource_ = "";
            this.metrics_ = com.google.protobuf.y0.f15344d;
        }

        public static MonitoringDestination parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static MonitoringDestination parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static MonitoringDestination parseFrom(InputStream inputStream) throws IOException {
            return (MonitoringDestination) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static MonitoringDestination parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
            return (MonitoringDestination) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        private MonitoringDestination(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            this();
            Objects.requireNonNull(f0Var);
            h3.b h10 = h3.h();
            boolean z10 = false;
            boolean z11 = false;
            while (!z10) {
                try {
                    try {
                        try {
                            int L = pVar.L();
                            if (L != 0) {
                                if (L == 10) {
                                    this.monitoredResource_ = pVar.K();
                                } else if (L != 18) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    String K = pVar.K();
                                    if (!(z11 & true)) {
                                        this.metrics_ = new com.google.protobuf.y0();
                                        z11 |= true;
                                    }
                                    this.metrics_.add(K);
                                }
                            }
                            z10 = true;
                        } catch (InvalidProtocolBufferException e10) {
                            throw e10.setUnfinishedMessage(this);
                        }
                    } catch (IOException e11) {
                        throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                    }
                } finally {
                    if (z11 & true) {
                        this.metrics_ = this.metrics_.V0();
                    }
                    this.unknownFields = h10.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static MonitoringDestination parseFrom(com.google.protobuf.p pVar) throws IOException {
            return (MonitoringDestination) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static MonitoringDestination parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
            return (MonitoringDestination) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a extends com.google.protobuf.c<Monitoring> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public Monitoring m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return new Monitoring(pVar, f0Var, null);
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements u0 {

        /* renamed from: e  reason: collision with root package name */
        private int f10840e;

        /* renamed from: f  reason: collision with root package name */
        private List<MonitoringDestination> f10841f;

        /* renamed from: g  reason: collision with root package name */
        private l2<MonitoringDestination, MonitoringDestination.b, c> f10842g;

        /* renamed from: h  reason: collision with root package name */
        private List<MonitoringDestination> f10843h;

        /* renamed from: i  reason: collision with root package name */
        private l2<MonitoringDestination, MonitoringDestination.b, c> f10844i;

        /* synthetic */ b(a aVar) {
            this();
        }

        private void a0() {
            if ((this.f10840e & 2) == 0) {
                this.f10843h = new ArrayList(this.f10843h);
                this.f10840e |= 2;
            }
        }

        private void b0() {
            if ((this.f10840e & 1) == 0) {
                this.f10841f = new ArrayList(this.f10841f);
                this.f10840e |= 1;
            }
        }

        private l2<MonitoringDestination, MonitoringDestination.b, c> d0() {
            if (this.f10844i == null) {
                this.f10844i = new l2<>(this.f10843h, (this.f10840e & 2) != 0, H(), O());
                this.f10843h = null;
            }
            return this.f10844i;
        }

        private l2<MonitoringDestination, MonitoringDestination.b, c> g0() {
            if (this.f10842g == null) {
                this.f10842g = new l2<>(this.f10841f, (this.f10840e & 1) != 0, H(), O());
                this.f10841f = null;
            }
            return this.f10842g;
        }

        private void h0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                g0();
                d0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return v0.f11496b.d(Monitoring.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public Monitoring build() {
            Monitoring I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public Monitoring I() {
            Monitoring monitoring = new Monitoring(this, (a) null);
            int i9 = this.f10840e;
            l2<MonitoringDestination, MonitoringDestination.b, c> l2Var = this.f10842g;
            if (l2Var == null) {
                if ((i9 & 1) != 0) {
                    this.f10841f = Collections.unmodifiableList(this.f10841f);
                    this.f10840e &= -2;
                }
                monitoring.producerDestinations_ = this.f10841f;
            } else {
                monitoring.producerDestinations_ = l2Var.e();
            }
            l2<MonitoringDestination, MonitoringDestination.b, c> l2Var2 = this.f10844i;
            if (l2Var2 == null) {
                if ((this.f10840e & 2) != 0) {
                    this.f10843h = Collections.unmodifiableList(this.f10843h);
                    this.f10840e &= -3;
                }
                monitoring.consumerDestinations_ = this.f10843h;
            } else {
                monitoring.consumerDestinations_ = l2Var2.e();
            }
            Q();
            return monitoring;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: e0 */
        public Monitoring getDefaultInstanceForType() {
            return Monitoring.getDefaultInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return v0.f11495a;
        }

        public b i0(Monitoring monitoring) {
            if (monitoring == Monitoring.getDefaultInstance()) {
                return this;
            }
            if (this.f10842g == null) {
                if (!monitoring.producerDestinations_.isEmpty()) {
                    if (this.f10841f.isEmpty()) {
                        this.f10841f = monitoring.producerDestinations_;
                        this.f10840e &= -2;
                    } else {
                        b0();
                        this.f10841f.addAll(monitoring.producerDestinations_);
                    }
                    R();
                }
            } else if (!monitoring.producerDestinations_.isEmpty()) {
                if (this.f10842g.k()) {
                    this.f10842g.f();
                    this.f10842g = null;
                    this.f10841f = monitoring.producerDestinations_;
                    this.f10840e &= -2;
                    this.f10842g = GeneratedMessageV3.alwaysUseFieldBuilders ? g0() : null;
                } else {
                    this.f10842g.b(monitoring.producerDestinations_);
                }
            }
            if (this.f10844i == null) {
                if (!monitoring.consumerDestinations_.isEmpty()) {
                    if (this.f10843h.isEmpty()) {
                        this.f10843h = monitoring.consumerDestinations_;
                        this.f10840e &= -3;
                    } else {
                        a0();
                        this.f10843h.addAll(monitoring.consumerDestinations_);
                    }
                    R();
                }
            } else if (!monitoring.consumerDestinations_.isEmpty()) {
                if (this.f10844i.k()) {
                    this.f10844i.f();
                    this.f10844i = null;
                    this.f10843h = monitoring.consumerDestinations_;
                    this.f10840e &= -3;
                    this.f10844i = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                } else {
                    this.f10844i.b(monitoring.consumerDestinations_);
                }
            }
            z(((GeneratedMessageV3) monitoring).unknownFields);
            R();
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: j0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.api.Monitoring.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.api.Monitoring.access$2000()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.api.Monitoring r3 = (com.google.api.Monitoring) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                com.google.api.Monitoring r4 = (com.google.api.Monitoring) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.api.Monitoring.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.api.Monitoring$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: k0 */
        public b v(com.google.protobuf.l1 l1Var) {
            if (l1Var instanceof Monitoring) {
                return i0((Monitoring) l1Var);
            }
            super.P0(l1Var);
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

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: n0 */
        public final b f1(h3 h3Var) {
            return (b) super.f1(h3Var);
        }

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private b() {
            this.f10841f = Collections.emptyList();
            this.f10843h = Collections.emptyList();
            h0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f10841f = Collections.emptyList();
            this.f10843h = Collections.emptyList();
            h0();
        }
    }

    /* loaded from: classes2.dex */
    public interface c extends r1 {
    }

    /* synthetic */ Monitoring(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static Monitoring getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return v0.f11495a;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Monitoring parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Monitoring) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Monitoring parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<Monitoring> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Monitoring)) {
            return super.equals(obj);
        }
        Monitoring monitoring = (Monitoring) obj;
        return getProducerDestinationsList().equals(monitoring.getProducerDestinationsList()) && getConsumerDestinationsList().equals(monitoring.getConsumerDestinationsList()) && this.unknownFields.equals(monitoring.unknownFields);
    }

    public MonitoringDestination getConsumerDestinations(int i9) {
        return this.consumerDestinations_.get(i9);
    }

    public int getConsumerDestinationsCount() {
        return this.consumerDestinations_.size();
    }

    public List<MonitoringDestination> getConsumerDestinationsList() {
        return this.consumerDestinations_;
    }

    public c getConsumerDestinationsOrBuilder(int i9) {
        return this.consumerDestinations_.get(i9);
    }

    public List<? extends c> getConsumerDestinationsOrBuilderList() {
        return this.consumerDestinations_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<Monitoring> getParserForType() {
        return PARSER;
    }

    public MonitoringDestination getProducerDestinations(int i9) {
        return this.producerDestinations_.get(i9);
    }

    public int getProducerDestinationsCount() {
        return this.producerDestinations_.size();
    }

    public List<MonitoringDestination> getProducerDestinationsList() {
        return this.producerDestinations_;
    }

    public c getProducerDestinationsOrBuilder(int i9) {
        return this.producerDestinations_.get(i9);
    }

    public List<? extends c> getProducerDestinationsOrBuilderList() {
        return this.producerDestinations_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < this.producerDestinations_.size(); i11++) {
            i10 += CodedOutputStream.G(1, this.producerDestinations_.get(i11));
        }
        for (int i12 = 0; i12 < this.consumerDestinations_.size(); i12++) {
            i10 += CodedOutputStream.G(2, this.consumerDestinations_.get(i12));
        }
        int serializedSize = i10 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (getProducerDestinationsCount() > 0) {
            hashCode = (((hashCode * 37) + 1) * 53) + getProducerDestinationsList().hashCode();
        }
        if (getConsumerDestinationsCount() > 0) {
            hashCode = (((hashCode * 37) + 2) * 53) + getConsumerDestinationsList().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return v0.f11496b.d(Monitoring.class, b.class);
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
        return new Monitoring();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        for (int i9 = 0; i9 < this.producerDestinations_.size(); i9++) {
            codedOutputStream.L0(1, this.producerDestinations_.get(i9));
        }
        for (int i10 = 0; i10 < this.consumerDestinations_.size(); i10++) {
            codedOutputStream.L0(2, this.consumerDestinations_.get(i10));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ Monitoring(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(Monitoring monitoring) {
        return DEFAULT_INSTANCE.toBuilder().i0(monitoring);
    }

    public static Monitoring parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (Monitoring) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static Monitoring parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private Monitoring(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Monitoring parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public Monitoring getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).i0(this);
    }

    public static Monitoring parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private Monitoring() {
        this.memoizedIsInitialized = (byte) -1;
        this.producerDestinations_ = Collections.emptyList();
        this.consumerDestinations_ = Collections.emptyList();
    }

    public static Monitoring parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static Monitoring parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static Monitoring parseFrom(InputStream inputStream) throws IOException {
        return (Monitoring) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static Monitoring parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (Monitoring) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Monitoring(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        boolean z11 = false;
        while (!z10) {
            try {
                try {
                    try {
                        int L = pVar.L();
                        if (L != 0) {
                            if (L == 10) {
                                if (!(z11 & true)) {
                                    this.producerDestinations_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.producerDestinations_.add(pVar.B(MonitoringDestination.parser(), f0Var));
                            } else if (L != 18) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                if (!(z11 & true)) {
                                    this.consumerDestinations_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.consumerDestinations_.add(pVar.B(MonitoringDestination.parser(), f0Var));
                            }
                        }
                        z10 = true;
                    } catch (InvalidProtocolBufferException e10) {
                        throw e10.setUnfinishedMessage(this);
                    }
                } catch (IOException e11) {
                    throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                }
            } finally {
                if (z11 & true) {
                    this.producerDestinations_ = Collections.unmodifiableList(this.producerDestinations_);
                }
                if (z11 & true) {
                    this.consumerDestinations_ = Collections.unmodifiableList(this.consumerDestinations_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static Monitoring parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (Monitoring) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static Monitoring parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
        return (Monitoring) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
