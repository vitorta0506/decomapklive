package io.grpc.channelz.v1;

import com.google.protobuf.Any;
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
import com.google.protobuf.q2;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class SocketOption extends GeneratedMessageV3 implements n {
    public static final int ADDITIONAL_FIELD_NUMBER = 3;
    public static final int NAME_FIELD_NUMBER = 1;
    public static final int VALUE_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private Any additional_;
    private byte memoizedIsInitialized;
    private volatile Object name_;
    private volatile Object value_;
    private static final SocketOption DEFAULT_INSTANCE = new SocketOption();
    private static final e2<SocketOption> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends com.google.protobuf.c<SocketOption> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public SocketOption m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new SocketOption(pVar, f0Var, null);
        }
    }

    /* loaded from: classes5.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements n {

        /* renamed from: e  reason: collision with root package name */
        private Object f42208e;

        /* renamed from: f  reason: collision with root package name */
        private Object f42209f;

        /* renamed from: g  reason: collision with root package name */
        private Any f42210g;

        /* renamed from: h  reason: collision with root package name */
        private q2<Any, Any.b, com.google.protobuf.f> f42211h;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return h.R.d(SocketOption.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public SocketOption build() {
            SocketOption I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public SocketOption I() {
            SocketOption socketOption = new SocketOption(this, (a) null);
            socketOption.name_ = this.f42208e;
            socketOption.value_ = this.f42209f;
            q2<Any, Any.b, com.google.protobuf.f> q2Var = this.f42211h;
            if (q2Var == null) {
                socketOption.additional_ = this.f42210g;
            } else {
                socketOption.additional_ = q2Var.b();
            }
            Q();
            return socketOption;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public SocketOption getDefaultInstanceForType() {
            return SocketOption.getDefaultInstance();
        }

        public b d0(Any any) {
            q2<Any, Any.b, com.google.protobuf.f> q2Var = this.f42211h;
            if (q2Var == null) {
                Any any2 = this.f42210g;
                if (any2 != null) {
                    this.f42210g = Any.newBuilder(any2).d0(any).I();
                } else {
                    this.f42210g = any;
                }
                R();
            } else {
                q2Var.e(any);
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
        public io.grpc.channelz.v1.SocketOption.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.channelz.v1.SocketOption.access$800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.channelz.v1.SocketOption r3 = (io.grpc.channelz.v1.SocketOption) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.channelz.v1.SocketOption r4 = (io.grpc.channelz.v1.SocketOption) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.channelz.v1.SocketOption.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.channelz.v1.SocketOption$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof SocketOption) {
                return h0((SocketOption) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return h.Q;
        }

        public b h0(SocketOption socketOption) {
            if (socketOption == SocketOption.getDefaultInstance()) {
                return this;
            }
            if (!socketOption.getName().isEmpty()) {
                this.f42208e = socketOption.name_;
                R();
            }
            if (!socketOption.getValue().isEmpty()) {
                this.f42209f = socketOption.value_;
                R();
            }
            if (socketOption.hasAdditional()) {
                d0(socketOption.getAdditional());
            }
            z(((GeneratedMessageV3) socketOption).unknownFields);
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
            this.f42208e = "";
            this.f42209f = "";
            b0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f42208e = "";
            this.f42209f = "";
            b0();
        }
    }

    /* synthetic */ SocketOption(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static SocketOption getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return h.Q;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static SocketOption parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (SocketOption) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static SocketOption parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<SocketOption> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SocketOption)) {
            return super.equals(obj);
        }
        SocketOption socketOption = (SocketOption) obj;
        if (getName().equals(socketOption.getName()) && getValue().equals(socketOption.getValue()) && hasAdditional() == socketOption.hasAdditional()) {
            return (!hasAdditional() || getAdditional().equals(socketOption.getAdditional())) && this.unknownFields.equals(socketOption.unknownFields);
        }
        return false;
    }

    public Any getAdditional() {
        Any any = this.additional_;
        return any == null ? Any.getDefaultInstance() : any;
    }

    public com.google.protobuf.f getAdditionalOrBuilder() {
        return getAdditional();
    }

    public String getName() {
        Object obj = this.name_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.name_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getNameBytes() {
        Object obj = this.name_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.name_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<SocketOption> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = GeneratedMessageV3.isStringEmpty(this.name_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.name_);
        if (!GeneratedMessageV3.isStringEmpty(this.value_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(2, this.value_);
        }
        if (this.additional_ != null) {
            computeStringSize += CodedOutputStream.G(3, getAdditional());
        }
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public String getValue() {
        Object obj = this.value_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.value_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getValueBytes() {
        Object obj = this.value_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.value_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public boolean hasAdditional() {
        return this.additional_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = ((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode()) * 37) + 2) * 53) + getValue().hashCode();
        if (hasAdditional()) {
            hashCode = (((hashCode * 37) + 3) * 53) + getAdditional().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return h.R.d(SocketOption.class, b.class);
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
        return new SocketOption();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.name_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.name_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.value_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.value_);
        }
        if (this.additional_ != null) {
            codedOutputStream.L0(3, getAdditional());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ SocketOption(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(SocketOption socketOption) {
        return DEFAULT_INSTANCE.toBuilder().h0(socketOption);
    }

    public static SocketOption parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private SocketOption(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static SocketOption parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (SocketOption) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static SocketOption parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public SocketOption getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).h0(this);
    }

    public static SocketOption parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private SocketOption() {
        this.memoizedIsInitialized = (byte) -1;
        this.name_ = "";
        this.value_ = "";
    }

    public static SocketOption parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static SocketOption parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static SocketOption parseFrom(InputStream inputStream) throws IOException {
        return (SocketOption) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private SocketOption(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    int L = pVar.L();
                    if (L != 0) {
                        if (L == 10) {
                            this.name_ = pVar.K();
                        } else if (L == 18) {
                            this.value_ = pVar.K();
                        } else if (L != 26) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            Any any = this.additional_;
                            Any.b builder = any != null ? any.toBuilder() : null;
                            Any any2 = (Any) pVar.B(Any.parser(), f0Var);
                            this.additional_ = any2;
                            if (builder != null) {
                                builder.d0(any2);
                                this.additional_ = builder.I();
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
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static SocketOption parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (SocketOption) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static SocketOption parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (SocketOption) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static SocketOption parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
        return (SocketOption) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
