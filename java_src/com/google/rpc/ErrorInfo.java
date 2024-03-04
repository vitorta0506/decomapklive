package com.google.rpc;

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
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes3.dex */
public final class ErrorInfo extends GeneratedMessageV3 implements r1 {
    public static final int DOMAIN_FIELD_NUMBER = 2;
    public static final int METADATA_FIELD_NUMBER = 3;
    public static final int REASON_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private volatile Object domain_;
    private byte memoizedIsInitialized;
    private g1<String, String> metadata_;
    private volatile Object reason_;
    private static final ErrorInfo DEFAULT_INSTANCE = new ErrorInfo();
    private static final e2<ErrorInfo> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class a extends com.google.protobuf.c<ErrorInfo> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public ErrorInfo m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new ErrorInfo(pVar, f0Var, null);
        }
    }

    /* loaded from: classes3.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private Object f15558e;

        /* renamed from: f  reason: collision with root package name */
        private Object f15559f;

        /* renamed from: g  reason: collision with root package name */
        private g1<String, String> f15560g;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private g1<String, String> b0() {
            g1<String, String> g1Var = this.f15560g;
            return g1Var == null ? g1.g(c.f15561a) : g1Var;
        }

        private g1<String, String> d0() {
            R();
            if (this.f15560g == null) {
                this.f15560g = g1.p(c.f15561a);
            }
            if (!this.f15560g.m()) {
                this.f15560g = this.f15560g.f();
            }
            return this.f15560g;
        }

        private void e0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return com.google.rpc.b.f15603j.d(ErrorInfo.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected g1 M(int i9) {
            if (i9 == 3) {
                return b0();
            }
            throw new RuntimeException("Invalid map field number: " + i9);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected g1 N(int i9) {
            if (i9 == 3) {
                return d0();
            }
            throw new RuntimeException("Invalid map field number: " + i9);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public ErrorInfo build() {
            ErrorInfo I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public ErrorInfo I() {
            ErrorInfo errorInfo = new ErrorInfo(this, (a) null);
            errorInfo.reason_ = this.f15558e;
            errorInfo.domain_ = this.f15559f;
            errorInfo.metadata_ = b0();
            errorInfo.metadata_.n();
            Q();
            return errorInfo;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public ErrorInfo getDefaultInstanceForType() {
            return ErrorInfo.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.rpc.ErrorInfo.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.rpc.ErrorInfo.access$900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.rpc.ErrorInfo r3 = (com.google.rpc.ErrorInfo) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.i0(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                com.google.rpc.ErrorInfo r4 = (com.google.rpc.ErrorInfo) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.i0(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.rpc.ErrorInfo.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.rpc.ErrorInfo$b");
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return com.google.rpc.b.f15602i;
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof ErrorInfo) {
                return i0((ErrorInfo) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b i0(ErrorInfo errorInfo) {
            if (errorInfo == ErrorInfo.getDefaultInstance()) {
                return this;
            }
            if (!errorInfo.getReason().isEmpty()) {
                this.f15558e = errorInfo.reason_;
                R();
            }
            if (!errorInfo.getDomain().isEmpty()) {
                this.f15559f = errorInfo.domain_;
                R();
            }
            d0().o(errorInfo.internalGetMetadata());
            z(((GeneratedMessageV3) errorInfo).unknownFields);
            R();
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
            this.f15558e = "";
            this.f15559f = "";
            e0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f15558e = "";
            this.f15559f = "";
            e0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        static final e1<String, String> f15561a;

        static {
            Descriptors.b bVar = com.google.rpc.b.f15604k;
            WireFormat.FieldType fieldType = WireFormat.FieldType.STRING;
            f15561a = e1.k(bVar, fieldType, "", fieldType, "");
        }
    }

    /* synthetic */ ErrorInfo(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static ErrorInfo getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return com.google.rpc.b.f15602i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public g1<String, String> internalGetMetadata() {
        g1<String, String> g1Var = this.metadata_;
        return g1Var == null ? g1.g(c.f15561a) : g1Var;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static ErrorInfo parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (ErrorInfo) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static ErrorInfo parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<ErrorInfo> parser() {
        return PARSER;
    }

    public boolean containsMetadata(String str) {
        Objects.requireNonNull(str);
        return internalGetMetadata().i().containsKey(str);
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ErrorInfo)) {
            return super.equals(obj);
        }
        ErrorInfo errorInfo = (ErrorInfo) obj;
        return getReason().equals(errorInfo.getReason()) && getDomain().equals(errorInfo.getDomain()) && internalGetMetadata().equals(errorInfo.internalGetMetadata()) && this.unknownFields.equals(errorInfo.unknownFields);
    }

    public String getDomain() {
        Object obj = this.domain_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.domain_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getDomainBytes() {
        Object obj = this.domain_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.domain_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Deprecated
    public Map<String, String> getMetadata() {
        return getMetadataMap();
    }

    public int getMetadataCount() {
        return internalGetMetadata().i().size();
    }

    public Map<String, String> getMetadataMap() {
        return internalGetMetadata().i();
    }

    public String getMetadataOrDefault(String str, String str2) {
        Objects.requireNonNull(str);
        Map<String, String> i9 = internalGetMetadata().i();
        return i9.containsKey(str) ? i9.get(str) : str2;
    }

    public String getMetadataOrThrow(String str) {
        Objects.requireNonNull(str);
        Map<String, String> i9 = internalGetMetadata().i();
        if (i9.containsKey(str)) {
            return i9.get(str);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<ErrorInfo> getParserForType() {
        return PARSER;
    }

    public String getReason() {
        Object obj = this.reason_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.reason_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getReasonBytes() {
        Object obj = this.reason_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.reason_ = copyFromUtf8;
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
        int computeStringSize = GeneratedMessageV3.isStringEmpty(this.reason_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.reason_);
        if (!GeneratedMessageV3.isStringEmpty(this.domain_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(2, this.domain_);
        }
        for (Map.Entry<String, String> entry : internalGetMetadata().i().entrySet()) {
            computeStringSize += CodedOutputStream.G(3, c.f15561a.newBuilderForType().N(entry.getKey()).P(entry.getValue()).build());
        }
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
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
        int hashCode = ((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getReason().hashCode()) * 37) + 2) * 53) + getDomain().hashCode();
        if (!internalGetMetadata().i().isEmpty()) {
            hashCode = (((hashCode * 37) + 3) * 53) + internalGetMetadata().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return com.google.rpc.b.f15603j.d(ErrorInfo.class, b.class);
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected g1 internalGetMapField(int i9) {
        if (i9 == 3) {
            return internalGetMetadata();
        }
        throw new RuntimeException("Invalid map field number: " + i9);
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
        return new ErrorInfo();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.reason_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.reason_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.domain_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.domain_);
        }
        GeneratedMessageV3.serializeStringMapTo(codedOutputStream, internalGetMetadata(), c.f15561a, 3);
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ ErrorInfo(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(ErrorInfo errorInfo) {
        return DEFAULT_INSTANCE.toBuilder().i0(errorInfo);
    }

    public static ErrorInfo parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ErrorInfo) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static ErrorInfo parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private ErrorInfo(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static ErrorInfo parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public ErrorInfo getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).i0(this);
    }

    public static ErrorInfo parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private ErrorInfo() {
        this.memoizedIsInitialized = (byte) -1;
        this.reason_ = "";
        this.domain_ = "";
    }

    public static ErrorInfo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static ErrorInfo parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static ErrorInfo parseFrom(InputStream inputStream) throws IOException {
        return (ErrorInfo) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static ErrorInfo parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ErrorInfo) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    /* JADX WARN: Type inference failed for: r3v7, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v3, types: [java.lang.Object] */
    private ErrorInfo(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        boolean z11 = false;
        while (!z10) {
            try {
                try {
                    try {
                        int L = pVar.L();
                        if (L != 0) {
                            if (L == 10) {
                                this.reason_ = pVar.K();
                            } else if (L == 18) {
                                this.domain_ = pVar.K();
                            } else if (L != 26) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                if (!(z11 & true)) {
                                    this.metadata_ = g1.p(c.f15561a);
                                    z11 |= true;
                                }
                                e1 e1Var = (e1) pVar.B(c.f15561a.getParserForType(), f0Var);
                                this.metadata_.l().put(e1Var.f(), e1Var.h());
                            }
                        }
                        z10 = true;
                    } catch (InvalidProtocolBufferException e10) {
                        throw e10.setUnfinishedMessage(this);
                    }
                } catch (IOException e11) {
                    throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                }
            } finally {
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static ErrorInfo parseFrom(p pVar) throws IOException {
        return (ErrorInfo) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static ErrorInfo parseFrom(p pVar, f0 f0Var) throws IOException {
        return (ErrorInfo) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
