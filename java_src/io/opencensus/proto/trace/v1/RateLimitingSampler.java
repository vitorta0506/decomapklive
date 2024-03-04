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
import com.google.protobuf.p;
import com.google.protobuf.u0;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes7.dex */
public final class RateLimitingSampler extends GeneratedMessageV3 implements d {
    private static final RateLimitingSampler DEFAULT_INSTANCE = new RateLimitingSampler();
    private static final e2<RateLimitingSampler> PARSER = new a();
    public static final int QPS_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private long qps_;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static class a extends com.google.protobuf.c<RateLimitingSampler> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public RateLimitingSampler m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new RateLimitingSampler(pVar, f0Var, null);
        }
    }

    /* loaded from: classes7.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements d {

        /* renamed from: e  reason: collision with root package name */
        private long f51128e;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return i.f51228h.d(RateLimitingSampler.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public RateLimitingSampler build() {
            RateLimitingSampler I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public RateLimitingSampler I() {
            RateLimitingSampler rateLimitingSampler = new RateLimitingSampler(this, (a) null);
            rateLimitingSampler.qps_ = this.f51128e;
            Q();
            return rateLimitingSampler;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public RateLimitingSampler getDefaultInstanceForType() {
            return RateLimitingSampler.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.opencensus.proto.trace.v1.RateLimitingSampler.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.opencensus.proto.trace.v1.RateLimitingSampler.access$600()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.opencensus.proto.trace.v1.RateLimitingSampler r3 = (io.opencensus.proto.trace.v1.RateLimitingSampler) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.opencensus.proto.trace.v1.RateLimitingSampler r4 = (io.opencensus.proto.trace.v1.RateLimitingSampler) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.opencensus.proto.trace.v1.RateLimitingSampler.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.opencensus.proto.trace.v1.RateLimitingSampler$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof RateLimitingSampler) {
                return g0((RateLimitingSampler) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b g0(RateLimitingSampler rateLimitingSampler) {
            if (rateLimitingSampler == RateLimitingSampler.getDefaultInstance()) {
                return this;
            }
            if (rateLimitingSampler.getQps() != 0) {
                j0(rateLimitingSampler.getQps());
            }
            z(((GeneratedMessageV3) rateLimitingSampler).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return i.f51227g;
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

        public b j0(long j10) {
            this.f51128e = j10;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: k0 */
        public final b f1(h3 h3Var) {
            return (b) super.V(h3Var);
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

    /* synthetic */ RateLimitingSampler(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static RateLimitingSampler getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return i.f51227g;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static RateLimitingSampler parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (RateLimitingSampler) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static RateLimitingSampler parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<RateLimitingSampler> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof RateLimitingSampler)) {
            return super.equals(obj);
        }
        RateLimitingSampler rateLimitingSampler = (RateLimitingSampler) obj;
        return ((getQps() > rateLimitingSampler.getQps() ? 1 : (getQps() == rateLimitingSampler.getQps() ? 0 : -1)) == 0) && this.unknownFields.equals(rateLimitingSampler.unknownFields);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<RateLimitingSampler> getParserForType() {
        return PARSER;
    }

    public long getQps() {
        return this.qps_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        long j10 = this.qps_;
        int z10 = (j10 != 0 ? 0 + CodedOutputStream.z(1, j10) : 0) + this.unknownFields.getSerializedSize();
        this.memoizedSize = z10;
        return z10;
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
        int hashCode = ((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + u0.i(getQps())) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode;
        return hashCode;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return i.f51228h.d(RateLimitingSampler.class, b.class);
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
        long j10 = this.qps_;
        if (j10 != 0) {
            codedOutputStream.J0(1, j10);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ RateLimitingSampler(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(RateLimitingSampler rateLimitingSampler) {
        return DEFAULT_INSTANCE.toBuilder().g0(rateLimitingSampler);
    }

    public static RateLimitingSampler parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private RateLimitingSampler(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static RateLimitingSampler parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (RateLimitingSampler) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static RateLimitingSampler parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public RateLimitingSampler getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static RateLimitingSampler parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private RateLimitingSampler() {
        this.memoizedIsInitialized = (byte) -1;
        this.qps_ = 0L;
    }

    public static RateLimitingSampler parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static RateLimitingSampler parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static RateLimitingSampler parseFrom(InputStream inputStream) throws IOException {
        return (RateLimitingSampler) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private RateLimitingSampler(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    int L = pVar.L();
                    if (L != 0) {
                        if (L != 8) {
                            if (!parseUnknownFieldProto3(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            this.qps_ = pVar.A();
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

    public static RateLimitingSampler parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (RateLimitingSampler) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static RateLimitingSampler parseFrom(p pVar) throws IOException {
        return (RateLimitingSampler) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static RateLimitingSampler parseFrom(p pVar, f0 f0Var) throws IOException {
        return (RateLimitingSampler) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
