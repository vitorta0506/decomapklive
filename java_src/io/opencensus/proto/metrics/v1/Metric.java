package io.opencensus.proto.metrics.v1;

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
import com.google.protobuf.l2;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import io.opencensus.proto.metrics.v1.MetricDescriptor;
import io.opencensus.proto.metrics.v1.TimeSeries;
import io.opencensus.proto.resource.v1.Resource;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes7.dex */
public final class Metric extends GeneratedMessageV3 implements e {
    public static final int METRIC_DESCRIPTOR_FIELD_NUMBER = 1;
    public static final int RESOURCE_FIELD_NUMBER = 3;
    public static final int TIMESERIES_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private int bitField0_;
    private byte memoizedIsInitialized;
    private MetricDescriptor metricDescriptor_;
    private Resource resource_;
    private List<TimeSeries> timeseries_;
    private static final Metric DEFAULT_INSTANCE = new Metric();
    private static final e2<Metric> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static class a extends com.google.protobuf.c<Metric> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public Metric m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new Metric(pVar, f0Var, null);
        }
    }

    /* loaded from: classes7.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements e {

        /* renamed from: e  reason: collision with root package name */
        private int f50994e;

        /* renamed from: f  reason: collision with root package name */
        private MetricDescriptor f50995f;

        /* renamed from: g  reason: collision with root package name */
        private q2<MetricDescriptor, MetricDescriptor.b, d> f50996g;

        /* renamed from: h  reason: collision with root package name */
        private List<TimeSeries> f50997h;

        /* renamed from: i  reason: collision with root package name */
        private l2<TimeSeries, TimeSeries.b, i> f50998i;

        /* renamed from: j  reason: collision with root package name */
        private Resource f50999j;

        /* renamed from: k  reason: collision with root package name */
        private q2<Resource, Resource.b, io.opencensus.proto.resource.v1.a> f51000k;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f50994e & 2) != 2) {
                this.f50997h = new ArrayList(this.f50997h);
                this.f50994e |= 2;
            }
        }

        private l2<TimeSeries, TimeSeries.b, i> d0() {
            if (this.f50998i == null) {
                this.f50998i = new l2<>(this.f50997h, (this.f50994e & 2) == 2, H(), O());
                this.f50997h = null;
            }
            return this.f50998i;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                d0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return f.f51038b.d(Metric.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public Metric build() {
            Metric I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public Metric I() {
            Metric metric = new Metric(this, (a) null);
            q2<MetricDescriptor, MetricDescriptor.b, d> q2Var = this.f50996g;
            if (q2Var == null) {
                metric.metricDescriptor_ = this.f50995f;
            } else {
                metric.metricDescriptor_ = q2Var.b();
            }
            l2<TimeSeries, TimeSeries.b, i> l2Var = this.f50998i;
            if (l2Var == null) {
                if ((this.f50994e & 2) == 2) {
                    this.f50997h = Collections.unmodifiableList(this.f50997h);
                    this.f50994e &= -3;
                }
                metric.timeseries_ = this.f50997h;
            } else {
                metric.timeseries_ = l2Var.e();
            }
            q2<Resource, Resource.b, io.opencensus.proto.resource.v1.a> q2Var2 = this.f51000k;
            if (q2Var2 == null) {
                metric.resource_ = this.f50999j;
            } else {
                metric.resource_ = q2Var2.b();
            }
            metric.bitField0_ = 0;
            Q();
            return metric;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: b0 */
        public Metric getDefaultInstanceForType() {
            return Metric.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.opencensus.proto.metrics.v1.Metric.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.opencensus.proto.metrics.v1.Metric.access$1000()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.opencensus.proto.metrics.v1.Metric r3 = (io.opencensus.proto.metrics.v1.Metric) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.opencensus.proto.metrics.v1.Metric r4 = (io.opencensus.proto.metrics.v1.Metric) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.opencensus.proto.metrics.v1.Metric.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.opencensus.proto.metrics.v1.Metric$b");
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return f.f51037a;
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof Metric) {
                return i0((Metric) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b i0(Metric metric) {
            if (metric == Metric.getDefaultInstance()) {
                return this;
            }
            if (metric.hasMetricDescriptor()) {
                j0(metric.getMetricDescriptor());
            }
            if (this.f50998i == null) {
                if (!metric.timeseries_.isEmpty()) {
                    if (this.f50997h.isEmpty()) {
                        this.f50997h = metric.timeseries_;
                        this.f50994e &= -3;
                    } else {
                        a0();
                        this.f50997h.addAll(metric.timeseries_);
                    }
                    R();
                }
            } else if (!metric.timeseries_.isEmpty()) {
                if (this.f50998i.k()) {
                    this.f50998i.f();
                    this.f50998i = null;
                    this.f50997h = metric.timeseries_;
                    this.f50994e &= -3;
                    this.f50998i = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                } else {
                    this.f50998i.b(metric.timeseries_);
                }
            }
            if (metric.hasResource()) {
                k0(metric.getResource());
            }
            z(((GeneratedMessageV3) metric).unknownFields);
            R();
            return this;
        }

        public b j0(MetricDescriptor metricDescriptor) {
            q2<MetricDescriptor, MetricDescriptor.b, d> q2Var = this.f50996g;
            if (q2Var == null) {
                MetricDescriptor metricDescriptor2 = this.f50995f;
                if (metricDescriptor2 != null) {
                    this.f50995f = MetricDescriptor.newBuilder(metricDescriptor2).i0(metricDescriptor).I();
                } else {
                    this.f50995f = metricDescriptor;
                }
                R();
            } else {
                q2Var.e(metricDescriptor);
            }
            return this;
        }

        public b k0(Resource resource) {
            q2<Resource, Resource.b, io.opencensus.proto.resource.v1.a> q2Var = this.f51000k;
            if (q2Var == null) {
                Resource resource2 = this.f50999j;
                if (resource2 != null) {
                    this.f50999j = Resource.newBuilder(resource2).i0(resource).I();
                } else {
                    this.f50999j = resource;
                }
                R();
            } else {
                q2Var.e(resource);
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

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: n0 */
        public final b f1(h3 h3Var) {
            return (b) super.V(h3Var);
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            this.f50995f = null;
            this.f50997h = Collections.emptyList();
            this.f50999j = null;
            e0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f50995f = null;
            this.f50997h = Collections.emptyList();
            this.f50999j = null;
            e0();
        }
    }

    /* synthetic */ Metric(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static Metric getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return f.f51037a;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Metric parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Metric) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Metric parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<Metric> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Metric)) {
            return super.equals(obj);
        }
        Metric metric = (Metric) obj;
        boolean z10 = hasMetricDescriptor() == metric.hasMetricDescriptor();
        if (hasMetricDescriptor()) {
            z10 = z10 && getMetricDescriptor().equals(metric.getMetricDescriptor());
        }
        boolean z11 = (z10 && getTimeseriesList().equals(metric.getTimeseriesList())) && hasResource() == metric.hasResource();
        if (hasResource()) {
            z11 = z11 && getResource().equals(metric.getResource());
        }
        return z11 && this.unknownFields.equals(metric.unknownFields);
    }

    public MetricDescriptor getMetricDescriptor() {
        MetricDescriptor metricDescriptor = this.metricDescriptor_;
        return metricDescriptor == null ? MetricDescriptor.getDefaultInstance() : metricDescriptor;
    }

    public d getMetricDescriptorOrBuilder() {
        return getMetricDescriptor();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<Metric> getParserForType() {
        return PARSER;
    }

    public Resource getResource() {
        Resource resource = this.resource_;
        return resource == null ? Resource.getDefaultInstance() : resource;
    }

    public io.opencensus.proto.resource.v1.a getResourceOrBuilder() {
        return getResource();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.metricDescriptor_ != null ? CodedOutputStream.G(1, getMetricDescriptor()) + 0 : 0;
        for (int i10 = 0; i10 < this.timeseries_.size(); i10++) {
            G += CodedOutputStream.G(2, this.timeseries_.get(i10));
        }
        if (this.resource_ != null) {
            G += CodedOutputStream.G(3, getResource());
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public TimeSeries getTimeseries(int i9) {
        return this.timeseries_.get(i9);
    }

    public int getTimeseriesCount() {
        return this.timeseries_.size();
    }

    public List<TimeSeries> getTimeseriesList() {
        return this.timeseries_;
    }

    public i getTimeseriesOrBuilder(int i9) {
        return this.timeseries_.get(i9);
    }

    public List<? extends i> getTimeseriesOrBuilderList() {
        return this.timeseries_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasMetricDescriptor() {
        return this.metricDescriptor_ != null;
    }

    public boolean hasResource() {
        return this.resource_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasMetricDescriptor()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getMetricDescriptor().hashCode();
        }
        if (getTimeseriesCount() > 0) {
            hashCode = (((hashCode * 37) + 2) * 53) + getTimeseriesList().hashCode();
        }
        if (hasResource()) {
            hashCode = (((hashCode * 37) + 3) * 53) + getResource().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return f.f51038b.d(Metric.class, b.class);
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
        if (this.metricDescriptor_ != null) {
            codedOutputStream.L0(1, getMetricDescriptor());
        }
        for (int i9 = 0; i9 < this.timeseries_.size(); i9++) {
            codedOutputStream.L0(2, this.timeseries_.get(i9));
        }
        if (this.resource_ != null) {
            codedOutputStream.L0(3, getResource());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ Metric(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(Metric metric) {
        return DEFAULT_INSTANCE.toBuilder().i0(metric);
    }

    public static Metric parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private Metric(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Metric parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Metric) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static Metric parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public Metric getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).i0(this);
    }

    public static Metric parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private Metric() {
        this.memoizedIsInitialized = (byte) -1;
        this.timeseries_ = Collections.emptyList();
    }

    public static Metric parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static Metric parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static Metric parseFrom(InputStream inputStream) throws IOException {
        return (Metric) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Metric(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        boolean z11 = false;
        while (true) {
            if (z10) {
                break;
            }
            try {
                try {
                    int L = pVar.L();
                    if (L != 0) {
                        if (L == 10) {
                            MetricDescriptor metricDescriptor = this.metricDescriptor_;
                            MetricDescriptor.b builder = metricDescriptor != null ? metricDescriptor.toBuilder() : null;
                            MetricDescriptor metricDescriptor2 = (MetricDescriptor) pVar.B(MetricDescriptor.parser(), f0Var);
                            this.metricDescriptor_ = metricDescriptor2;
                            if (builder != null) {
                                builder.i0(metricDescriptor2);
                                this.metricDescriptor_ = builder.I();
                            }
                        } else if (L == 18) {
                            if (!(z11 & true)) {
                                this.timeseries_ = new ArrayList();
                                z11 |= true;
                            }
                            this.timeseries_.add(pVar.B(TimeSeries.parser(), f0Var));
                        } else if (L != 26) {
                            if (!parseUnknownFieldProto3(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            Resource resource = this.resource_;
                            Resource.b builder2 = resource != null ? resource.toBuilder() : null;
                            Resource resource2 = (Resource) pVar.B(Resource.parser(), f0Var);
                            this.resource_ = resource2;
                            if (builder2 != null) {
                                builder2.i0(resource2);
                                this.resource_ = builder2.I();
                            }
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
                    this.timeseries_ = Collections.unmodifiableList(this.timeseries_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static Metric parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Metric) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static Metric parseFrom(p pVar) throws IOException {
        return (Metric) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static Metric parseFrom(p pVar, f0 f0Var) throws IOException {
        return (Metric) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
