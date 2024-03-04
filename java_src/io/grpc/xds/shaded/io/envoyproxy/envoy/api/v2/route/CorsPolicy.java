package io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route;

import com.google.protobuf.BoolValue;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.h3;
import com.google.protobuf.i2;
import com.google.protobuf.l1;
import com.google.protobuf.l2;
import com.google.protobuf.o1;
import com.google.protobuf.q2;
import com.google.protobuf.u0;
import com.google.protobuf.y0;
import com.google.protobuf.z0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.RuntimeFractionalPercent;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.k0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.StringMatcher;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class CorsPolicy extends GeneratedMessageV3 implements io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.a {
    public static final int ALLOW_CREDENTIALS_FIELD_NUMBER = 6;
    public static final int ALLOW_HEADERS_FIELD_NUMBER = 3;
    public static final int ALLOW_METHODS_FIELD_NUMBER = 2;
    public static final int ALLOW_ORIGIN_FIELD_NUMBER = 1;
    public static final int ALLOW_ORIGIN_REGEX_FIELD_NUMBER = 8;
    public static final int ALLOW_ORIGIN_STRING_MATCH_FIELD_NUMBER = 11;
    public static final int ENABLED_FIELD_NUMBER = 7;
    public static final int EXPOSE_HEADERS_FIELD_NUMBER = 4;
    public static final int FILTER_ENABLED_FIELD_NUMBER = 9;
    public static final int MAX_AGE_FIELD_NUMBER = 5;
    public static final int SHADOW_ENABLED_FIELD_NUMBER = 10;
    private static final long serialVersionUID = 0;
    private BoolValue allowCredentials_;
    private volatile Object allowHeaders_;
    private volatile Object allowMethods_;
    private z0 allowOriginRegex_;
    private List<StringMatcher> allowOriginStringMatch_;
    private z0 allowOrigin_;
    private int enabledSpecifierCase_;
    private Object enabledSpecifier_;
    private volatile Object exposeHeaders_;
    private volatile Object maxAge_;
    private byte memoizedIsInitialized;
    private RuntimeFractionalPercent shadowEnabled_;
    private static final CorsPolicy DEFAULT_INSTANCE = new CorsPolicy();
    private static final e2<CorsPolicy> PARSER = new a();

    /* loaded from: classes6.dex */
    public enum EnabledSpecifierCase implements u0.c {
        ENABLED(7),
        FILTER_ENABLED(9),
        ENABLEDSPECIFIER_NOT_SET(0);
        
        private final int value;

        EnabledSpecifierCase(int i9) {
            this.value = i9;
        }

        public static EnabledSpecifierCase forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 7) {
                    if (i9 != 9) {
                        return null;
                    }
                    return FILTER_ENABLED;
                }
                return ENABLED;
            }
            return ENABLEDSPECIFIER_NOT_SET;
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static EnabledSpecifierCase valueOf(int i9) {
            return forNumber(i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<CorsPolicy> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public CorsPolicy m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new CorsPolicy(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f47010a;

        static {
            int[] iArr = new int[EnabledSpecifierCase.values().length];
            f47010a = iArr;
            try {
                iArr[EnabledSpecifierCase.ENABLED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f47010a[EnabledSpecifierCase.FILTER_ENABLED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f47010a[EnabledSpecifierCase.ENABLEDSPECIFIER_NOT_SET.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.a {

        /* renamed from: e  reason: collision with root package name */
        private int f47011e;

        /* renamed from: f  reason: collision with root package name */
        private Object f47012f;

        /* renamed from: g  reason: collision with root package name */
        private int f47013g;

        /* renamed from: h  reason: collision with root package name */
        private z0 f47014h;

        /* renamed from: i  reason: collision with root package name */
        private z0 f47015i;

        /* renamed from: j  reason: collision with root package name */
        private List<StringMatcher> f47016j;

        /* renamed from: k  reason: collision with root package name */
        private l2<StringMatcher, StringMatcher.c, io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.k> f47017k;

        /* renamed from: l  reason: collision with root package name */
        private Object f47018l;

        /* renamed from: m  reason: collision with root package name */
        private Object f47019m;

        /* renamed from: n  reason: collision with root package name */
        private Object f47020n;

        /* renamed from: o  reason: collision with root package name */
        private Object f47021o;

        /* renamed from: p  reason: collision with root package name */
        private BoolValue f47022p;

        /* renamed from: q  reason: collision with root package name */
        private q2<BoolValue, BoolValue.b, com.google.protobuf.l> f47023q;

        /* renamed from: r  reason: collision with root package name */
        private q2<BoolValue, BoolValue.b, com.google.protobuf.l> f47024r;

        /* renamed from: s  reason: collision with root package name */
        private q2<RuntimeFractionalPercent, RuntimeFractionalPercent.b, k0> f47025s;

        /* renamed from: t  reason: collision with root package name */
        private RuntimeFractionalPercent f47026t;

        /* renamed from: u  reason: collision with root package name */
        private q2<RuntimeFractionalPercent, RuntimeFractionalPercent.b, k0> f47027u;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f47013g & 1) == 0) {
                this.f47014h = new y0(this.f47014h);
                this.f47013g |= 1;
            }
        }

        private void b0() {
            if ((this.f47013g & 2) == 0) {
                this.f47015i = new y0(this.f47015i);
                this.f47013g |= 2;
            }
        }

        private void d0() {
            if ((this.f47013g & 4) == 0) {
                this.f47016j = new ArrayList(this.f47016j);
                this.f47013g |= 4;
            }
        }

        private l2<StringMatcher, StringMatcher.c, io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.k> e0() {
            if (this.f47017k == null) {
                this.f47017k = new l2<>(this.f47016j, (this.f47013g & 4) != 0, H(), O());
                this.f47016j = null;
            }
            return this.f47017k;
        }

        private void h0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                e0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return l.D.d(CorsPolicy.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public CorsPolicy build() {
            CorsPolicy I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public CorsPolicy I() {
            CorsPolicy corsPolicy = new CorsPolicy(this, (a) null);
            if ((this.f47013g & 1) != 0) {
                this.f47014h = this.f47014h.V0();
                this.f47013g &= -2;
            }
            corsPolicy.allowOrigin_ = this.f47014h;
            if ((this.f47013g & 2) != 0) {
                this.f47015i = this.f47015i.V0();
                this.f47013g &= -3;
            }
            corsPolicy.allowOriginRegex_ = this.f47015i;
            l2<StringMatcher, StringMatcher.c, io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.k> l2Var = this.f47017k;
            if (l2Var == null) {
                if ((this.f47013g & 4) != 0) {
                    this.f47016j = Collections.unmodifiableList(this.f47016j);
                    this.f47013g &= -5;
                }
                corsPolicy.allowOriginStringMatch_ = this.f47016j;
            } else {
                corsPolicy.allowOriginStringMatch_ = l2Var.e();
            }
            corsPolicy.allowMethods_ = this.f47018l;
            corsPolicy.allowHeaders_ = this.f47019m;
            corsPolicy.exposeHeaders_ = this.f47020n;
            corsPolicy.maxAge_ = this.f47021o;
            q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var = this.f47023q;
            if (q2Var == null) {
                corsPolicy.allowCredentials_ = this.f47022p;
            } else {
                corsPolicy.allowCredentials_ = q2Var.b();
            }
            if (this.f47011e == 7) {
                q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var2 = this.f47024r;
                if (q2Var2 == null) {
                    corsPolicy.enabledSpecifier_ = this.f47012f;
                } else {
                    corsPolicy.enabledSpecifier_ = q2Var2.b();
                }
            }
            if (this.f47011e == 9) {
                q2<RuntimeFractionalPercent, RuntimeFractionalPercent.b, k0> q2Var3 = this.f47025s;
                if (q2Var3 == null) {
                    corsPolicy.enabledSpecifier_ = this.f47012f;
                } else {
                    corsPolicy.enabledSpecifier_ = q2Var3.b();
                }
            }
            q2<RuntimeFractionalPercent, RuntimeFractionalPercent.b, k0> q2Var4 = this.f47027u;
            if (q2Var4 == null) {
                corsPolicy.shadowEnabled_ = this.f47026t;
            } else {
                corsPolicy.shadowEnabled_ = q2Var4.b();
            }
            corsPolicy.enabledSpecifierCase_ = this.f47011e;
            Q();
            return corsPolicy;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: g0 */
        public CorsPolicy getDefaultInstanceForType() {
            return CorsPolicy.getDefaultInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return l.C;
        }

        public c i0(BoolValue boolValue) {
            q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var = this.f47023q;
            if (q2Var == null) {
                BoolValue boolValue2 = this.f47022p;
                if (boolValue2 != null) {
                    this.f47022p = BoolValue.newBuilder(boolValue2).d0(boolValue).I();
                } else {
                    this.f47022p = boolValue;
                }
                R();
            } else {
                q2Var.e(boolValue);
            }
            return this;
        }

        @Deprecated
        public c j0(BoolValue boolValue) {
            q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var = this.f47024r;
            if (q2Var == null) {
                if (this.f47011e == 7 && this.f47012f != BoolValue.getDefaultInstance()) {
                    this.f47012f = BoolValue.newBuilder((BoolValue) this.f47012f).d0(boolValue).I();
                } else {
                    this.f47012f = boolValue;
                }
                R();
            } else {
                if (this.f47011e == 7) {
                    q2Var.e(boolValue);
                }
                this.f47024r.g(boolValue);
            }
            this.f47011e = 7;
            return this;
        }

        public c k0(RuntimeFractionalPercent runtimeFractionalPercent) {
            q2<RuntimeFractionalPercent, RuntimeFractionalPercent.b, k0> q2Var = this.f47025s;
            if (q2Var == null) {
                if (this.f47011e == 9 && this.f47012f != RuntimeFractionalPercent.getDefaultInstance()) {
                    this.f47012f = RuntimeFractionalPercent.newBuilder((RuntimeFractionalPercent) this.f47012f).h0(runtimeFractionalPercent).I();
                } else {
                    this.f47012f = runtimeFractionalPercent;
                }
                R();
            } else {
                if (this.f47011e == 9) {
                    q2Var.e(runtimeFractionalPercent);
                }
                this.f47025s.g(runtimeFractionalPercent);
            }
            this.f47011e = 9;
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: l0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.CorsPolicy.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.CorsPolicy.access$1700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.CorsPolicy r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.CorsPolicy) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.CorsPolicy r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.CorsPolicy) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.CorsPolicy.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.CorsPolicy$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: m0 */
        public c v(l1 l1Var) {
            if (l1Var instanceof CorsPolicy) {
                return n0((CorsPolicy) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public c n0(CorsPolicy corsPolicy) {
            if (corsPolicy == CorsPolicy.getDefaultInstance()) {
                return this;
            }
            if (!corsPolicy.allowOrigin_.isEmpty()) {
                if (this.f47014h.isEmpty()) {
                    this.f47014h = corsPolicy.allowOrigin_;
                    this.f47013g &= -2;
                } else {
                    a0();
                    this.f47014h.addAll(corsPolicy.allowOrigin_);
                }
                R();
            }
            if (!corsPolicy.allowOriginRegex_.isEmpty()) {
                if (this.f47015i.isEmpty()) {
                    this.f47015i = corsPolicy.allowOriginRegex_;
                    this.f47013g &= -3;
                } else {
                    b0();
                    this.f47015i.addAll(corsPolicy.allowOriginRegex_);
                }
                R();
            }
            if (this.f47017k == null) {
                if (!corsPolicy.allowOriginStringMatch_.isEmpty()) {
                    if (this.f47016j.isEmpty()) {
                        this.f47016j = corsPolicy.allowOriginStringMatch_;
                        this.f47013g &= -5;
                    } else {
                        d0();
                        this.f47016j.addAll(corsPolicy.allowOriginStringMatch_);
                    }
                    R();
                }
            } else if (!corsPolicy.allowOriginStringMatch_.isEmpty()) {
                if (this.f47017k.k()) {
                    this.f47017k.f();
                    this.f47017k = null;
                    this.f47016j = corsPolicy.allowOriginStringMatch_;
                    this.f47013g &= -5;
                    this.f47017k = GeneratedMessageV3.alwaysUseFieldBuilders ? e0() : null;
                } else {
                    this.f47017k.b(corsPolicy.allowOriginStringMatch_);
                }
            }
            if (!corsPolicy.getAllowMethods().isEmpty()) {
                this.f47018l = corsPolicy.allowMethods_;
                R();
            }
            if (!corsPolicy.getAllowHeaders().isEmpty()) {
                this.f47019m = corsPolicy.allowHeaders_;
                R();
            }
            if (!corsPolicy.getExposeHeaders().isEmpty()) {
                this.f47020n = corsPolicy.exposeHeaders_;
                R();
            }
            if (!corsPolicy.getMaxAge().isEmpty()) {
                this.f47021o = corsPolicy.maxAge_;
                R();
            }
            if (corsPolicy.hasAllowCredentials()) {
                i0(corsPolicy.getAllowCredentials());
            }
            if (corsPolicy.hasShadowEnabled()) {
                o0(corsPolicy.getShadowEnabled());
            }
            int i9 = b.f47010a[corsPolicy.getEnabledSpecifierCase().ordinal()];
            if (i9 == 1) {
                j0(corsPolicy.getEnabled());
            } else if (i9 == 2) {
                k0(corsPolicy.getFilterEnabled());
            }
            z(((GeneratedMessageV3) corsPolicy).unknownFields);
            R();
            return this;
        }

        public c o0(RuntimeFractionalPercent runtimeFractionalPercent) {
            q2<RuntimeFractionalPercent, RuntimeFractionalPercent.b, k0> q2Var = this.f47027u;
            if (q2Var == null) {
                RuntimeFractionalPercent runtimeFractionalPercent2 = this.f47026t;
                if (runtimeFractionalPercent2 != null) {
                    this.f47026t = RuntimeFractionalPercent.newBuilder(runtimeFractionalPercent2).h0(runtimeFractionalPercent).I();
                } else {
                    this.f47026t = runtimeFractionalPercent;
                }
                R();
            } else {
                q2Var.e(runtimeFractionalPercent);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: q0 */
        public final c z(h3 h3Var) {
            return (c) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: r0 */
        public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.c(fieldDescriptor, obj);
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
            this.f47011e = 0;
            z0 z0Var = y0.f15344d;
            this.f47014h = z0Var;
            this.f47015i = z0Var;
            this.f47016j = Collections.emptyList();
            this.f47018l = "";
            this.f47019m = "";
            this.f47020n = "";
            this.f47021o = "";
            h0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f47011e = 0;
            z0 z0Var = y0.f15344d;
            this.f47014h = z0Var;
            this.f47015i = z0Var;
            this.f47016j = Collections.emptyList();
            this.f47018l = "";
            this.f47019m = "";
            this.f47020n = "";
            this.f47021o = "";
            h0();
        }
    }

    /* synthetic */ CorsPolicy(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static CorsPolicy getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return l.C;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static CorsPolicy parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (CorsPolicy) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static CorsPolicy parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<CorsPolicy> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CorsPolicy)) {
            return super.equals(obj);
        }
        CorsPolicy corsPolicy = (CorsPolicy) obj;
        if (m1598getAllowOriginList().equals(corsPolicy.m1598getAllowOriginList()) && m1599getAllowOriginRegexList().equals(corsPolicy.m1599getAllowOriginRegexList()) && getAllowOriginStringMatchList().equals(corsPolicy.getAllowOriginStringMatchList()) && getAllowMethods().equals(corsPolicy.getAllowMethods()) && getAllowHeaders().equals(corsPolicy.getAllowHeaders()) && getExposeHeaders().equals(corsPolicy.getExposeHeaders()) && getMaxAge().equals(corsPolicy.getMaxAge()) && hasAllowCredentials() == corsPolicy.hasAllowCredentials()) {
            if ((!hasAllowCredentials() || getAllowCredentials().equals(corsPolicy.getAllowCredentials())) && hasShadowEnabled() == corsPolicy.hasShadowEnabled()) {
                if ((!hasShadowEnabled() || getShadowEnabled().equals(corsPolicy.getShadowEnabled())) && getEnabledSpecifierCase().equals(corsPolicy.getEnabledSpecifierCase())) {
                    int i9 = this.enabledSpecifierCase_;
                    if (i9 != 7) {
                        if (i9 == 9 && !getFilterEnabled().equals(corsPolicy.getFilterEnabled())) {
                            return false;
                        }
                    } else if (!getEnabled().equals(corsPolicy.getEnabled())) {
                        return false;
                    }
                    return this.unknownFields.equals(corsPolicy.unknownFields);
                }
                return false;
            }
            return false;
        }
        return false;
    }

    public BoolValue getAllowCredentials() {
        BoolValue boolValue = this.allowCredentials_;
        return boolValue == null ? BoolValue.getDefaultInstance() : boolValue;
    }

    public com.google.protobuf.l getAllowCredentialsOrBuilder() {
        return getAllowCredentials();
    }

    public String getAllowHeaders() {
        Object obj = this.allowHeaders_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.allowHeaders_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getAllowHeadersBytes() {
        Object obj = this.allowHeaders_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.allowHeaders_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public String getAllowMethods() {
        Object obj = this.allowMethods_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.allowMethods_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getAllowMethodsBytes() {
        Object obj = this.allowMethods_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.allowMethods_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Deprecated
    public String getAllowOrigin(int i9) {
        return this.allowOrigin_.get(i9);
    }

    @Deprecated
    public ByteString getAllowOriginBytes(int i9) {
        return this.allowOrigin_.j0(i9);
    }

    @Deprecated
    public int getAllowOriginCount() {
        return this.allowOrigin_.size();
    }

    @Deprecated
    public String getAllowOriginRegex(int i9) {
        return this.allowOriginRegex_.get(i9);
    }

    @Deprecated
    public ByteString getAllowOriginRegexBytes(int i9) {
        return this.allowOriginRegex_.j0(i9);
    }

    @Deprecated
    public int getAllowOriginRegexCount() {
        return this.allowOriginRegex_.size();
    }

    public StringMatcher getAllowOriginStringMatch(int i9) {
        return this.allowOriginStringMatch_.get(i9);
    }

    public int getAllowOriginStringMatchCount() {
        return this.allowOriginStringMatch_.size();
    }

    public List<StringMatcher> getAllowOriginStringMatchList() {
        return this.allowOriginStringMatch_;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.k getAllowOriginStringMatchOrBuilder(int i9) {
        return this.allowOriginStringMatch_.get(i9);
    }

    public List<? extends io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.k> getAllowOriginStringMatchOrBuilderList() {
        return this.allowOriginStringMatch_;
    }

    @Deprecated
    public BoolValue getEnabled() {
        if (this.enabledSpecifierCase_ == 7) {
            return (BoolValue) this.enabledSpecifier_;
        }
        return BoolValue.getDefaultInstance();
    }

    @Deprecated
    public com.google.protobuf.l getEnabledOrBuilder() {
        if (this.enabledSpecifierCase_ == 7) {
            return (BoolValue) this.enabledSpecifier_;
        }
        return BoolValue.getDefaultInstance();
    }

    public EnabledSpecifierCase getEnabledSpecifierCase() {
        return EnabledSpecifierCase.forNumber(this.enabledSpecifierCase_);
    }

    public String getExposeHeaders() {
        Object obj = this.exposeHeaders_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.exposeHeaders_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getExposeHeadersBytes() {
        Object obj = this.exposeHeaders_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.exposeHeaders_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public RuntimeFractionalPercent getFilterEnabled() {
        if (this.enabledSpecifierCase_ == 9) {
            return (RuntimeFractionalPercent) this.enabledSpecifier_;
        }
        return RuntimeFractionalPercent.getDefaultInstance();
    }

    public k0 getFilterEnabledOrBuilder() {
        if (this.enabledSpecifierCase_ == 9) {
            return (RuntimeFractionalPercent) this.enabledSpecifier_;
        }
        return RuntimeFractionalPercent.getDefaultInstance();
    }

    public String getMaxAge() {
        Object obj = this.maxAge_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.maxAge_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getMaxAgeBytes() {
        Object obj = this.maxAge_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.maxAge_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<CorsPolicy> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < this.allowOrigin_.size(); i11++) {
            i10 += GeneratedMessageV3.computeStringSizeNoTag(this.allowOrigin_.c1(i11));
        }
        int size = i10 + 0 + (m1598getAllowOriginList().size() * 1);
        if (!GeneratedMessageV3.isStringEmpty(this.allowMethods_)) {
            size += GeneratedMessageV3.computeStringSize(2, this.allowMethods_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.allowHeaders_)) {
            size += GeneratedMessageV3.computeStringSize(3, this.allowHeaders_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.exposeHeaders_)) {
            size += GeneratedMessageV3.computeStringSize(4, this.exposeHeaders_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.maxAge_)) {
            size += GeneratedMessageV3.computeStringSize(5, this.maxAge_);
        }
        if (this.allowCredentials_ != null) {
            size += CodedOutputStream.G(6, getAllowCredentials());
        }
        if (this.enabledSpecifierCase_ == 7) {
            size += CodedOutputStream.G(7, (BoolValue) this.enabledSpecifier_);
        }
        int i12 = 0;
        for (int i13 = 0; i13 < this.allowOriginRegex_.size(); i13++) {
            i12 += GeneratedMessageV3.computeStringSizeNoTag(this.allowOriginRegex_.c1(i13));
        }
        int size2 = size + i12 + (m1599getAllowOriginRegexList().size() * 1);
        if (this.enabledSpecifierCase_ == 9) {
            size2 += CodedOutputStream.G(9, (RuntimeFractionalPercent) this.enabledSpecifier_);
        }
        if (this.shadowEnabled_ != null) {
            size2 += CodedOutputStream.G(10, getShadowEnabled());
        }
        for (int i14 = 0; i14 < this.allowOriginStringMatch_.size(); i14++) {
            size2 += CodedOutputStream.G(11, this.allowOriginStringMatch_.get(i14));
        }
        int serializedSize = size2 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public RuntimeFractionalPercent getShadowEnabled() {
        RuntimeFractionalPercent runtimeFractionalPercent = this.shadowEnabled_;
        return runtimeFractionalPercent == null ? RuntimeFractionalPercent.getDefaultInstance() : runtimeFractionalPercent;
    }

    public k0 getShadowEnabledOrBuilder() {
        return getShadowEnabled();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasAllowCredentials() {
        return this.allowCredentials_ != null;
    }

    @Deprecated
    public boolean hasEnabled() {
        return this.enabledSpecifierCase_ == 7;
    }

    public boolean hasFilterEnabled() {
        return this.enabledSpecifierCase_ == 9;
    }

    public boolean hasShadowEnabled() {
        return this.shadowEnabled_ != null;
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
        if (getAllowOriginCount() > 0) {
            hashCode2 = (((hashCode2 * 37) + 1) * 53) + m1598getAllowOriginList().hashCode();
        }
        if (getAllowOriginRegexCount() > 0) {
            hashCode2 = (((hashCode2 * 37) + 8) * 53) + m1599getAllowOriginRegexList().hashCode();
        }
        if (getAllowOriginStringMatchCount() > 0) {
            hashCode2 = (((hashCode2 * 37) + 11) * 53) + getAllowOriginStringMatchList().hashCode();
        }
        int hashCode3 = (((((((((((((((hashCode2 * 37) + 2) * 53) + getAllowMethods().hashCode()) * 37) + 3) * 53) + getAllowHeaders().hashCode()) * 37) + 4) * 53) + getExposeHeaders().hashCode()) * 37) + 5) * 53) + getMaxAge().hashCode();
        if (hasAllowCredentials()) {
            hashCode3 = (((hashCode3 * 37) + 6) * 53) + getAllowCredentials().hashCode();
        }
        if (hasShadowEnabled()) {
            hashCode3 = (((hashCode3 * 37) + 10) * 53) + getShadowEnabled().hashCode();
        }
        int i11 = this.enabledSpecifierCase_;
        if (i11 == 7) {
            i9 = ((hashCode3 * 37) + 7) * 53;
            hashCode = getEnabled().hashCode();
        } else {
            if (i11 == 9) {
                i9 = ((hashCode3 * 37) + 9) * 53;
                hashCode = getFilterEnabled().hashCode();
            }
            int hashCode4 = (hashCode3 * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode4;
            return hashCode4;
        }
        hashCode3 = i9 + hashCode;
        int hashCode42 = (hashCode3 * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode42;
        return hashCode42;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return l.D.d(CorsPolicy.class, c.class);
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
        return new CorsPolicy();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        for (int i9 = 0; i9 < this.allowOrigin_.size(); i9++) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.allowOrigin_.c1(i9));
        }
        if (!GeneratedMessageV3.isStringEmpty(this.allowMethods_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.allowMethods_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.allowHeaders_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 3, this.allowHeaders_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.exposeHeaders_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 4, this.exposeHeaders_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.maxAge_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 5, this.maxAge_);
        }
        if (this.allowCredentials_ != null) {
            codedOutputStream.L0(6, getAllowCredentials());
        }
        if (this.enabledSpecifierCase_ == 7) {
            codedOutputStream.L0(7, (BoolValue) this.enabledSpecifier_);
        }
        for (int i10 = 0; i10 < this.allowOriginRegex_.size(); i10++) {
            GeneratedMessageV3.writeString(codedOutputStream, 8, this.allowOriginRegex_.c1(i10));
        }
        if (this.enabledSpecifierCase_ == 9) {
            codedOutputStream.L0(9, (RuntimeFractionalPercent) this.enabledSpecifier_);
        }
        if (this.shadowEnabled_ != null) {
            codedOutputStream.L0(10, getShadowEnabled());
        }
        for (int i11 = 0; i11 < this.allowOriginStringMatch_.size(); i11++) {
            codedOutputStream.L0(11, this.allowOriginStringMatch_.get(i11));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ CorsPolicy(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(CorsPolicy corsPolicy) {
        return DEFAULT_INSTANCE.toBuilder().n0(corsPolicy);
    }

    public static CorsPolicy parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    @Deprecated
    /* renamed from: getAllowOriginList */
    public i2 m1598getAllowOriginList() {
        return this.allowOrigin_;
    }

    @Deprecated
    /* renamed from: getAllowOriginRegexList */
    public i2 m1599getAllowOriginRegexList() {
        return this.allowOriginRegex_;
    }

    private CorsPolicy(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.enabledSpecifierCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static CorsPolicy parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (CorsPolicy) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static CorsPolicy parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public CorsPolicy getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).n0(this);
    }

    public static CorsPolicy parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    public static CorsPolicy parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    private CorsPolicy() {
        this.enabledSpecifierCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
        z0 z0Var = y0.f15344d;
        this.allowOrigin_ = z0Var;
        this.allowOriginRegex_ = z0Var;
        this.allowOriginStringMatch_ = Collections.emptyList();
        this.allowMethods_ = "";
        this.allowHeaders_ = "";
        this.exposeHeaders_ = "";
        this.maxAge_ = "";
    }

    public static CorsPolicy parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static CorsPolicy parseFrom(InputStream inputStream) throws IOException {
        return (CorsPolicy) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static CorsPolicy parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (CorsPolicy) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static CorsPolicy parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (CorsPolicy) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static CorsPolicy parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
        return (CorsPolicy) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }

    private CorsPolicy(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                String K = pVar.K();
                                if (!(z11 & true)) {
                                    this.allowOrigin_ = new y0();
                                    z11 |= true;
                                }
                                this.allowOrigin_.add(K);
                                continue;
                            case 18:
                                this.allowMethods_ = pVar.K();
                                continue;
                            case 26:
                                this.allowHeaders_ = pVar.K();
                                continue;
                            case 34:
                                this.exposeHeaders_ = pVar.K();
                                continue;
                            case 42:
                                this.maxAge_ = pVar.K();
                                continue;
                            case 50:
                                BoolValue boolValue = this.allowCredentials_;
                                BoolValue.b builder = boolValue != null ? boolValue.toBuilder() : null;
                                BoolValue boolValue2 = (BoolValue) pVar.B(BoolValue.parser(), f0Var);
                                this.allowCredentials_ = boolValue2;
                                if (builder != null) {
                                    builder.d0(boolValue2);
                                    this.allowCredentials_ = builder.I();
                                } else {
                                    continue;
                                }
                            case 58:
                                BoolValue.b builder2 = this.enabledSpecifierCase_ == 7 ? ((BoolValue) this.enabledSpecifier_).toBuilder() : null;
                                o1 B = pVar.B(BoolValue.parser(), f0Var);
                                this.enabledSpecifier_ = B;
                                if (builder2 != null) {
                                    builder2.d0((BoolValue) B);
                                    this.enabledSpecifier_ = builder2.I();
                                }
                                this.enabledSpecifierCase_ = 7;
                                continue;
                            case 66:
                                String K2 = pVar.K();
                                if (!(z11 & true)) {
                                    this.allowOriginRegex_ = new y0();
                                    z11 |= true;
                                }
                                this.allowOriginRegex_.add(K2);
                                continue;
                            case 74:
                                RuntimeFractionalPercent.b builder3 = this.enabledSpecifierCase_ == 9 ? ((RuntimeFractionalPercent) this.enabledSpecifier_).toBuilder() : null;
                                o1 B2 = pVar.B(RuntimeFractionalPercent.parser(), f0Var);
                                this.enabledSpecifier_ = B2;
                                if (builder3 != null) {
                                    builder3.h0((RuntimeFractionalPercent) B2);
                                    this.enabledSpecifier_ = builder3.I();
                                }
                                this.enabledSpecifierCase_ = 9;
                                continue;
                            case 82:
                                RuntimeFractionalPercent runtimeFractionalPercent = this.shadowEnabled_;
                                RuntimeFractionalPercent.b builder4 = runtimeFractionalPercent != null ? runtimeFractionalPercent.toBuilder() : null;
                                RuntimeFractionalPercent runtimeFractionalPercent2 = (RuntimeFractionalPercent) pVar.B(RuntimeFractionalPercent.parser(), f0Var);
                                this.shadowEnabled_ = runtimeFractionalPercent2;
                                if (builder4 != null) {
                                    builder4.h0(runtimeFractionalPercent2);
                                    this.shadowEnabled_ = builder4.I();
                                } else {
                                    continue;
                                }
                            case 90:
                                if (!(z11 & true)) {
                                    this.allowOriginStringMatch_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.allowOriginStringMatch_.add((StringMatcher) pVar.B(StringMatcher.parser(), f0Var));
                                continue;
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
                    this.allowOrigin_ = this.allowOrigin_.V0();
                }
                if (z11 & true) {
                    this.allowOriginRegex_ = this.allowOriginRegex_.V0();
                }
                if (z11 & true) {
                    this.allowOriginStringMatch_ = Collections.unmodifiableList(this.allowOriginStringMatch_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }
}
