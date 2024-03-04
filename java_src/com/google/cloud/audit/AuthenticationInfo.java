package com.google.cloud.audit;

import com.google.cloud.audit.ServiceAccountDelegationInfo;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Struct;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.l2;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.u2;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class AuthenticationInfo extends GeneratedMessageV3 implements com.google.cloud.audit.b {
    public static final int AUTHORITY_SELECTOR_FIELD_NUMBER = 2;
    private static final AuthenticationInfo DEFAULT_INSTANCE = new AuthenticationInfo();
    private static final e2<AuthenticationInfo> PARSER = new a();
    public static final int PRINCIPAL_EMAIL_FIELD_NUMBER = 1;
    public static final int PRINCIPAL_SUBJECT_FIELD_NUMBER = 8;
    public static final int SERVICE_ACCOUNT_DELEGATION_INFO_FIELD_NUMBER = 6;
    public static final int SERVICE_ACCOUNT_KEY_NAME_FIELD_NUMBER = 5;
    public static final int THIRD_PARTY_PRINCIPAL_FIELD_NUMBER = 4;
    private static final long serialVersionUID = 0;
    private volatile Object authoritySelector_;
    private byte memoizedIsInitialized;
    private volatile Object principalEmail_;
    private volatile Object principalSubject_;
    private List<ServiceAccountDelegationInfo> serviceAccountDelegationInfo_;
    private volatile Object serviceAccountKeyName_;
    private Struct thirdPartyPrincipal_;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a extends com.google.protobuf.c<AuthenticationInfo> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public AuthenticationInfo m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new AuthenticationInfo(pVar, f0Var, null);
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements com.google.cloud.audit.b {

        /* renamed from: e  reason: collision with root package name */
        private int f11745e;

        /* renamed from: f  reason: collision with root package name */
        private Object f11746f;

        /* renamed from: g  reason: collision with root package name */
        private Object f11747g;

        /* renamed from: h  reason: collision with root package name */
        private Struct f11748h;

        /* renamed from: i  reason: collision with root package name */
        private q2<Struct, Struct.b, u2> f11749i;

        /* renamed from: j  reason: collision with root package name */
        private Object f11750j;

        /* renamed from: k  reason: collision with root package name */
        private List<ServiceAccountDelegationInfo> f11751k;

        /* renamed from: l  reason: collision with root package name */
        private l2<ServiceAccountDelegationInfo, ServiceAccountDelegationInfo.c, f> f11752l;

        /* renamed from: m  reason: collision with root package name */
        private Object f11753m;

        /* synthetic */ b(a aVar) {
            this();
        }

        private void a0() {
            if ((this.f11745e & 1) == 0) {
                this.f11751k = new ArrayList(this.f11751k);
                this.f11745e |= 1;
            }
        }

        private l2<ServiceAccountDelegationInfo, ServiceAccountDelegationInfo.c, f> d0() {
            if (this.f11752l == null) {
                this.f11752l = new l2<>(this.f11751k, (this.f11745e & 1) != 0, H(), O());
                this.f11751k = null;
            }
            return this.f11752l;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                d0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return com.google.cloud.audit.a.f11783d.d(AuthenticationInfo.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public AuthenticationInfo build() {
            AuthenticationInfo I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public AuthenticationInfo I() {
            AuthenticationInfo authenticationInfo = new AuthenticationInfo(this, (a) null);
            authenticationInfo.principalEmail_ = this.f11746f;
            authenticationInfo.authoritySelector_ = this.f11747g;
            q2<Struct, Struct.b, u2> q2Var = this.f11749i;
            if (q2Var == null) {
                authenticationInfo.thirdPartyPrincipal_ = this.f11748h;
            } else {
                authenticationInfo.thirdPartyPrincipal_ = q2Var.b();
            }
            authenticationInfo.serviceAccountKeyName_ = this.f11750j;
            l2<ServiceAccountDelegationInfo, ServiceAccountDelegationInfo.c, f> l2Var = this.f11752l;
            if (l2Var == null) {
                if ((this.f11745e & 1) != 0) {
                    this.f11751k = Collections.unmodifiableList(this.f11751k);
                    this.f11745e &= -2;
                }
                authenticationInfo.serviceAccountDelegationInfo_ = this.f11751k;
            } else {
                authenticationInfo.serviceAccountDelegationInfo_ = l2Var.e();
            }
            authenticationInfo.principalSubject_ = this.f11753m;
            Q();
            return authenticationInfo;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: b0 */
        public AuthenticationInfo getDefaultInstanceForType() {
            return AuthenticationInfo.getDefaultInstance();
        }

        public b g0(AuthenticationInfo authenticationInfo) {
            if (authenticationInfo == AuthenticationInfo.getDefaultInstance()) {
                return this;
            }
            if (!authenticationInfo.getPrincipalEmail().isEmpty()) {
                this.f11746f = authenticationInfo.principalEmail_;
                R();
            }
            if (!authenticationInfo.getAuthoritySelector().isEmpty()) {
                this.f11747g = authenticationInfo.authoritySelector_;
                R();
            }
            if (authenticationInfo.hasThirdPartyPrincipal()) {
                j0(authenticationInfo.getThirdPartyPrincipal());
            }
            if (!authenticationInfo.getServiceAccountKeyName().isEmpty()) {
                this.f11750j = authenticationInfo.serviceAccountKeyName_;
                R();
            }
            if (this.f11752l == null) {
                if (!authenticationInfo.serviceAccountDelegationInfo_.isEmpty()) {
                    if (this.f11751k.isEmpty()) {
                        this.f11751k = authenticationInfo.serviceAccountDelegationInfo_;
                        this.f11745e &= -2;
                    } else {
                        a0();
                        this.f11751k.addAll(authenticationInfo.serviceAccountDelegationInfo_);
                    }
                    R();
                }
            } else if (!authenticationInfo.serviceAccountDelegationInfo_.isEmpty()) {
                if (this.f11752l.k()) {
                    this.f11752l.f();
                    this.f11752l = null;
                    this.f11751k = authenticationInfo.serviceAccountDelegationInfo_;
                    this.f11745e &= -2;
                    this.f11752l = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                } else {
                    this.f11752l.b(authenticationInfo.serviceAccountDelegationInfo_);
                }
            }
            if (!authenticationInfo.getPrincipalSubject().isEmpty()) {
                this.f11753m = authenticationInfo.principalSubject_;
                R();
            }
            z(((GeneratedMessageV3) authenticationInfo).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return com.google.cloud.audit.a.f11782c;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.cloud.audit.AuthenticationInfo.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.cloud.audit.AuthenticationInfo.access$1200()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.cloud.audit.AuthenticationInfo r3 = (com.google.cloud.audit.AuthenticationInfo) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                com.google.cloud.audit.AuthenticationInfo r4 = (com.google.cloud.audit.AuthenticationInfo) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.cloud.audit.AuthenticationInfo.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.cloud.audit.AuthenticationInfo$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof AuthenticationInfo) {
                return g0((AuthenticationInfo) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b j0(Struct struct) {
            q2<Struct, Struct.b, u2> q2Var = this.f11749i;
            if (q2Var == null) {
                Struct struct2 = this.f11748h;
                if (struct2 != null) {
                    this.f11748h = Struct.newBuilder(struct2).i0(struct).I();
                } else {
                    this.f11748h = struct;
                }
                R();
            } else {
                q2Var.e(struct);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: k0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
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
            this.f11746f = "";
            this.f11747g = "";
            this.f11750j = "";
            this.f11751k = Collections.emptyList();
            this.f11753m = "";
            e0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f11746f = "";
            this.f11747g = "";
            this.f11750j = "";
            this.f11751k = Collections.emptyList();
            this.f11753m = "";
            e0();
        }
    }

    /* synthetic */ AuthenticationInfo(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static AuthenticationInfo getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return com.google.cloud.audit.a.f11782c;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static AuthenticationInfo parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (AuthenticationInfo) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static AuthenticationInfo parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<AuthenticationInfo> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AuthenticationInfo)) {
            return super.equals(obj);
        }
        AuthenticationInfo authenticationInfo = (AuthenticationInfo) obj;
        if (getPrincipalEmail().equals(authenticationInfo.getPrincipalEmail()) && getAuthoritySelector().equals(authenticationInfo.getAuthoritySelector()) && hasThirdPartyPrincipal() == authenticationInfo.hasThirdPartyPrincipal()) {
            return (!hasThirdPartyPrincipal() || getThirdPartyPrincipal().equals(authenticationInfo.getThirdPartyPrincipal())) && getServiceAccountKeyName().equals(authenticationInfo.getServiceAccountKeyName()) && getServiceAccountDelegationInfoList().equals(authenticationInfo.getServiceAccountDelegationInfoList()) && getPrincipalSubject().equals(authenticationInfo.getPrincipalSubject()) && this.unknownFields.equals(authenticationInfo.unknownFields);
        }
        return false;
    }

    public String getAuthoritySelector() {
        Object obj = this.authoritySelector_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.authoritySelector_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getAuthoritySelectorBytes() {
        Object obj = this.authoritySelector_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.authoritySelector_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<AuthenticationInfo> getParserForType() {
        return PARSER;
    }

    public String getPrincipalEmail() {
        Object obj = this.principalEmail_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.principalEmail_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getPrincipalEmailBytes() {
        Object obj = this.principalEmail_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.principalEmail_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public String getPrincipalSubject() {
        Object obj = this.principalSubject_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.principalSubject_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getPrincipalSubjectBytes() {
        Object obj = this.principalSubject_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.principalSubject_ = copyFromUtf8;
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
        int computeStringSize = !GeneratedMessageV3.isStringEmpty(this.principalEmail_) ? GeneratedMessageV3.computeStringSize(1, this.principalEmail_) + 0 : 0;
        if (!GeneratedMessageV3.isStringEmpty(this.authoritySelector_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(2, this.authoritySelector_);
        }
        if (this.thirdPartyPrincipal_ != null) {
            computeStringSize += CodedOutputStream.G(4, getThirdPartyPrincipal());
        }
        if (!GeneratedMessageV3.isStringEmpty(this.serviceAccountKeyName_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(5, this.serviceAccountKeyName_);
        }
        for (int i10 = 0; i10 < this.serviceAccountDelegationInfo_.size(); i10++) {
            computeStringSize += CodedOutputStream.G(6, this.serviceAccountDelegationInfo_.get(i10));
        }
        if (!GeneratedMessageV3.isStringEmpty(this.principalSubject_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(8, this.principalSubject_);
        }
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public ServiceAccountDelegationInfo getServiceAccountDelegationInfo(int i9) {
        return this.serviceAccountDelegationInfo_.get(i9);
    }

    public int getServiceAccountDelegationInfoCount() {
        return this.serviceAccountDelegationInfo_.size();
    }

    public List<ServiceAccountDelegationInfo> getServiceAccountDelegationInfoList() {
        return this.serviceAccountDelegationInfo_;
    }

    public f getServiceAccountDelegationInfoOrBuilder(int i9) {
        return this.serviceAccountDelegationInfo_.get(i9);
    }

    public List<? extends f> getServiceAccountDelegationInfoOrBuilderList() {
        return this.serviceAccountDelegationInfo_;
    }

    public String getServiceAccountKeyName() {
        Object obj = this.serviceAccountKeyName_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.serviceAccountKeyName_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getServiceAccountKeyNameBytes() {
        Object obj = this.serviceAccountKeyName_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.serviceAccountKeyName_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public Struct getThirdPartyPrincipal() {
        Struct struct = this.thirdPartyPrincipal_;
        return struct == null ? Struct.getDefaultInstance() : struct;
    }

    public u2 getThirdPartyPrincipalOrBuilder() {
        return getThirdPartyPrincipal();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasThirdPartyPrincipal() {
        return this.thirdPartyPrincipal_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = ((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getPrincipalEmail().hashCode()) * 37) + 2) * 53) + getAuthoritySelector().hashCode();
        if (hasThirdPartyPrincipal()) {
            hashCode = (((hashCode * 37) + 4) * 53) + getThirdPartyPrincipal().hashCode();
        }
        int hashCode2 = (((hashCode * 37) + 5) * 53) + getServiceAccountKeyName().hashCode();
        if (getServiceAccountDelegationInfoCount() > 0) {
            hashCode2 = (((hashCode2 * 37) + 6) * 53) + getServiceAccountDelegationInfoList().hashCode();
        }
        int hashCode3 = (((((hashCode2 * 37) + 8) * 53) + getPrincipalSubject().hashCode()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode3;
        return hashCode3;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return com.google.cloud.audit.a.f11783d.d(AuthenticationInfo.class, b.class);
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
        return new AuthenticationInfo();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.principalEmail_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.principalEmail_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.authoritySelector_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.authoritySelector_);
        }
        if (this.thirdPartyPrincipal_ != null) {
            codedOutputStream.L0(4, getThirdPartyPrincipal());
        }
        if (!GeneratedMessageV3.isStringEmpty(this.serviceAccountKeyName_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 5, this.serviceAccountKeyName_);
        }
        for (int i9 = 0; i9 < this.serviceAccountDelegationInfo_.size(); i9++) {
            codedOutputStream.L0(6, this.serviceAccountDelegationInfo_.get(i9));
        }
        if (!GeneratedMessageV3.isStringEmpty(this.principalSubject_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 8, this.principalSubject_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ AuthenticationInfo(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(AuthenticationInfo authenticationInfo) {
        return DEFAULT_INSTANCE.toBuilder().g0(authenticationInfo);
    }

    public static AuthenticationInfo parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (AuthenticationInfo) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static AuthenticationInfo parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private AuthenticationInfo(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static AuthenticationInfo parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public AuthenticationInfo getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static AuthenticationInfo parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private AuthenticationInfo() {
        this.memoizedIsInitialized = (byte) -1;
        this.principalEmail_ = "";
        this.authoritySelector_ = "";
        this.serviceAccountKeyName_ = "";
        this.serviceAccountDelegationInfo_ = Collections.emptyList();
        this.principalSubject_ = "";
    }

    public static AuthenticationInfo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static AuthenticationInfo parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static AuthenticationInfo parseFrom(InputStream inputStream) throws IOException {
        return (AuthenticationInfo) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static AuthenticationInfo parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (AuthenticationInfo) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static AuthenticationInfo parseFrom(p pVar) throws IOException {
        return (AuthenticationInfo) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static AuthenticationInfo parseFrom(p pVar, f0 f0Var) throws IOException {
        return (AuthenticationInfo) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private AuthenticationInfo(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            this.principalEmail_ = pVar.K();
                        } else if (L == 18) {
                            this.authoritySelector_ = pVar.K();
                        } else if (L == 34) {
                            Struct struct = this.thirdPartyPrincipal_;
                            Struct.b builder = struct != null ? struct.toBuilder() : null;
                            Struct struct2 = (Struct) pVar.B(Struct.parser(), f0Var);
                            this.thirdPartyPrincipal_ = struct2;
                            if (builder != null) {
                                builder.i0(struct2);
                                this.thirdPartyPrincipal_ = builder.I();
                            }
                        } else if (L == 42) {
                            this.serviceAccountKeyName_ = pVar.K();
                        } else if (L == 50) {
                            if (!(z11 & true)) {
                                this.serviceAccountDelegationInfo_ = new ArrayList();
                                z11 |= true;
                            }
                            this.serviceAccountDelegationInfo_.add(pVar.B(ServiceAccountDelegationInfo.parser(), f0Var));
                        } else if (L != 66) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            this.principalSubject_ = pVar.K();
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
                    this.serviceAccountDelegationInfo_ = Collections.unmodifiableList(this.serviceAccountDelegationInfo_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }
}
