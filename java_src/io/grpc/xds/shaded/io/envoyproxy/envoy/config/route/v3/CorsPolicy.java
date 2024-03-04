package io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3;

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
import com.google.protobuf.l1;
import com.google.protobuf.l2;
import com.google.protobuf.o1;
import com.google.protobuf.q2;
import com.google.protobuf.u0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.RuntimeFractionalPercent;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.x0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.StringMatcher;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class CorsPolicy extends GeneratedMessageV3 implements io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.b {
    public static final int ALLOW_CREDENTIALS_FIELD_NUMBER = 6;
    public static final int ALLOW_HEADERS_FIELD_NUMBER = 3;
    public static final int ALLOW_METHODS_FIELD_NUMBER = 2;
    public static final int ALLOW_ORIGIN_STRING_MATCH_FIELD_NUMBER = 11;
    public static final int EXPOSE_HEADERS_FIELD_NUMBER = 4;
    public static final int FILTER_ENABLED_FIELD_NUMBER = 9;
    public static final int MAX_AGE_FIELD_NUMBER = 5;
    public static final int SHADOW_ENABLED_FIELD_NUMBER = 10;
    private static final long serialVersionUID = 0;
    private BoolValue allowCredentials_;
    private volatile Object allowHeaders_;
    private volatile Object allowMethods_;
    private List<StringMatcher> allowOriginStringMatch_;
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
        FILTER_ENABLED(9),
        ENABLEDSPECIFIER_NOT_SET(0);
        
        private final int value;

        EnabledSpecifierCase(int i9) {
            this.value = i9;
        }

        public static EnabledSpecifierCase forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 9) {
                    return null;
                }
                return FILTER_ENABLED;
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
        static final /* synthetic */ int[] f49111a;

        static {
            int[] iArr = new int[EnabledSpecifierCase.values().length];
            f49111a = iArr;
            try {
                iArr[EnabledSpecifierCase.FILTER_ENABLED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f49111a[EnabledSpecifierCase.ENABLEDSPECIFIER_NOT_SET.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.b {

        /* renamed from: e  reason: collision with root package name */
        private int f49112e;

        /* renamed from: f  reason: collision with root package name */
        private Object f49113f;

        /* renamed from: g  reason: collision with root package name */
        private int f49114g;

        /* renamed from: h  reason: collision with root package name */
        private List<StringMatcher> f49115h;

        /* renamed from: i  reason: collision with root package name */
        private l2<StringMatcher, StringMatcher.c, io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.n> f49116i;

        /* renamed from: j  reason: collision with root package name */
        private Object f49117j;

        /* renamed from: k  reason: collision with root package name */
        private Object f49118k;

        /* renamed from: l  reason: collision with root package name */
        private Object f49119l;

        /* renamed from: m  reason: collision with root package name */
        private Object f49120m;

        /* renamed from: n  reason: collision with root package name */
        private BoolValue f49121n;

        /* renamed from: o  reason: collision with root package name */
        private q2<BoolValue, BoolValue.b, com.google.protobuf.l> f49122o;

        /* renamed from: p  reason: collision with root package name */
        private q2<RuntimeFractionalPercent, RuntimeFractionalPercent.b, x0> f49123p;

        /* renamed from: q  reason: collision with root package name */
        private RuntimeFractionalPercent f49124q;

        /* renamed from: r  reason: collision with root package name */
        private q2<RuntimeFractionalPercent, RuntimeFractionalPercent.b, x0> f49125r;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f49114g & 1) == 0) {
                this.f49115h = new ArrayList(this.f49115h);
                this.f49114g |= 1;
            }
        }

        private l2<StringMatcher, StringMatcher.c, io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.n> b0() {
            if (this.f49116i == null) {
                this.f49116i = new l2<>(this.f49115h, (this.f49114g & 1) != 0, H(), O());
                this.f49115h = null;
            }
            return this.f49116i;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                b0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return o.f49515z.d(CorsPolicy.class, c.class);
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
            int i9 = this.f49114g;
            l2<StringMatcher, StringMatcher.c, io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.n> l2Var = this.f49116i;
            if (l2Var == null) {
                if ((i9 & 1) != 0) {
                    this.f49115h = Collections.unmodifiableList(this.f49115h);
                    this.f49114g &= -2;
                }
                corsPolicy.allowOriginStringMatch_ = this.f49115h;
            } else {
                corsPolicy.allowOriginStringMatch_ = l2Var.e();
            }
            corsPolicy.allowMethods_ = this.f49117j;
            corsPolicy.allowHeaders_ = this.f49118k;
            corsPolicy.exposeHeaders_ = this.f49119l;
            corsPolicy.maxAge_ = this.f49120m;
            q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var = this.f49122o;
            if (q2Var == null) {
                corsPolicy.allowCredentials_ = this.f49121n;
            } else {
                corsPolicy.allowCredentials_ = q2Var.b();
            }
            if (this.f49112e == 9) {
                q2<RuntimeFractionalPercent, RuntimeFractionalPercent.b, x0> q2Var2 = this.f49123p;
                if (q2Var2 == null) {
                    corsPolicy.enabledSpecifier_ = this.f49113f;
                } else {
                    corsPolicy.enabledSpecifier_ = q2Var2.b();
                }
            }
            q2<RuntimeFractionalPercent, RuntimeFractionalPercent.b, x0> q2Var3 = this.f49125r;
            if (q2Var3 == null) {
                corsPolicy.shadowEnabled_ = this.f49124q;
            } else {
                corsPolicy.shadowEnabled_ = q2Var3.b();
            }
            corsPolicy.enabledSpecifierCase_ = this.f49112e;
            Q();
            return corsPolicy;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: d0 */
        public CorsPolicy getDefaultInstanceForType() {
            return CorsPolicy.getDefaultInstance();
        }

        public c g0(BoolValue boolValue) {
            q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var = this.f49122o;
            if (q2Var == null) {
                BoolValue boolValue2 = this.f49121n;
                if (boolValue2 != null) {
                    this.f49121n = BoolValue.newBuilder(boolValue2).d0(boolValue).I();
                } else {
                    this.f49121n = boolValue;
                }
                R();
            } else {
                q2Var.e(boolValue);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return o.f49513y;
        }

        public c h0(RuntimeFractionalPercent runtimeFractionalPercent) {
            q2<RuntimeFractionalPercent, RuntimeFractionalPercent.b, x0> q2Var = this.f49123p;
            if (q2Var == null) {
                if (this.f49112e == 9 && this.f49113f != RuntimeFractionalPercent.getDefaultInstance()) {
                    this.f49113f = RuntimeFractionalPercent.newBuilder((RuntimeFractionalPercent) this.f49113f).h0(runtimeFractionalPercent).I();
                } else {
                    this.f49113f = runtimeFractionalPercent;
                }
                R();
            } else {
                if (this.f49112e == 9) {
                    q2Var.e(runtimeFractionalPercent);
                }
                this.f49123p.g(runtimeFractionalPercent);
            }
            this.f49112e = 9;
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.CorsPolicy.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.CorsPolicy.access$1500()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.CorsPolicy r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.CorsPolicy) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.k0(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.CorsPolicy r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.CorsPolicy) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.k0(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.CorsPolicy.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.CorsPolicy$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: j0 */
        public c v(l1 l1Var) {
            if (l1Var instanceof CorsPolicy) {
                return k0((CorsPolicy) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public c k0(CorsPolicy corsPolicy) {
            if (corsPolicy == CorsPolicy.getDefaultInstance()) {
                return this;
            }
            if (this.f49116i == null) {
                if (!corsPolicy.allowOriginStringMatch_.isEmpty()) {
                    if (this.f49115h.isEmpty()) {
                        this.f49115h = corsPolicy.allowOriginStringMatch_;
                        this.f49114g &= -2;
                    } else {
                        a0();
                        this.f49115h.addAll(corsPolicy.allowOriginStringMatch_);
                    }
                    R();
                }
            } else if (!corsPolicy.allowOriginStringMatch_.isEmpty()) {
                if (this.f49116i.k()) {
                    this.f49116i.f();
                    this.f49116i = null;
                    this.f49115h = corsPolicy.allowOriginStringMatch_;
                    this.f49114g &= -2;
                    this.f49116i = GeneratedMessageV3.alwaysUseFieldBuilders ? b0() : null;
                } else {
                    this.f49116i.b(corsPolicy.allowOriginStringMatch_);
                }
            }
            if (!corsPolicy.getAllowMethods().isEmpty()) {
                this.f49117j = corsPolicy.allowMethods_;
                R();
            }
            if (!corsPolicy.getAllowHeaders().isEmpty()) {
                this.f49118k = corsPolicy.allowHeaders_;
                R();
            }
            if (!corsPolicy.getExposeHeaders().isEmpty()) {
                this.f49119l = corsPolicy.exposeHeaders_;
                R();
            }
            if (!corsPolicy.getMaxAge().isEmpty()) {
                this.f49120m = corsPolicy.maxAge_;
                R();
            }
            if (corsPolicy.hasAllowCredentials()) {
                g0(corsPolicy.getAllowCredentials());
            }
            if (corsPolicy.hasShadowEnabled()) {
                l0(corsPolicy.getShadowEnabled());
            }
            if (b.f49111a[corsPolicy.getEnabledSpecifierCase().ordinal()] == 1) {
                h0(corsPolicy.getFilterEnabled());
            }
            z(((GeneratedMessageV3) corsPolicy).unknownFields);
            R();
            return this;
        }

        public c l0(RuntimeFractionalPercent runtimeFractionalPercent) {
            q2<RuntimeFractionalPercent, RuntimeFractionalPercent.b, x0> q2Var = this.f49125r;
            if (q2Var == null) {
                RuntimeFractionalPercent runtimeFractionalPercent2 = this.f49124q;
                if (runtimeFractionalPercent2 != null) {
                    this.f49124q = RuntimeFractionalPercent.newBuilder(runtimeFractionalPercent2).h0(runtimeFractionalPercent).I();
                } else {
                    this.f49124q = runtimeFractionalPercent;
                }
                R();
            } else {
                q2Var.e(runtimeFractionalPercent);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: m0 */
        public final c z(h3 h3Var) {
            return (c) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: n0 */
        public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.c(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: o0 */
        public final c f1(h3 h3Var) {
            return (c) super.f1(h3Var);
        }

        /* synthetic */ c(a aVar) {
            this();
        }

        private c() {
            this.f49112e = 0;
            this.f49115h = Collections.emptyList();
            this.f49117j = "";
            this.f49118k = "";
            this.f49119l = "";
            this.f49120m = "";
            e0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f49112e = 0;
            this.f49115h = Collections.emptyList();
            this.f49117j = "";
            this.f49118k = "";
            this.f49119l = "";
            this.f49120m = "";
            e0();
        }
    }

    /* synthetic */ CorsPolicy(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static CorsPolicy getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return o.f49513y;
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
        if (getAllowOriginStringMatchList().equals(corsPolicy.getAllowOriginStringMatchList()) && getAllowMethods().equals(corsPolicy.getAllowMethods()) && getAllowHeaders().equals(corsPolicy.getAllowHeaders()) && getExposeHeaders().equals(corsPolicy.getExposeHeaders()) && getMaxAge().equals(corsPolicy.getMaxAge()) && hasAllowCredentials() == corsPolicy.hasAllowCredentials()) {
            if ((!hasAllowCredentials() || getAllowCredentials().equals(corsPolicy.getAllowCredentials())) && hasShadowEnabled() == corsPolicy.hasShadowEnabled()) {
                if ((!hasShadowEnabled() || getShadowEnabled().equals(corsPolicy.getShadowEnabled())) && getEnabledSpecifierCase().equals(corsPolicy.getEnabledSpecifierCase())) {
                    return (this.enabledSpecifierCase_ != 9 || getFilterEnabled().equals(corsPolicy.getFilterEnabled())) && this.unknownFields.equals(corsPolicy.unknownFields);
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

    public StringMatcher getAllowOriginStringMatch(int i9) {
        return this.allowOriginStringMatch_.get(i9);
    }

    public int getAllowOriginStringMatchCount() {
        return this.allowOriginStringMatch_.size();
    }

    public List<StringMatcher> getAllowOriginStringMatchList() {
        return this.allowOriginStringMatch_;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.n getAllowOriginStringMatchOrBuilder(int i9) {
        return this.allowOriginStringMatch_.get(i9);
    }

    public List<? extends io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.n> getAllowOriginStringMatchOrBuilderList() {
        return this.allowOriginStringMatch_;
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

    public x0 getFilterEnabledOrBuilder() {
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
        int computeStringSize = !GeneratedMessageV3.isStringEmpty(this.allowMethods_) ? GeneratedMessageV3.computeStringSize(2, this.allowMethods_) + 0 : 0;
        if (!GeneratedMessageV3.isStringEmpty(this.allowHeaders_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(3, this.allowHeaders_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.exposeHeaders_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(4, this.exposeHeaders_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.maxAge_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(5, this.maxAge_);
        }
        if (this.allowCredentials_ != null) {
            computeStringSize += CodedOutputStream.G(6, getAllowCredentials());
        }
        if (this.enabledSpecifierCase_ == 9) {
            computeStringSize += CodedOutputStream.G(9, (RuntimeFractionalPercent) this.enabledSpecifier_);
        }
        if (this.shadowEnabled_ != null) {
            computeStringSize += CodedOutputStream.G(10, getShadowEnabled());
        }
        for (int i10 = 0; i10 < this.allowOriginStringMatch_.size(); i10++) {
            computeStringSize += CodedOutputStream.G(11, this.allowOriginStringMatch_.get(i10));
        }
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public RuntimeFractionalPercent getShadowEnabled() {
        RuntimeFractionalPercent runtimeFractionalPercent = this.shadowEnabled_;
        return runtimeFractionalPercent == null ? RuntimeFractionalPercent.getDefaultInstance() : runtimeFractionalPercent;
    }

    public x0 getShadowEnabledOrBuilder() {
        return getShadowEnabled();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasAllowCredentials() {
        return this.allowCredentials_ != null;
    }

    public boolean hasFilterEnabled() {
        return this.enabledSpecifierCase_ == 9;
    }

    public boolean hasShadowEnabled() {
        return this.shadowEnabled_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (getAllowOriginStringMatchCount() > 0) {
            hashCode = (((hashCode * 37) + 11) * 53) + getAllowOriginStringMatchList().hashCode();
        }
        int hashCode2 = (((((((((((((((hashCode * 37) + 2) * 53) + getAllowMethods().hashCode()) * 37) + 3) * 53) + getAllowHeaders().hashCode()) * 37) + 4) * 53) + getExposeHeaders().hashCode()) * 37) + 5) * 53) + getMaxAge().hashCode();
        if (hasAllowCredentials()) {
            hashCode2 = (((hashCode2 * 37) + 6) * 53) + getAllowCredentials().hashCode();
        }
        if (hasShadowEnabled()) {
            hashCode2 = (((hashCode2 * 37) + 10) * 53) + getShadowEnabled().hashCode();
        }
        if (this.enabledSpecifierCase_ == 9) {
            hashCode2 = (((hashCode2 * 37) + 9) * 53) + getFilterEnabled().hashCode();
        }
        int hashCode3 = (hashCode2 * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode3;
        return hashCode3;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return o.f49515z.d(CorsPolicy.class, c.class);
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
        if (this.enabledSpecifierCase_ == 9) {
            codedOutputStream.L0(9, (RuntimeFractionalPercent) this.enabledSpecifier_);
        }
        if (this.shadowEnabled_ != null) {
            codedOutputStream.L0(10, getShadowEnabled());
        }
        for (int i9 = 0; i9 < this.allowOriginStringMatch_.size(); i9++) {
            codedOutputStream.L0(11, this.allowOriginStringMatch_.get(i9));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ CorsPolicy(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(CorsPolicy corsPolicy) {
        return DEFAULT_INSTANCE.toBuilder().k0(corsPolicy);
    }

    public static CorsPolicy parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
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
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).k0(this);
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
                    int L = pVar.L();
                    if (L != 0) {
                        if (L == 18) {
                            this.allowMethods_ = pVar.K();
                        } else if (L == 26) {
                            this.allowHeaders_ = pVar.K();
                        } else if (L == 34) {
                            this.exposeHeaders_ = pVar.K();
                        } else if (L != 42) {
                            if (L == 50) {
                                BoolValue boolValue = this.allowCredentials_;
                                BoolValue.b builder = boolValue != null ? boolValue.toBuilder() : null;
                                BoolValue boolValue2 = (BoolValue) pVar.B(BoolValue.parser(), f0Var);
                                this.allowCredentials_ = boolValue2;
                                if (builder != null) {
                                    builder.d0(boolValue2);
                                    this.allowCredentials_ = builder.I();
                                }
                            } else if (L == 74) {
                                RuntimeFractionalPercent.b builder2 = this.enabledSpecifierCase_ == 9 ? ((RuntimeFractionalPercent) this.enabledSpecifier_).toBuilder() : null;
                                o1 B = pVar.B(RuntimeFractionalPercent.parser(), f0Var);
                                this.enabledSpecifier_ = B;
                                if (builder2 != null) {
                                    builder2.h0((RuntimeFractionalPercent) B);
                                    this.enabledSpecifier_ = builder2.I();
                                }
                                this.enabledSpecifierCase_ = 9;
                            } else if (L == 82) {
                                RuntimeFractionalPercent runtimeFractionalPercent = this.shadowEnabled_;
                                RuntimeFractionalPercent.b builder3 = runtimeFractionalPercent != null ? runtimeFractionalPercent.toBuilder() : null;
                                RuntimeFractionalPercent runtimeFractionalPercent2 = (RuntimeFractionalPercent) pVar.B(RuntimeFractionalPercent.parser(), f0Var);
                                this.shadowEnabled_ = runtimeFractionalPercent2;
                                if (builder3 != null) {
                                    builder3.h0(runtimeFractionalPercent2);
                                    this.shadowEnabled_ = builder3.I();
                                }
                            } else if (L != 90) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                if (!(z11 & true)) {
                                    this.allowOriginStringMatch_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.allowOriginStringMatch_.add((StringMatcher) pVar.B(StringMatcher.parser(), f0Var));
                            }
                        } else {
                            this.maxAge_ = pVar.K();
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
                    this.allowOriginStringMatch_ = Collections.unmodifiableList(this.allowOriginStringMatch_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }
}
