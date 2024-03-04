package io.grpc.lb.v1;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.Duration;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.v;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class InitialLoadBalanceResponse extends GeneratedMessageV3 implements e {
    public static final int CLIENT_STATS_REPORT_INTERVAL_FIELD_NUMBER = 2;
    private static final InitialLoadBalanceResponse DEFAULT_INSTANCE = new InitialLoadBalanceResponse();
    private static final e2<InitialLoadBalanceResponse> PARSER = new a();
    private static final long serialVersionUID = 0;
    private Duration clientStatsReportInterval_;
    private byte memoizedIsInitialized;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends com.google.protobuf.c<InitialLoadBalanceResponse> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public InitialLoadBalanceResponse m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new InitialLoadBalanceResponse(pVar, f0Var, null);
        }
    }

    /* loaded from: classes5.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements e {

        /* renamed from: e  reason: collision with root package name */
        private Duration f43365e;

        /* renamed from: f  reason: collision with root package name */
        private q2<Duration, Duration.b, v> f43366f;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return g.f43400n.d(InitialLoadBalanceResponse.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public InitialLoadBalanceResponse build() {
            InitialLoadBalanceResponse I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public InitialLoadBalanceResponse I() {
            InitialLoadBalanceResponse initialLoadBalanceResponse = new InitialLoadBalanceResponse(this, (a) null);
            q2<Duration, Duration.b, v> q2Var = this.f43366f;
            if (q2Var == null) {
                initialLoadBalanceResponse.clientStatsReportInterval_ = this.f43365e;
            } else {
                initialLoadBalanceResponse.clientStatsReportInterval_ = q2Var.b();
            }
            Q();
            return initialLoadBalanceResponse;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public InitialLoadBalanceResponse getDefaultInstanceForType() {
            return InitialLoadBalanceResponse.getDefaultInstance();
        }

        public b d0(Duration duration) {
            q2<Duration, Duration.b, v> q2Var = this.f43366f;
            if (q2Var == null) {
                Duration duration2 = this.f43365e;
                if (duration2 != null) {
                    this.f43365e = Duration.newBuilder(duration2).e0(duration).I();
                } else {
                    this.f43365e = duration;
                }
                R();
            } else {
                q2Var.e(duration);
            }
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.lb.v1.InitialLoadBalanceResponse.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.lb.v1.InitialLoadBalanceResponse.access$600()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.lb.v1.InitialLoadBalanceResponse r3 = (io.grpc.lb.v1.InitialLoadBalanceResponse) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.lb.v1.InitialLoadBalanceResponse r4 = (io.grpc.lb.v1.InitialLoadBalanceResponse) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.lb.v1.InitialLoadBalanceResponse.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.lb.v1.InitialLoadBalanceResponse$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof InitialLoadBalanceResponse) {
                return h0((InitialLoadBalanceResponse) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return g.f43399m;
        }

        public b h0(InitialLoadBalanceResponse initialLoadBalanceResponse) {
            if (initialLoadBalanceResponse == InitialLoadBalanceResponse.getDefaultInstance()) {
                return this;
            }
            if (initialLoadBalanceResponse.hasClientStatsReportInterval()) {
                d0(initialLoadBalanceResponse.getClientStatsReportInterval());
            }
            z(((GeneratedMessageV3) initialLoadBalanceResponse).unknownFields);
            R();
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

    /* synthetic */ InitialLoadBalanceResponse(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static InitialLoadBalanceResponse getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return g.f43399m;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static InitialLoadBalanceResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (InitialLoadBalanceResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static InitialLoadBalanceResponse parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<InitialLoadBalanceResponse> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof InitialLoadBalanceResponse)) {
            return super.equals(obj);
        }
        InitialLoadBalanceResponse initialLoadBalanceResponse = (InitialLoadBalanceResponse) obj;
        if (hasClientStatsReportInterval() != initialLoadBalanceResponse.hasClientStatsReportInterval()) {
            return false;
        }
        return (!hasClientStatsReportInterval() || getClientStatsReportInterval().equals(initialLoadBalanceResponse.getClientStatsReportInterval())) && this.unknownFields.equals(initialLoadBalanceResponse.unknownFields);
    }

    public Duration getClientStatsReportInterval() {
        Duration duration = this.clientStatsReportInterval_;
        return duration == null ? Duration.getDefaultInstance() : duration;
    }

    public v getClientStatsReportIntervalOrBuilder() {
        return getClientStatsReportInterval();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<InitialLoadBalanceResponse> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = (this.clientStatsReportInterval_ != null ? 0 + CodedOutputStream.G(2, getClientStatsReportInterval()) : 0) + this.unknownFields.getSerializedSize();
        this.memoizedSize = G;
        return G;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasClientStatsReportInterval() {
        return this.clientStatsReportInterval_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasClientStatsReportInterval()) {
            hashCode = (((hashCode * 37) + 2) * 53) + getClientStatsReportInterval().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return g.f43400n.d(InitialLoadBalanceResponse.class, b.class);
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
        return new InitialLoadBalanceResponse();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.clientStatsReportInterval_ != null) {
            codedOutputStream.L0(2, getClientStatsReportInterval());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ InitialLoadBalanceResponse(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(InitialLoadBalanceResponse initialLoadBalanceResponse) {
        return DEFAULT_INSTANCE.toBuilder().h0(initialLoadBalanceResponse);
    }

    public static InitialLoadBalanceResponse parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private InitialLoadBalanceResponse(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static InitialLoadBalanceResponse parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (InitialLoadBalanceResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static InitialLoadBalanceResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public InitialLoadBalanceResponse getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).h0(this);
    }

    public static InitialLoadBalanceResponse parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private InitialLoadBalanceResponse() {
        this.memoizedIsInitialized = (byte) -1;
    }

    public static InitialLoadBalanceResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static InitialLoadBalanceResponse parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    private InitialLoadBalanceResponse(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            if (L != 18) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                Duration duration = this.clientStatsReportInterval_;
                                Duration.b builder = duration != null ? duration.toBuilder() : null;
                                Duration duration2 = (Duration) pVar.B(Duration.parser(), f0Var);
                                this.clientStatsReportInterval_ = duration2;
                                if (builder != null) {
                                    builder.e0(duration2);
                                    this.clientStatsReportInterval_ = builder.I();
                                }
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

    public static InitialLoadBalanceResponse parseFrom(InputStream inputStream) throws IOException {
        return (InitialLoadBalanceResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static InitialLoadBalanceResponse parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (InitialLoadBalanceResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static InitialLoadBalanceResponse parseFrom(p pVar) throws IOException {
        return (InitialLoadBalanceResponse) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static InitialLoadBalanceResponse parseFrom(p pVar, f0 f0Var) throws IOException {
        return (InitialLoadBalanceResponse) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
