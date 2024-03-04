package com.google.api;

import com.google.api.AuthRequirement;
import com.google.api.OAuthRequirements;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.h3;
import com.google.protobuf.l2;
import com.google.protobuf.q2;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class AuthenticationRule extends GeneratedMessageV3 implements g {
    public static final int ALLOW_WITHOUT_CREDENTIAL_FIELD_NUMBER = 5;
    public static final int OAUTH_FIELD_NUMBER = 2;
    public static final int REQUIREMENTS_FIELD_NUMBER = 7;
    public static final int SELECTOR_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private boolean allowWithoutCredential_;
    private byte memoizedIsInitialized;
    private OAuthRequirements oauth_;
    private List<AuthRequirement> requirements_;
    private volatile Object selector_;
    private static final AuthenticationRule DEFAULT_INSTANCE = new AuthenticationRule();
    private static final e2<AuthenticationRule> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a extends com.google.protobuf.c<AuthenticationRule> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public AuthenticationRule m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return new AuthenticationRule(pVar, f0Var, null);
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements g {

        /* renamed from: e  reason: collision with root package name */
        private int f10662e;

        /* renamed from: f  reason: collision with root package name */
        private Object f10663f;

        /* renamed from: g  reason: collision with root package name */
        private OAuthRequirements f10664g;

        /* renamed from: h  reason: collision with root package name */
        private q2<OAuthRequirements, OAuthRequirements.b, w0> f10665h;

        /* renamed from: i  reason: collision with root package name */
        private boolean f10666i;

        /* renamed from: j  reason: collision with root package name */
        private List<AuthRequirement> f10667j;

        /* renamed from: k  reason: collision with root package name */
        private l2<AuthRequirement, AuthRequirement.b, e> f10668k;

        /* synthetic */ b(a aVar) {
            this();
        }

        private void a0() {
            if ((this.f10662e & 1) == 0) {
                this.f10667j = new ArrayList(this.f10667j);
                this.f10662e |= 1;
            }
        }

        private l2<AuthRequirement, AuthRequirement.b, e> d0() {
            if (this.f10668k == null) {
                this.f10668k = new l2<>(this.f10667j, (this.f10662e & 1) != 0, H(), O());
                this.f10667j = null;
            }
            return this.f10668k;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                d0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return c.f10958d.d(AuthenticationRule.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public AuthenticationRule build() {
            AuthenticationRule I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public AuthenticationRule I() {
            AuthenticationRule authenticationRule = new AuthenticationRule(this, (a) null);
            authenticationRule.selector_ = this.f10663f;
            q2<OAuthRequirements, OAuthRequirements.b, w0> q2Var = this.f10665h;
            if (q2Var == null) {
                authenticationRule.oauth_ = this.f10664g;
            } else {
                authenticationRule.oauth_ = q2Var.b();
            }
            authenticationRule.allowWithoutCredential_ = this.f10666i;
            l2<AuthRequirement, AuthRequirement.b, e> l2Var = this.f10668k;
            if (l2Var == null) {
                if ((this.f10662e & 1) != 0) {
                    this.f10667j = Collections.unmodifiableList(this.f10667j);
                    this.f10662e &= -2;
                }
                authenticationRule.requirements_ = this.f10667j;
            } else {
                authenticationRule.requirements_ = l2Var.e();
            }
            Q();
            return authenticationRule;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: b0 */
        public AuthenticationRule getDefaultInstanceForType() {
            return AuthenticationRule.getDefaultInstance();
        }

        public b g0(AuthenticationRule authenticationRule) {
            if (authenticationRule == AuthenticationRule.getDefaultInstance()) {
                return this;
            }
            if (!authenticationRule.getSelector().isEmpty()) {
                this.f10663f = authenticationRule.selector_;
                R();
            }
            if (authenticationRule.hasOauth()) {
                j0(authenticationRule.getOauth());
            }
            if (authenticationRule.getAllowWithoutCredential()) {
                l0(authenticationRule.getAllowWithoutCredential());
            }
            if (this.f10668k == null) {
                if (!authenticationRule.requirements_.isEmpty()) {
                    if (this.f10667j.isEmpty()) {
                        this.f10667j = authenticationRule.requirements_;
                        this.f10662e &= -2;
                    } else {
                        a0();
                        this.f10667j.addAll(authenticationRule.requirements_);
                    }
                    R();
                }
            } else if (!authenticationRule.requirements_.isEmpty()) {
                if (this.f10668k.k()) {
                    this.f10668k.f();
                    this.f10668k = null;
                    this.f10667j = authenticationRule.requirements_;
                    this.f10662e &= -2;
                    this.f10668k = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                } else {
                    this.f10668k.b(authenticationRule.requirements_);
                }
            }
            z(((GeneratedMessageV3) authenticationRule).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return c.f10957c;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.api.AuthenticationRule.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.api.AuthenticationRule.access$1000()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.api.AuthenticationRule r3 = (com.google.api.AuthenticationRule) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                com.google.api.AuthenticationRule r4 = (com.google.api.AuthenticationRule) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.api.AuthenticationRule.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.api.AuthenticationRule$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public b v(com.google.protobuf.l1 l1Var) {
            if (l1Var instanceof AuthenticationRule) {
                return g0((AuthenticationRule) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b j0(OAuthRequirements oAuthRequirements) {
            q2<OAuthRequirements, OAuthRequirements.b, w0> q2Var = this.f10665h;
            if (q2Var == null) {
                OAuthRequirements oAuthRequirements2 = this.f10664g;
                if (oAuthRequirements2 != null) {
                    this.f10664g = OAuthRequirements.newBuilder(oAuthRequirements2).d0(oAuthRequirements).I();
                } else {
                    this.f10664g = oAuthRequirements;
                }
                R();
            } else {
                q2Var.e(oAuthRequirements);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: k0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        public b l0(boolean z10) {
            this.f10666i = z10;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: m0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: n0 */
        public final b f1(h3 h3Var) {
            return (b) super.f1(h3Var);
        }

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private b() {
            this.f10663f = "";
            this.f10667j = Collections.emptyList();
            e0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f10663f = "";
            this.f10667j = Collections.emptyList();
            e0();
        }
    }

    /* synthetic */ AuthenticationRule(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static AuthenticationRule getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return c.f10957c;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static AuthenticationRule parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (AuthenticationRule) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static AuthenticationRule parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<AuthenticationRule> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AuthenticationRule)) {
            return super.equals(obj);
        }
        AuthenticationRule authenticationRule = (AuthenticationRule) obj;
        if (getSelector().equals(authenticationRule.getSelector()) && hasOauth() == authenticationRule.hasOauth()) {
            return (!hasOauth() || getOauth().equals(authenticationRule.getOauth())) && getAllowWithoutCredential() == authenticationRule.getAllowWithoutCredential() && getRequirementsList().equals(authenticationRule.getRequirementsList()) && this.unknownFields.equals(authenticationRule.unknownFields);
        }
        return false;
    }

    public boolean getAllowWithoutCredential() {
        return this.allowWithoutCredential_;
    }

    public OAuthRequirements getOauth() {
        OAuthRequirements oAuthRequirements = this.oauth_;
        return oAuthRequirements == null ? OAuthRequirements.getDefaultInstance() : oAuthRequirements;
    }

    public w0 getOauthOrBuilder() {
        return getOauth();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<AuthenticationRule> getParserForType() {
        return PARSER;
    }

    public AuthRequirement getRequirements(int i9) {
        return this.requirements_.get(i9);
    }

    public int getRequirementsCount() {
        return this.requirements_.size();
    }

    public List<AuthRequirement> getRequirementsList() {
        return this.requirements_;
    }

    public e getRequirementsOrBuilder(int i9) {
        return this.requirements_.get(i9);
    }

    public List<? extends e> getRequirementsOrBuilderList() {
        return this.requirements_;
    }

    public String getSelector() {
        Object obj = this.selector_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.selector_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getSelectorBytes() {
        Object obj = this.selector_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.selector_ = copyFromUtf8;
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
        int computeStringSize = !GeneratedMessageV3.isStringEmpty(this.selector_) ? GeneratedMessageV3.computeStringSize(1, this.selector_) + 0 : 0;
        if (this.oauth_ != null) {
            computeStringSize += CodedOutputStream.G(2, getOauth());
        }
        boolean z10 = this.allowWithoutCredential_;
        if (z10) {
            computeStringSize += CodedOutputStream.e(5, z10);
        }
        for (int i10 = 0; i10 < this.requirements_.size(); i10++) {
            computeStringSize += CodedOutputStream.G(7, this.requirements_.get(i10));
        }
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasOauth() {
        return this.oauth_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getSelector().hashCode();
        if (hasOauth()) {
            hashCode = (((hashCode * 37) + 2) * 53) + getOauth().hashCode();
        }
        int d10 = (((hashCode * 37) + 5) * 53) + com.google.protobuf.u0.d(getAllowWithoutCredential());
        if (getRequirementsCount() > 0) {
            d10 = (((d10 * 37) + 7) * 53) + getRequirementsList().hashCode();
        }
        int hashCode2 = (d10 * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return c.f10958d.d(AuthenticationRule.class, b.class);
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
        return new AuthenticationRule();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.selector_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.selector_);
        }
        if (this.oauth_ != null) {
            codedOutputStream.L0(2, getOauth());
        }
        boolean z10 = this.allowWithoutCredential_;
        if (z10) {
            codedOutputStream.n0(5, z10);
        }
        for (int i9 = 0; i9 < this.requirements_.size(); i9++) {
            codedOutputStream.L0(7, this.requirements_.get(i9));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ AuthenticationRule(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(AuthenticationRule authenticationRule) {
        return DEFAULT_INSTANCE.toBuilder().g0(authenticationRule);
    }

    public static AuthenticationRule parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (AuthenticationRule) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static AuthenticationRule parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private AuthenticationRule(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static AuthenticationRule parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public AuthenticationRule getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static AuthenticationRule parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private AuthenticationRule() {
        this.memoizedIsInitialized = (byte) -1;
        this.selector_ = "";
        this.requirements_ = Collections.emptyList();
    }

    public static AuthenticationRule parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static AuthenticationRule parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static AuthenticationRule parseFrom(InputStream inputStream) throws IOException {
        return (AuthenticationRule) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static AuthenticationRule parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (AuthenticationRule) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private AuthenticationRule(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                            this.selector_ = pVar.K();
                        } else if (L == 18) {
                            OAuthRequirements oAuthRequirements = this.oauth_;
                            OAuthRequirements.b builder = oAuthRequirements != null ? oAuthRequirements.toBuilder() : null;
                            OAuthRequirements oAuthRequirements2 = (OAuthRequirements) pVar.B(OAuthRequirements.parser(), f0Var);
                            this.oauth_ = oAuthRequirements2;
                            if (builder != null) {
                                builder.d0(oAuthRequirements2);
                                this.oauth_ = builder.I();
                            }
                        } else if (L == 40) {
                            this.allowWithoutCredential_ = pVar.r();
                        } else if (L != 58) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            if (!(z11 & true)) {
                                this.requirements_ = new ArrayList();
                                z11 |= true;
                            }
                            this.requirements_.add(pVar.B(AuthRequirement.parser(), f0Var));
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
                    this.requirements_ = Collections.unmodifiableList(this.requirements_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static AuthenticationRule parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (AuthenticationRule) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static AuthenticationRule parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
        return (AuthenticationRule) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
