package com.google.api;

import com.google.api.AuthProvider;
import com.google.api.AuthenticationRule;
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
public final class Authentication extends GeneratedMessageV3 implements f {
    private static final Authentication DEFAULT_INSTANCE = new Authentication();
    private static final e2<Authentication> PARSER = new a();
    public static final int PROVIDERS_FIELD_NUMBER = 4;
    public static final int RULES_FIELD_NUMBER = 3;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private List<AuthProvider> providers_;
    private List<AuthenticationRule> rules_;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a extends com.google.protobuf.c<Authentication> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public Authentication m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return new Authentication(pVar, f0Var, null);
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements f {

        /* renamed from: e  reason: collision with root package name */
        private int f10657e;

        /* renamed from: f  reason: collision with root package name */
        private List<AuthenticationRule> f10658f;

        /* renamed from: g  reason: collision with root package name */
        private l2<AuthenticationRule, AuthenticationRule.b, g> f10659g;

        /* renamed from: h  reason: collision with root package name */
        private List<AuthProvider> f10660h;

        /* renamed from: i  reason: collision with root package name */
        private l2<AuthProvider, AuthProvider.b, d> f10661i;

        /* synthetic */ b(a aVar) {
            this();
        }

        private void a0() {
            if ((this.f10657e & 2) == 0) {
                this.f10660h = new ArrayList(this.f10660h);
                this.f10657e |= 2;
            }
        }

        private void b0() {
            if ((this.f10657e & 1) == 0) {
                this.f10658f = new ArrayList(this.f10658f);
                this.f10657e |= 1;
            }
        }

        private l2<AuthProvider, AuthProvider.b, d> e0() {
            if (this.f10661i == null) {
                this.f10661i = new l2<>(this.f10660h, (this.f10657e & 2) != 0, H(), O());
                this.f10660h = null;
            }
            return this.f10661i;
        }

        private l2<AuthenticationRule, AuthenticationRule.b, g> g0() {
            if (this.f10659g == null) {
                this.f10659g = new l2<>(this.f10658f, (this.f10657e & 1) != 0, H(), O());
                this.f10658f = null;
            }
            return this.f10659g;
        }

        private void h0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                g0();
                e0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return c.f10956b.d(Authentication.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public Authentication build() {
            Authentication I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public Authentication I() {
            Authentication authentication = new Authentication(this, (a) null);
            int i9 = this.f10657e;
            l2<AuthenticationRule, AuthenticationRule.b, g> l2Var = this.f10659g;
            if (l2Var == null) {
                if ((i9 & 1) != 0) {
                    this.f10658f = Collections.unmodifiableList(this.f10658f);
                    this.f10657e &= -2;
                }
                authentication.rules_ = this.f10658f;
            } else {
                authentication.rules_ = l2Var.e();
            }
            l2<AuthProvider, AuthProvider.b, d> l2Var2 = this.f10661i;
            if (l2Var2 == null) {
                if ((this.f10657e & 2) != 0) {
                    this.f10660h = Collections.unmodifiableList(this.f10660h);
                    this.f10657e &= -3;
                }
                authentication.providers_ = this.f10660h;
            } else {
                authentication.providers_ = l2Var2.e();
            }
            Q();
            return authentication;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: d0 */
        public Authentication getDefaultInstanceForType() {
            return Authentication.getDefaultInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return c.f10955a;
        }

        public b i0(Authentication authentication) {
            if (authentication == Authentication.getDefaultInstance()) {
                return this;
            }
            if (this.f10659g == null) {
                if (!authentication.rules_.isEmpty()) {
                    if (this.f10658f.isEmpty()) {
                        this.f10658f = authentication.rules_;
                        this.f10657e &= -2;
                    } else {
                        b0();
                        this.f10658f.addAll(authentication.rules_);
                    }
                    R();
                }
            } else if (!authentication.rules_.isEmpty()) {
                if (this.f10659g.k()) {
                    this.f10659g.f();
                    this.f10659g = null;
                    this.f10658f = authentication.rules_;
                    this.f10657e &= -2;
                    this.f10659g = GeneratedMessageV3.alwaysUseFieldBuilders ? g0() : null;
                } else {
                    this.f10659g.b(authentication.rules_);
                }
            }
            if (this.f10661i == null) {
                if (!authentication.providers_.isEmpty()) {
                    if (this.f10660h.isEmpty()) {
                        this.f10660h = authentication.providers_;
                        this.f10657e &= -3;
                    } else {
                        a0();
                        this.f10660h.addAll(authentication.providers_);
                    }
                    R();
                }
            } else if (!authentication.providers_.isEmpty()) {
                if (this.f10661i.k()) {
                    this.f10661i.f();
                    this.f10661i = null;
                    this.f10660h = authentication.providers_;
                    this.f10657e &= -3;
                    this.f10661i = GeneratedMessageV3.alwaysUseFieldBuilders ? e0() : null;
                } else {
                    this.f10661i.b(authentication.providers_);
                }
            }
            z(((GeneratedMessageV3) authentication).unknownFields);
            R();
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: j0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.api.Authentication.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.api.Authentication.access$900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.api.Authentication r3 = (com.google.api.Authentication) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                com.google.api.Authentication r4 = (com.google.api.Authentication) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.api.Authentication.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.api.Authentication$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: k0 */
        public b v(com.google.protobuf.l1 l1Var) {
            if (l1Var instanceof Authentication) {
                return i0((Authentication) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: l0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
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
            this.f10658f = Collections.emptyList();
            this.f10660h = Collections.emptyList();
            h0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f10658f = Collections.emptyList();
            this.f10660h = Collections.emptyList();
            h0();
        }
    }

    /* synthetic */ Authentication(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static Authentication getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return c.f10955a;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Authentication parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Authentication) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Authentication parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<Authentication> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Authentication)) {
            return super.equals(obj);
        }
        Authentication authentication = (Authentication) obj;
        return getRulesList().equals(authentication.getRulesList()) && getProvidersList().equals(authentication.getProvidersList()) && this.unknownFields.equals(authentication.unknownFields);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<Authentication> getParserForType() {
        return PARSER;
    }

    public AuthProvider getProviders(int i9) {
        return this.providers_.get(i9);
    }

    public int getProvidersCount() {
        return this.providers_.size();
    }

    public List<AuthProvider> getProvidersList() {
        return this.providers_;
    }

    public d getProvidersOrBuilder(int i9) {
        return this.providers_.get(i9);
    }

    public List<? extends d> getProvidersOrBuilderList() {
        return this.providers_;
    }

    public AuthenticationRule getRules(int i9) {
        return this.rules_.get(i9);
    }

    public int getRulesCount() {
        return this.rules_.size();
    }

    public List<AuthenticationRule> getRulesList() {
        return this.rules_;
    }

    public g getRulesOrBuilder(int i9) {
        return this.rules_.get(i9);
    }

    public List<? extends g> getRulesOrBuilderList() {
        return this.rules_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < this.rules_.size(); i11++) {
            i10 += CodedOutputStream.G(3, this.rules_.get(i11));
        }
        for (int i12 = 0; i12 < this.providers_.size(); i12++) {
            i10 += CodedOutputStream.G(4, this.providers_.get(i12));
        }
        int serializedSize = i10 + this.unknownFields.getSerializedSize();
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
        int hashCode = 779 + getDescriptor().hashCode();
        if (getRulesCount() > 0) {
            hashCode = (((hashCode * 37) + 3) * 53) + getRulesList().hashCode();
        }
        if (getProvidersCount() > 0) {
            hashCode = (((hashCode * 37) + 4) * 53) + getProvidersList().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return c.f10956b.d(Authentication.class, b.class);
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
        return new Authentication();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        for (int i9 = 0; i9 < this.rules_.size(); i9++) {
            codedOutputStream.L0(3, this.rules_.get(i9));
        }
        for (int i10 = 0; i10 < this.providers_.size(); i10++) {
            codedOutputStream.L0(4, this.providers_.get(i10));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ Authentication(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(Authentication authentication) {
        return DEFAULT_INSTANCE.toBuilder().i0(authentication);
    }

    public static Authentication parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (Authentication) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static Authentication parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private Authentication(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Authentication parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public Authentication getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).i0(this);
    }

    public static Authentication parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private Authentication() {
        this.memoizedIsInitialized = (byte) -1;
        this.rules_ = Collections.emptyList();
        this.providers_ = Collections.emptyList();
    }

    public static Authentication parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static Authentication parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static Authentication parseFrom(InputStream inputStream) throws IOException {
        return (Authentication) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static Authentication parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (Authentication) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Authentication(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                            if (L == 26) {
                                if (!(z11 & true)) {
                                    this.rules_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.rules_.add(pVar.B(AuthenticationRule.parser(), f0Var));
                            } else if (L != 34) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                if (!(z11 & true)) {
                                    this.providers_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.providers_.add(pVar.B(AuthProvider.parser(), f0Var));
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
                    this.rules_ = Collections.unmodifiableList(this.rules_);
                }
                if (z11 & true) {
                    this.providers_ = Collections.unmodifiableList(this.providers_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static Authentication parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (Authentication) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static Authentication parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
        return (Authentication) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
