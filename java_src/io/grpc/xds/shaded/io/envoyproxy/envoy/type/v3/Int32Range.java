package io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3;

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
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class Int32Range extends GeneratedMessageV3 implements d {
    public static final int END_FIELD_NUMBER = 2;
    public static final int START_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private int end_;
    private byte memoizedIsInitialized;
    private int start_;
    private static final Int32Range DEFAULT_INSTANCE = new Int32Range();
    private static final e2<Int32Range> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<Int32Range> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public Int32Range m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new Int32Range(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements d {

        /* renamed from: e  reason: collision with root package name */
        private int f50555e;

        /* renamed from: f  reason: collision with root package name */
        private int f50556f;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return h.f50572d.d(Int32Range.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public Int32Range build() {
            Int32Range I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public Int32Range I() {
            Int32Range int32Range = new Int32Range(this, (a) null);
            int32Range.start_ = this.f50555e;
            int32Range.end_ = this.f50556f;
            Q();
            return int32Range;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public Int32Range getDefaultInstanceForType() {
            return Int32Range.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.Int32Range.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.Int32Range.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.Int32Range r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.Int32Range) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.Int32Range r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.Int32Range) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.Int32Range.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.Int32Range$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof Int32Range) {
                return g0((Int32Range) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b g0(Int32Range int32Range) {
            if (int32Range == Int32Range.getDefaultInstance()) {
                return this;
            }
            if (int32Range.getStart() != 0) {
                k0(int32Range.getStart());
            }
            if (int32Range.getEnd() != 0) {
                i0(int32Range.getEnd());
            }
            z(((GeneratedMessageV3) int32Range).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return h.f50571c;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        public b i0(int i9) {
            this.f50556f = i9;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: j0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
        }

        public b k0(int i9) {
            this.f50555e = i9;
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

    /* synthetic */ Int32Range(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static Int32Range getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return h.f50571c;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Int32Range parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Int32Range) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Int32Range parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<Int32Range> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Int32Range)) {
            return super.equals(obj);
        }
        Int32Range int32Range = (Int32Range) obj;
        return getStart() == int32Range.getStart() && getEnd() == int32Range.getEnd() && this.unknownFields.equals(int32Range.unknownFields);
    }

    public int getEnd() {
        return this.end_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<Int32Range> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int i10 = this.start_;
        int x10 = i10 != 0 ? 0 + CodedOutputStream.x(1, i10) : 0;
        int i11 = this.end_;
        if (i11 != 0) {
            x10 += CodedOutputStream.x(2, i11);
        }
        int serializedSize = x10 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public int getStart() {
        return this.start_;
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
        int hashCode = ((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getStart()) * 37) + 2) * 53) + getEnd()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode;
        return hashCode;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return h.f50572d.d(Int32Range.class, b.class);
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
        return new Int32Range();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        int i9 = this.start_;
        if (i9 != 0) {
            codedOutputStream.H0(1, i9);
        }
        int i10 = this.end_;
        if (i10 != 0) {
            codedOutputStream.H0(2, i10);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ Int32Range(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(Int32Range int32Range) {
        return DEFAULT_INSTANCE.toBuilder().g0(int32Range);
    }

    public static Int32Range parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private Int32Range(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Int32Range parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Int32Range) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static Int32Range parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public Int32Range getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static Int32Range parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private Int32Range() {
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Int32Range parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static Int32Range parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    private Int32Range(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                this.start_ = pVar.z();
                            } else if (L != 16) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                this.end_ = pVar.z();
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

    public static Int32Range parseFrom(InputStream inputStream) throws IOException {
        return (Int32Range) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static Int32Range parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Int32Range) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static Int32Range parseFrom(p pVar) throws IOException {
        return (Int32Range) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static Int32Range parseFrom(p pVar, f0 f0Var) throws IOException {
        return (Int32Range) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
