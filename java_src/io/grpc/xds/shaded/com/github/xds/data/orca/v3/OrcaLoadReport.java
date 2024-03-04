package io.grpc.xds.shaded.com.github.xds.data.orca.v3;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.WireFormat;
import com.google.protobuf.a;
import com.google.protobuf.e1;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.g1;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.p;
import com.google.protobuf.r1;
import com.google.protobuf.u0;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class OrcaLoadReport extends GeneratedMessageV3 implements r1 {
    public static final int CPU_UTILIZATION_FIELD_NUMBER = 1;
    public static final int MEM_UTILIZATION_FIELD_NUMBER = 2;
    public static final int REQUEST_COST_FIELD_NUMBER = 4;
    public static final int RPS_FIELD_NUMBER = 3;
    public static final int UTILIZATION_FIELD_NUMBER = 5;
    private static final long serialVersionUID = 0;
    private double cpuUtilization_;
    private double memUtilization_;
    private byte memoizedIsInitialized;
    private g1<String, Double> requestCost_;
    private long rps_;
    private g1<String, Double> utilization_;
    private static final OrcaLoadReport DEFAULT_INSTANCE = new OrcaLoadReport();
    private static final e2<OrcaLoadReport> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends com.google.protobuf.c<OrcaLoadReport> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public OrcaLoadReport m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new OrcaLoadReport(pVar, f0Var, null);
        }
    }

    /* loaded from: classes5.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private double f45532e;

        /* renamed from: f  reason: collision with root package name */
        private double f45533f;

        /* renamed from: g  reason: collision with root package name */
        private long f45534g;

        /* renamed from: h  reason: collision with root package name */
        private g1<String, Double> f45535h;

        /* renamed from: i  reason: collision with root package name */
        private g1<String, Double> f45536i;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private g1<String, Double> b0() {
            R();
            if (this.f45535h == null) {
                this.f45535h = g1.p(c.f45537a);
            }
            if (!this.f45535h.m()) {
                this.f45535h = this.f45535h.f();
            }
            return this.f45535h;
        }

        private g1<String, Double> d0() {
            R();
            if (this.f45536i == null) {
                this.f45536i = g1.p(d.f45538a);
            }
            if (!this.f45536i.m()) {
                this.f45536i = this.f45536i.f();
            }
            return this.f45536i;
        }

        private g1<String, Double> e0() {
            g1<String, Double> g1Var = this.f45535h;
            return g1Var == null ? g1.g(c.f45537a) : g1Var;
        }

        private g1<String, Double> g0() {
            g1<String, Double> g1Var = this.f45536i;
            return g1Var == null ? g1.g(d.f45538a) : g1Var;
        }

        private void h0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return io.grpc.xds.shaded.com.github.xds.data.orca.v3.a.f45540b.d(OrcaLoadReport.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected g1 M(int i9) {
            if (i9 != 4) {
                if (i9 == 5) {
                    return g0();
                }
                throw new RuntimeException("Invalid map field number: " + i9);
            }
            return e0();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected g1 N(int i9) {
            if (i9 != 4) {
                if (i9 == 5) {
                    return d0();
                }
                throw new RuntimeException("Invalid map field number: " + i9);
            }
            return b0();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public OrcaLoadReport build() {
            OrcaLoadReport I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public OrcaLoadReport I() {
            OrcaLoadReport orcaLoadReport = new OrcaLoadReport(this, (a) null);
            orcaLoadReport.cpuUtilization_ = this.f45532e;
            orcaLoadReport.memUtilization_ = this.f45533f;
            orcaLoadReport.rps_ = this.f45534g;
            orcaLoadReport.requestCost_ = e0();
            orcaLoadReport.requestCost_.n();
            orcaLoadReport.utilization_ = g0();
            orcaLoadReport.utilization_.n();
            Q();
            return orcaLoadReport;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public OrcaLoadReport getDefaultInstanceForType() {
            return OrcaLoadReport.getDefaultInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return io.grpc.xds.shaded.com.github.xds.data.orca.v3.a.f45539a;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.com.github.xds.data.orca.v3.OrcaLoadReport.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.com.github.xds.data.orca.v3.OrcaLoadReport.access$1200()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.com.github.xds.data.orca.v3.OrcaLoadReport r3 = (io.grpc.xds.shaded.com.github.xds.data.orca.v3.OrcaLoadReport) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.k0(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                io.grpc.xds.shaded.com.github.xds.data.orca.v3.OrcaLoadReport r4 = (io.grpc.xds.shaded.com.github.xds.data.orca.v3.OrcaLoadReport) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.k0(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.com.github.xds.data.orca.v3.OrcaLoadReport.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.com.github.xds.data.orca.v3.OrcaLoadReport$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: j0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof OrcaLoadReport) {
                return k0((OrcaLoadReport) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b k0(OrcaLoadReport orcaLoadReport) {
            if (orcaLoadReport == OrcaLoadReport.getDefaultInstance()) {
                return this;
            }
            if (orcaLoadReport.getCpuUtilization() != 0.0d) {
                m0(orcaLoadReport.getCpuUtilization());
            }
            if (orcaLoadReport.getMemUtilization() != 0.0d) {
                o0(orcaLoadReport.getMemUtilization());
            }
            if (orcaLoadReport.getRps() != 0) {
                q0(orcaLoadReport.getRps());
            }
            b0().o(orcaLoadReport.internalGetRequestCost());
            d0().o(orcaLoadReport.internalGetUtilization());
            z(((GeneratedMessageV3) orcaLoadReport).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: l0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        public b m0(double d10) {
            this.f45532e = d10;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: n0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
        }

        public b o0(double d10) {
            this.f45533f = d10;
            R();
            return this;
        }

        public b q0(long j10) {
            this.f45534g = j10;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: r0 */
        public final b f1(h3 h3Var) {
            return (b) super.f1(h3Var);
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            h0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            h0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        static final e1<String, Double> f45537a = e1.k(io.grpc.xds.shaded.com.github.xds.data.orca.v3.a.f45541c, WireFormat.FieldType.STRING, "", WireFormat.FieldType.DOUBLE, Double.valueOf(0.0d));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        static final e1<String, Double> f45538a = e1.k(io.grpc.xds.shaded.com.github.xds.data.orca.v3.a.f45543e, WireFormat.FieldType.STRING, "", WireFormat.FieldType.DOUBLE, Double.valueOf(0.0d));
    }

    /* synthetic */ OrcaLoadReport(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static OrcaLoadReport getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return io.grpc.xds.shaded.com.github.xds.data.orca.v3.a.f45539a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public g1<String, Double> internalGetRequestCost() {
        g1<String, Double> g1Var = this.requestCost_;
        return g1Var == null ? g1.g(c.f45537a) : g1Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public g1<String, Double> internalGetUtilization() {
        g1<String, Double> g1Var = this.utilization_;
        return g1Var == null ? g1.g(d.f45538a) : g1Var;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static OrcaLoadReport parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (OrcaLoadReport) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static OrcaLoadReport parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<OrcaLoadReport> parser() {
        return PARSER;
    }

    public boolean containsRequestCost(String str) {
        Objects.requireNonNull(str, "map key");
        return internalGetRequestCost().i().containsKey(str);
    }

    public boolean containsUtilization(String str) {
        Objects.requireNonNull(str, "map key");
        return internalGetUtilization().i().containsKey(str);
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof OrcaLoadReport)) {
            return super.equals(obj);
        }
        OrcaLoadReport orcaLoadReport = (OrcaLoadReport) obj;
        return Double.doubleToLongBits(getCpuUtilization()) == Double.doubleToLongBits(orcaLoadReport.getCpuUtilization()) && Double.doubleToLongBits(getMemUtilization()) == Double.doubleToLongBits(orcaLoadReport.getMemUtilization()) && getRps() == orcaLoadReport.getRps() && internalGetRequestCost().equals(orcaLoadReport.internalGetRequestCost()) && internalGetUtilization().equals(orcaLoadReport.internalGetUtilization()) && this.unknownFields.equals(orcaLoadReport.unknownFields);
    }

    public double getCpuUtilization() {
        return this.cpuUtilization_;
    }

    public double getMemUtilization() {
        return this.memUtilization_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<OrcaLoadReport> getParserForType() {
        return PARSER;
    }

    @Deprecated
    public Map<String, Double> getRequestCost() {
        return getRequestCostMap();
    }

    public int getRequestCostCount() {
        return internalGetRequestCost().i().size();
    }

    public Map<String, Double> getRequestCostMap() {
        return internalGetRequestCost().i();
    }

    public double getRequestCostOrDefault(String str, double d10) {
        Objects.requireNonNull(str, "map key");
        Map<String, Double> i9 = internalGetRequestCost().i();
        return i9.containsKey(str) ? i9.get(str).doubleValue() : d10;
    }

    public double getRequestCostOrThrow(String str) {
        Objects.requireNonNull(str, "map key");
        Map<String, Double> i9 = internalGetRequestCost().i();
        if (i9.containsKey(str)) {
            return i9.get(str).doubleValue();
        }
        throw new IllegalArgumentException();
    }

    public long getRps() {
        return this.rps_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int j10 = Double.doubleToRawLongBits(this.cpuUtilization_) != 0 ? 0 + CodedOutputStream.j(1, this.cpuUtilization_) : 0;
        if (Double.doubleToRawLongBits(this.memUtilization_) != 0) {
            j10 += CodedOutputStream.j(2, this.memUtilization_);
        }
        long j11 = this.rps_;
        if (j11 != 0) {
            j10 += CodedOutputStream.a0(3, j11);
        }
        for (Map.Entry<String, Double> entry : internalGetRequestCost().i().entrySet()) {
            j10 += CodedOutputStream.G(4, c.f45537a.newBuilderForType().N(entry.getKey()).P(entry.getValue()).build());
        }
        for (Map.Entry<String, Double> entry2 : internalGetUtilization().i().entrySet()) {
            j10 += CodedOutputStream.G(5, d.f45538a.newBuilderForType().N(entry2.getKey()).P(entry2.getValue()).build());
        }
        int serializedSize = j10 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    @Deprecated
    public Map<String, Double> getUtilization() {
        return getUtilizationMap();
    }

    public int getUtilizationCount() {
        return internalGetUtilization().i().size();
    }

    public Map<String, Double> getUtilizationMap() {
        return internalGetUtilization().i();
    }

    public double getUtilizationOrDefault(String str, double d10) {
        Objects.requireNonNull(str, "map key");
        Map<String, Double> i9 = internalGetUtilization().i();
        return i9.containsKey(str) ? i9.get(str).doubleValue() : d10;
    }

    public double getUtilizationOrThrow(String str) {
        Objects.requireNonNull(str, "map key");
        Map<String, Double> i9 = internalGetUtilization().i();
        if (i9.containsKey(str)) {
            return i9.get(str).doubleValue();
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = ((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + u0.i(Double.doubleToLongBits(getCpuUtilization()))) * 37) + 2) * 53) + u0.i(Double.doubleToLongBits(getMemUtilization()))) * 37) + 3) * 53) + u0.i(getRps());
        if (!internalGetRequestCost().i().isEmpty()) {
            hashCode = (((hashCode * 37) + 4) * 53) + internalGetRequestCost().hashCode();
        }
        if (!internalGetUtilization().i().isEmpty()) {
            hashCode = (((hashCode * 37) + 5) * 53) + internalGetUtilization().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return io.grpc.xds.shaded.com.github.xds.data.orca.v3.a.f45540b.d(OrcaLoadReport.class, b.class);
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected g1 internalGetMapField(int i9) {
        if (i9 != 4) {
            if (i9 == 5) {
                return internalGetUtilization();
            }
            throw new RuntimeException("Invalid map field number: " + i9);
        }
        return internalGetRequestCost();
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
        return new OrcaLoadReport();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (Double.doubleToRawLongBits(this.cpuUtilization_) != 0) {
            codedOutputStream.t0(1, this.cpuUtilization_);
        }
        if (Double.doubleToRawLongBits(this.memUtilization_) != 0) {
            codedOutputStream.t0(2, this.memUtilization_);
        }
        long j10 = this.rps_;
        if (j10 != 0) {
            codedOutputStream.e1(3, j10);
        }
        GeneratedMessageV3.serializeStringMapTo(codedOutputStream, internalGetRequestCost(), c.f45537a, 4);
        GeneratedMessageV3.serializeStringMapTo(codedOutputStream, internalGetUtilization(), d.f45538a, 5);
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ OrcaLoadReport(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(OrcaLoadReport orcaLoadReport) {
        return DEFAULT_INSTANCE.toBuilder().k0(orcaLoadReport);
    }

    public static OrcaLoadReport parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private OrcaLoadReport(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static OrcaLoadReport parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (OrcaLoadReport) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static OrcaLoadReport parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public OrcaLoadReport getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).k0(this);
    }

    public static OrcaLoadReport parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private OrcaLoadReport() {
        this.memoizedIsInitialized = (byte) -1;
    }

    public static OrcaLoadReport parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static OrcaLoadReport parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    private OrcaLoadReport(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        boolean z11 = false;
        while (!z10) {
            try {
                try {
                    int L = pVar.L();
                    if (L != 0) {
                        if (L == 9) {
                            this.cpuUtilization_ = pVar.t();
                        } else if (L == 17) {
                            this.memUtilization_ = pVar.t();
                        } else if (L == 24) {
                            this.rps_ = pVar.N();
                        } else if (L == 34) {
                            if (!(z11 & true)) {
                                this.requestCost_ = g1.p(c.f45537a);
                                z11 |= true;
                            }
                            e1 e1Var = (e1) pVar.B(c.f45537a.getParserForType(), f0Var);
                            this.requestCost_.l().put((String) e1Var.f(), (Double) e1Var.h());
                        } else if (L != 42) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            if (!(z11 & true)) {
                                this.utilization_ = g1.p(d.f45538a);
                                z11 |= true;
                            }
                            e1 e1Var2 = (e1) pVar.B(d.f45538a.getParserForType(), f0Var);
                            this.utilization_.l().put((String) e1Var2.f(), (Double) e1Var2.h());
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

    public static OrcaLoadReport parseFrom(InputStream inputStream) throws IOException {
        return (OrcaLoadReport) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static OrcaLoadReport parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (OrcaLoadReport) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static OrcaLoadReport parseFrom(p pVar) throws IOException {
        return (OrcaLoadReport) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static OrcaLoadReport parseFrom(p pVar, f0 f0Var) throws IOException {
        return (OrcaLoadReport) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
