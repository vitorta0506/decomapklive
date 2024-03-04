package io.grpc.xds.shaded.com.github.xds.service.orca.v3;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.Duration;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.c;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.h3;
import com.google.protobuf.i2;
import com.google.protobuf.l1;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import com.google.protobuf.v;
import com.google.protobuf.y0;
import com.google.protobuf.z0;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class OrcaLoadReportRequest extends GeneratedMessageV3 implements r1 {
    private static final OrcaLoadReportRequest DEFAULT_INSTANCE = new OrcaLoadReportRequest();
    private static final e2<OrcaLoadReportRequest> PARSER = new a();
    public static final int REPORT_INTERVAL_FIELD_NUMBER = 1;
    public static final int REQUEST_COST_NAMES_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private Duration reportInterval_;
    private z0 requestCostNames_;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends c<OrcaLoadReportRequest> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public OrcaLoadReportRequest m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new OrcaLoadReportRequest(pVar, f0Var, null);
        }
    }

    /* loaded from: classes5.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private int f45546e;

        /* renamed from: f  reason: collision with root package name */
        private Duration f45547f;

        /* renamed from: g  reason: collision with root package name */
        private q2<Duration, Duration.b, v> f45548g;

        /* renamed from: h  reason: collision with root package name */
        private z0 f45549h;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f45546e & 1) == 0) {
                this.f45549h = new y0(this.f45549h);
                this.f45546e |= 1;
            }
        }

        private void d0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return io.grpc.xds.shaded.com.github.xds.service.orca.v3.a.f45551b.d(OrcaLoadReportRequest.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public OrcaLoadReportRequest build() {
            OrcaLoadReportRequest I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public OrcaLoadReportRequest I() {
            OrcaLoadReportRequest orcaLoadReportRequest = new OrcaLoadReportRequest(this, (a) null);
            q2<Duration, Duration.b, v> q2Var = this.f45548g;
            if (q2Var == null) {
                orcaLoadReportRequest.reportInterval_ = this.f45547f;
            } else {
                orcaLoadReportRequest.reportInterval_ = q2Var.b();
            }
            if ((this.f45546e & 1) != 0) {
                this.f45549h = this.f45549h.V0();
                this.f45546e &= -2;
            }
            orcaLoadReportRequest.requestCostNames_ = this.f45549h;
            Q();
            return orcaLoadReportRequest;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: b0 */
        public OrcaLoadReportRequest getDefaultInstanceForType() {
            return OrcaLoadReportRequest.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.com.github.xds.service.orca.v3.OrcaLoadReportRequest.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.com.github.xds.service.orca.v3.OrcaLoadReportRequest.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.com.github.xds.service.orca.v3.OrcaLoadReportRequest r3 = (io.grpc.xds.shaded.com.github.xds.service.orca.v3.OrcaLoadReportRequest) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.com.github.xds.service.orca.v3.OrcaLoadReportRequest r4 = (io.grpc.xds.shaded.com.github.xds.service.orca.v3.OrcaLoadReportRequest) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.com.github.xds.service.orca.v3.OrcaLoadReportRequest.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.com.github.xds.service.orca.v3.OrcaLoadReportRequest$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof OrcaLoadReportRequest) {
                return h0((OrcaLoadReportRequest) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return io.grpc.xds.shaded.com.github.xds.service.orca.v3.a.f45550a;
        }

        public b h0(OrcaLoadReportRequest orcaLoadReportRequest) {
            if (orcaLoadReportRequest == OrcaLoadReportRequest.getDefaultInstance()) {
                return this;
            }
            if (orcaLoadReportRequest.hasReportInterval()) {
                i0(orcaLoadReportRequest.getReportInterval());
            }
            if (!orcaLoadReportRequest.requestCostNames_.isEmpty()) {
                if (this.f45549h.isEmpty()) {
                    this.f45549h = orcaLoadReportRequest.requestCostNames_;
                    this.f45546e &= -2;
                } else {
                    a0();
                    this.f45549h.addAll(orcaLoadReportRequest.requestCostNames_);
                }
                R();
            }
            z(((GeneratedMessageV3) orcaLoadReportRequest).unknownFields);
            R();
            return this;
        }

        public b i0(Duration duration) {
            q2<Duration, Duration.b, v> q2Var = this.f45548g;
            if (q2Var == null) {
                Duration duration2 = this.f45547f;
                if (duration2 != null) {
                    this.f45547f = Duration.newBuilder(duration2).e0(duration).I();
                } else {
                    this.f45547f = duration;
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

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: l0 */
        public final b f1(h3 h3Var) {
            return (b) super.f1(h3Var);
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            this.f45549h = y0.f15344d;
            d0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f45549h = y0.f15344d;
            d0();
        }
    }

    /* synthetic */ OrcaLoadReportRequest(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static OrcaLoadReportRequest getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return io.grpc.xds.shaded.com.github.xds.service.orca.v3.a.f45550a;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static OrcaLoadReportRequest parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (OrcaLoadReportRequest) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static OrcaLoadReportRequest parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<OrcaLoadReportRequest> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof OrcaLoadReportRequest)) {
            return super.equals(obj);
        }
        OrcaLoadReportRequest orcaLoadReportRequest = (OrcaLoadReportRequest) obj;
        if (hasReportInterval() != orcaLoadReportRequest.hasReportInterval()) {
            return false;
        }
        return (!hasReportInterval() || getReportInterval().equals(orcaLoadReportRequest.getReportInterval())) && m1572getRequestCostNamesList().equals(orcaLoadReportRequest.m1572getRequestCostNamesList()) && this.unknownFields.equals(orcaLoadReportRequest.unknownFields);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<OrcaLoadReportRequest> getParserForType() {
        return PARSER;
    }

    public Duration getReportInterval() {
        Duration duration = this.reportInterval_;
        return duration == null ? Duration.getDefaultInstance() : duration;
    }

    public v getReportIntervalOrBuilder() {
        return getReportInterval();
    }

    public String getRequestCostNames(int i9) {
        return this.requestCostNames_.get(i9);
    }

    public ByteString getRequestCostNamesBytes(int i9) {
        return this.requestCostNames_.j0(i9);
    }

    public int getRequestCostNamesCount() {
        return this.requestCostNames_.size();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.reportInterval_ != null ? CodedOutputStream.G(1, getReportInterval()) + 0 : 0;
        int i10 = 0;
        for (int i11 = 0; i11 < this.requestCostNames_.size(); i11++) {
            i10 += GeneratedMessageV3.computeStringSizeNoTag(this.requestCostNames_.c1(i11));
        }
        int size = G + i10 + (m1572getRequestCostNamesList().size() * 1) + this.unknownFields.getSerializedSize();
        this.memoizedSize = size;
        return size;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasReportInterval() {
        return this.reportInterval_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasReportInterval()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getReportInterval().hashCode();
        }
        if (getRequestCostNamesCount() > 0) {
            hashCode = (((hashCode * 37) + 2) * 53) + m1572getRequestCostNamesList().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return io.grpc.xds.shaded.com.github.xds.service.orca.v3.a.f45551b.d(OrcaLoadReportRequest.class, b.class);
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
        return new OrcaLoadReportRequest();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.reportInterval_ != null) {
            codedOutputStream.L0(1, getReportInterval());
        }
        for (int i9 = 0; i9 < this.requestCostNames_.size(); i9++) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.requestCostNames_.c1(i9));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ OrcaLoadReportRequest(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(OrcaLoadReportRequest orcaLoadReportRequest) {
        return DEFAULT_INSTANCE.toBuilder().h0(orcaLoadReportRequest);
    }

    public static OrcaLoadReportRequest parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    /* renamed from: getRequestCostNamesList */
    public i2 m1572getRequestCostNamesList() {
        return this.requestCostNames_;
    }

    private OrcaLoadReportRequest(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static OrcaLoadReportRequest parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (OrcaLoadReportRequest) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static OrcaLoadReportRequest parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public OrcaLoadReportRequest getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).h0(this);
    }

    public static OrcaLoadReportRequest parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private OrcaLoadReportRequest() {
        this.memoizedIsInitialized = (byte) -1;
        this.requestCostNames_ = y0.f15344d;
    }

    public static OrcaLoadReportRequest parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static OrcaLoadReportRequest parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static OrcaLoadReportRequest parseFrom(InputStream inputStream) throws IOException {
        return (OrcaLoadReportRequest) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private OrcaLoadReportRequest(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                        if (L == 10) {
                            Duration duration = this.reportInterval_;
                            Duration.b builder = duration != null ? duration.toBuilder() : null;
                            Duration duration2 = (Duration) pVar.B(Duration.parser(), f0Var);
                            this.reportInterval_ = duration2;
                            if (builder != null) {
                                builder.e0(duration2);
                                this.reportInterval_ = builder.I();
                            }
                        } else if (L != 18) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            String K = pVar.K();
                            if (!(z11 & true)) {
                                this.requestCostNames_ = new y0();
                                z11 |= true;
                            }
                            this.requestCostNames_.add(K);
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
                    this.requestCostNames_ = this.requestCostNames_.V0();
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static OrcaLoadReportRequest parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (OrcaLoadReportRequest) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static OrcaLoadReportRequest parseFrom(p pVar) throws IOException {
        return (OrcaLoadReportRequest) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static OrcaLoadReportRequest parseFrom(p pVar, f0 f0Var) throws IOException {
        return (OrcaLoadReportRequest) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
