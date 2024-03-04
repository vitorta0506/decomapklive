package com.google.cloud.audit;

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
import com.google.protobuf.q2;
import com.google.protobuf.u0;
import com.google.rpc.context.AttributeContext;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class AuthorizationInfo extends GeneratedMessageV3 implements c {
    public static final int GRANTED_FIELD_NUMBER = 3;
    public static final int PERMISSION_FIELD_NUMBER = 2;
    public static final int RESOURCE_ATTRIBUTES_FIELD_NUMBER = 5;
    public static final int RESOURCE_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private boolean granted_;
    private byte memoizedIsInitialized;
    private volatile Object permission_;
    private AttributeContext.Resource resourceAttributes_;
    private volatile Object resource_;
    private static final AuthorizationInfo DEFAULT_INSTANCE = new AuthorizationInfo();
    private static final e2<AuthorizationInfo> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a extends com.google.protobuf.c<AuthorizationInfo> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public AuthorizationInfo m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new AuthorizationInfo(pVar, f0Var, null);
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements c {

        /* renamed from: e  reason: collision with root package name */
        private Object f11754e;

        /* renamed from: f  reason: collision with root package name */
        private Object f11755f;

        /* renamed from: g  reason: collision with root package name */
        private boolean f11756g;

        /* renamed from: h  reason: collision with root package name */
        private AttributeContext.Resource f11757h;

        /* renamed from: i  reason: collision with root package name */
        private q2<AttributeContext.Resource, AttributeContext.Resource.c, AttributeContext.g> f11758i;

        /* synthetic */ b(a aVar) {
            this();
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return com.google.cloud.audit.a.f11785f.d(AuthorizationInfo.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public AuthorizationInfo build() {
            AuthorizationInfo I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public AuthorizationInfo I() {
            AuthorizationInfo authorizationInfo = new AuthorizationInfo(this, (a) null);
            authorizationInfo.resource_ = this.f11754e;
            authorizationInfo.permission_ = this.f11755f;
            authorizationInfo.granted_ = this.f11756g;
            q2<AttributeContext.Resource, AttributeContext.Resource.c, AttributeContext.g> q2Var = this.f11758i;
            if (q2Var == null) {
                authorizationInfo.resourceAttributes_ = this.f11757h;
            } else {
                authorizationInfo.resourceAttributes_ = q2Var.b();
            }
            Q();
            return authorizationInfo;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public AuthorizationInfo getDefaultInstanceForType() {
            return AuthorizationInfo.getDefaultInstance();
        }

        public b d0(AuthorizationInfo authorizationInfo) {
            if (authorizationInfo == AuthorizationInfo.getDefaultInstance()) {
                return this;
            }
            if (!authorizationInfo.getResource().isEmpty()) {
                this.f11754e = authorizationInfo.resource_;
                R();
            }
            if (!authorizationInfo.getPermission().isEmpty()) {
                this.f11755f = authorizationInfo.permission_;
                R();
            }
            if (authorizationInfo.getGranted()) {
                k0(authorizationInfo.getGranted());
            }
            if (authorizationInfo.hasResourceAttributes()) {
                h0(authorizationInfo.getResourceAttributes());
            }
            z(((GeneratedMessageV3) authorizationInfo).unknownFields);
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
        public com.google.cloud.audit.AuthorizationInfo.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.cloud.audit.AuthorizationInfo.access$900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.cloud.audit.AuthorizationInfo r3 = (com.google.cloud.audit.AuthorizationInfo) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                com.google.cloud.audit.AuthorizationInfo r4 = (com.google.cloud.audit.AuthorizationInfo) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.cloud.audit.AuthorizationInfo.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.cloud.audit.AuthorizationInfo$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof AuthorizationInfo) {
                return d0((AuthorizationInfo) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return com.google.cloud.audit.a.f11784e;
        }

        public b h0(AttributeContext.Resource resource) {
            q2<AttributeContext.Resource, AttributeContext.Resource.c, AttributeContext.g> q2Var = this.f11758i;
            if (q2Var == null) {
                AttributeContext.Resource resource2 = this.f11757h;
                if (resource2 != null) {
                    this.f11757h = AttributeContext.Resource.newBuilder(resource2).m0(resource).I();
                } else {
                    this.f11757h = resource;
                }
                R();
            } else {
                q2Var.e(resource);
            }
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

        public b k0(boolean z10) {
            this.f11756g = z10;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: l0 */
        public final b f1(h3 h3Var) {
            return (b) super.f1(h3Var);
        }

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private b() {
            this.f11754e = "";
            this.f11755f = "";
            b0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f11754e = "";
            this.f11755f = "";
            b0();
        }
    }

    /* synthetic */ AuthorizationInfo(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static AuthorizationInfo getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return com.google.cloud.audit.a.f11784e;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static AuthorizationInfo parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (AuthorizationInfo) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static AuthorizationInfo parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<AuthorizationInfo> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AuthorizationInfo)) {
            return super.equals(obj);
        }
        AuthorizationInfo authorizationInfo = (AuthorizationInfo) obj;
        if (getResource().equals(authorizationInfo.getResource()) && getPermission().equals(authorizationInfo.getPermission()) && getGranted() == authorizationInfo.getGranted() && hasResourceAttributes() == authorizationInfo.hasResourceAttributes()) {
            return (!hasResourceAttributes() || getResourceAttributes().equals(authorizationInfo.getResourceAttributes())) && this.unknownFields.equals(authorizationInfo.unknownFields);
        }
        return false;
    }

    public boolean getGranted() {
        return this.granted_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<AuthorizationInfo> getParserForType() {
        return PARSER;
    }

    public String getPermission() {
        Object obj = this.permission_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.permission_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getPermissionBytes() {
        Object obj = this.permission_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.permission_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public String getResource() {
        Object obj = this.resource_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.resource_ = stringUtf8;
        return stringUtf8;
    }

    public AttributeContext.Resource getResourceAttributes() {
        AttributeContext.Resource resource = this.resourceAttributes_;
        return resource == null ? AttributeContext.Resource.getDefaultInstance() : resource;
    }

    public AttributeContext.g getResourceAttributesOrBuilder() {
        return getResourceAttributes();
    }

    public ByteString getResourceBytes() {
        Object obj = this.resource_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.resource_ = copyFromUtf8;
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
        int computeStringSize = GeneratedMessageV3.isStringEmpty(this.resource_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.resource_);
        if (!GeneratedMessageV3.isStringEmpty(this.permission_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(2, this.permission_);
        }
        boolean z10 = this.granted_;
        if (z10) {
            computeStringSize += CodedOutputStream.e(3, z10);
        }
        if (this.resourceAttributes_ != null) {
            computeStringSize += CodedOutputStream.G(5, getResourceAttributes());
        }
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasResourceAttributes() {
        return this.resourceAttributes_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = ((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getResource().hashCode()) * 37) + 2) * 53) + getPermission().hashCode()) * 37) + 3) * 53) + u0.d(getGranted());
        if (hasResourceAttributes()) {
            hashCode = (((hashCode * 37) + 5) * 53) + getResourceAttributes().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return com.google.cloud.audit.a.f11785f.d(AuthorizationInfo.class, b.class);
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
        return new AuthorizationInfo();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.resource_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.resource_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.permission_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.permission_);
        }
        boolean z10 = this.granted_;
        if (z10) {
            codedOutputStream.n0(3, z10);
        }
        if (this.resourceAttributes_ != null) {
            codedOutputStream.L0(5, getResourceAttributes());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ AuthorizationInfo(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(AuthorizationInfo authorizationInfo) {
        return DEFAULT_INSTANCE.toBuilder().d0(authorizationInfo);
    }

    public static AuthorizationInfo parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (AuthorizationInfo) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static AuthorizationInfo parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private AuthorizationInfo(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static AuthorizationInfo parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public AuthorizationInfo getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).d0(this);
    }

    public static AuthorizationInfo parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private AuthorizationInfo() {
        this.memoizedIsInitialized = (byte) -1;
        this.resource_ = "";
        this.permission_ = "";
    }

    public static AuthorizationInfo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static AuthorizationInfo parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static AuthorizationInfo parseFrom(InputStream inputStream) throws IOException {
        return (AuthorizationInfo) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static AuthorizationInfo parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (AuthorizationInfo) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    private AuthorizationInfo(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            if (L == 10) {
                                this.resource_ = pVar.K();
                            } else if (L == 18) {
                                this.permission_ = pVar.K();
                            } else if (L == 24) {
                                this.granted_ = pVar.r();
                            } else if (L != 42) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                AttributeContext.Resource resource = this.resourceAttributes_;
                                AttributeContext.Resource.c builder = resource != null ? resource.toBuilder() : null;
                                AttributeContext.Resource resource2 = (AttributeContext.Resource) pVar.B(AttributeContext.Resource.parser(), f0Var);
                                this.resourceAttributes_ = resource2;
                                if (builder != null) {
                                    builder.m0(resource2);
                                    this.resourceAttributes_ = builder.I();
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

    public static AuthorizationInfo parseFrom(p pVar) throws IOException {
        return (AuthorizationInfo) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static AuthorizationInfo parseFrom(p pVar, f0 f0Var) throws IOException {
        return (AuthorizationInfo) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
