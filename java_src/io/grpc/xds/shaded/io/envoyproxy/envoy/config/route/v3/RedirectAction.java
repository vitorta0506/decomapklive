package io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3;

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
import com.google.protobuf.l1;
import com.google.protobuf.o1;
import com.google.protobuf.q2;
import com.google.protobuf.u0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.RegexMatchAndSubstitute;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class RedirectAction extends GeneratedMessageV3 implements l {
    public static final int HOST_REDIRECT_FIELD_NUMBER = 1;
    public static final int HTTPS_REDIRECT_FIELD_NUMBER = 4;
    public static final int PATH_REDIRECT_FIELD_NUMBER = 2;
    public static final int PORT_REDIRECT_FIELD_NUMBER = 8;
    public static final int PREFIX_REWRITE_FIELD_NUMBER = 5;
    public static final int REGEX_REWRITE_FIELD_NUMBER = 9;
    public static final int RESPONSE_CODE_FIELD_NUMBER = 3;
    public static final int SCHEME_REDIRECT_FIELD_NUMBER = 7;
    public static final int STRIP_QUERY_FIELD_NUMBER = 6;
    private static final long serialVersionUID = 0;
    private volatile Object hostRedirect_;
    private byte memoizedIsInitialized;
    private int pathRewriteSpecifierCase_;
    private Object pathRewriteSpecifier_;
    private int portRedirect_;
    private int responseCode_;
    private int schemeRewriteSpecifierCase_;
    private Object schemeRewriteSpecifier_;
    private boolean stripQuery_;
    private static final RedirectAction DEFAULT_INSTANCE = new RedirectAction();
    private static final e2<RedirectAction> PARSER = new a();

    /* loaded from: classes6.dex */
    public enum PathRewriteSpecifierCase implements u0.c {
        PATH_REDIRECT(2),
        PREFIX_REWRITE(5),
        REGEX_REWRITE(9),
        PATHREWRITESPECIFIER_NOT_SET(0);
        
        private final int value;

        PathRewriteSpecifierCase(int i9) {
            this.value = i9;
        }

        public static PathRewriteSpecifierCase forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 2) {
                    if (i9 != 5) {
                        if (i9 != 9) {
                            return null;
                        }
                        return REGEX_REWRITE;
                    }
                    return PREFIX_REWRITE;
                }
                return PATH_REDIRECT;
            }
            return PATHREWRITESPECIFIER_NOT_SET;
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static PathRewriteSpecifierCase valueOf(int i9) {
            return forNumber(i9);
        }
    }

    /* loaded from: classes6.dex */
    public enum RedirectResponseCode implements h2 {
        MOVED_PERMANENTLY(0),
        FOUND(1),
        SEE_OTHER(2),
        TEMPORARY_REDIRECT(3),
        PERMANENT_REDIRECT(4),
        UNRECOGNIZED(-1);
        
        public static final int FOUND_VALUE = 1;
        public static final int MOVED_PERMANENTLY_VALUE = 0;
        public static final int PERMANENT_REDIRECT_VALUE = 4;
        public static final int SEE_OTHER_VALUE = 2;
        public static final int TEMPORARY_REDIRECT_VALUE = 3;
        private final int value;
        private static final u0.d<RedirectResponseCode> internalValueMap = new a();
        private static final RedirectResponseCode[] VALUES = values();

        /* loaded from: classes6.dex */
        class a implements u0.d<RedirectResponseCode> {
            a() {
            }

            @Override // com.google.protobuf.u0.d
            /* renamed from: b */
            public RedirectResponseCode a(int i9) {
                return RedirectResponseCode.forNumber(i9);
            }
        }

        RedirectResponseCode(int i9) {
            this.value = i9;
        }

        public static RedirectResponseCode forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 != 2) {
                        if (i9 != 3) {
                            if (i9 != 4) {
                                return null;
                            }
                            return PERMANENT_REDIRECT;
                        }
                        return TEMPORARY_REDIRECT;
                    }
                    return SEE_OTHER;
                }
                return FOUND;
            }
            return MOVED_PERMANENTLY;
        }

        public static final Descriptors.d getDescriptor() {
            return RedirectAction.getDescriptor().k().get(0);
        }

        public static u0.d<RedirectResponseCode> internalGetValueMap() {
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
        public static RedirectResponseCode valueOf(int i9) {
            return forNumber(i9);
        }

        public static RedirectResponseCode valueOf(Descriptors.e eVar) {
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
    public enum SchemeRewriteSpecifierCase implements u0.c {
        HTTPS_REDIRECT(4),
        SCHEME_REDIRECT(7),
        SCHEMEREWRITESPECIFIER_NOT_SET(0);
        
        private final int value;

        SchemeRewriteSpecifierCase(int i9) {
            this.value = i9;
        }

        public static SchemeRewriteSpecifierCase forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 4) {
                    if (i9 != 7) {
                        return null;
                    }
                    return SCHEME_REDIRECT;
                }
                return HTTPS_REDIRECT;
            }
            return SCHEMEREWRITESPECIFIER_NOT_SET;
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static SchemeRewriteSpecifierCase valueOf(int i9) {
            return forNumber(i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<RedirectAction> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public RedirectAction m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new RedirectAction(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f49208a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f49209b;

        static {
            int[] iArr = new int[PathRewriteSpecifierCase.values().length];
            f49209b = iArr;
            try {
                iArr[PathRewriteSpecifierCase.PATH_REDIRECT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f49209b[PathRewriteSpecifierCase.PREFIX_REWRITE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f49209b[PathRewriteSpecifierCase.REGEX_REWRITE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f49209b[PathRewriteSpecifierCase.PATHREWRITESPECIFIER_NOT_SET.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[SchemeRewriteSpecifierCase.values().length];
            f49208a = iArr2;
            try {
                iArr2[SchemeRewriteSpecifierCase.HTTPS_REDIRECT.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f49208a[SchemeRewriteSpecifierCase.SCHEME_REDIRECT.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f49208a[SchemeRewriteSpecifierCase.SCHEMEREWRITESPECIFIER_NOT_SET.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements l {

        /* renamed from: e  reason: collision with root package name */
        private int f49210e;

        /* renamed from: f  reason: collision with root package name */
        private Object f49211f;

        /* renamed from: g  reason: collision with root package name */
        private int f49212g;

        /* renamed from: h  reason: collision with root package name */
        private Object f49213h;

        /* renamed from: i  reason: collision with root package name */
        private Object f49214i;

        /* renamed from: j  reason: collision with root package name */
        private int f49215j;

        /* renamed from: k  reason: collision with root package name */
        private q2<RegexMatchAndSubstitute, RegexMatchAndSubstitute.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.k> f49216k;

        /* renamed from: l  reason: collision with root package name */
        private int f49217l;

        /* renamed from: m  reason: collision with root package name */
        private boolean f49218m;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return o.f49488l0.d(RedirectAction.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public RedirectAction build() {
            RedirectAction I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public RedirectAction I() {
            RedirectAction redirectAction = new RedirectAction(this, (a) null);
            if (this.f49210e == 4) {
                redirectAction.schemeRewriteSpecifier_ = this.f49211f;
            }
            if (this.f49210e == 7) {
                redirectAction.schemeRewriteSpecifier_ = this.f49211f;
            }
            redirectAction.hostRedirect_ = this.f49214i;
            redirectAction.portRedirect_ = this.f49215j;
            if (this.f49212g == 2) {
                redirectAction.pathRewriteSpecifier_ = this.f49213h;
            }
            if (this.f49212g == 5) {
                redirectAction.pathRewriteSpecifier_ = this.f49213h;
            }
            if (this.f49212g == 9) {
                q2<RegexMatchAndSubstitute, RegexMatchAndSubstitute.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.k> q2Var = this.f49216k;
                if (q2Var == null) {
                    redirectAction.pathRewriteSpecifier_ = this.f49213h;
                } else {
                    redirectAction.pathRewriteSpecifier_ = q2Var.b();
                }
            }
            redirectAction.responseCode_ = this.f49217l;
            redirectAction.stripQuery_ = this.f49218m;
            redirectAction.schemeRewriteSpecifierCase_ = this.f49210e;
            redirectAction.pathRewriteSpecifierCase_ = this.f49212g;
            Q();
            return redirectAction;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public RedirectAction getDefaultInstanceForType() {
            return RedirectAction.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RedirectAction.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RedirectAction.access$1300()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RedirectAction r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RedirectAction) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RedirectAction r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RedirectAction) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RedirectAction.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RedirectAction$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public c v(l1 l1Var) {
            if (l1Var instanceof RedirectAction) {
                return g0((RedirectAction) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public c g0(RedirectAction redirectAction) {
            if (redirectAction == RedirectAction.getDefaultInstance()) {
                return this;
            }
            if (!redirectAction.getHostRedirect().isEmpty()) {
                this.f49214i = redirectAction.hostRedirect_;
                R();
            }
            if (redirectAction.getPortRedirect() != 0) {
                l0(redirectAction.getPortRedirect());
            }
            if (redirectAction.responseCode_ != 0) {
                m0(redirectAction.getResponseCodeValue());
            }
            if (redirectAction.getStripQuery()) {
                n0(redirectAction.getStripQuery());
            }
            int i9 = b.f49208a[redirectAction.getSchemeRewriteSpecifierCase().ordinal()];
            if (i9 == 1) {
                k0(redirectAction.getHttpsRedirect());
            } else if (i9 == 2) {
                this.f49210e = 7;
                this.f49211f = redirectAction.schemeRewriteSpecifier_;
                R();
            }
            int i10 = b.f49209b[redirectAction.getPathRewriteSpecifierCase().ordinal()];
            if (i10 == 1) {
                this.f49212g = 2;
                this.f49213h = redirectAction.pathRewriteSpecifier_;
                R();
            } else if (i10 == 2) {
                this.f49212g = 5;
                this.f49213h = redirectAction.pathRewriteSpecifier_;
                R();
            } else if (i10 == 3) {
                h0(redirectAction.getRegexRewrite());
            }
            z(((GeneratedMessageV3) redirectAction).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return o.f49486k0;
        }

        public c h0(RegexMatchAndSubstitute regexMatchAndSubstitute) {
            q2<RegexMatchAndSubstitute, RegexMatchAndSubstitute.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.k> q2Var = this.f49216k;
            if (q2Var == null) {
                if (this.f49212g == 9 && this.f49213h != RegexMatchAndSubstitute.getDefaultInstance()) {
                    this.f49213h = RegexMatchAndSubstitute.newBuilder((RegexMatchAndSubstitute) this.f49213h).g0(regexMatchAndSubstitute).I();
                } else {
                    this.f49213h = regexMatchAndSubstitute;
                }
                R();
            } else {
                if (this.f49212g == 9) {
                    q2Var.e(regexMatchAndSubstitute);
                }
                this.f49216k.g(regexMatchAndSubstitute);
            }
            this.f49212g = 9;
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public final c z(h3 h3Var) {
            return (c) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: j0 */
        public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.c(fieldDescriptor, obj);
        }

        public c k0(boolean z10) {
            this.f49210e = 4;
            this.f49211f = Boolean.valueOf(z10);
            R();
            return this;
        }

        public c l0(int i9) {
            this.f49215j = i9;
            R();
            return this;
        }

        public c m0(int i9) {
            this.f49217l = i9;
            R();
            return this;
        }

        public c n0(boolean z10) {
            this.f49218m = z10;
            R();
            return this;
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
            this.f49210e = 0;
            this.f49212g = 0;
            this.f49214i = "";
            this.f49217l = 0;
            b0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f49210e = 0;
            this.f49212g = 0;
            this.f49214i = "";
            this.f49217l = 0;
            b0();
        }
    }

    /* synthetic */ RedirectAction(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static RedirectAction getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return o.f49486k0;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static RedirectAction parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (RedirectAction) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static RedirectAction parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<RedirectAction> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof RedirectAction)) {
            return super.equals(obj);
        }
        RedirectAction redirectAction = (RedirectAction) obj;
        if (getHostRedirect().equals(redirectAction.getHostRedirect()) && getPortRedirect() == redirectAction.getPortRedirect() && this.responseCode_ == redirectAction.responseCode_ && getStripQuery() == redirectAction.getStripQuery() && getSchemeRewriteSpecifierCase().equals(redirectAction.getSchemeRewriteSpecifierCase())) {
            int i9 = this.schemeRewriteSpecifierCase_;
            if (i9 != 4) {
                if (i9 == 7 && !getSchemeRedirect().equals(redirectAction.getSchemeRedirect())) {
                    return false;
                }
            } else if (getHttpsRedirect() != redirectAction.getHttpsRedirect()) {
                return false;
            }
            if (getPathRewriteSpecifierCase().equals(redirectAction.getPathRewriteSpecifierCase())) {
                int i10 = this.pathRewriteSpecifierCase_;
                if (i10 != 2) {
                    if (i10 != 5) {
                        if (i10 == 9 && !getRegexRewrite().equals(redirectAction.getRegexRewrite())) {
                            return false;
                        }
                    } else if (!getPrefixRewrite().equals(redirectAction.getPrefixRewrite())) {
                        return false;
                    }
                } else if (!getPathRedirect().equals(redirectAction.getPathRedirect())) {
                    return false;
                }
                return this.unknownFields.equals(redirectAction.unknownFields);
            }
            return false;
        }
        return false;
    }

    public String getHostRedirect() {
        Object obj = this.hostRedirect_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.hostRedirect_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getHostRedirectBytes() {
        Object obj = this.hostRedirect_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.hostRedirect_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public boolean getHttpsRedirect() {
        if (this.schemeRewriteSpecifierCase_ == 4) {
            return ((Boolean) this.schemeRewriteSpecifier_).booleanValue();
        }
        return false;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<RedirectAction> getParserForType() {
        return PARSER;
    }

    public String getPathRedirect() {
        String str = this.pathRewriteSpecifierCase_ == 2 ? this.pathRewriteSpecifier_ : "";
        if (str instanceof String) {
            return (String) str;
        }
        String stringUtf8 = ((ByteString) str).toStringUtf8();
        if (this.pathRewriteSpecifierCase_ == 2) {
            this.pathRewriteSpecifier_ = stringUtf8;
        }
        return stringUtf8;
    }

    public ByteString getPathRedirectBytes() {
        String str = this.pathRewriteSpecifierCase_ == 2 ? this.pathRewriteSpecifier_ : "";
        if (str instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) str);
            if (this.pathRewriteSpecifierCase_ == 2) {
                this.pathRewriteSpecifier_ = copyFromUtf8;
            }
            return copyFromUtf8;
        }
        return (ByteString) str;
    }

    public PathRewriteSpecifierCase getPathRewriteSpecifierCase() {
        return PathRewriteSpecifierCase.forNumber(this.pathRewriteSpecifierCase_);
    }

    public int getPortRedirect() {
        return this.portRedirect_;
    }

    public String getPrefixRewrite() {
        String str = this.pathRewriteSpecifierCase_ == 5 ? this.pathRewriteSpecifier_ : "";
        if (str instanceof String) {
            return (String) str;
        }
        String stringUtf8 = ((ByteString) str).toStringUtf8();
        if (this.pathRewriteSpecifierCase_ == 5) {
            this.pathRewriteSpecifier_ = stringUtf8;
        }
        return stringUtf8;
    }

    public ByteString getPrefixRewriteBytes() {
        String str = this.pathRewriteSpecifierCase_ == 5 ? this.pathRewriteSpecifier_ : "";
        if (str instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) str);
            if (this.pathRewriteSpecifierCase_ == 5) {
                this.pathRewriteSpecifier_ = copyFromUtf8;
            }
            return copyFromUtf8;
        }
        return (ByteString) str;
    }

    public RegexMatchAndSubstitute getRegexRewrite() {
        if (this.pathRewriteSpecifierCase_ == 9) {
            return (RegexMatchAndSubstitute) this.pathRewriteSpecifier_;
        }
        return RegexMatchAndSubstitute.getDefaultInstance();
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.k getRegexRewriteOrBuilder() {
        if (this.pathRewriteSpecifierCase_ == 9) {
            return (RegexMatchAndSubstitute) this.pathRewriteSpecifier_;
        }
        return RegexMatchAndSubstitute.getDefaultInstance();
    }

    public RedirectResponseCode getResponseCode() {
        RedirectResponseCode valueOf = RedirectResponseCode.valueOf(this.responseCode_);
        return valueOf == null ? RedirectResponseCode.UNRECOGNIZED : valueOf;
    }

    public int getResponseCodeValue() {
        return this.responseCode_;
    }

    public String getSchemeRedirect() {
        String str = this.schemeRewriteSpecifierCase_ == 7 ? this.schemeRewriteSpecifier_ : "";
        if (str instanceof String) {
            return (String) str;
        }
        String stringUtf8 = ((ByteString) str).toStringUtf8();
        if (this.schemeRewriteSpecifierCase_ == 7) {
            this.schemeRewriteSpecifier_ = stringUtf8;
        }
        return stringUtf8;
    }

    public ByteString getSchemeRedirectBytes() {
        String str = this.schemeRewriteSpecifierCase_ == 7 ? this.schemeRewriteSpecifier_ : "";
        if (str instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) str);
            if (this.schemeRewriteSpecifierCase_ == 7) {
                this.schemeRewriteSpecifier_ = copyFromUtf8;
            }
            return copyFromUtf8;
        }
        return (ByteString) str;
    }

    public SchemeRewriteSpecifierCase getSchemeRewriteSpecifierCase() {
        return SchemeRewriteSpecifierCase.forNumber(this.schemeRewriteSpecifierCase_);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = GeneratedMessageV3.isStringEmpty(this.hostRedirect_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.hostRedirect_);
        if (this.pathRewriteSpecifierCase_ == 2) {
            computeStringSize += GeneratedMessageV3.computeStringSize(2, this.pathRewriteSpecifier_);
        }
        if (this.responseCode_ != RedirectResponseCode.MOVED_PERMANENTLY.getNumber()) {
            computeStringSize += CodedOutputStream.l(3, this.responseCode_);
        }
        if (this.schemeRewriteSpecifierCase_ == 4) {
            computeStringSize += CodedOutputStream.e(4, ((Boolean) this.schemeRewriteSpecifier_).booleanValue());
        }
        if (this.pathRewriteSpecifierCase_ == 5) {
            computeStringSize += GeneratedMessageV3.computeStringSize(5, this.pathRewriteSpecifier_);
        }
        boolean z10 = this.stripQuery_;
        if (z10) {
            computeStringSize += CodedOutputStream.e(6, z10);
        }
        if (this.schemeRewriteSpecifierCase_ == 7) {
            computeStringSize += GeneratedMessageV3.computeStringSize(7, this.schemeRewriteSpecifier_);
        }
        int i10 = this.portRedirect_;
        if (i10 != 0) {
            computeStringSize += CodedOutputStream.Y(8, i10);
        }
        if (this.pathRewriteSpecifierCase_ == 9) {
            computeStringSize += CodedOutputStream.G(9, (RegexMatchAndSubstitute) this.pathRewriteSpecifier_);
        }
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public boolean getStripQuery() {
        return this.stripQuery_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasHttpsRedirect() {
        return this.schemeRewriteSpecifierCase_ == 4;
    }

    public boolean hasPathRedirect() {
        return this.pathRewriteSpecifierCase_ == 2;
    }

    public boolean hasPrefixRewrite() {
        return this.pathRewriteSpecifierCase_ == 5;
    }

    public boolean hasRegexRewrite() {
        return this.pathRewriteSpecifierCase_ == 9;
    }

    public boolean hasSchemeRedirect() {
        return this.schemeRewriteSpecifierCase_ == 7;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0090  */
    @Override // com.google.protobuf.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int hashCode() {
        /*
            r3 = this;
            int r0 = r3.memoizedHashCode
            if (r0 == 0) goto L5
            return r0
        L5:
            r0 = 779(0x30b, float:1.092E-42)
            com.google.protobuf.Descriptors$b r1 = getDescriptor()
            int r1 = r1.hashCode()
            int r0 = r0 + r1
            int r0 = r0 * 37
            int r0 = r0 + 1
            int r0 = r0 * 53
            java.lang.String r1 = r3.getHostRedirect()
            int r1 = r1.hashCode()
            int r0 = r0 + r1
            int r0 = r0 * 37
            int r0 = r0 + 8
            int r0 = r0 * 53
            int r1 = r3.getPortRedirect()
            int r0 = r0 + r1
            int r0 = r0 * 37
            int r0 = r0 + 3
            int r0 = r0 * 53
            int r1 = r3.responseCode_
            int r0 = r0 + r1
            int r0 = r0 * 37
            int r0 = r0 + 6
            int r0 = r0 * 53
            boolean r1 = r3.getStripQuery()
            int r1 = com.google.protobuf.u0.d(r1)
            int r0 = r0 + r1
            int r1 = r3.schemeRewriteSpecifierCase_
            r2 = 4
            if (r1 == r2) goto L59
            r2 = 7
            if (r1 == r2) goto L4b
            goto L67
        L4b:
            int r0 = r0 * 37
            int r0 = r0 + r2
            int r0 = r0 * 53
            java.lang.String r1 = r3.getSchemeRedirect()
            int r1 = r1.hashCode()
            goto L66
        L59:
            int r0 = r0 * 37
            int r0 = r0 + r2
            int r0 = r0 * 53
            boolean r1 = r3.getHttpsRedirect()
            int r1 = com.google.protobuf.u0.d(r1)
        L66:
            int r0 = r0 + r1
        L67:
            int r1 = r3.pathRewriteSpecifierCase_
            r2 = 2
            if (r1 == r2) goto L90
            r2 = 5
            if (r1 == r2) goto L82
            r2 = 9
            if (r1 == r2) goto L74
            goto L9e
        L74:
            int r0 = r0 * 37
            int r0 = r0 + r2
            int r0 = r0 * 53
            io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.RegexMatchAndSubstitute r1 = r3.getRegexRewrite()
            int r1 = r1.hashCode()
            goto L9d
        L82:
            int r0 = r0 * 37
            int r0 = r0 + r2
            int r0 = r0 * 53
            java.lang.String r1 = r3.getPrefixRewrite()
            int r1 = r1.hashCode()
            goto L9d
        L90:
            int r0 = r0 * 37
            int r0 = r0 + r2
            int r0 = r0 * 53
            java.lang.String r1 = r3.getPathRedirect()
            int r1 = r1.hashCode()
        L9d:
            int r0 = r0 + r1
        L9e:
            int r0 = r0 * 29
            com.google.protobuf.h3 r1 = r3.unknownFields
            int r1 = r1.hashCode()
            int r0 = r0 + r1
            r3.memoizedHashCode = r0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RedirectAction.hashCode():int");
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return o.f49488l0.d(RedirectAction.class, c.class);
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
        return new RedirectAction();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.hostRedirect_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.hostRedirect_);
        }
        if (this.pathRewriteSpecifierCase_ == 2) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.pathRewriteSpecifier_);
        }
        if (this.responseCode_ != RedirectResponseCode.MOVED_PERMANENTLY.getNumber()) {
            codedOutputStream.v0(3, this.responseCode_);
        }
        if (this.schemeRewriteSpecifierCase_ == 4) {
            codedOutputStream.n0(4, ((Boolean) this.schemeRewriteSpecifier_).booleanValue());
        }
        if (this.pathRewriteSpecifierCase_ == 5) {
            GeneratedMessageV3.writeString(codedOutputStream, 5, this.pathRewriteSpecifier_);
        }
        boolean z10 = this.stripQuery_;
        if (z10) {
            codedOutputStream.n0(6, z10);
        }
        if (this.schemeRewriteSpecifierCase_ == 7) {
            GeneratedMessageV3.writeString(codedOutputStream, 7, this.schemeRewriteSpecifier_);
        }
        int i9 = this.portRedirect_;
        if (i9 != 0) {
            codedOutputStream.c1(8, i9);
        }
        if (this.pathRewriteSpecifierCase_ == 9) {
            codedOutputStream.L0(9, (RegexMatchAndSubstitute) this.pathRewriteSpecifier_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ RedirectAction(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(RedirectAction redirectAction) {
        return DEFAULT_INSTANCE.toBuilder().g0(redirectAction);
    }

    public static RedirectAction parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private RedirectAction(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.schemeRewriteSpecifierCase_ = 0;
        this.pathRewriteSpecifierCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static RedirectAction parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (RedirectAction) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static RedirectAction parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public RedirectAction getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).g0(this);
    }

    public static RedirectAction parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    public static RedirectAction parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    public static RedirectAction parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    private RedirectAction() {
        this.schemeRewriteSpecifierCase_ = 0;
        this.pathRewriteSpecifierCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
        this.hostRedirect_ = "";
        this.responseCode_ = 0;
    }

    public static RedirectAction parseFrom(InputStream inputStream) throws IOException {
        return (RedirectAction) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static RedirectAction parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (RedirectAction) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static RedirectAction parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (RedirectAction) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    private RedirectAction(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            this.hostRedirect_ = pVar.K();
                        } else if (L == 18) {
                            String K = pVar.K();
                            this.pathRewriteSpecifierCase_ = 2;
                            this.pathRewriteSpecifier_ = K;
                        } else if (L == 24) {
                            this.responseCode_ = pVar.u();
                        } else if (L == 32) {
                            this.schemeRewriteSpecifier_ = Boolean.valueOf(pVar.r());
                            this.schemeRewriteSpecifierCase_ = 4;
                        } else if (L == 42) {
                            String K2 = pVar.K();
                            this.pathRewriteSpecifierCase_ = 5;
                            this.pathRewriteSpecifier_ = K2;
                        } else if (L == 48) {
                            this.stripQuery_ = pVar.r();
                        } else if (L == 58) {
                            String K3 = pVar.K();
                            this.schemeRewriteSpecifierCase_ = 7;
                            this.schemeRewriteSpecifier_ = K3;
                        } else if (L == 64) {
                            this.portRedirect_ = pVar.M();
                        } else if (L != 74) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            RegexMatchAndSubstitute.b builder = this.pathRewriteSpecifierCase_ == 9 ? ((RegexMatchAndSubstitute) this.pathRewriteSpecifier_).toBuilder() : null;
                            o1 B = pVar.B(RegexMatchAndSubstitute.parser(), f0Var);
                            this.pathRewriteSpecifier_ = B;
                            if (builder != null) {
                                builder.g0((RegexMatchAndSubstitute) B);
                                this.pathRewriteSpecifier_ = builder.I();
                            }
                            this.pathRewriteSpecifierCase_ = 9;
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

    public static RedirectAction parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
        return (RedirectAction) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
