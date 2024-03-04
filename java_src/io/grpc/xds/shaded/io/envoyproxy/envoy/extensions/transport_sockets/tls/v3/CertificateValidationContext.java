package io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3;

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
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.DataSource;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.TypedExtensionConfig;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.WatchedDirectory;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.i1;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.m1;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.n;
import io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.CertificateProviderPluginInstance;
import io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.StringMatcher;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class CertificateValidationContext extends GeneratedMessageV3 implements io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.b {
    public static final int ALLOW_EXPIRED_CERTIFICATE_FIELD_NUMBER = 8;
    public static final int CA_CERTIFICATE_PROVIDER_INSTANCE_FIELD_NUMBER = 13;
    public static final int CRL_FIELD_NUMBER = 7;
    public static final int CUSTOM_VALIDATOR_CONFIG_FIELD_NUMBER = 12;
    public static final int MATCH_SUBJECT_ALT_NAMES_FIELD_NUMBER = 9;
    public static final int REQUIRE_SIGNED_CERTIFICATE_TIMESTAMP_FIELD_NUMBER = 6;
    public static final int TRUSTED_CA_FIELD_NUMBER = 1;
    public static final int TRUST_CHAIN_VERIFICATION_FIELD_NUMBER = 10;
    public static final int VERIFY_CERTIFICATE_HASH_FIELD_NUMBER = 2;
    public static final int VERIFY_CERTIFICATE_SPKI_FIELD_NUMBER = 3;
    public static final int WATCHED_DIRECTORY_FIELD_NUMBER = 11;
    private static final long serialVersionUID = 0;
    private boolean allowExpiredCertificate_;
    private CertificateProviderPluginInstance caCertificateProviderInstance_;
    private DataSource crl_;
    private TypedExtensionConfig customValidatorConfig_;
    private List<StringMatcher> matchSubjectAltNames_;
    private byte memoizedIsInitialized;
    private BoolValue requireSignedCertificateTimestamp_;
    private int trustChainVerification_;
    private DataSource trustedCa_;
    private z0 verifyCertificateHash_;
    private z0 verifyCertificateSpki_;
    private WatchedDirectory watchedDirectory_;
    private static final CertificateValidationContext DEFAULT_INSTANCE = new CertificateValidationContext();
    private static final e2<CertificateValidationContext> PARSER = new a();

    /* loaded from: classes6.dex */
    public enum TrustChainVerification implements h2 {
        VERIFY_TRUST_CHAIN(0),
        ACCEPT_UNTRUSTED(1),
        UNRECOGNIZED(-1);
        
        public static final int ACCEPT_UNTRUSTED_VALUE = 1;
        public static final int VERIFY_TRUST_CHAIN_VALUE = 0;
        private final int value;
        private static final u0.d<TrustChainVerification> internalValueMap = new a();
        private static final TrustChainVerification[] VALUES = values();

        /* loaded from: classes6.dex */
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
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<CertificateValidationContext> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public CertificateValidationContext m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new CertificateValidationContext(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.b {

        /* renamed from: e  reason: collision with root package name */
        private int f49905e;

        /* renamed from: f  reason: collision with root package name */
        private DataSource f49906f;

        /* renamed from: g  reason: collision with root package name */
        private q2<DataSource, DataSource.c, n> f49907g;

        /* renamed from: h  reason: collision with root package name */
        private CertificateProviderPluginInstance f49908h;

        /* renamed from: i  reason: collision with root package name */
        private q2<CertificateProviderPluginInstance, CertificateProviderPluginInstance.b, io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.a> f49909i;

        /* renamed from: j  reason: collision with root package name */
        private WatchedDirectory f49910j;

        /* renamed from: k  reason: collision with root package name */
        private q2<WatchedDirectory, WatchedDirectory.b, m1> f49911k;

        /* renamed from: l  reason: collision with root package name */
        private z0 f49912l;

        /* renamed from: m  reason: collision with root package name */
        private z0 f49913m;

        /* renamed from: n  reason: collision with root package name */
        private List<StringMatcher> f49914n;

        /* renamed from: o  reason: collision with root package name */
        private l2<StringMatcher, StringMatcher.c, io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.n> f49915o;

        /* renamed from: p  reason: collision with root package name */
        private BoolValue f49916p;

        /* renamed from: q  reason: collision with root package name */
        private q2<BoolValue, BoolValue.b, com.google.protobuf.l> f49917q;

        /* renamed from: r  reason: collision with root package name */
        private DataSource f49918r;

        /* renamed from: s  reason: collision with root package name */
        private q2<DataSource, DataSource.c, n> f49919s;

        /* renamed from: t  reason: collision with root package name */
        private boolean f49920t;

        /* renamed from: u  reason: collision with root package name */
        private int f49921u;

        /* renamed from: v  reason: collision with root package name */
        private TypedExtensionConfig f49922v;

        /* renamed from: w  reason: collision with root package name */
        private q2<TypedExtensionConfig, TypedExtensionConfig.b, i1> f49923w;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f49905e & 4) == 0) {
                this.f49914n = new ArrayList(this.f49914n);
                this.f49905e |= 4;
            }
        }

        private void b0() {
            if ((this.f49905e & 2) == 0) {
                this.f49913m = new y0(this.f49913m);
                this.f49905e |= 2;
            }
        }

        private void d0() {
            if ((this.f49905e & 1) == 0) {
                this.f49912l = new y0(this.f49912l);
                this.f49905e |= 1;
            }
        }

        private l2<StringMatcher, StringMatcher.c, io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.n> g0() {
            if (this.f49915o == null) {
                this.f49915o = new l2<>(this.f49914n, (this.f49905e & 4) != 0, H(), O());
                this.f49914n = null;
            }
            return this.f49915o;
        }

        private void h0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                g0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return c.f50034l.d(CertificateValidationContext.class, b.class);
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
            q2<DataSource, DataSource.c, n> q2Var = this.f49907g;
            if (q2Var == null) {
                certificateValidationContext.trustedCa_ = this.f49906f;
            } else {
                certificateValidationContext.trustedCa_ = q2Var.b();
            }
            q2<CertificateProviderPluginInstance, CertificateProviderPluginInstance.b, io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.a> q2Var2 = this.f49909i;
            if (q2Var2 == null) {
                certificateValidationContext.caCertificateProviderInstance_ = this.f49908h;
            } else {
                certificateValidationContext.caCertificateProviderInstance_ = q2Var2.b();
            }
            q2<WatchedDirectory, WatchedDirectory.b, m1> q2Var3 = this.f49911k;
            if (q2Var3 == null) {
                certificateValidationContext.watchedDirectory_ = this.f49910j;
            } else {
                certificateValidationContext.watchedDirectory_ = q2Var3.b();
            }
            if ((this.f49905e & 1) != 0) {
                this.f49912l = this.f49912l.V0();
                this.f49905e &= -2;
            }
            certificateValidationContext.verifyCertificateSpki_ = this.f49912l;
            if ((this.f49905e & 2) != 0) {
                this.f49913m = this.f49913m.V0();
                this.f49905e &= -3;
            }
            certificateValidationContext.verifyCertificateHash_ = this.f49913m;
            l2<StringMatcher, StringMatcher.c, io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.n> l2Var = this.f49915o;
            if (l2Var == null) {
                if ((this.f49905e & 4) != 0) {
                    this.f49914n = Collections.unmodifiableList(this.f49914n);
                    this.f49905e &= -5;
                }
                certificateValidationContext.matchSubjectAltNames_ = this.f49914n;
            } else {
                certificateValidationContext.matchSubjectAltNames_ = l2Var.e();
            }
            q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var4 = this.f49917q;
            if (q2Var4 == null) {
                certificateValidationContext.requireSignedCertificateTimestamp_ = this.f49916p;
            } else {
                certificateValidationContext.requireSignedCertificateTimestamp_ = q2Var4.b();
            }
            q2<DataSource, DataSource.c, n> q2Var5 = this.f49919s;
            if (q2Var5 == null) {
                certificateValidationContext.crl_ = this.f49918r;
            } else {
                certificateValidationContext.crl_ = q2Var5.b();
            }
            certificateValidationContext.allowExpiredCertificate_ = this.f49920t;
            certificateValidationContext.trustChainVerification_ = this.f49921u;
            q2<TypedExtensionConfig, TypedExtensionConfig.b, i1> q2Var6 = this.f49923w;
            if (q2Var6 == null) {
                certificateValidationContext.customValidatorConfig_ = this.f49922v;
            } else {
                certificateValidationContext.customValidatorConfig_ = q2Var6.b();
            }
            Q();
            return certificateValidationContext;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: e0 */
        public CertificateValidationContext getDefaultInstanceForType() {
            return CertificateValidationContext.getDefaultInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return c.f50033k;
        }

        public b i0(CertificateProviderPluginInstance certificateProviderPluginInstance) {
            q2<CertificateProviderPluginInstance, CertificateProviderPluginInstance.b, io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.a> q2Var = this.f49909i;
            if (q2Var == null) {
                CertificateProviderPluginInstance certificateProviderPluginInstance2 = this.f49908h;
                if (certificateProviderPluginInstance2 != null) {
                    this.f49908h = CertificateProviderPluginInstance.newBuilder(certificateProviderPluginInstance2).g0(certificateProviderPluginInstance).I();
                } else {
                    this.f49908h = certificateProviderPluginInstance;
                }
                R();
            } else {
                q2Var.e(certificateProviderPluginInstance);
            }
            return this;
        }

        public b j0(DataSource dataSource) {
            q2<DataSource, DataSource.c, n> q2Var = this.f49919s;
            if (q2Var == null) {
                DataSource dataSource2 = this.f49918r;
                if (dataSource2 != null) {
                    this.f49918r = DataSource.newBuilder(dataSource2).g0(dataSource).I();
                } else {
                    this.f49918r = dataSource;
                }
                R();
            } else {
                q2Var.e(dataSource);
            }
            return this;
        }

        public b k0(TypedExtensionConfig typedExtensionConfig) {
            q2<TypedExtensionConfig, TypedExtensionConfig.b, i1> q2Var = this.f49923w;
            if (q2Var == null) {
                TypedExtensionConfig typedExtensionConfig2 = this.f49922v;
                if (typedExtensionConfig2 != null) {
                    this.f49922v = TypedExtensionConfig.newBuilder(typedExtensionConfig2).g0(typedExtensionConfig).I();
                } else {
                    this.f49922v = typedExtensionConfig;
                }
                R();
            } else {
                q2Var.e(typedExtensionConfig);
            }
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: l0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.CertificateValidationContext.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.CertificateValidationContext.access$1700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.CertificateValidationContext r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.CertificateValidationContext) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.n0(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.CertificateValidationContext r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.CertificateValidationContext) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.n0(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.CertificateValidationContext.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.CertificateValidationContext$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: m0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof CertificateValidationContext) {
                return n0((CertificateValidationContext) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b n0(CertificateValidationContext certificateValidationContext) {
            if (certificateValidationContext == CertificateValidationContext.getDefaultInstance()) {
                return this;
            }
            if (certificateValidationContext.hasTrustedCa()) {
                q0(certificateValidationContext.getTrustedCa());
            }
            if (certificateValidationContext.hasCaCertificateProviderInstance()) {
                i0(certificateValidationContext.getCaCertificateProviderInstance());
            }
            if (certificateValidationContext.hasWatchedDirectory()) {
                s0(certificateValidationContext.getWatchedDirectory());
            }
            if (!certificateValidationContext.verifyCertificateSpki_.isEmpty()) {
                if (this.f49912l.isEmpty()) {
                    this.f49912l = certificateValidationContext.verifyCertificateSpki_;
                    this.f49905e &= -2;
                } else {
                    d0();
                    this.f49912l.addAll(certificateValidationContext.verifyCertificateSpki_);
                }
                R();
            }
            if (!certificateValidationContext.verifyCertificateHash_.isEmpty()) {
                if (this.f49913m.isEmpty()) {
                    this.f49913m = certificateValidationContext.verifyCertificateHash_;
                    this.f49905e &= -3;
                } else {
                    b0();
                    this.f49913m.addAll(certificateValidationContext.verifyCertificateHash_);
                }
                R();
            }
            if (this.f49915o == null) {
                if (!certificateValidationContext.matchSubjectAltNames_.isEmpty()) {
                    if (this.f49914n.isEmpty()) {
                        this.f49914n = certificateValidationContext.matchSubjectAltNames_;
                        this.f49905e &= -5;
                    } else {
                        a0();
                        this.f49914n.addAll(certificateValidationContext.matchSubjectAltNames_);
                    }
                    R();
                }
            } else if (!certificateValidationContext.matchSubjectAltNames_.isEmpty()) {
                if (this.f49915o.k()) {
                    this.f49915o.f();
                    this.f49915o = null;
                    this.f49914n = certificateValidationContext.matchSubjectAltNames_;
                    this.f49905e &= -5;
                    this.f49915o = GeneratedMessageV3.alwaysUseFieldBuilders ? g0() : null;
                } else {
                    this.f49915o.b(certificateValidationContext.matchSubjectAltNames_);
                }
            }
            if (certificateValidationContext.hasRequireSignedCertificateTimestamp()) {
                o0(certificateValidationContext.getRequireSignedCertificateTimestamp());
            }
            if (certificateValidationContext.hasCrl()) {
                j0(certificateValidationContext.getCrl());
            }
            if (certificateValidationContext.getAllowExpiredCertificate()) {
                t0(certificateValidationContext.getAllowExpiredCertificate());
            }
            if (certificateValidationContext.trustChainVerification_ != 0) {
                v0(certificateValidationContext.getTrustChainVerificationValue());
            }
            if (certificateValidationContext.hasCustomValidatorConfig()) {
                k0(certificateValidationContext.getCustomValidatorConfig());
            }
            z(((GeneratedMessageV3) certificateValidationContext).unknownFields);
            R();
            return this;
        }

        public b o0(BoolValue boolValue) {
            q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var = this.f49917q;
            if (q2Var == null) {
                BoolValue boolValue2 = this.f49916p;
                if (boolValue2 != null) {
                    this.f49916p = BoolValue.newBuilder(boolValue2).d0(boolValue).I();
                } else {
                    this.f49916p = boolValue;
                }
                R();
            } else {
                q2Var.e(boolValue);
            }
            return this;
        }

        public b q0(DataSource dataSource) {
            q2<DataSource, DataSource.c, n> q2Var = this.f49907g;
            if (q2Var == null) {
                DataSource dataSource2 = this.f49906f;
                if (dataSource2 != null) {
                    this.f49906f = DataSource.newBuilder(dataSource2).g0(dataSource).I();
                } else {
                    this.f49906f = dataSource;
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

        public b s0(WatchedDirectory watchedDirectory) {
            q2<WatchedDirectory, WatchedDirectory.b, m1> q2Var = this.f49911k;
            if (q2Var == null) {
                WatchedDirectory watchedDirectory2 = this.f49910j;
                if (watchedDirectory2 != null) {
                    this.f49910j = WatchedDirectory.newBuilder(watchedDirectory2).g0(watchedDirectory).I();
                } else {
                    this.f49910j = watchedDirectory;
                }
                R();
            } else {
                q2Var.e(watchedDirectory);
            }
            return this;
        }

        public b t0(boolean z10) {
            this.f49920t = z10;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: u0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
        }

        public b v0(int i9) {
            this.f49921u = i9;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: x0 */
        public final b f1(h3 h3Var) {
            return (b) super.f1(h3Var);
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            z0 z0Var = y0.f15344d;
            this.f49912l = z0Var;
            this.f49913m = z0Var;
            this.f49914n = Collections.emptyList();
            this.f49921u = 0;
            h0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            z0 z0Var = y0.f15344d;
            this.f49912l = z0Var;
            this.f49913m = z0Var;
            this.f49914n = Collections.emptyList();
            this.f49921u = 0;
            h0();
        }
    }

    /* synthetic */ CertificateValidationContext(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static CertificateValidationContext getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return c.f50033k;
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
        if ((!hasTrustedCa() || getTrustedCa().equals(certificateValidationContext.getTrustedCa())) && hasCaCertificateProviderInstance() == certificateValidationContext.hasCaCertificateProviderInstance()) {
            if ((!hasCaCertificateProviderInstance() || getCaCertificateProviderInstance().equals(certificateValidationContext.getCaCertificateProviderInstance())) && hasWatchedDirectory() == certificateValidationContext.hasWatchedDirectory()) {
                if ((!hasWatchedDirectory() || getWatchedDirectory().equals(certificateValidationContext.getWatchedDirectory())) && m1637getVerifyCertificateSpkiList().equals(certificateValidationContext.m1637getVerifyCertificateSpkiList()) && m1636getVerifyCertificateHashList().equals(certificateValidationContext.m1636getVerifyCertificateHashList()) && getMatchSubjectAltNamesList().equals(certificateValidationContext.getMatchSubjectAltNamesList()) && hasRequireSignedCertificateTimestamp() == certificateValidationContext.hasRequireSignedCertificateTimestamp()) {
                    if ((!hasRequireSignedCertificateTimestamp() || getRequireSignedCertificateTimestamp().equals(certificateValidationContext.getRequireSignedCertificateTimestamp())) && hasCrl() == certificateValidationContext.hasCrl()) {
                        if ((!hasCrl() || getCrl().equals(certificateValidationContext.getCrl())) && getAllowExpiredCertificate() == certificateValidationContext.getAllowExpiredCertificate() && this.trustChainVerification_ == certificateValidationContext.trustChainVerification_ && hasCustomValidatorConfig() == certificateValidationContext.hasCustomValidatorConfig()) {
                            return (!hasCustomValidatorConfig() || getCustomValidatorConfig().equals(certificateValidationContext.getCustomValidatorConfig())) && this.unknownFields.equals(certificateValidationContext.unknownFields);
                        }
                        return false;
                    }
                    return false;
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

    public CertificateProviderPluginInstance getCaCertificateProviderInstance() {
        CertificateProviderPluginInstance certificateProviderPluginInstance = this.caCertificateProviderInstance_;
        return certificateProviderPluginInstance == null ? CertificateProviderPluginInstance.getDefaultInstance() : certificateProviderPluginInstance;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.a getCaCertificateProviderInstanceOrBuilder() {
        return getCaCertificateProviderInstance();
    }

    public DataSource getCrl() {
        DataSource dataSource = this.crl_;
        return dataSource == null ? DataSource.getDefaultInstance() : dataSource;
    }

    public n getCrlOrBuilder() {
        return getCrl();
    }

    public TypedExtensionConfig getCustomValidatorConfig() {
        TypedExtensionConfig typedExtensionConfig = this.customValidatorConfig_;
        return typedExtensionConfig == null ? TypedExtensionConfig.getDefaultInstance() : typedExtensionConfig;
    }

    public i1 getCustomValidatorConfigOrBuilder() {
        return getCustomValidatorConfig();
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

    public io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.n getMatchSubjectAltNamesOrBuilder(int i9) {
        return this.matchSubjectAltNames_.get(i9);
    }

    public List<? extends io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.n> getMatchSubjectAltNamesOrBuilderList() {
        return this.matchSubjectAltNames_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<CertificateValidationContext> getParserForType() {
        return PARSER;
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
        int size = G + i10 + (m1636getVerifyCertificateHashList().size() * 1);
        int i12 = 0;
        for (int i13 = 0; i13 < this.verifyCertificateSpki_.size(); i13++) {
            i12 += GeneratedMessageV3.computeStringSizeNoTag(this.verifyCertificateSpki_.c1(i13));
        }
        int size2 = size + i12 + (m1637getVerifyCertificateSpkiList().size() * 1);
        if (this.requireSignedCertificateTimestamp_ != null) {
            size2 += CodedOutputStream.G(6, getRequireSignedCertificateTimestamp());
        }
        if (this.crl_ != null) {
            size2 += CodedOutputStream.G(7, getCrl());
        }
        boolean z10 = this.allowExpiredCertificate_;
        if (z10) {
            size2 += CodedOutputStream.e(8, z10);
        }
        for (int i14 = 0; i14 < this.matchSubjectAltNames_.size(); i14++) {
            size2 += CodedOutputStream.G(9, this.matchSubjectAltNames_.get(i14));
        }
        if (this.trustChainVerification_ != TrustChainVerification.VERIFY_TRUST_CHAIN.getNumber()) {
            size2 += CodedOutputStream.l(10, this.trustChainVerification_);
        }
        if (this.watchedDirectory_ != null) {
            size2 += CodedOutputStream.G(11, getWatchedDirectory());
        }
        if (this.customValidatorConfig_ != null) {
            size2 += CodedOutputStream.G(12, getCustomValidatorConfig());
        }
        if (this.caCertificateProviderInstance_ != null) {
            size2 += CodedOutputStream.G(13, getCaCertificateProviderInstance());
        }
        int serializedSize = size2 + this.unknownFields.getSerializedSize();
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

    public WatchedDirectory getWatchedDirectory() {
        WatchedDirectory watchedDirectory = this.watchedDirectory_;
        return watchedDirectory == null ? WatchedDirectory.getDefaultInstance() : watchedDirectory;
    }

    public m1 getWatchedDirectoryOrBuilder() {
        return getWatchedDirectory();
    }

    public boolean hasCaCertificateProviderInstance() {
        return this.caCertificateProviderInstance_ != null;
    }

    public boolean hasCrl() {
        return this.crl_ != null;
    }

    public boolean hasCustomValidatorConfig() {
        return this.customValidatorConfig_ != null;
    }

    public boolean hasRequireSignedCertificateTimestamp() {
        return this.requireSignedCertificateTimestamp_ != null;
    }

    public boolean hasTrustedCa() {
        return this.trustedCa_ != null;
    }

    public boolean hasWatchedDirectory() {
        return this.watchedDirectory_ != null;
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
        if (hasCaCertificateProviderInstance()) {
            hashCode = (((hashCode * 37) + 13) * 53) + getCaCertificateProviderInstance().hashCode();
        }
        if (hasWatchedDirectory()) {
            hashCode = (((hashCode * 37) + 11) * 53) + getWatchedDirectory().hashCode();
        }
        if (getVerifyCertificateSpkiCount() > 0) {
            hashCode = (((hashCode * 37) + 3) * 53) + m1637getVerifyCertificateSpkiList().hashCode();
        }
        if (getVerifyCertificateHashCount() > 0) {
            hashCode = (((hashCode * 37) + 2) * 53) + m1636getVerifyCertificateHashList().hashCode();
        }
        if (getMatchSubjectAltNamesCount() > 0) {
            hashCode = (((hashCode * 37) + 9) * 53) + getMatchSubjectAltNamesList().hashCode();
        }
        if (hasRequireSignedCertificateTimestamp()) {
            hashCode = (((hashCode * 37) + 6) * 53) + getRequireSignedCertificateTimestamp().hashCode();
        }
        if (hasCrl()) {
            hashCode = (((hashCode * 37) + 7) * 53) + getCrl().hashCode();
        }
        int d10 = (((((((hashCode * 37) + 8) * 53) + u0.d(getAllowExpiredCertificate())) * 37) + 10) * 53) + this.trustChainVerification_;
        if (hasCustomValidatorConfig()) {
            d10 = (((d10 * 37) + 12) * 53) + getCustomValidatorConfig().hashCode();
        }
        int hashCode2 = (d10 * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return c.f50034l.d(CertificateValidationContext.class, b.class);
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
        for (int i11 = 0; i11 < this.matchSubjectAltNames_.size(); i11++) {
            codedOutputStream.L0(9, this.matchSubjectAltNames_.get(i11));
        }
        if (this.trustChainVerification_ != TrustChainVerification.VERIFY_TRUST_CHAIN.getNumber()) {
            codedOutputStream.v0(10, this.trustChainVerification_);
        }
        if (this.watchedDirectory_ != null) {
            codedOutputStream.L0(11, getWatchedDirectory());
        }
        if (this.customValidatorConfig_ != null) {
            codedOutputStream.L0(12, getCustomValidatorConfig());
        }
        if (this.caCertificateProviderInstance_ != null) {
            codedOutputStream.L0(13, getCaCertificateProviderInstance());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ CertificateValidationContext(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(CertificateValidationContext certificateValidationContext) {
        return DEFAULT_INSTANCE.toBuilder().n0(certificateValidationContext);
    }

    public static CertificateValidationContext parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    /* renamed from: getVerifyCertificateHashList */
    public i2 m1636getVerifyCertificateHashList() {
        return this.verifyCertificateHash_;
    }

    /* renamed from: getVerifyCertificateSpkiList */
    public i2 m1637getVerifyCertificateSpkiList() {
        return this.verifyCertificateSpki_;
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
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).n0(this);
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

    private CertificateValidationContext(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            case 50:
                                BoolValue boolValue = this.requireSignedCertificateTimestamp_;
                                BoolValue.b builder2 = boolValue != null ? boolValue.toBuilder() : null;
                                BoolValue boolValue2 = (BoolValue) pVar.B(BoolValue.parser(), f0Var);
                                this.requireSignedCertificateTimestamp_ = boolValue2;
                                if (builder2 != null) {
                                    builder2.d0(boolValue2);
                                    this.requireSignedCertificateTimestamp_ = builder2.I();
                                } else {
                                    continue;
                                }
                            case 58:
                                DataSource dataSource3 = this.crl_;
                                DataSource.c builder3 = dataSource3 != null ? dataSource3.toBuilder() : null;
                                DataSource dataSource4 = (DataSource) pVar.B(DataSource.parser(), f0Var);
                                this.crl_ = dataSource4;
                                if (builder3 != null) {
                                    builder3.g0(dataSource4);
                                    this.crl_ = builder3.I();
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
                            case 90:
                                WatchedDirectory watchedDirectory = this.watchedDirectory_;
                                WatchedDirectory.b builder4 = watchedDirectory != null ? watchedDirectory.toBuilder() : null;
                                WatchedDirectory watchedDirectory2 = (WatchedDirectory) pVar.B(WatchedDirectory.parser(), f0Var);
                                this.watchedDirectory_ = watchedDirectory2;
                                if (builder4 != null) {
                                    builder4.g0(watchedDirectory2);
                                    this.watchedDirectory_ = builder4.I();
                                } else {
                                    continue;
                                }
                            case 98:
                                TypedExtensionConfig typedExtensionConfig = this.customValidatorConfig_;
                                TypedExtensionConfig.b builder5 = typedExtensionConfig != null ? typedExtensionConfig.toBuilder() : null;
                                TypedExtensionConfig typedExtensionConfig2 = (TypedExtensionConfig) pVar.B(TypedExtensionConfig.parser(), f0Var);
                                this.customValidatorConfig_ = typedExtensionConfig2;
                                if (builder5 != null) {
                                    builder5.g0(typedExtensionConfig2);
                                    this.customValidatorConfig_ = builder5.I();
                                } else {
                                    continue;
                                }
                            case 106:
                                CertificateProviderPluginInstance certificateProviderPluginInstance = this.caCertificateProviderInstance_;
                                CertificateProviderPluginInstance.b builder6 = certificateProviderPluginInstance != null ? certificateProviderPluginInstance.toBuilder() : null;
                                CertificateProviderPluginInstance certificateProviderPluginInstance2 = (CertificateProviderPluginInstance) pVar.B(CertificateProviderPluginInstance.parser(), f0Var);
                                this.caCertificateProviderInstance_ = certificateProviderPluginInstance2;
                                if (builder6 != null) {
                                    builder6.g0(certificateProviderPluginInstance2);
                                    this.caCertificateProviderInstance_ = builder6.I();
                                } else {
                                    continue;
                                }
                            default:
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    break;
                                } else {
                                    continue;
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
                    this.verifyCertificateHash_ = this.verifyCertificateHash_.V0();
                }
                if (z11 & true) {
                    this.verifyCertificateSpki_ = this.verifyCertificateSpki_.V0();
                }
                if (z11 & true) {
                    this.matchSubjectAltNames_ = Collections.unmodifiableList(this.matchSubjectAltNames_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static CertificateValidationContext parseFrom(p pVar) throws IOException {
        return (CertificateValidationContext) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static CertificateValidationContext parseFrom(p pVar, f0 f0Var) throws IOException {
        return (CertificateValidationContext) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
