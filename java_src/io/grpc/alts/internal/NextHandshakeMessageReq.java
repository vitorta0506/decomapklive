package io.grpc.alts.internal;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class NextHandshakeMessageReq extends GeneratedMessageV3 implements x {
    public static final int IN_BYTES_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private ByteString inBytes_;
    private byte memoizedIsInitialized;
    private static final NextHandshakeMessageReq DEFAULT_INSTANCE = new NextHandshakeMessageReq();
    private static final e2<NextHandshakeMessageReq> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends com.google.protobuf.c<NextHandshakeMessageReq> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public NextHandshakeMessageReq m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return new NextHandshakeMessageReq(pVar, f0Var, null);
        }
    }

    /* loaded from: classes5.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements x {

        /* renamed from: e  reason: collision with root package name */
        private ByteString f41793e;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return r.f41961p.d(NextHandshakeMessageReq.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public NextHandshakeMessageReq build() {
            NextHandshakeMessageReq I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public NextHandshakeMessageReq I() {
            NextHandshakeMessageReq nextHandshakeMessageReq = new NextHandshakeMessageReq(this, (a) null);
            nextHandshakeMessageReq.inBytes_ = this.f41793e;
            Q();
            return nextHandshakeMessageReq;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public NextHandshakeMessageReq getDefaultInstanceForType() {
            return NextHandshakeMessageReq.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.alts.internal.NextHandshakeMessageReq.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.alts.internal.NextHandshakeMessageReq.access$600()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.alts.internal.NextHandshakeMessageReq r3 = (io.grpc.alts.internal.NextHandshakeMessageReq) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.alts.internal.NextHandshakeMessageReq r4 = (io.grpc.alts.internal.NextHandshakeMessageReq) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.alts.internal.NextHandshakeMessageReq.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.alts.internal.NextHandshakeMessageReq$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof NextHandshakeMessageReq) {
                return g0((NextHandshakeMessageReq) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b g0(NextHandshakeMessageReq nextHandshakeMessageReq) {
            if (nextHandshakeMessageReq == NextHandshakeMessageReq.getDefaultInstance()) {
                return this;
            }
            if (nextHandshakeMessageReq.getInBytes() != ByteString.EMPTY) {
                j0(nextHandshakeMessageReq.getInBytes());
            }
            z(((GeneratedMessageV3) nextHandshakeMessageReq).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return r.f41960o;
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

        public b j0(ByteString byteString) {
            Objects.requireNonNull(byteString);
            this.f41793e = byteString;
            R();
            return this;
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
            this.f41793e = ByteString.EMPTY;
            b0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f41793e = ByteString.EMPTY;
            b0();
        }
    }

    /* synthetic */ NextHandshakeMessageReq(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static NextHandshakeMessageReq getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return r.f41960o;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static NextHandshakeMessageReq parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (NextHandshakeMessageReq) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static NextHandshakeMessageReq parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<NextHandshakeMessageReq> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof NextHandshakeMessageReq)) {
            return super.equals(obj);
        }
        NextHandshakeMessageReq nextHandshakeMessageReq = (NextHandshakeMessageReq) obj;
        return getInBytes().equals(nextHandshakeMessageReq.getInBytes()) && this.unknownFields.equals(nextHandshakeMessageReq.unknownFields);
    }

    public ByteString getInBytes() {
        return this.inBytes_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<NextHandshakeMessageReq> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int h10 = (this.inBytes_.isEmpty() ? 0 : 0 + CodedOutputStream.h(1, this.inBytes_)) + this.unknownFields.getSerializedSize();
        this.memoizedSize = h10;
        return h10;
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
        int hashCode = ((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getInBytes().hashCode()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode;
        return hashCode;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return r.f41961p.d(NextHandshakeMessageReq.class, b.class);
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
        return new NextHandshakeMessageReq();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!this.inBytes_.isEmpty()) {
            codedOutputStream.r0(1, this.inBytes_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ NextHandshakeMessageReq(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(NextHandshakeMessageReq nextHandshakeMessageReq) {
        return DEFAULT_INSTANCE.toBuilder().g0(nextHandshakeMessageReq);
    }

    public static NextHandshakeMessageReq parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private NextHandshakeMessageReq(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static NextHandshakeMessageReq parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (NextHandshakeMessageReq) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static NextHandshakeMessageReq parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public NextHandshakeMessageReq getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static NextHandshakeMessageReq parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private NextHandshakeMessageReq() {
        this.memoizedIsInitialized = (byte) -1;
        this.inBytes_ = ByteString.EMPTY;
    }

    public static NextHandshakeMessageReq parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static NextHandshakeMessageReq parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static NextHandshakeMessageReq parseFrom(InputStream inputStream) throws IOException {
        return (NextHandshakeMessageReq) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private NextHandshakeMessageReq(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    int L = pVar.L();
                    if (L != 0) {
                        if (L != 10) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            this.inBytes_ = pVar.s();
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

    public static NextHandshakeMessageReq parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (NextHandshakeMessageReq) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static NextHandshakeMessageReq parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (NextHandshakeMessageReq) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static NextHandshakeMessageReq parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
        return (NextHandshakeMessageReq) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
