package io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3;

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
import com.google.protobuf.p;
import com.google.protobuf.u0;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class TrackClusterStats extends GeneratedMessageV3 implements j {
    private static final TrackClusterStats DEFAULT_INSTANCE = new TrackClusterStats();
    private static final e2<TrackClusterStats> PARSER = new a();
    public static final int REQUEST_RESPONSE_SIZES_FIELD_NUMBER = 2;
    public static final int TIMEOUT_BUDGETS_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private boolean requestResponseSizes_;
    private boolean timeoutBudgets_;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<TrackClusterStats> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public TrackClusterStats m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new TrackClusterStats(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements j {

        /* renamed from: e  reason: collision with root package name */
        private boolean f47719e;

        /* renamed from: f  reason: collision with root package name */
        private boolean f47720f;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return d.T.d(TrackClusterStats.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public TrackClusterStats build() {
            TrackClusterStats I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public TrackClusterStats I() {
            TrackClusterStats trackClusterStats = new TrackClusterStats(this, (a) null);
            trackClusterStats.timeoutBudgets_ = this.f47719e;
            trackClusterStats.requestResponseSizes_ = this.f47720f;
            Q();
            return trackClusterStats;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public TrackClusterStats getDefaultInstanceForType() {
            return TrackClusterStats.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.TrackClusterStats.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.TrackClusterStats.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.TrackClusterStats r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.TrackClusterStats) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.g0(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.TrackClusterStats r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.TrackClusterStats) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.g0(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.TrackClusterStats.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.TrackClusterStats$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof TrackClusterStats) {
                return g0((TrackClusterStats) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b g0(TrackClusterStats trackClusterStats) {
            if (trackClusterStats == TrackClusterStats.getDefaultInstance()) {
                return this;
            }
            if (trackClusterStats.getTimeoutBudgets()) {
                k0(trackClusterStats.getTimeoutBudgets());
            }
            if (trackClusterStats.getRequestResponseSizes()) {
                j0(trackClusterStats.getRequestResponseSizes());
            }
            z(((GeneratedMessageV3) trackClusterStats).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return d.S;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: i0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
        }

        public b j0(boolean z10) {
            this.f47720f = z10;
            R();
            return this;
        }

        public b k0(boolean z10) {
            this.f47719e = z10;
            R();
            return this;
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
            b0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            b0();
        }
    }

    /* synthetic */ TrackClusterStats(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static TrackClusterStats getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return d.S;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static TrackClusterStats parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (TrackClusterStats) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static TrackClusterStats parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<TrackClusterStats> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof TrackClusterStats)) {
            return super.equals(obj);
        }
        TrackClusterStats trackClusterStats = (TrackClusterStats) obj;
        return getTimeoutBudgets() == trackClusterStats.getTimeoutBudgets() && getRequestResponseSizes() == trackClusterStats.getRequestResponseSizes() && this.unknownFields.equals(trackClusterStats.unknownFields);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<TrackClusterStats> getParserForType() {
        return PARSER;
    }

    public boolean getRequestResponseSizes() {
        return this.requestResponseSizes_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        boolean z10 = this.timeoutBudgets_;
        int e10 = z10 ? 0 + CodedOutputStream.e(1, z10) : 0;
        boolean z11 = this.requestResponseSizes_;
        if (z11) {
            e10 += CodedOutputStream.e(2, z11);
        }
        int serializedSize = e10 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public boolean getTimeoutBudgets() {
        return this.timeoutBudgets_;
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
        int hashCode = ((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + u0.d(getTimeoutBudgets())) * 37) + 2) * 53) + u0.d(getRequestResponseSizes())) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode;
        return hashCode;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return d.T.d(TrackClusterStats.class, b.class);
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
        return new TrackClusterStats();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        boolean z10 = this.timeoutBudgets_;
        if (z10) {
            codedOutputStream.n0(1, z10);
        }
        boolean z11 = this.requestResponseSizes_;
        if (z11) {
            codedOutputStream.n0(2, z11);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ TrackClusterStats(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(TrackClusterStats trackClusterStats) {
        return DEFAULT_INSTANCE.toBuilder().g0(trackClusterStats);
    }

    public static TrackClusterStats parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private TrackClusterStats(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static TrackClusterStats parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (TrackClusterStats) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static TrackClusterStats parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public TrackClusterStats getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static TrackClusterStats parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private TrackClusterStats() {
        this.memoizedIsInitialized = (byte) -1;
    }

    public static TrackClusterStats parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static TrackClusterStats parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    private TrackClusterStats(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    try {
                        int L = pVar.L();
                        if (L != 0) {
                            if (L == 8) {
                                this.timeoutBudgets_ = pVar.r();
                            } else if (L != 16) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                this.requestResponseSizes_ = pVar.r();
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

    public static TrackClusterStats parseFrom(InputStream inputStream) throws IOException {
        return (TrackClusterStats) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static TrackClusterStats parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (TrackClusterStats) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static TrackClusterStats parseFrom(p pVar) throws IOException {
        return (TrackClusterStats) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static TrackClusterStats parseFrom(p pVar, f0 f0Var) throws IOException {
        return (TrackClusterStats) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
