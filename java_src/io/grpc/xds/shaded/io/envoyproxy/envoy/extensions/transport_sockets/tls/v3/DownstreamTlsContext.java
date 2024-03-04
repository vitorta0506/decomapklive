package io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3;

import com.google.protobuf.BoolValue;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.Duration;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.h2;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.o1;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import com.google.protobuf.u0;
import com.google.protobuf.v;
import io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.CommonTlsContext;
import io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.SdsSecretConfig;
import io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.TlsSessionTicketKeys;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class DownstreamTlsContext extends GeneratedMessageV3 implements r1 {
    public static final int COMMON_TLS_CONTEXT_FIELD_NUMBER = 1;
    public static final int DISABLE_STATELESS_SESSION_RESUMPTION_FIELD_NUMBER = 7;
    public static final int OCSP_STAPLE_POLICY_FIELD_NUMBER = 8;
    public static final int REQUIRE_CLIENT_CERTIFICATE_FIELD_NUMBER = 2;
    public static final int REQUIRE_SNI_FIELD_NUMBER = 3;
    public static final int SESSION_TICKET_KEYS_FIELD_NUMBER = 4;
    public static final int SESSION_TICKET_KEYS_SDS_SECRET_CONFIG_FIELD_NUMBER = 5;
    public static final int SESSION_TIMEOUT_FIELD_NUMBER = 6;
    private static final long serialVersionUID = 0;
    private CommonTlsContext commonTlsContext_;
    private byte memoizedIsInitialized;
    private int ocspStaplePolicy_;
    private BoolValue requireClientCertificate_;
    private BoolValue requireSni_;
    private int sessionTicketKeysTypeCase_;
    private Object sessionTicketKeysType_;
    private Duration sessionTimeout_;
    private static final DownstreamTlsContext DEFAULT_INSTANCE = new DownstreamTlsContext();
    private static final e2<DownstreamTlsContext> PARSER = new a();

    /* loaded from: classes6.dex */
    public enum OcspStaplePolicy implements h2 {
        LENIENT_STAPLING(0),
        STRICT_STAPLING(1),
        MUST_STAPLE(2),
        UNRECOGNIZED(-1);
        
        public static final int LENIENT_STAPLING_VALUE = 0;
        public static final int MUST_STAPLE_VALUE = 2;
        public static final int STRICT_STAPLING_VALUE = 1;
        private final int value;
        private static final u0.d<OcspStaplePolicy> internalValueMap = new a();
        private static final OcspStaplePolicy[] VALUES = values();

        /* loaded from: classes6.dex */
        class a implements u0.d<OcspStaplePolicy> {
            a() {
            }

            @Override // com.google.protobuf.u0.d
            /* renamed from: b */
            public OcspStaplePolicy a(int i9) {
                return OcspStaplePolicy.forNumber(i9);
            }
        }

        OcspStaplePolicy(int i9) {
            this.value = i9;
        }

        public static OcspStaplePolicy forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 != 2) {
                        return null;
                    }
                    return MUST_STAPLE;
                }
                return STRICT_STAPLING;
            }
            return LENIENT_STAPLING;
        }

        public static final Descriptors.d getDescriptor() {
            return DownstreamTlsContext.getDescriptor().k().get(0);
        }

        public static u0.d<OcspStaplePolicy> internalGetValueMap() {
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
        public static OcspStaplePolicy valueOf(int i9) {
            return forNumber(i9);
        }

        public static OcspStaplePolicy valueOf(Descriptors.e eVar) {
            if (eVar.h() == getDescriptor()) {
                if (eVar.g() == -1) {
                    return UNRECOGNIZED;
                }
                return VALUES[eVar.g()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    /* loaded from: classes6.dex */
    public enum SessionTicketKeysTypeCase implements u0.c {
        SESSION_TICKET_KEYS(4),
        SESSION_TICKET_KEYS_SDS_SECRET_CONFIG(5),
        DISABLE_STATELESS_SESSION_RESUMPTION(7),
        SESSIONTICKETKEYSTYPE_NOT_SET(0);
        
        private final int value;

        SessionTicketKeysTypeCase(int i9) {
            this.value = i9;
        }

        public static SessionTicketKeysTypeCase forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 7) {
                    if (i9 != 4) {
                        if (i9 != 5) {
                            return null;
                        }
                        return SESSION_TICKET_KEYS_SDS_SECRET_CONFIG;
                    }
                    return SESSION_TICKET_KEYS;
                }
                return DISABLE_STATELESS_SESSION_RESUMPTION;
            }
            return SESSIONTICKETKEYSTYPE_NOT_SET;
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static SessionTicketKeysTypeCase valueOf(int i9) {
            return forNumber(i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<DownstreamTlsContext> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public DownstreamTlsContext m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new DownstreamTlsContext(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f49962a;

        static {
            int[] iArr = new int[SessionTicketKeysTypeCase.values().length];
            f49962a = iArr;
            try {
                iArr[SessionTicketKeysTypeCase.SESSION_TICKET_KEYS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f49962a[SessionTicketKeysTypeCase.SESSION_TICKET_KEYS_SDS_SECRET_CONFIG.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f49962a[SessionTicketKeysTypeCase.DISABLE_STATELESS_SESSION_RESUMPTION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f49962a[SessionTicketKeysTypeCase.SESSIONTICKETKEYSTYPE_NOT_SET.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private int f49963e;

        /* renamed from: f  reason: collision with root package name */
        private Object f49964f;

        /* renamed from: g  reason: collision with root package name */
        private CommonTlsContext f49965g;

        /* renamed from: h  reason: collision with root package name */
        private q2<CommonTlsContext, CommonTlsContext.c, d> f49966h;

        /* renamed from: i  reason: collision with root package name */
        private BoolValue f49967i;

        /* renamed from: j  reason: collision with root package name */
        private q2<BoolValue, BoolValue.b, com.google.protobuf.l> f49968j;

        /* renamed from: k  reason: collision with root package name */
        private BoolValue f49969k;

        /* renamed from: l  reason: collision with root package name */
        private q2<BoolValue, BoolValue.b, com.google.protobuf.l> f49970l;

        /* renamed from: m  reason: collision with root package name */
        private q2<TlsSessionTicketKeys, TlsSessionTicketKeys.b, m> f49971m;

        /* renamed from: n  reason: collision with root package name */
        private q2<SdsSecretConfig, SdsSecretConfig.b, g> f49972n;

        /* renamed from: o  reason: collision with root package name */
        private Duration f49973o;

        /* renamed from: p  reason: collision with root package name */
        private q2<Duration, Duration.b, v> f49974p;

        /* renamed from: q  reason: collision with root package name */
        private int f49975q;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return l.f50046d.d(DownstreamTlsContext.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public DownstreamTlsContext build() {
            DownstreamTlsContext I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public DownstreamTlsContext I() {
            DownstreamTlsContext downstreamTlsContext = new DownstreamTlsContext(this, (a) null);
            q2<CommonTlsContext, CommonTlsContext.c, d> q2Var = this.f49966h;
            if (q2Var == null) {
                downstreamTlsContext.commonTlsContext_ = this.f49965g;
            } else {
                downstreamTlsContext.commonTlsContext_ = q2Var.b();
            }
            q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var2 = this.f49968j;
            if (q2Var2 == null) {
                downstreamTlsContext.requireClientCertificate_ = this.f49967i;
            } else {
                downstreamTlsContext.requireClientCertificate_ = q2Var2.b();
            }
            q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var3 = this.f49970l;
            if (q2Var3 == null) {
                downstreamTlsContext.requireSni_ = this.f49969k;
            } else {
                downstreamTlsContext.requireSni_ = q2Var3.b();
            }
            if (this.f49963e == 4) {
                q2<TlsSessionTicketKeys, TlsSessionTicketKeys.b, m> q2Var4 = this.f49971m;
                if (q2Var4 == null) {
                    downstreamTlsContext.sessionTicketKeysType_ = this.f49964f;
                } else {
                    downstreamTlsContext.sessionTicketKeysType_ = q2Var4.b();
                }
            }
            if (this.f49963e == 5) {
                q2<SdsSecretConfig, SdsSecretConfig.b, g> q2Var5 = this.f49972n;
                if (q2Var5 == null) {
                    downstreamTlsContext.sessionTicketKeysType_ = this.f49964f;
                } else {
                    downstreamTlsContext.sessionTicketKeysType_ = q2Var5.b();
                }
            }
            if (this.f49963e == 7) {
                downstreamTlsContext.sessionTicketKeysType_ = this.f49964f;
            }
            q2<Duration, Duration.b, v> q2Var6 = this.f49974p;
            if (q2Var6 == null) {
                downstreamTlsContext.sessionTimeout_ = this.f49973o;
            } else {
                downstreamTlsContext.sessionTimeout_ = q2Var6.b();
            }
            downstreamTlsContext.ocspStaplePolicy_ = this.f49975q;
            downstreamTlsContext.sessionTicketKeysTypeCase_ = this.f49963e;
            Q();
            return downstreamTlsContext;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public DownstreamTlsContext getDefaultInstanceForType() {
            return DownstreamTlsContext.getDefaultInstance();
        }

        public c d0(CommonTlsContext commonTlsContext) {
            q2<CommonTlsContext, CommonTlsContext.c, d> q2Var = this.f49966h;
            if (q2Var == null) {
                CommonTlsContext commonTlsContext2 = this.f49965g;
                if (commonTlsContext2 != null) {
                    this.f49965g = CommonTlsContext.newBuilder(commonTlsContext2).n0(commonTlsContext).I();
                } else {
                    this.f49965g = commonTlsContext;
                }
                R();
            } else {
                q2Var.e(commonTlsContext);
            }
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.DownstreamTlsContext.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.DownstreamTlsContext.access$1200()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.DownstreamTlsContext r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.DownstreamTlsContext) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.h0(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.DownstreamTlsContext r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.DownstreamTlsContext) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.h0(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.DownstreamTlsContext.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.DownstreamTlsContext$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        public c v(l1 l1Var) {
            if (l1Var instanceof DownstreamTlsContext) {
                return h0((DownstreamTlsContext) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return l.f50045c;
        }

        public c h0(DownstreamTlsContext downstreamTlsContext) {
            if (downstreamTlsContext == DownstreamTlsContext.getDefaultInstance()) {
                return this;
            }
            if (downstreamTlsContext.hasCommonTlsContext()) {
                d0(downstreamTlsContext.getCommonTlsContext());
            }
            if (downstreamTlsContext.hasRequireClientCertificate()) {
                i0(downstreamTlsContext.getRequireClientCertificate());
            }
            if (downstreamTlsContext.hasRequireSni()) {
                j0(downstreamTlsContext.getRequireSni());
            }
            if (downstreamTlsContext.hasSessionTimeout()) {
                m0(downstreamTlsContext.getSessionTimeout());
            }
            if (downstreamTlsContext.ocspStaplePolicy_ != 0) {
                r0(downstreamTlsContext.getOcspStaplePolicyValue());
            }
            int i9 = b.f49962a[downstreamTlsContext.getSessionTicketKeysTypeCase().ordinal()];
            if (i9 == 1) {
                k0(downstreamTlsContext.getSessionTicketKeys());
            } else if (i9 == 2) {
                l0(downstreamTlsContext.getSessionTicketKeysSdsSecretConfig());
            } else if (i9 == 3) {
                o0(downstreamTlsContext.getDisableStatelessSessionResumption());
            }
            z(((GeneratedMessageV3) downstreamTlsContext).unknownFields);
            R();
            return this;
        }

        public c i0(BoolValue boolValue) {
            q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var = this.f49968j;
            if (q2Var == null) {
                BoolValue boolValue2 = this.f49967i;
                if (boolValue2 != null) {
                    this.f49967i = BoolValue.newBuilder(boolValue2).d0(boolValue).I();
                } else {
                    this.f49967i = boolValue;
                }
                R();
            } else {
                q2Var.e(boolValue);
            }
            return this;
        }

        public c j0(BoolValue boolValue) {
            q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var = this.f49970l;
            if (q2Var == null) {
                BoolValue boolValue2 = this.f49969k;
                if (boolValue2 != null) {
                    this.f49969k = BoolValue.newBuilder(boolValue2).d0(boolValue).I();
                } else {
                    this.f49969k = boolValue;
                }
                R();
            } else {
                q2Var.e(boolValue);
            }
            return this;
        }

        public c k0(TlsSessionTicketKeys tlsSessionTicketKeys) {
            q2<TlsSessionTicketKeys, TlsSessionTicketKeys.b, m> q2Var = this.f49971m;
            if (q2Var == null) {
                if (this.f49963e == 4 && this.f49964f != TlsSessionTicketKeys.getDefaultInstance()) {
                    this.f49964f = TlsSessionTicketKeys.newBuilder((TlsSessionTicketKeys) this.f49964f).i0(tlsSessionTicketKeys).I();
                } else {
                    this.f49964f = tlsSessionTicketKeys;
                }
                R();
            } else {
                if (this.f49963e == 4) {
                    q2Var.e(tlsSessionTicketKeys);
                }
                this.f49971m.g(tlsSessionTicketKeys);
            }
            this.f49963e = 4;
            return this;
        }

        public c l0(SdsSecretConfig sdsSecretConfig) {
            q2<SdsSecretConfig, SdsSecretConfig.b, g> q2Var = this.f49972n;
            if (q2Var == null) {
                if (this.f49963e == 5 && this.f49964f != SdsSecretConfig.getDefaultInstance()) {
                    this.f49964f = SdsSecretConfig.newBuilder((SdsSecretConfig) this.f49964f).g0(sdsSecretConfig).I();
                } else {
                    this.f49964f = sdsSecretConfig;
                }
                R();
            } else {
                if (this.f49963e == 5) {
                    q2Var.e(sdsSecretConfig);
                }
                this.f49972n.g(sdsSecretConfig);
            }
            this.f49963e = 5;
            return this;
        }

        public c m0(Duration duration) {
            q2<Duration, Duration.b, v> q2Var = this.f49974p;
            if (q2Var == null) {
                Duration duration2 = this.f49973o;
                if (duration2 != null) {
                    this.f49973o = Duration.newBuilder(duration2).e0(duration).I();
                } else {
                    this.f49973o = duration;
                }
                R();
            } else {
                q2Var.e(duration);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: n0 */
        public final c z(h3 h3Var) {
            return (c) super.z(h3Var);
        }

        public c o0(boolean z10) {
            this.f49963e = 7;
            this.f49964f = Boolean.valueOf(z10);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: q0 */
        public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.c(fieldDescriptor, obj);
        }

        public c r0(int i9) {
            this.f49975q = i9;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: s0 */
        public final c f1(h3 h3Var) {
            return (c) super.f1(h3Var);
        }

        /* synthetic */ c(a aVar) {
            this();
        }

        private c() {
            this.f49963e = 0;
            this.f49975q = 0;
            b0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f49963e = 0;
            this.f49975q = 0;
            b0();
        }
    }

    /* synthetic */ DownstreamTlsContext(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static DownstreamTlsContext getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return l.f50045c;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static DownstreamTlsContext parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (DownstreamTlsContext) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static DownstreamTlsContext parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<DownstreamTlsContext> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof DownstreamTlsContext)) {
            return super.equals(obj);
        }
        DownstreamTlsContext downstreamTlsContext = (DownstreamTlsContext) obj;
        if (hasCommonTlsContext() != downstreamTlsContext.hasCommonTlsContext()) {
            return false;
        }
        if ((!hasCommonTlsContext() || getCommonTlsContext().equals(downstreamTlsContext.getCommonTlsContext())) && hasRequireClientCertificate() == downstreamTlsContext.hasRequireClientCertificate()) {
            if ((!hasRequireClientCertificate() || getRequireClientCertificate().equals(downstreamTlsContext.getRequireClientCertificate())) && hasRequireSni() == downstreamTlsContext.hasRequireSni()) {
                if ((!hasRequireSni() || getRequireSni().equals(downstreamTlsContext.getRequireSni())) && hasSessionTimeout() == downstreamTlsContext.hasSessionTimeout()) {
                    if ((!hasSessionTimeout() || getSessionTimeout().equals(downstreamTlsContext.getSessionTimeout())) && this.ocspStaplePolicy_ == downstreamTlsContext.ocspStaplePolicy_ && getSessionTicketKeysTypeCase().equals(downstreamTlsContext.getSessionTicketKeysTypeCase())) {
                        int i9 = this.sessionTicketKeysTypeCase_;
                        if (i9 != 4) {
                            if (i9 != 5) {
                                if (i9 == 7 && getDisableStatelessSessionResumption() != downstreamTlsContext.getDisableStatelessSessionResumption()) {
                                    return false;
                                }
                            } else if (!getSessionTicketKeysSdsSecretConfig().equals(downstreamTlsContext.getSessionTicketKeysSdsSecretConfig())) {
                                return false;
                            }
                        } else if (!getSessionTicketKeys().equals(downstreamTlsContext.getSessionTicketKeys())) {
                            return false;
                        }
                        return this.unknownFields.equals(downstreamTlsContext.unknownFields);
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    public CommonTlsContext getCommonTlsContext() {
        CommonTlsContext commonTlsContext = this.commonTlsContext_;
        return commonTlsContext == null ? CommonTlsContext.getDefaultInstance() : commonTlsContext;
    }

    public d getCommonTlsContextOrBuilder() {
        return getCommonTlsContext();
    }

    public boolean getDisableStatelessSessionResumption() {
        if (this.sessionTicketKeysTypeCase_ == 7) {
            return ((Boolean) this.sessionTicketKeysType_).booleanValue();
        }
        return false;
    }

    public OcspStaplePolicy getOcspStaplePolicy() {
        OcspStaplePolicy valueOf = OcspStaplePolicy.valueOf(this.ocspStaplePolicy_);
        return valueOf == null ? OcspStaplePolicy.UNRECOGNIZED : valueOf;
    }

    public int getOcspStaplePolicyValue() {
        return this.ocspStaplePolicy_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<DownstreamTlsContext> getParserForType() {
        return PARSER;
    }

    public BoolValue getRequireClientCertificate() {
        BoolValue boolValue = this.requireClientCertificate_;
        return boolValue == null ? BoolValue.getDefaultInstance() : boolValue;
    }

    public com.google.protobuf.l getRequireClientCertificateOrBuilder() {
        return getRequireClientCertificate();
    }

    public BoolValue getRequireSni() {
        BoolValue boolValue = this.requireSni_;
        return boolValue == null ? BoolValue.getDefaultInstance() : boolValue;
    }

    public com.google.protobuf.l getRequireSniOrBuilder() {
        return getRequireSni();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.commonTlsContext_ != null ? 0 + CodedOutputStream.G(1, getCommonTlsContext()) : 0;
        if (this.requireClientCertificate_ != null) {
            G += CodedOutputStream.G(2, getRequireClientCertificate());
        }
        if (this.requireSni_ != null) {
            G += CodedOutputStream.G(3, getRequireSni());
        }
        if (this.sessionTicketKeysTypeCase_ == 4) {
            G += CodedOutputStream.G(4, (TlsSessionTicketKeys) this.sessionTicketKeysType_);
        }
        if (this.sessionTicketKeysTypeCase_ == 5) {
            G += CodedOutputStream.G(5, (SdsSecretConfig) this.sessionTicketKeysType_);
        }
        if (this.sessionTimeout_ != null) {
            G += CodedOutputStream.G(6, getSessionTimeout());
        }
        if (this.sessionTicketKeysTypeCase_ == 7) {
            G += CodedOutputStream.e(7, ((Boolean) this.sessionTicketKeysType_).booleanValue());
        }
        if (this.ocspStaplePolicy_ != OcspStaplePolicy.LENIENT_STAPLING.getNumber()) {
            G += CodedOutputStream.l(8, this.ocspStaplePolicy_);
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public TlsSessionTicketKeys getSessionTicketKeys() {
        if (this.sessionTicketKeysTypeCase_ == 4) {
            return (TlsSessionTicketKeys) this.sessionTicketKeysType_;
        }
        return TlsSessionTicketKeys.getDefaultInstance();
    }

    public m getSessionTicketKeysOrBuilder() {
        if (this.sessionTicketKeysTypeCase_ == 4) {
            return (TlsSessionTicketKeys) this.sessionTicketKeysType_;
        }
        return TlsSessionTicketKeys.getDefaultInstance();
    }

    public SdsSecretConfig getSessionTicketKeysSdsSecretConfig() {
        if (this.sessionTicketKeysTypeCase_ == 5) {
            return (SdsSecretConfig) this.sessionTicketKeysType_;
        }
        return SdsSecretConfig.getDefaultInstance();
    }

    public g getSessionTicketKeysSdsSecretConfigOrBuilder() {
        if (this.sessionTicketKeysTypeCase_ == 5) {
            return (SdsSecretConfig) this.sessionTicketKeysType_;
        }
        return SdsSecretConfig.getDefaultInstance();
    }

    public SessionTicketKeysTypeCase getSessionTicketKeysTypeCase() {
        return SessionTicketKeysTypeCase.forNumber(this.sessionTicketKeysTypeCase_);
    }

    public Duration getSessionTimeout() {
        Duration duration = this.sessionTimeout_;
        return duration == null ? Duration.getDefaultInstance() : duration;
    }

    public v getSessionTimeoutOrBuilder() {
        return getSessionTimeout();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasCommonTlsContext() {
        return this.commonTlsContext_ != null;
    }

    public boolean hasDisableStatelessSessionResumption() {
        return this.sessionTicketKeysTypeCase_ == 7;
    }

    public boolean hasRequireClientCertificate() {
        return this.requireClientCertificate_ != null;
    }

    public boolean hasRequireSni() {
        return this.requireSni_ != null;
    }

    public boolean hasSessionTicketKeys() {
        return this.sessionTicketKeysTypeCase_ == 4;
    }

    public boolean hasSessionTicketKeysSdsSecretConfig() {
        return this.sessionTicketKeysTypeCase_ == 5;
    }

    public boolean hasSessionTimeout() {
        return this.sessionTimeout_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9;
        int hashCode;
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int hashCode2 = 779 + getDescriptor().hashCode();
        if (hasCommonTlsContext()) {
            hashCode2 = (((hashCode2 * 37) + 1) * 53) + getCommonTlsContext().hashCode();
        }
        if (hasRequireClientCertificate()) {
            hashCode2 = (((hashCode2 * 37) + 2) * 53) + getRequireClientCertificate().hashCode();
        }
        if (hasRequireSni()) {
            hashCode2 = (((hashCode2 * 37) + 3) * 53) + getRequireSni().hashCode();
        }
        if (hasSessionTimeout()) {
            hashCode2 = (((hashCode2 * 37) + 6) * 53) + getSessionTimeout().hashCode();
        }
        int i11 = (((hashCode2 * 37) + 8) * 53) + this.ocspStaplePolicy_;
        int i12 = this.sessionTicketKeysTypeCase_;
        if (i12 == 4) {
            i9 = ((i11 * 37) + 4) * 53;
            hashCode = getSessionTicketKeys().hashCode();
        } else if (i12 == 5) {
            i9 = ((i11 * 37) + 5) * 53;
            hashCode = getSessionTicketKeysSdsSecretConfig().hashCode();
        } else {
            if (i12 == 7) {
                i9 = ((i11 * 37) + 7) * 53;
                hashCode = u0.d(getDisableStatelessSessionResumption());
            }
            int hashCode3 = (i11 * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode3;
            return hashCode3;
        }
        i11 = i9 + hashCode;
        int hashCode32 = (i11 * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode32;
        return hashCode32;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return l.f50046d.d(DownstreamTlsContext.class, c.class);
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
        return new DownstreamTlsContext();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.commonTlsContext_ != null) {
            codedOutputStream.L0(1, getCommonTlsContext());
        }
        if (this.requireClientCertificate_ != null) {
            codedOutputStream.L0(2, getRequireClientCertificate());
        }
        if (this.requireSni_ != null) {
            codedOutputStream.L0(3, getRequireSni());
        }
        if (this.sessionTicketKeysTypeCase_ == 4) {
            codedOutputStream.L0(4, (TlsSessionTicketKeys) this.sessionTicketKeysType_);
        }
        if (this.sessionTicketKeysTypeCase_ == 5) {
            codedOutputStream.L0(5, (SdsSecretConfig) this.sessionTicketKeysType_);
        }
        if (this.sessionTimeout_ != null) {
            codedOutputStream.L0(6, getSessionTimeout());
        }
        if (this.sessionTicketKeysTypeCase_ == 7) {
            codedOutputStream.n0(7, ((Boolean) this.sessionTicketKeysType_).booleanValue());
        }
        if (this.ocspStaplePolicy_ != OcspStaplePolicy.LENIENT_STAPLING.getNumber()) {
            codedOutputStream.v0(8, this.ocspStaplePolicy_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ DownstreamTlsContext(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(DownstreamTlsContext downstreamTlsContext) {
        return DEFAULT_INSTANCE.toBuilder().h0(downstreamTlsContext);
    }

    public static DownstreamTlsContext parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private DownstreamTlsContext(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.sessionTicketKeysTypeCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static DownstreamTlsContext parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (DownstreamTlsContext) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static DownstreamTlsContext parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public DownstreamTlsContext getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).h0(this);
    }

    public static DownstreamTlsContext parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    public static DownstreamTlsContext parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    private DownstreamTlsContext() {
        this.sessionTicketKeysTypeCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
        this.ocspStaplePolicy_ = 0;
    }

    public static DownstreamTlsContext parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static DownstreamTlsContext parseFrom(InputStream inputStream) throws IOException {
        return (DownstreamTlsContext) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static DownstreamTlsContext parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (DownstreamTlsContext) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    private DownstreamTlsContext(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            CommonTlsContext commonTlsContext = this.commonTlsContext_;
                            CommonTlsContext.c builder = commonTlsContext != null ? commonTlsContext.toBuilder() : null;
                            CommonTlsContext commonTlsContext2 = (CommonTlsContext) pVar.B(CommonTlsContext.parser(), f0Var);
                            this.commonTlsContext_ = commonTlsContext2;
                            if (builder != null) {
                                builder.n0(commonTlsContext2);
                                this.commonTlsContext_ = builder.I();
                            }
                        } else if (L == 18) {
                            BoolValue boolValue = this.requireClientCertificate_;
                            BoolValue.b builder2 = boolValue != null ? boolValue.toBuilder() : null;
                            BoolValue boolValue2 = (BoolValue) pVar.B(BoolValue.parser(), f0Var);
                            this.requireClientCertificate_ = boolValue2;
                            if (builder2 != null) {
                                builder2.d0(boolValue2);
                                this.requireClientCertificate_ = builder2.I();
                            }
                        } else if (L == 26) {
                            BoolValue boolValue3 = this.requireSni_;
                            BoolValue.b builder3 = boolValue3 != null ? boolValue3.toBuilder() : null;
                            BoolValue boolValue4 = (BoolValue) pVar.B(BoolValue.parser(), f0Var);
                            this.requireSni_ = boolValue4;
                            if (builder3 != null) {
                                builder3.d0(boolValue4);
                                this.requireSni_ = builder3.I();
                            }
                        } else if (L == 34) {
                            TlsSessionTicketKeys.b builder4 = this.sessionTicketKeysTypeCase_ == 4 ? ((TlsSessionTicketKeys) this.sessionTicketKeysType_).toBuilder() : null;
                            o1 B = pVar.B(TlsSessionTicketKeys.parser(), f0Var);
                            this.sessionTicketKeysType_ = B;
                            if (builder4 != null) {
                                builder4.i0((TlsSessionTicketKeys) B);
                                this.sessionTicketKeysType_ = builder4.I();
                            }
                            this.sessionTicketKeysTypeCase_ = 4;
                        } else if (L == 42) {
                            SdsSecretConfig.b builder5 = this.sessionTicketKeysTypeCase_ == 5 ? ((SdsSecretConfig) this.sessionTicketKeysType_).toBuilder() : null;
                            o1 B2 = pVar.B(SdsSecretConfig.parser(), f0Var);
                            this.sessionTicketKeysType_ = B2;
                            if (builder5 != null) {
                                builder5.g0((SdsSecretConfig) B2);
                                this.sessionTicketKeysType_ = builder5.I();
                            }
                            this.sessionTicketKeysTypeCase_ = 5;
                        } else if (L == 50) {
                            Duration duration = this.sessionTimeout_;
                            Duration.b builder6 = duration != null ? duration.toBuilder() : null;
                            Duration duration2 = (Duration) pVar.B(Duration.parser(), f0Var);
                            this.sessionTimeout_ = duration2;
                            if (builder6 != null) {
                                builder6.e0(duration2);
                                this.sessionTimeout_ = builder6.I();
                            }
                        } else if (L == 56) {
                            this.sessionTicketKeysType_ = Boolean.valueOf(pVar.r());
                            this.sessionTicketKeysTypeCase_ = 7;
                        } else if (L != 64) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            this.ocspStaplePolicy_ = pVar.u();
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

    public static DownstreamTlsContext parseFrom(p pVar) throws IOException {
        return (DownstreamTlsContext) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static DownstreamTlsContext parseFrom(p pVar, f0 f0Var) throws IOException {
        return (DownstreamTlsContext) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
