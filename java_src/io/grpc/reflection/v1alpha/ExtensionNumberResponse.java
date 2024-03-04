package io.grpc.reflection.v1alpha;

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
import java.util.List;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class ExtensionNumberResponse extends GeneratedMessageV3 implements io.grpc.reflection.v1alpha.b {
    public static final int BASE_TYPE_NAME_FIELD_NUMBER = 1;
    public static final int EXTENSION_NUMBER_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private volatile Object baseTypeName_;
    private int extensionNumberMemoizedSerializedSize;
    private u0.g extensionNumber_;
    private byte memoizedIsInitialized;
    private static final ExtensionNumberResponse DEFAULT_INSTANCE = new ExtensionNumberResponse();
    private static final e2<ExtensionNumberResponse> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends com.google.protobuf.c<ExtensionNumberResponse> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public ExtensionNumberResponse m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new ExtensionNumberResponse(pVar, f0Var, null);
        }
    }

    /* loaded from: classes5.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements io.grpc.reflection.v1alpha.b {

        /* renamed from: e  reason: collision with root package name */
        private int f45338e;

        /* renamed from: f  reason: collision with root package name */
        private Object f45339f;

        /* renamed from: g  reason: collision with root package name */
        private u0.g f45340g;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f45338e & 1) == 0) {
                this.f45340g = GeneratedMessageV3.mutableCopy(this.f45340g);
                this.f45338e |= 1;
            }
        }

        private void d0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return f.f45373j.d(ExtensionNumberResponse.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public ExtensionNumberResponse build() {
            ExtensionNumberResponse I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public ExtensionNumberResponse I() {
            ExtensionNumberResponse extensionNumberResponse = new ExtensionNumberResponse(this, (a) null);
            extensionNumberResponse.baseTypeName_ = this.f45339f;
            if ((this.f45338e & 1) != 0) {
                this.f45340g.C();
                this.f45338e &= -2;
            }
            extensionNumberResponse.extensionNumber_ = this.f45340g;
            Q();
            return extensionNumberResponse;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: b0 */
        public ExtensionNumberResponse getDefaultInstanceForType() {
            return ExtensionNumberResponse.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.reflection.v1alpha.ExtensionNumberResponse.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.reflection.v1alpha.ExtensionNumberResponse.access$800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.reflection.v1alpha.ExtensionNumberResponse r3 = (io.grpc.reflection.v1alpha.ExtensionNumberResponse) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.reflection.v1alpha.ExtensionNumberResponse r4 = (io.grpc.reflection.v1alpha.ExtensionNumberResponse) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.reflection.v1alpha.ExtensionNumberResponse.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.reflection.v1alpha.ExtensionNumberResponse$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof ExtensionNumberResponse) {
                return h0((ExtensionNumberResponse) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return f.f45372i;
        }

        public b h0(ExtensionNumberResponse extensionNumberResponse) {
            if (extensionNumberResponse == ExtensionNumberResponse.getDefaultInstance()) {
                return this;
            }
            if (!extensionNumberResponse.getBaseTypeName().isEmpty()) {
                this.f45339f = extensionNumberResponse.baseTypeName_;
                R();
            }
            if (!extensionNumberResponse.extensionNumber_.isEmpty()) {
                if (this.f45340g.isEmpty()) {
                    this.f45340g = extensionNumberResponse.extensionNumber_;
                    this.f45338e &= -2;
                } else {
                    a0();
                    this.f45340g.addAll(extensionNumberResponse.extensionNumber_);
                }
                R();
            }
            z(((GeneratedMessageV3) extensionNumberResponse).unknownFields);
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
            this.f45339f = "";
            this.f45340g = ExtensionNumberResponse.access$1000();
            d0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f45339f = "";
            this.f45340g = ExtensionNumberResponse.access$1000();
            d0();
        }
    }

    /* synthetic */ ExtensionNumberResponse(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    static /* synthetic */ u0.g access$1000() {
        return GeneratedMessageV3.emptyIntList();
    }

    public static ExtensionNumberResponse getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return f.f45372i;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static ExtensionNumberResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (ExtensionNumberResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static ExtensionNumberResponse parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<ExtensionNumberResponse> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ExtensionNumberResponse)) {
            return super.equals(obj);
        }
        ExtensionNumberResponse extensionNumberResponse = (ExtensionNumberResponse) obj;
        return getBaseTypeName().equals(extensionNumberResponse.getBaseTypeName()) && getExtensionNumberList().equals(extensionNumberResponse.getExtensionNumberList()) && this.unknownFields.equals(extensionNumberResponse.unknownFields);
    }

    public String getBaseTypeName() {
        Object obj = this.baseTypeName_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.baseTypeName_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getBaseTypeNameBytes() {
        Object obj = this.baseTypeName_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.baseTypeName_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public int getExtensionNumber(int i9) {
        return this.extensionNumber_.getInt(i9);
    }

    public int getExtensionNumberCount() {
        return this.extensionNumber_.size();
    }

    public List<Integer> getExtensionNumberList() {
        return this.extensionNumber_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<ExtensionNumberResponse> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = !GeneratedMessageV3.isStringEmpty(this.baseTypeName_) ? GeneratedMessageV3.computeStringSize(1, this.baseTypeName_) + 0 : 0;
        int i10 = 0;
        for (int i11 = 0; i11 < this.extensionNumber_.size(); i11++) {
            i10 += CodedOutputStream.y(this.extensionNumber_.getInt(i11));
        }
        int i12 = computeStringSize + i10;
        if (!getExtensionNumberList().isEmpty()) {
            i12 = i12 + 1 + CodedOutputStream.y(i10);
        }
        this.extensionNumberMemoizedSerializedSize = i10;
        int serializedSize = i12 + this.unknownFields.getSerializedSize();
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
        int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getBaseTypeName().hashCode();
        if (getExtensionNumberCount() > 0) {
            hashCode = (((hashCode * 37) + 2) * 53) + getExtensionNumberList().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return f.f45373j.d(ExtensionNumberResponse.class, b.class);
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
        return new ExtensionNumberResponse();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        getSerializedSize();
        if (!GeneratedMessageV3.isStringEmpty(this.baseTypeName_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.baseTypeName_);
        }
        if (getExtensionNumberList().size() > 0) {
            codedOutputStream.d1(18);
            codedOutputStream.d1(this.extensionNumberMemoizedSerializedSize);
        }
        for (int i9 = 0; i9 < this.extensionNumber_.size(); i9++) {
            codedOutputStream.I0(this.extensionNumber_.getInt(i9));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ ExtensionNumberResponse(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(ExtensionNumberResponse extensionNumberResponse) {
        return DEFAULT_INSTANCE.toBuilder().h0(extensionNumberResponse);
    }

    public static ExtensionNumberResponse parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private ExtensionNumberResponse(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.extensionNumberMemoizedSerializedSize = -1;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static ExtensionNumberResponse parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ExtensionNumberResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static ExtensionNumberResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public ExtensionNumberResponse getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).h0(this);
    }

    public static ExtensionNumberResponse parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    public static ExtensionNumberResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    private ExtensionNumberResponse() {
        this.extensionNumberMemoizedSerializedSize = -1;
        this.memoizedIsInitialized = (byte) -1;
        this.baseTypeName_ = "";
        this.extensionNumber_ = GeneratedMessageV3.emptyIntList();
    }

    public static ExtensionNumberResponse parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static ExtensionNumberResponse parseFrom(InputStream inputStream) throws IOException {
        return (ExtensionNumberResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static ExtensionNumberResponse parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ExtensionNumberResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    private ExtensionNumberResponse(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            this.baseTypeName_ = pVar.K();
                        } else if (L == 16) {
                            if (!(z11 & true)) {
                                this.extensionNumber_ = GeneratedMessageV3.newIntList();
                                z11 |= true;
                            }
                            this.extensionNumber_.D0(pVar.z());
                        } else if (L != 18) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            int q10 = pVar.q(pVar.D());
                            if (!(z11 & true) && pVar.e() > 0) {
                                this.extensionNumber_ = GeneratedMessageV3.newIntList();
                                z11 |= true;
                            }
                            while (pVar.e() > 0) {
                                this.extensionNumber_.D0(pVar.z());
                            }
                            pVar.p(q10);
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
                    this.extensionNumber_.C();
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static ExtensionNumberResponse parseFrom(p pVar) throws IOException {
        return (ExtensionNumberResponse) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static ExtensionNumberResponse parseFrom(p pVar, f0 f0Var) throws IOException {
        return (ExtensionNumberResponse) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
