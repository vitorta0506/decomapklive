package com.google.api;

import com.google.protobuf.Any;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.h3;
import com.google.protobuf.l2;
import com.google.protobuf.r1;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class HttpBody extends GeneratedMessageV3 implements r1 {
    public static final int CONTENT_TYPE_FIELD_NUMBER = 1;
    public static final int DATA_FIELD_NUMBER = 2;
    public static final int EXTENSIONS_FIELD_NUMBER = 3;
    private static final long serialVersionUID = 0;
    private volatile Object contentType_;
    private ByteString data_;
    private List<Any> extensions_;
    private byte memoizedIsInitialized;
    private static final HttpBody DEFAULT_INSTANCE = new HttpBody();
    private static final e2<HttpBody> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a extends com.google.protobuf.c<HttpBody> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public HttpBody m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return new HttpBody(pVar, f0Var, null);
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private int f10761e;

        /* renamed from: f  reason: collision with root package name */
        private Object f10762f;

        /* renamed from: g  reason: collision with root package name */
        private ByteString f10763g;

        /* renamed from: h  reason: collision with root package name */
        private List<Any> f10764h;

        /* renamed from: i  reason: collision with root package name */
        private l2<Any, Any.b, com.google.protobuf.f> f10765i;

        /* synthetic */ b(a aVar) {
            this();
        }

        private void a0() {
            if ((this.f10761e & 1) == 0) {
                this.f10764h = new ArrayList(this.f10764h);
                this.f10761e |= 1;
            }
        }

        private l2<Any, Any.b, com.google.protobuf.f> d0() {
            if (this.f10765i == null) {
                this.f10765i = new l2<>(this.f10764h, (this.f10761e & 1) != 0, H(), O());
                this.f10764h = null;
            }
            return this.f10765i;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                d0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return d0.f11192b.d(HttpBody.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public HttpBody build() {
            HttpBody I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public HttpBody I() {
            HttpBody httpBody = new HttpBody(this, (a) null);
            httpBody.contentType_ = this.f10762f;
            httpBody.data_ = this.f10763g;
            l2<Any, Any.b, com.google.protobuf.f> l2Var = this.f10765i;
            if (l2Var == null) {
                if ((this.f10761e & 1) != 0) {
                    this.f10764h = Collections.unmodifiableList(this.f10764h);
                    this.f10761e &= -2;
                }
                httpBody.extensions_ = this.f10764h;
            } else {
                httpBody.extensions_ = l2Var.e();
            }
            Q();
            return httpBody;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: b0 */
        public HttpBody getDefaultInstanceForType() {
            return HttpBody.getDefaultInstance();
        }

        public b g0(HttpBody httpBody) {
            if (httpBody == HttpBody.getDefaultInstance()) {
                return this;
            }
            if (!httpBody.getContentType().isEmpty()) {
                this.f10762f = httpBody.contentType_;
                R();
            }
            if (httpBody.getData() != ByteString.EMPTY) {
                k0(httpBody.getData());
            }
            if (this.f10765i == null) {
                if (!httpBody.extensions_.isEmpty()) {
                    if (this.f10764h.isEmpty()) {
                        this.f10764h = httpBody.extensions_;
                        this.f10761e &= -2;
                    } else {
                        a0();
                        this.f10764h.addAll(httpBody.extensions_);
                    }
                    R();
                }
            } else if (!httpBody.extensions_.isEmpty()) {
                if (this.f10765i.k()) {
                    this.f10765i.f();
                    this.f10765i = null;
                    this.f10764h = httpBody.extensions_;
                    this.f10761e &= -2;
                    this.f10765i = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                } else {
                    this.f10765i.b(httpBody.extensions_);
                }
            }
            z(((GeneratedMessageV3) httpBody).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return d0.f11191a;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.api.HttpBody.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.api.HttpBody.access$900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.api.HttpBody r3 = (com.google.api.HttpBody) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                com.google.api.HttpBody r4 = (com.google.api.HttpBody) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.api.HttpBody.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.api.HttpBody$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public b v(com.google.protobuf.l1 l1Var) {
            if (l1Var instanceof HttpBody) {
                return g0((HttpBody) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: j0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        public b k0(ByteString byteString) {
            Objects.requireNonNull(byteString);
            this.f10763g = byteString;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: l0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: m0 */
        public final b f1(h3 h3Var) {
            return (b) super.f1(h3Var);
        }

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private b() {
            this.f10762f = "";
            this.f10763g = ByteString.EMPTY;
            this.f10764h = Collections.emptyList();
            e0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f10762f = "";
            this.f10763g = ByteString.EMPTY;
            this.f10764h = Collections.emptyList();
            e0();
        }
    }

    /* synthetic */ HttpBody(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static HttpBody getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return d0.f11191a;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static HttpBody parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (HttpBody) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static HttpBody parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<HttpBody> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof HttpBody)) {
            return super.equals(obj);
        }
        HttpBody httpBody = (HttpBody) obj;
        return getContentType().equals(httpBody.getContentType()) && getData().equals(httpBody.getData()) && getExtensionsList().equals(httpBody.getExtensionsList()) && this.unknownFields.equals(httpBody.unknownFields);
    }

    public String getContentType() {
        Object obj = this.contentType_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.contentType_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getContentTypeBytes() {
        Object obj = this.contentType_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.contentType_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public ByteString getData() {
        return this.data_;
    }

    public Any getExtensions(int i9) {
        return this.extensions_.get(i9);
    }

    public int getExtensionsCount() {
        return this.extensions_.size();
    }

    public List<Any> getExtensionsList() {
        return this.extensions_;
    }

    public com.google.protobuf.f getExtensionsOrBuilder(int i9) {
        return this.extensions_.get(i9);
    }

    public List<? extends com.google.protobuf.f> getExtensionsOrBuilderList() {
        return this.extensions_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<HttpBody> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = !GeneratedMessageV3.isStringEmpty(this.contentType_) ? GeneratedMessageV3.computeStringSize(1, this.contentType_) + 0 : 0;
        if (!this.data_.isEmpty()) {
            computeStringSize += CodedOutputStream.h(2, this.data_);
        }
        for (int i10 = 0; i10 < this.extensions_.size(); i10++) {
            computeStringSize += CodedOutputStream.G(3, this.extensions_.get(i10));
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
        int hashCode = ((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getContentType().hashCode()) * 37) + 2) * 53) + getData().hashCode();
        if (getExtensionsCount() > 0) {
            hashCode = (((hashCode * 37) + 3) * 53) + getExtensionsList().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return d0.f11192b.d(HttpBody.class, b.class);
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
        return new HttpBody();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.contentType_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.contentType_);
        }
        if (!this.data_.isEmpty()) {
            codedOutputStream.r0(2, this.data_);
        }
        for (int i9 = 0; i9 < this.extensions_.size(); i9++) {
            codedOutputStream.L0(3, this.extensions_.get(i9));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ HttpBody(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(HttpBody httpBody) {
        return DEFAULT_INSTANCE.toBuilder().g0(httpBody);
    }

    public static HttpBody parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (HttpBody) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static HttpBody parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private HttpBody(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static HttpBody parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public HttpBody getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static HttpBody parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private HttpBody() {
        this.memoizedIsInitialized = (byte) -1;
        this.contentType_ = "";
        this.data_ = ByteString.EMPTY;
        this.extensions_ = Collections.emptyList();
    }

    public static HttpBody parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static HttpBody parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static HttpBody parseFrom(InputStream inputStream) throws IOException {
        return (HttpBody) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static HttpBody parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (HttpBody) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static HttpBody parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (HttpBody) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private HttpBody(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                                this.contentType_ = pVar.K();
                            } else if (L == 18) {
                                this.data_ = pVar.s();
                            } else if (L != 26) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                if (!(z11 & true)) {
                                    this.extensions_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.extensions_.add(pVar.B(Any.parser(), f0Var));
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
                if (z11 & true) {
                    this.extensions_ = Collections.unmodifiableList(this.extensions_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static HttpBody parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
        return (HttpBody) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
