package io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth;

import com.google.protobuf.BoolValue;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.h2;
import com.google.protobuf.h3;
import com.google.protobuf.i2;
import com.google.protobuf.l1;
import com.google.protobuf.l2;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.u0;
import com.google.protobuf.y0;
import com.google.protobuf.z0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.DataSource;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.n;
import io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.StringMatcher;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class CertificateValidationContext extends GeneratedMessageV3 implements io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.a {
    public static final int ALLOW_EXPIRED_CERTIFICATE_FIELD_NUMBER = 8;
    public static final int CRL_FIELD_NUMBER = 7;
    public static final int MATCH_SUBJECT_ALT_NAMES_FIELD_NUMBER = 9;
    public static final int REQUIRE_OCSP_STAPLE_FIELD_NUMBER = 5;
    public static final int REQUIRE_SIGNED_CERTIFICATE_TIMESTAMP_FIELD_NUMBER = 6;
    public static final int TRUSTED_CA_FIELD_NUMBER = 1;
    public static final int TRUST_CHAIN_VERIFICATION_FIELD_NUMBER = 10;
    public static final int VERIFY_CERTIFICATE_HASH_FIELD_NUMBER = 2;
    public static final int VERIFY_CERTIFICATE_SPKI_FIELD_NUMBER = 3;
    public static final int VERIFY_SUBJECT_ALT_NAME_FIELD_NUMBER = 4;
    private static final long serialVersionUID = 0;
    private boolean allowExpiredCertificate_;
    private DataSource crl_;
    private List<StringMatcher> matchSubjectAltNames_;
    private byte memoizedIsInitialized;
    private BoolValue requireOcspStaple_;
    private BoolValue requireSignedCertificateTimestamp_;
    private int trustChainVerification_;
    private DataSource trustedCa_;
    private z0 verifyCertificateHash_;
    private z0 verifyCertificateSpki_;
    private z0 verifySubjectAltName_;
    private static final CertificateValidationContext DEFAULT_INSTANCE = new CertificateValidationContext();
    private static final e2<CertificateValidationContext> PARSER = new a();

    /* loaded from: classes5.dex */
    public enum TrustChainVerification implements h2 {
        VERIFY_TRUST_CHAIN(0),
        ACCEPT_UNTRUSTED(1),
        UNRECOGNIZED(-1);
        
        public static final int ACCEPT_UNTRUSTED_VALUE = 1;
        public static final int VERIFY_TRUST_CHAIN_VALUE = 0;
        private final int value;
        private static final u0.d<TrustChainVerification> internalValueMap = new a();
        private static final TrustChainVerification[] VALUES = values();

        /* loaded from: classes5.dex */
        class a implements u0.d<TrustChainVerification> {
            a() {
            }

            @Override // com.google.protobuf.u0.d
            /* renamed from: b */
            public TrustChainVerification a(int i9) {
                return TrustChainVerification.forNumber(i9);
            }
        }

        TrustChainVerification(int i9) {
            this.value = i9;
        }

        public static TrustChainVerification forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    return null;
                }
                return ACCEPT_UNTRUSTED;
            }
            return VERIFY_TRUST_CHAIN;
        }

        public static final Descriptors.d getDescriptor() {
            return CertificateValidationContext.getDescriptor().k().get(0);
        }

        public static u0.d<TrustChainVerification> internalGetValueMap() {
            return internalValueMap;
        }

        public final Descriptors.d getDescriptorForType() {
            return getDescriptor();
        }

        @Override // com.google.protobuf.u0.c
        public final int getNumber() {
            if (this != UNRECOGNIZED) {
                return this.value;
            }
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }

        public final Descriptors.e getValueDescriptor() {
            if (this != UNRECOGNIZED) {
                return getDescriptor().k().get(ordinal());
            }
            throw new IllegalStateException("Can't get the descriptor of an unrecognized enum value.");
        }

        @Deprecated
        public static TrustChainVerification valueOf(int i9) {
            return forNumber(i9);
        }

        public static TrustChainVerification valueOf(Descriptors.e eVar) {
            if (eVar.h() == getDescriptor()) {
                if (eVar.g() == -1) {
                    return UNRECOGNIZED;
                }
                return VALUES[eVar.g()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends com.google.protobuf.c<CertificateValidationContext> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public CertificateValidationContext m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new CertificateValidationContext(pVar, f0Var, null);
        }
    }

    /* loaded from: classes5.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.a {

        /* renamed from: e  reason: collision with root package name */
        private int f46145e;

        /* renamed from: f  reason: collision with root package name */
        private DataSource f46146f;

        /* renamed from: g  reason: collision with root package name */
        private q2<DataSource, DataSource.c, n> f46147g;

        /* renamed from: h  reason: collision with root package name */
        private z0 f46148h;

        /* renamed from: i  reason: collision with root package name */
        private z0 f46149i;

        /* renamed from: j  reason: collision with root package name */
        private z0 f46150j;

        /* renamed from: k  reason: collision with root package name */
        private List<StringMatcher> f46151k;

        /* renamed from: l  reason: collision with root package name */
        private l2<StringMatcher, StringMatcher.c, io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.k> f46152l;

        /* renamed from: m  reason: collision with root package name */
        private BoolValue f46153m;

        /* renamed from: n  reason: collision with root package name */
        private q2<BoolValue, BoolValue.b, com.google.protobuf.l> f46154n;

        /* renamed from: o  reason: collision with root package name */
        private BoolValue f46155o;

        /* renamed from: p  reason: collision with root package name */
        private q2<BoolValue, BoolValue.b, com.google.protobuf.l> f46156p;

        /* renamed from: q  reason: collision with root package name */
        private DataSource f46157q;

        /* renamed from: r  reason: collision with root package name */
        private q2<DataSource, DataSource.c, n> f46158r;

        /* renamed from: s  reason: collision with root package name */
        private boolean f46159s;

        /* renamed from: t  reason: collision with root package name */
        private int f46160t;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f46145e & 8) == 0) {
                this.f46151k = new ArrayList(this.f46151k);
                this.f46145e |= 8;
            }
        }

        private void b0() {
            if ((this.f46145e & 2) == 0) {
                this.f46149i = new y0(this.f46149i);
                this.f46145e |= 2;
            }
        }

        private void d0() {
            if ((this.f46145e & 1) == 0) {
                this.f46148h = new y0(this.f46148h);
                this.f46145e |= 1;
            }
        }

        private void e0() {
            if ((this.f46145e & 4) == 0) {
                this.f46150j = new y0(this.f46150j);
                this.f46145e |= 4;
            }
        }

        private l2<StringMatcher, StringMatcher.c, io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.k> h0() {
            if (this.f46152l == null) {
                this.f46152l = new l2<>(this.f46151k, (this.f46145e & 8) != 0, H(), O());
                this.f46151k = null;
            }
            return this.f46152l;
        }

        private void i0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                h0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.b.f46247j.d(CertificateValidationContext.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public CertificateValidationContext build() {
            CertificateValidationContext I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public CertificateValidationContext I() {
            CertificateValidationContext certificateValidationContext = new CertificateValidationContext(this, (a) null);
            q2<DataSource, DataSource.c, n> q2Var = this.f46147g;
            if (q2Var == null) {
                certificateValidationContext.trustedCa_ = this.f46146f;
            } else {
                certificateValidationContext.trustedCa_ = q2Var.b();
            }
            if ((this.f46145e & 1) != 0) {
                this.f46148h = this.f46148h.V0();
                this.f46145e &= -2;
            }
            certificateValidationContext.verifyCertificateSpki_ = this.f46148h;
            if ((this.f46145e & 2) != 0) {
                this.f46149i = this.f46149i.V0();
                this.f46145e &= -3;
            }
            certificateValidationContext.verifyCertificateHash_ = this.f46149i;
            if ((this.f46145e & 4) != 0) {
                this.f46150j = this.f46150j.V0();
                this.f46145e &= -5;
            }
            certificateValidationContext.verifySubjectAltName_ = this.f46150j;
            l2<StringMatcher, StringMatcher.c, io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.k> l2Var = this.f46152l;
            if (l2Var == null) {
                if ((this.f46145e & 8) != 0) {
                    this.f46151k = Collections.unmodifiableList(this.f46151k);
                    this.f46145e &= -9;
                }
                certificateValidationContext.matchSubjectAltNames_ = this.f46151k;
            } else {
                certificateValidationContext.matchSubjectAltNames_ = l2Var.e();
            }
            q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var2 = this.f46154n;
            if (q2Var2 == null) {
                certificateValidationContext.requireOcspStaple_ = this.f46153m;
            } else {
                certificateValidationContext.requireOcspStaple_ = q2Var2.b();
            }
            q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var3 = this.f46156p;
            if (q2Var3 == null) {
                certificateValidationContext.requireSignedCertificateTimestamp_ = this.f46155o;
            } else {
                certificateValidationContext.requireSignedCertificateTimestamp_ = q2Var3.b();
            }
            q2<DataSource, DataSource.c, n> q2Var4 = this.f46158r;
            if (q2Var4 == null) {
                certificateValidationContext.crl_ = this.f46157q;
            } else {
                certificateValidationContext.crl_ = q2Var4.b();
            }
            certificateValidationContext.allowExpiredCertificate_ = this.f46159s;
            certificateValidationContext.trustChainVerification_ = this.f46160t;
            Q();
            return certificateValidationContext;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: g0 */
        public CertificateValidationContext getDefaultInstanceForType() {
            return CertificateValidationContext.getDefaultInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.b.f46246i;
        }

        public b j0(DataSource dataSource) {
            q2<DataSource, DataSource.c, n> q2Var = this.f46158r;
            if (q2Var == null) {
                DataSource dataSource2 = this.f46157q;
                if (dataSource2 != null) {
                    this.f46157q = DataSource.newBuilder(dataSource2).g0(dataSource).I();
                } else {
                    this.f46157q = dataSource;
                }
                R();
            } else {
                q2Var.e(dataSource);
            }
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: k0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.CertificateValidationContext.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.CertificateValidationContext.access$1600()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.CertificateValidationContext r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.CertificateValidationContext) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.m0(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.CertificateValidationContext r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.CertificateValidationContext) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.m0(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.CertificateValidationContext.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.CertificateValidationContext$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: l0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof CertificateValidationContext) {
                return m0((CertificateValidationContext) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b m0(CertificateValidationContext certificateValidationContext) {
            if (certificateValidationContext == CertificateValidationContext.getDefaultInstance()) {
                return this;
            }
            if (certificateValidationContext.hasTrustedCa()) {
                q0(certificateValidationContext.getTrustedCa());
            }
            if (!certificateValidationContext.verifyCertificateSpki_.isEmpty()) {
                if (this.f46148h.isEmpty()) {
                    this.f46148h = certificateValidationContext.verifyCertificateSpki_;
                    this.f46145e &= -2;
                } else {
                    d0();
                    this.f46148h.addAll(certificateValidationContext.verifyCertificateSpki_);
                }
                R();
            }
            if (!certificateValidationContext.verifyCertificateHash_.isEmpty()) {
                if (this.f46149i.isEmpty()) {
                    this.f46149i = certificateValidationContext.verifyCertificateHash_;
                    this.f46145e &= -3;
                } else {
                    b0();
                    this.f46149i.addAll(certificateValidationContext.verifyCertificateHash_);
                }
                R();
            }
            if (!certificateValidationContext.verifySubjectAltName_.isEmpty()) {
                if (this.f46150j.isEmpty()) {
                    this.f46150j = certificateValidationContext.verifySubjectAltName_;
                    this.f46145e &= -5;
                } else {
                    e0();
                    this.f46150j.addAll(certificateValidationContext.verifySubjectAltName_);
                }
                R();
            }
            if (this.f46152l == null) {
                if (!certificateValidationContext.matchSubjectAltNames_.isEmpty()) {
                    if (this.f46151k.isEmpty()) {
                        this.f46151k = certificateValidationContext.matchSubjectAltNames_;
                        this.f46145e &= -9;
                    } else {
                        a0();
                        this.f46151k.addAll(certificateValidationContext.matchSubjectAltNames_);
                    }
                    R();
                }
            } else if (!certificateValidationContext.matchSubjectAltNames_.isEmpty()) {
                if (this.f46152l.k()) {
                    this.f46152l.f();
                    this.f46152l = null;
                    this.f46151k = certificateValidationContext.matchSubjectAltNames_;
                    this.f46145e &= -9;
                    this.f46152l = GeneratedMessageV3.alwaysUseFieldBuilders ? h0() : null;
                } else {
                    this.f46152l.b(certificateValidationContext.matchSubjectAltNames_);
                }
            }
            if (certificateValidationContext.hasRequireOcspStaple()) {
                n0(certificateValidationContext.getRequireOcspStaple());
            }
            if (certificateValidationContext.hasRequireSignedCertificateTimestamp()) {
                o0(certificateValidationContext.getRequireSignedCertificateTimestamp());
            }
            if (certificateValidationContext.hasCrl()) {
                j0(certificateValidationContext.getCrl());
            }
            if (certificateValidationContext.getAllowExpiredCertificate()) {
                s0(certificateValidationContext.getAllowExpiredCertificate());
            }
            if (certificateValidationContext.trustChainVerification_ != 0) {
                u0(certificateValidationContext.getTrustChainVerificationValue());
            }
            z(((GeneratedMessageV3) certificateValidationContext).unknownFields);
            R();
            return this;
        }

        public b n0(BoolValue boolValue) {
            q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var = this.f46154n;
            if (q2Var == null) {
                BoolValue boolValue2 = this.f46153m;
                if (boolValue2 != null) {
                    this.f46153m = BoolValue.newBuilder(boolValue2).d0(boolValue).I();
                } else {
                    this.f46153m = boolValue;
                }
                R();
            } else {
                q2Var.e(boolValue);
            }
            return this;
        }

        public b o0(BoolValue boolValue) {
            q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var = this.f46156p;
            if (q2Var == null) {
                BoolValue boolValue2 = this.f46155o;
                if (boolValue2 != null) {
                    this.f46155o = BoolValue.newBuilder(boolValue2).d0(boolValue).I();
                } else {
                    this.f46155o = boolValue;
                }
                R();
            } else {
                q2Var.e(boolValue);
            }
            return this;
        }

        public b q0(DataSource dataSource) {
            q2<DataSource, DataSource.c, n> q2Var = this.f46147g;
            if (q2Var == null) {
                DataSource dataSource2 = this.f46146f;
                if (dataSource2 != null) {
                    this.f46146f = DataSource.newBuilder(dataSource2).g0(dataSource).I();
                } else {
                    this.f46146f = dataSource;
                }
                R();
            } else {
                q2Var.e(dataSource);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: r0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        public b s0(boolean z10) {
            this.f46159s = z10;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: t0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
        }

        public b u0(int i9) {
            this.f46160t = i9;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: v0 */
        public final b f1(h3 h3Var) {
            return (b) super.f1(h3Var);
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            z0 z0Var = y0.f15344d;
            this.f46148h = z0Var;
            this.f46149i = z0Var;
            this.f46150j = z0Var;
            this.f46151k = Collections.emptyList();
            this.f46160t = 0;
            i0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            z0 z0Var = y0.f15344d;
            this.f46148h = z0Var;
            this.f46149i = z0Var;
            this.f46150j = z0Var;
            this.f46151k = Collections.emptyList();
            this.f46160t = 0;
            i0();
        }
    }

    /* synthetic */ CertificateValidationContext(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static CertificateValidationContext getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.b.f46246i;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static CertificateValidationContext parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (CertificateValidationContext) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static CertificateValidationContext parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<CertificateValidationContext> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CertificateValidationContext)) {
            return super.equals(obj);
        }
        CertificateValidationContext certificateValidationContext = (CertificateValidationContext) obj;
        if (hasTrustedCa() != certificateValidationContext.hasTrustedCa()) {
            return false;
        }
        if ((!hasTrustedCa() || getTrustedCa().equals(certificateValidationContext.getTrustedCa())) && m1587getVerifyCertificateSpkiList().equals(certificateValidationContext.m1587getVerifyCertificateSpkiList()) && m1586getVerifyCertificateHashList().equals(certificateValidationContext.m1586getVerifyCertificateHashList()) && m1588getVerifySubjectAltNameList().equals(certificateValidationContext.m1588getVerifySubjectAltNameList()) && getMatchSubjectAltNamesList().equals(certificateValidationContext.getMatchSubjectAltNamesList()) && hasRequireOcspStaple() == certificateValidationContext.hasRequireOcspStaple()) {
            if ((!hasRequireOcspStaple() || getRequireOcspStaple().equals(certificateValidationContext.getRequireOcspStaple())) && hasRequireSignedCertificateTimestamp() == certificateValidationContext.hasRequireSignedCertificateTimestamp()) {
                if ((!hasRequireSignedCertificateTimestamp() || getRequireSignedCertificateTimestamp().equals(certificateValidationContext.getRequireSignedCertificateTimestamp())) && hasCrl() == certificateValidationContext.hasCrl()) {
                    return (!hasCrl() || getCrl().equals(certificateValidationContext.getCrl())) && getAllowExpiredCertificate() == certificateValidationContext.getAllowExpiredCertificate() && this.trustChainVerification_ == certificateValidationContext.trustChainVerification_ && this.unknownFields.equals(certificateValidationContext.unknownFields);
                }
                return false;
            }
            return false;
        }
        return false;
    }

    public boolean getAllowExpiredCertificate() {
        return this.allowExpiredCertificate_;
    }

    public DataSource getCrl() {
        DataSource dataSource = this.crl_;
        return dataSource == null ? DataSource.getDefaultInstance() : dataSource;
    }

    public n getCrlOrBuilder() {
        return getCrl();
    }

    public StringMatcher getMatchSubjectAltNames(int i9) {
        return this.matchSubjectAltNames_.get(i9);
    }

    public int getMatchSubjectAltNamesCount() {
        return this.matchSubjectAltNames_.size();
    }

    public List<StringMatcher> getMatchSubjectAltNamesList() {
        return this.matchSubjectAltNames_;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.k getMatchSubjectAltNamesOrBuilder(int i9) {
        return this.matchSubjectAltNames_.get(i9);
    }

    public List<? extends io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.k> getMatchSubjectAltNamesOrBuilderList() {
        return this.matchSubjectAltNames_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<CertificateValidationContext> getParserForType() {
        return PARSER;
    }

    public BoolValue getRequireOcspStaple() {
        BoolValue boolValue = this.requireOcspStaple_;
        return boolValue == null ? BoolValue.getDefaultInstance() : boolValue;
    }

    public com.google.protobuf.l getRequireOcspStapleOrBuilder() {
        return getRequireOcspStaple();
    }

    public BoolValue getRequireSignedCertificateTimestamp() {
        BoolValue boolValue = this.requireSignedCertificateTimestamp_;
        return boolValue == null ? BoolValue.getDefaultInstance() : boolValue;
    }

    public com.google.protobuf.l getRequireSignedCertificateTimestampOrBuilder() {
        return getRequireSignedCertificateTimestamp();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.trustedCa_ != null ? CodedOutputStream.G(1, getTrustedCa()) + 0 : 0;
        int i10 = 0;
        for (int i11 = 0; i11 < this.verifyCertificateHash_.size(); i11++) {
            i10 += GeneratedMessageV3.computeStringSizeNoTag(this.verifyCertificateHash_.c1(i11));
        }
        int size = G + i10 + (m1586getVerifyCertificateHashList().size() * 1);
        int i12 = 0;
        for (int i13 = 0; i13 < this.verifyCertificateSpki_.size(); i13++) {
            i12 += GeneratedMessageV3.computeStringSizeNoTag(this.verifyCertificateSpki_.c1(i13));
        }
        int size2 = size + i12 + (m1587getVerifyCertificateSpkiList().size() * 1);
        int i14 = 0;
        for (int i15 = 0; i15 < this.verifySubjectAltName_.size(); i15++) {
            i14 += GeneratedMessageV3.computeStringSizeNoTag(this.verifySubjectAltName_.c1(i15));
        }
        int size3 = size2 + i14 + (m1588getVerifySubjectAltNameList().size() * 1);
        if (this.requireOcspStaple_ != null) {
            size3 += CodedOutputStream.G(5, getRequireOcspStaple());
        }
        if (this.requireSignedCertificateTimestamp_ != null) {
            size3 += CodedOutputStream.G(6, getRequireSignedCertificateTimestamp());
        }
        if (this.crl_ != null) {
            size3 += CodedOutputStream.G(7, getCrl());
        }
        boolean z10 = this.allowExpiredCertificate_;
        if (z10) {
            size3 += CodedOutputStream.e(8, z10);
        }
        for (int i16 = 0; i16 < this.matchSubjectAltNames_.size(); i16++) {
            size3 += CodedOutputStream.G(9, this.matchSubjectAltNames_.get(i16));
        }
        if (this.trustChainVerification_ != TrustChainVerification.VERIFY_TRUST_CHAIN.getNumber()) {
            size3 += CodedOutputStream.l(10, this.trustChainVerification_);
        }
        int serializedSize = size3 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public TrustChainVerification getTrustChainVerification() {
        TrustChainVerification valueOf = TrustChainVerification.valueOf(this.trustChainVerification_);
        return valueOf == null ? TrustChainVerification.UNRECOGNIZED : valueOf;
    }

    public int getTrustChainVerificationValue() {
        return this.trustChainVerification_;
    }

    public DataSource getTrustedCa() {
        DataSource dataSource = this.trustedCa_;
        return dataSource == null ? DataSource.getDefaultInstance() : dataSource;
    }

    public n getTrustedCaOrBuilder() {
        return getTrustedCa();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public String getVerifyCertificateHash(int i9) {
        return this.verifyCertificateHash_.get(i9);
    }

    public ByteString getVerifyCertificateHashBytes(int i9) {
        return this.verifyCertificateHash_.j0(i9);
    }

    public int getVerifyCertificateHashCount() {
        return this.verifyCertificateHash_.size();
    }

    public String getVerifyCertificateSpki(int i9) {
        return this.verifyCertificateSpki_.get(i9);
    }

    public ByteString getVerifyCertificateSpkiBytes(int i9) {
        return this.verifyCertificateSpki_.j0(i9);
    }

    public int getVerifyCertificateSpkiCount() {
        return this.verifyCertificateSpki_.size();
    }

    @Deprecated
    public String getVerifySubjectAltName(int i9) {
        return this.verifySubjectAltName_.get(i9);
    }

    @Deprecated
    public ByteString getVerifySubjectAltNameBytes(int i9) {
        return this.verifySubjectAltName_.j0(i9);
    }

    @Deprecated
    public int getVerifySubjectAltNameCount() {
        return this.verifySubjectAltName_.size();
    }

    public boolean hasCrl() {
        return this.crl_ != null;
    }

    public boolean hasRequireOcspStaple() {
        return this.requireOcspStaple_ != null;
    }

    public boolean hasRequireSignedCertificateTimestamp() {
        return this.requireSignedCertificateTimestamp_ != null;
    }

    public boolean hasTrustedCa() {
        return this.trustedCa_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasTrustedCa()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getTrustedCa().hashCode();
        }
        if (getVerifyCertificateSpkiCount() > 0) {
            hashCode = (((hashCode * 37) + 3) * 53) + m1587getVerifyCertificateSpkiList().hashCode();
        }
        if (getVerifyCertificateHashCount() > 0) {
            hashCode = (((hashCode * 37) + 2) * 53) + m1586getVerifyCertificateHashList().hashCode();
        }
        if (getVerifySubjectAltNameCount() > 0) {
            hashCode = (((hashCode * 37) + 4) * 53) + m1588getVerifySubjectAltNameList().hashCode();
        }
        if (getMatchSubjectAltNamesCount() > 0) {
            hashCode = (((hashCode * 37) + 9) * 53) + getMatchSubjectAltNamesList().hashCode();
        }
        if (hasRequireOcspStaple()) {
            hashCode = (((hashCode * 37) + 5) * 53) + getRequireOcspStaple().hashCode();
        }
        if (hasRequireSignedCertificateTimestamp()) {
            hashCode = (((hashCode * 37) + 6) * 53) + getRequireSignedCertificateTimestamp().hashCode();
        }
        if (hasCrl()) {
            hashCode = (((hashCode * 37) + 7) * 53) + getCrl().hashCode();
        }
        int d10 = (((((((((hashCode * 37) + 8) * 53) + u0.d(getAllowExpiredCertificate())) * 37) + 10) * 53) + this.trustChainVerification_) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = d10;
        return d10;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.b.f46247j.d(CertificateValidationContext.class, b.class);
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
        return new CertificateValidationContext();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.trustedCa_ != null) {
            codedOutputStream.L0(1, getTrustedCa());
        }
        for (int i9 = 0; i9 < this.verifyCertificateHash_.size(); i9++) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.verifyCertificateHash_.c1(i9));
        }
        for (int i10 = 0; i10 < this.verifyCertificateSpki_.size(); i10++) {
            GeneratedMessageV3.writeString(codedOutputStream, 3, this.verifyCertificateSpki_.c1(i10));
        }
        for (int i11 = 0; i11 < this.verifySubjectAltName_.size(); i11++) {
            GeneratedMessageV3.writeString(codedOutputStream, 4, this.verifySubjectAltName_.c1(i11));
        }
        if (this.requireOcspStaple_ != null) {
            codedOutputStream.L0(5, getRequireOcspStaple());
        }
        if (this.requireSignedCertificateTimestamp_ != null) {
            codedOutputStream.L0(6, getRequireSignedCertificateTimestamp());
        }
        if (this.crl_ != null) {
            codedOutputStream.L0(7, getCrl());
        }
        boolean z10 = this.allowExpiredCertificate_;
        if (z10) {
            codedOutputStream.n0(8, z10);
        }
        for (int i12 = 0; i12 < this.matchSubjectAltNames_.size(); i12++) {
            codedOutputStream.L0(9, this.matchSubjectAltNames_.get(i12));
        }
        if (this.trustChainVerification_ != TrustChainVerification.VERIFY_TRUST_CHAIN.getNumber()) {
            codedOutputStream.v0(10, this.trustChainVerification_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ CertificateValidationContext(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(CertificateValidationContext certificateValidationContext) {
        return DEFAULT_INSTANCE.toBuilder().m0(certificateValidationContext);
    }

    public static CertificateValidationContext parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    /* renamed from: getVerifyCertificateHashList */
    public i2 m1586getVerifyCertificateHashList() {
        return this.verifyCertificateHash_;
    }

    /* renamed from: getVerifyCertificateSpkiList */
    public i2 m1587getVerifyCertificateSpkiList() {
        return this.verifyCertificateSpki_;
    }

    @Deprecated
    /* renamed from: getVerifySubjectAltNameList */
    public i2 m1588getVerifySubjectAltNameList() {
        return this.verifySubjectAltName_;
    }

    private CertificateValidationContext(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static CertificateValidationContext parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (CertificateValidationContext) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static CertificateValidationContext parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public CertificateValidationContext getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).m0(this);
    }

    public static CertificateValidationContext parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private CertificateValidationContext() {
        this.memoizedIsInitialized = (byte) -1;
        z0 z0Var = y0.f15344d;
        this.verifyCertificateSpki_ = z0Var;
        this.verifyCertificateHash_ = z0Var;
        this.verifySubjectAltName_ = z0Var;
        this.matchSubjectAltNames_ = Collections.emptyList();
        this.trustChainVerification_ = 0;
    }

    public static CertificateValidationContext parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static CertificateValidationContext parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static CertificateValidationContext parseFrom(InputStream inputStream) throws IOException {
        return (CertificateValidationContext) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static CertificateValidationContext parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (CertificateValidationContext) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static CertificateValidationContext parseFrom(p pVar) throws IOException {
        return (CertificateValidationContext) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    private CertificateValidationContext(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        boolean z11 = false;
        while (!z10) {
            try {
                try {
                    int L = pVar.L();
                    switch (L) {
                        case 0:
                            break;
                        case 10:
                            DataSource dataSource = this.trustedCa_;
                            DataSource.c builder = dataSource != null ? dataSource.toBuilder() : null;
                            DataSource dataSource2 = (DataSource) pVar.B(DataSource.parser(), f0Var);
                            this.trustedCa_ = dataSource2;
                            if (builder != null) {
                                builder.g0(dataSource2);
                                this.trustedCa_ = builder.I();
                            } else {
                                continue;
                            }
                        case 18:
                            String K = pVar.K();
                            if (!(z11 & true)) {
                                this.verifyCertificateHash_ = new y0();
                                z11 |= true;
                            }
                            this.verifyCertificateHash_.add(K);
                            continue;
                        case 26:
                            String K2 = pVar.K();
                            if (!(z11 & true)) {
                                this.verifyCertificateSpki_ = new y0();
                                z11 |= true;
                            }
                            this.verifyCertificateSpki_.add(K2);
                            continue;
                        case 34:
                            String K3 = pVar.K();
                            if (!(z11 & true)) {
                                this.verifySubjectAltName_ = new y0();
                                z11 |= true;
                            }
                            this.verifySubjectAltName_.add(K3);
                            continue;
                        case 42:
                            BoolValue boolValue = this.requireOcspStaple_;
                            BoolValue.b builder2 = boolValue != null ? boolValue.toBuilder() : null;
                            BoolValue boolValue2 = (BoolValue) pVar.B(BoolValue.parser(), f0Var);
                            this.requireOcspStaple_ = boolValue2;
                            if (builder2 != null) {
                                builder2.d0(boolValue2);
                                this.requireOcspStaple_ = builder2.I();
                            } else {
                                continue;
                            }
                        case 50:
                            BoolValue boolValue3 = this.requireSignedCertificateTimestamp_;
                            BoolValue.b builder3 = boolValue3 != null ? boolValue3.toBuilder() : null;
                            BoolValue boolValue4 = (BoolValue) pVar.B(BoolValue.parser(), f0Var);
                            this.requireSignedCertificateTimestamp_ = boolValue4;
                            if (builder3 != null) {
                                builder3.d0(boolValue4);
                                this.requireSignedCertificateTimestamp_ = builder3.I();
                            } else {
                                continue;
                            }
                        case 58:
                            DataSource dataSource3 = this.crl_;
                            DataSource.c builder4 = dataSource3 != null ? dataSource3.toBuilder() : null;
                            DataSource dataSource4 = (DataSource) pVar.B(DataSource.parser(), f0Var);
                            this.crl_ = dataSource4;
                            if (builder4 != null) {
                                builder4.g0(dataSource4);
                                this.crl_ = builder4.I();
                            } else {
                                continue;
                            }
                        case 64:
                            this.allowExpiredCertificate_ = pVar.r();
                            continue;
                        case 74:
                            if (!(z11 & true)) {
                                this.matchSubjectAltNames_ = new ArrayList();
                                z11 |= true;
                            }
                            this.matchSubjectAltNames_.add((StringMatcher) pVar.B(StringMatcher.parser(), f0Var));
                            continue;
                        case 80:
                            this.trustChainVerification_ = pVar.u();
                            continue;
                        default:
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                break;
                            } else {
                                continue;
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
                    this.verifyCertificateHash_ = this.verifyCertificateHash_.V0();
                }
                if (z11 & true) {
                    this.verifyCertificateSpki_ = this.verifyCertificateSpki_.V0();
                }
                if (z11 & true) {
                    this.verifySubjectAltName_ = this.verifySubjectAltName_.V0();
                }
                if (z11 & true) {
                    this.matchSubjectAltNames_ = Collections.unmodifiableList(this.matchSubjectAltNames_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static CertificateValidationContext parseFrom(p pVar, f0 f0Var) throws IOException {
        return (CertificateValidationContext) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
