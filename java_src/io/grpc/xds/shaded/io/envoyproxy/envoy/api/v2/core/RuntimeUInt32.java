package io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core;

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
/* loaded from: classes6.dex */
public final class RuntimeUInt32 extends GeneratedMessageV3 implements l0 {
    public static final int DEFAULT_VALUE_FIELD_NUMBER = 2;
    public static final int RUNTIME_KEY_FIELD_NUMBER = 3;
    private static final long serialVersionUID = 0;
    private int defaultValue_;
    private byte memoizedIsInitialized;
    private volatile Object runtimeKey_;
    private static final RuntimeUInt32 DEFAULT_INSTANCE = new RuntimeUInt32();
    private static final e2<RuntimeUInt32> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<RuntimeUInt32> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public RuntimeUInt32 m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return new RuntimeUInt32(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements l0 {

        /* renamed from: e  reason: collision with root package name */
        private int f46642e;

        /* renamed from: f  reason: collision with root package name */
        private Object f46643f;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return g.f46705n.d(RuntimeUInt32.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public RuntimeUInt32 build() {
            RuntimeUInt32 I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public RuntimeUInt32 I() {
            RuntimeUInt32 runtimeUInt32 = new RuntimeUInt32(this, (a) null);
            runtimeUInt32.defaultValue_ = this.f46642e;
            runtimeUInt32.runtimeKey_ = this.f46643f;
            Q();
            return runtimeUInt32;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public RuntimeUInt32 getDefaultInstanceForType() {
            return RuntimeUInt32.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.RuntimeUInt32.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.RuntimeUInt32.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.RuntimeUInt32 r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.RuntimeUInt32) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.RuntimeUInt32 r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.RuntimeUInt32) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.RuntimeUInt32.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.RuntimeUInt32$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof RuntimeUInt32) {
                return g0((RuntimeUInt32) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b g0(RuntimeUInt32 runtimeUInt32) {
            if (runtimeUInt32 == RuntimeUInt32.getDefaultInstance()) {
                return this;
            }
            if (runtimeUInt32.getDefaultValue() != 0) {
                i0(runtimeUInt32.getDefaultValue());
            }
            if (!runtimeUInt32.getRuntimeKey().isEmpty()) {
                this.f46643f = runtimeUInt32.runtimeKey_;
                R();
            }
            z(((GeneratedMessageV3) runtimeUInt32).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return g.f46704m;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        public b i0(int i9) {
            this.f46642e = i9;
            R();
            return this;
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
            this.f46643f = "";
            b0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f46643f = "";
            b0();
        }
    }

    /* synthetic */ RuntimeUInt32(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static RuntimeUInt32 getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return g.f46704m;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static RuntimeUInt32 parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (RuntimeUInt32) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static RuntimeUInt32 parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<RuntimeUInt32> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof RuntimeUInt32)) {
            return super.equals(obj);
        }
        RuntimeUInt32 runtimeUInt32 = (RuntimeUInt32) obj;
        return getDefaultValue() == runtimeUInt32.getDefaultValue() && getRuntimeKey().equals(runtimeUInt32.getRuntimeKey()) && this.unknownFields.equals(runtimeUInt32.unknownFields);
    }

    public int getDefaultValue() {
        return this.defaultValue_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<RuntimeUInt32> getParserForType() {
        return PARSER;
    }

    public String getRuntimeKey() {
        Object obj = this.runtimeKey_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.runtimeKey_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getRuntimeKeyBytes() {
        Object obj = this.runtimeKey_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.runtimeKey_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int i10 = this.defaultValue_;
        int Y = i10 != 0 ? 0 + CodedOutputStream.Y(2, i10) : 0;
        if (!GeneratedMessageV3.isStringEmpty(this.runtimeKey_)) {
            Y += GeneratedMessageV3.computeStringSize(3, this.runtimeKey_);
        }
        int serializedSize = Y + this.unknownFields.getSerializedSize();
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
        int hashCode = ((((((((((779 + getDescriptor().hashCode()) * 37) + 2) * 53) + getDefaultValue()) * 37) + 3) * 53) + getRuntimeKey().hashCode()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode;
        return hashCode;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return g.f46705n.d(RuntimeUInt32.class, b.class);
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
        return new RuntimeUInt32();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        int i9 = this.defaultValue_;
        if (i9 != 0) {
            codedOutputStream.c1(2, i9);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.runtimeKey_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 3, this.runtimeKey_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ RuntimeUInt32(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(RuntimeUInt32 runtimeUInt32) {
        return DEFAULT_INSTANCE.toBuilder().g0(runtimeUInt32);
    }

    public static RuntimeUInt32 parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private RuntimeUInt32(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static RuntimeUInt32 parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (RuntimeUInt32) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static RuntimeUInt32 parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public RuntimeUInt32 getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static RuntimeUInt32 parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private RuntimeUInt32() {
        this.memoizedIsInitialized = (byte) -1;
        this.runtimeKey_ = "";
    }

    public static RuntimeUInt32 parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static RuntimeUInt32 parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static RuntimeUInt32 parseFrom(InputStream inputStream) throws IOException {
        return (RuntimeUInt32) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private RuntimeUInt32(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                            if (L == 16) {
                                this.defaultValue_ = pVar.M();
                            } else if (L != 26) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                this.runtimeKey_ = pVar.K();
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

    public static RuntimeUInt32 parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (RuntimeUInt32) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static RuntimeUInt32 parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (RuntimeUInt32) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static RuntimeUInt32 parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
        return (RuntimeUInt32) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
