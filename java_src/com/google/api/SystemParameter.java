package com.google.api;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.h3;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class SystemParameter extends GeneratedMessageV3 implements i1 {
    public static final int HTTP_HEADER_FIELD_NUMBER = 2;
    public static final int NAME_FIELD_NUMBER = 1;
    public static final int URL_QUERY_PARAMETER_FIELD_NUMBER = 3;
    private static final long serialVersionUID = 0;
    private volatile Object httpHeader_;
    private byte memoizedIsInitialized;
    private volatile Object name_;
    private volatile Object urlQueryParameter_;
    private static final SystemParameter DEFAULT_INSTANCE = new SystemParameter();
    private static final e2<SystemParameter> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a extends com.google.protobuf.c<SystemParameter> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public SystemParameter m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return new SystemParameter(pVar, f0Var, null);
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements i1 {

        /* renamed from: e  reason: collision with root package name */
        private Object f10915e;

        /* renamed from: f  reason: collision with root package name */
        private Object f10916f;

        /* renamed from: g  reason: collision with root package name */
        private Object f10917g;

        /* synthetic */ b(a aVar) {
            this();
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return j1.f11405f.d(SystemParameter.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public SystemParameter build() {
            SystemParameter I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public SystemParameter I() {
            SystemParameter systemParameter = new SystemParameter(this, (a) null);
            systemParameter.name_ = this.f10915e;
            systemParameter.httpHeader_ = this.f10916f;
            systemParameter.urlQueryParameter_ = this.f10917g;
            Q();
            return systemParameter;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public SystemParameter getDefaultInstanceForType() {
            return SystemParameter.getDefaultInstance();
        }

        public b d0(SystemParameter systemParameter) {
            if (systemParameter == SystemParameter.getDefaultInstance()) {
                return this;
            }
            if (!systemParameter.getName().isEmpty()) {
                this.f10915e = systemParameter.name_;
                R();
            }
            if (!systemParameter.getHttpHeader().isEmpty()) {
                this.f10916f = systemParameter.httpHeader_;
                R();
            }
            if (!systemParameter.getUrlQueryParameter().isEmpty()) {
                this.f10917g = systemParameter.urlQueryParameter_;
                R();
            }
            z(((GeneratedMessageV3) systemParameter).unknownFields);
            R();
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.api.SystemParameter.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.api.SystemParameter.access$800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.api.SystemParameter r3 = (com.google.api.SystemParameter) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.d0(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                com.google.api.SystemParameter r4 = (com.google.api.SystemParameter) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.d0(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.api.SystemParameter.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.api.SystemParameter$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        public b v(com.google.protobuf.l1 l1Var) {
            if (l1Var instanceof SystemParameter) {
                return d0((SystemParameter) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return j1.f11404e;
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

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: j0 */
        public final b f1(h3 h3Var) {
            return (b) super.f1(h3Var);
        }

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private b() {
            this.f10915e = "";
            this.f10916f = "";
            this.f10917g = "";
            b0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f10915e = "";
            this.f10916f = "";
            this.f10917g = "";
            b0();
        }
    }

    /* synthetic */ SystemParameter(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static SystemParameter getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return j1.f11404e;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static SystemParameter parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (SystemParameter) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static SystemParameter parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<SystemParameter> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SystemParameter)) {
            return super.equals(obj);
        }
        SystemParameter systemParameter = (SystemParameter) obj;
        return getName().equals(systemParameter.getName()) && getHttpHeader().equals(systemParameter.getHttpHeader()) && getUrlQueryParameter().equals(systemParameter.getUrlQueryParameter()) && this.unknownFields.equals(systemParameter.unknownFields);
    }

    public String getHttpHeader() {
        Object obj = this.httpHeader_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.httpHeader_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getHttpHeaderBytes() {
        Object obj = this.httpHeader_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.httpHeader_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
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
    public e2<SystemParameter> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = GeneratedMessageV3.isStringEmpty(this.name_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.name_);
        if (!GeneratedMessageV3.isStringEmpty(this.httpHeader_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(2, this.httpHeader_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.urlQueryParameter_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(3, this.urlQueryParameter_);
        }
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public String getUrlQueryParameter() {
        Object obj = this.urlQueryParameter_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.urlQueryParameter_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getUrlQueryParameterBytes() {
        Object obj = this.urlQueryParameter_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.urlQueryParameter_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = ((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode()) * 37) + 2) * 53) + getHttpHeader().hashCode()) * 37) + 3) * 53) + getUrlQueryParameter().hashCode()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode;
        return hashCode;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return j1.f11405f.d(SystemParameter.class, b.class);
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
        return new SystemParameter();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.name_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.name_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.httpHeader_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.httpHeader_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.urlQueryParameter_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 3, this.urlQueryParameter_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ SystemParameter(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(SystemParameter systemParameter) {
        return DEFAULT_INSTANCE.toBuilder().d0(systemParameter);
    }

    public static SystemParameter parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (SystemParameter) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static SystemParameter parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private SystemParameter(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static SystemParameter parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public SystemParameter getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).d0(this);
    }

    public static SystemParameter parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private SystemParameter() {
        this.memoizedIsInitialized = (byte) -1;
        this.name_ = "";
        this.httpHeader_ = "";
        this.urlQueryParameter_ = "";
    }

    public static SystemParameter parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static SystemParameter parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static SystemParameter parseFrom(InputStream inputStream) throws IOException {
        return (SystemParameter) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static SystemParameter parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (SystemParameter) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static SystemParameter parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (SystemParameter) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    private SystemParameter(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                            this.httpHeader_ = pVar.K();
                        } else if (L != 26) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            this.urlQueryParameter_ = pVar.K();
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

    public static SystemParameter parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
        return (SystemParameter) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
