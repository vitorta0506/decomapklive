package com.google.api;

import com.google.api.JwtLocation;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.h3;
import com.google.protobuf.l2;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class AuthProvider extends GeneratedMessageV3 implements d {
    public static final int AUDIENCES_FIELD_NUMBER = 4;
    public static final int AUTHORIZATION_URL_FIELD_NUMBER = 5;
    public static final int ID_FIELD_NUMBER = 1;
    public static final int ISSUER_FIELD_NUMBER = 2;
    public static final int JWKS_URI_FIELD_NUMBER = 3;
    public static final int JWT_LOCATIONS_FIELD_NUMBER = 6;
    private static final long serialVersionUID = 0;
    private volatile Object audiences_;
    private volatile Object authorizationUrl_;
    private volatile Object id_;
    private volatile Object issuer_;
    private volatile Object jwksUri_;
    private List<JwtLocation> jwtLocations_;
    private byte memoizedIsInitialized;
    private static final AuthProvider DEFAULT_INSTANCE = new AuthProvider();
    private static final e2<AuthProvider> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a extends com.google.protobuf.c<AuthProvider> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public AuthProvider m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return new AuthProvider(pVar, f0Var, null);
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements d {

        /* renamed from: e  reason: collision with root package name */
        private int f10647e;

        /* renamed from: f  reason: collision with root package name */
        private Object f10648f;

        /* renamed from: g  reason: collision with root package name */
        private Object f10649g;

        /* renamed from: h  reason: collision with root package name */
        private Object f10650h;

        /* renamed from: i  reason: collision with root package name */
        private Object f10651i;

        /* renamed from: j  reason: collision with root package name */
        private Object f10652j;

        /* renamed from: k  reason: collision with root package name */
        private List<JwtLocation> f10653k;

        /* renamed from: l  reason: collision with root package name */
        private l2<JwtLocation, JwtLocation.c, h0> f10654l;

        /* synthetic */ b(a aVar) {
            this();
        }

        private void a0() {
            if ((this.f10647e & 1) == 0) {
                this.f10653k = new ArrayList(this.f10653k);
                this.f10647e |= 1;
            }
        }

        private l2<JwtLocation, JwtLocation.c, h0> d0() {
            if (this.f10654l == null) {
                this.f10654l = new l2<>(this.f10653k, (this.f10647e & 1) != 0, H(), O());
                this.f10653k = null;
            }
            return this.f10654l;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                d0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return c.f10962h.d(AuthProvider.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public AuthProvider build() {
            AuthProvider I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public AuthProvider I() {
            AuthProvider authProvider = new AuthProvider(this, (a) null);
            authProvider.id_ = this.f10648f;
            authProvider.issuer_ = this.f10649g;
            authProvider.jwksUri_ = this.f10650h;
            authProvider.audiences_ = this.f10651i;
            authProvider.authorizationUrl_ = this.f10652j;
            l2<JwtLocation, JwtLocation.c, h0> l2Var = this.f10654l;
            if (l2Var == null) {
                if ((this.f10647e & 1) != 0) {
                    this.f10653k = Collections.unmodifiableList(this.f10653k);
                    this.f10647e &= -2;
                }
                authProvider.jwtLocations_ = this.f10653k;
            } else {
                authProvider.jwtLocations_ = l2Var.e();
            }
            Q();
            return authProvider;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: b0 */
        public AuthProvider getDefaultInstanceForType() {
            return AuthProvider.getDefaultInstance();
        }

        public b g0(AuthProvider authProvider) {
            if (authProvider == AuthProvider.getDefaultInstance()) {
                return this;
            }
            if (!authProvider.getId().isEmpty()) {
                this.f10648f = authProvider.id_;
                R();
            }
            if (!authProvider.getIssuer().isEmpty()) {
                this.f10649g = authProvider.issuer_;
                R();
            }
            if (!authProvider.getJwksUri().isEmpty()) {
                this.f10650h = authProvider.jwksUri_;
                R();
            }
            if (!authProvider.getAudiences().isEmpty()) {
                this.f10651i = authProvider.audiences_;
                R();
            }
            if (!authProvider.getAuthorizationUrl().isEmpty()) {
                this.f10652j = authProvider.authorizationUrl_;
                R();
            }
            if (this.f10654l == null) {
                if (!authProvider.jwtLocations_.isEmpty()) {
                    if (this.f10653k.isEmpty()) {
                        this.f10653k = authProvider.jwtLocations_;
                        this.f10647e &= -2;
                    } else {
                        a0();
                        this.f10653k.addAll(authProvider.jwtLocations_);
                    }
                    R();
                }
            } else if (!authProvider.jwtLocations_.isEmpty()) {
                if (this.f10654l.k()) {
                    this.f10654l.f();
                    this.f10654l = null;
                    this.f10653k = authProvider.jwtLocations_;
                    this.f10647e &= -2;
                    this.f10654l = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                } else {
                    this.f10654l.b(authProvider.jwtLocations_);
                }
            }
            z(((GeneratedMessageV3) authProvider).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return c.f10961g;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.api.AuthProvider.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.api.AuthProvider.access$1200()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.api.AuthProvider r3 = (com.google.api.AuthProvider) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                com.google.api.AuthProvider r4 = (com.google.api.AuthProvider) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.api.AuthProvider.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.api.AuthProvider$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public b v(com.google.protobuf.l1 l1Var) {
            if (l1Var instanceof AuthProvider) {
                return g0((AuthProvider) l1Var);
            }
            super.P0(l1Var);
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

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private b() {
            this.f10648f = "";
            this.f10649g = "";
            this.f10650h = "";
            this.f10651i = "";
            this.f10652j = "";
            this.f10653k = Collections.emptyList();
            e0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f10648f = "";
            this.f10649g = "";
            this.f10650h = "";
            this.f10651i = "";
            this.f10652j = "";
            this.f10653k = Collections.emptyList();
            e0();
        }
    }

    /* synthetic */ AuthProvider(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static AuthProvider getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return c.f10961g;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static AuthProvider parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (AuthProvider) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static AuthProvider parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<AuthProvider> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AuthProvider)) {
            return super.equals(obj);
        }
        AuthProvider authProvider = (AuthProvider) obj;
        return getId().equals(authProvider.getId()) && getIssuer().equals(authProvider.getIssuer()) && getJwksUri().equals(authProvider.getJwksUri()) && getAudiences().equals(authProvider.getAudiences()) && getAuthorizationUrl().equals(authProvider.getAuthorizationUrl()) && getJwtLocationsList().equals(authProvider.getJwtLocationsList()) && this.unknownFields.equals(authProvider.unknownFields);
    }

    public String getAudiences() {
        Object obj = this.audiences_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.audiences_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getAudiencesBytes() {
        Object obj = this.audiences_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.audiences_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public String getAuthorizationUrl() {
        Object obj = this.authorizationUrl_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.authorizationUrl_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getAuthorizationUrlBytes() {
        Object obj = this.authorizationUrl_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.authorizationUrl_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public String getId() {
        Object obj = this.id_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.id_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getIdBytes() {
        Object obj = this.id_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.id_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public String getIssuer() {
        Object obj = this.issuer_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.issuer_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getIssuerBytes() {
        Object obj = this.issuer_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.issuer_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public String getJwksUri() {
        Object obj = this.jwksUri_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.jwksUri_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getJwksUriBytes() {
        Object obj = this.jwksUri_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.jwksUri_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public JwtLocation getJwtLocations(int i9) {
        return this.jwtLocations_.get(i9);
    }

    public int getJwtLocationsCount() {
        return this.jwtLocations_.size();
    }

    public List<JwtLocation> getJwtLocationsList() {
        return this.jwtLocations_;
    }

    public h0 getJwtLocationsOrBuilder(int i9) {
        return this.jwtLocations_.get(i9);
    }

    public List<? extends h0> getJwtLocationsOrBuilderList() {
        return this.jwtLocations_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<AuthProvider> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = !GeneratedMessageV3.isStringEmpty(this.id_) ? GeneratedMessageV3.computeStringSize(1, this.id_) + 0 : 0;
        if (!GeneratedMessageV3.isStringEmpty(this.issuer_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(2, this.issuer_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.jwksUri_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(3, this.jwksUri_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.audiences_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(4, this.audiences_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.authorizationUrl_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(5, this.authorizationUrl_);
        }
        for (int i10 = 0; i10 < this.jwtLocations_.size(); i10++) {
            computeStringSize += CodedOutputStream.G(6, this.jwtLocations_.get(i10));
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
        int hashCode = ((((((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getId().hashCode()) * 37) + 2) * 53) + getIssuer().hashCode()) * 37) + 3) * 53) + getJwksUri().hashCode()) * 37) + 4) * 53) + getAudiences().hashCode()) * 37) + 5) * 53) + getAuthorizationUrl().hashCode();
        if (getJwtLocationsCount() > 0) {
            hashCode = (((hashCode * 37) + 6) * 53) + getJwtLocationsList().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return c.f10962h.d(AuthProvider.class, b.class);
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
        return new AuthProvider();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.id_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.id_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.issuer_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.issuer_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.jwksUri_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 3, this.jwksUri_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.audiences_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 4, this.audiences_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.authorizationUrl_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 5, this.authorizationUrl_);
        }
        for (int i9 = 0; i9 < this.jwtLocations_.size(); i9++) {
            codedOutputStream.L0(6, this.jwtLocations_.get(i9));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ AuthProvider(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(AuthProvider authProvider) {
        return DEFAULT_INSTANCE.toBuilder().g0(authProvider);
    }

    public static AuthProvider parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (AuthProvider) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static AuthProvider parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private AuthProvider(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static AuthProvider parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public AuthProvider getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static AuthProvider parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private AuthProvider() {
        this.memoizedIsInitialized = (byte) -1;
        this.id_ = "";
        this.issuer_ = "";
        this.jwksUri_ = "";
        this.audiences_ = "";
        this.authorizationUrl_ = "";
        this.jwtLocations_ = Collections.emptyList();
    }

    public static AuthProvider parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static AuthProvider parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static AuthProvider parseFrom(InputStream inputStream) throws IOException {
        return (AuthProvider) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static AuthProvider parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (AuthProvider) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static AuthProvider parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (AuthProvider) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static AuthProvider parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
        return (AuthProvider) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private AuthProvider(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                                this.id_ = pVar.K();
                            } else if (L == 18) {
                                this.issuer_ = pVar.K();
                            } else if (L == 26) {
                                this.jwksUri_ = pVar.K();
                            } else if (L == 34) {
                                this.audiences_ = pVar.K();
                            } else if (L == 42) {
                                this.authorizationUrl_ = pVar.K();
                            } else if (L != 50) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                if (!(z11 & true)) {
                                    this.jwtLocations_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.jwtLocations_.add(pVar.B(JwtLocation.parser(), f0Var));
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
                if (z11 & true) {
                    this.jwtLocations_ = Collections.unmodifiableList(this.jwtLocations_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }
}
