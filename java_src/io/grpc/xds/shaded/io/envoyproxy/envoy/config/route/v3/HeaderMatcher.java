package io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3;

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
import com.google.protobuf.o1;
import com.google.protobuf.q2;
import com.google.protobuf.u0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.RegexMatcher;
import io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.StringMatcher;
import io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.Int64Range;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class HeaderMatcher extends GeneratedMessageV3 implements f {
    public static final int CONTAINS_MATCH_FIELD_NUMBER = 12;
    public static final int EXACT_MATCH_FIELD_NUMBER = 4;
    public static final int INVERT_MATCH_FIELD_NUMBER = 8;
    public static final int NAME_FIELD_NUMBER = 1;
    public static final int PREFIX_MATCH_FIELD_NUMBER = 9;
    public static final int PRESENT_MATCH_FIELD_NUMBER = 7;
    public static final int RANGE_MATCH_FIELD_NUMBER = 6;
    public static final int SAFE_REGEX_MATCH_FIELD_NUMBER = 11;
    public static final int STRING_MATCH_FIELD_NUMBER = 13;
    public static final int SUFFIX_MATCH_FIELD_NUMBER = 10;
    private static final long serialVersionUID = 0;
    private int headerMatchSpecifierCase_;
    private Object headerMatchSpecifier_;
    private boolean invertMatch_;
    private byte memoizedIsInitialized;
    private volatile Object name_;
    private static final HeaderMatcher DEFAULT_INSTANCE = new HeaderMatcher();
    private static final e2<HeaderMatcher> PARSER = new a();

    /* loaded from: classes6.dex */
    public enum HeaderMatchSpecifierCase implements u0.c {
        EXACT_MATCH(4),
        SAFE_REGEX_MATCH(11),
        RANGE_MATCH(6),
        PRESENT_MATCH(7),
        PREFIX_MATCH(9),
        SUFFIX_MATCH(10),
        CONTAINS_MATCH(12),
        STRING_MATCH(13),
        HEADERMATCHSPECIFIER_NOT_SET(0);
        
        private final int value;

        HeaderMatchSpecifierCase(int i9) {
            this.value = i9;
        }

        public static HeaderMatchSpecifierCase forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 4) {
                    if (i9 != 6) {
                        if (i9 != 7) {
                            switch (i9) {
                                case 9:
                                    return PREFIX_MATCH;
                                case 10:
                                    return SUFFIX_MATCH;
                                case 11:
                                    return SAFE_REGEX_MATCH;
                                case 12:
                                    return CONTAINS_MATCH;
                                case 13:
                                    return STRING_MATCH;
                                default:
                                    return null;
                            }
                        }
                        return PRESENT_MATCH;
                    }
                    return RANGE_MATCH;
                }
                return EXACT_MATCH;
            }
            return HEADERMATCHSPECIFIER_NOT_SET;
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static HeaderMatchSpecifierCase valueOf(int i9) {
            return forNumber(i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<HeaderMatcher> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public HeaderMatcher m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new HeaderMatcher(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f49137a;

        static {
            int[] iArr = new int[HeaderMatchSpecifierCase.values().length];
            f49137a = iArr;
            try {
                iArr[HeaderMatchSpecifierCase.EXACT_MATCH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f49137a[HeaderMatchSpecifierCase.SAFE_REGEX_MATCH.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f49137a[HeaderMatchSpecifierCase.RANGE_MATCH.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f49137a[HeaderMatchSpecifierCase.PRESENT_MATCH.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f49137a[HeaderMatchSpecifierCase.PREFIX_MATCH.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f49137a[HeaderMatchSpecifierCase.SUFFIX_MATCH.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f49137a[HeaderMatchSpecifierCase.CONTAINS_MATCH.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f49137a[HeaderMatchSpecifierCase.STRING_MATCH.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f49137a[HeaderMatchSpecifierCase.HEADERMATCHSPECIFIER_NOT_SET.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements f {

        /* renamed from: e  reason: collision with root package name */
        private int f49138e;

        /* renamed from: f  reason: collision with root package name */
        private Object f49139f;

        /* renamed from: g  reason: collision with root package name */
        private Object f49140g;

        /* renamed from: h  reason: collision with root package name */
        private q2<RegexMatcher, RegexMatcher.c, io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.l> f49141h;

        /* renamed from: i  reason: collision with root package name */
        private q2<Int64Range, Int64Range.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.e> f49142i;

        /* renamed from: j  reason: collision with root package name */
        private q2<StringMatcher, StringMatcher.c, io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.n> f49143j;

        /* renamed from: k  reason: collision with root package name */
        private boolean f49144k;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return o.V0.d(HeaderMatcher.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public HeaderMatcher build() {
            HeaderMatcher I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public HeaderMatcher I() {
            HeaderMatcher headerMatcher = new HeaderMatcher(this, (a) null);
            headerMatcher.name_ = this.f49140g;
            if (this.f49138e == 4) {
                headerMatcher.headerMatchSpecifier_ = this.f49139f;
            }
            if (this.f49138e == 11) {
                q2<RegexMatcher, RegexMatcher.c, io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.l> q2Var = this.f49141h;
                if (q2Var == null) {
                    headerMatcher.headerMatchSpecifier_ = this.f49139f;
                } else {
                    headerMatcher.headerMatchSpecifier_ = q2Var.b();
                }
            }
            if (this.f49138e == 6) {
                q2<Int64Range, Int64Range.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.e> q2Var2 = this.f49142i;
                if (q2Var2 == null) {
                    headerMatcher.headerMatchSpecifier_ = this.f49139f;
                } else {
                    headerMatcher.headerMatchSpecifier_ = q2Var2.b();
                }
            }
            if (this.f49138e == 7) {
                headerMatcher.headerMatchSpecifier_ = this.f49139f;
            }
            if (this.f49138e == 9) {
                headerMatcher.headerMatchSpecifier_ = this.f49139f;
            }
            if (this.f49138e == 10) {
                headerMatcher.headerMatchSpecifier_ = this.f49139f;
            }
            if (this.f49138e == 12) {
                headerMatcher.headerMatchSpecifier_ = this.f49139f;
            }
            if (this.f49138e == 13) {
                q2<StringMatcher, StringMatcher.c, io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.n> q2Var3 = this.f49143j;
                if (q2Var3 == null) {
                    headerMatcher.headerMatchSpecifier_ = this.f49139f;
                } else {
                    headerMatcher.headerMatchSpecifier_ = q2Var3.b();
                }
            }
            headerMatcher.invertMatch_ = this.f49144k;
            headerMatcher.headerMatchSpecifierCase_ = this.f49138e;
            Q();
            return headerMatcher;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public HeaderMatcher getDefaultInstanceForType() {
            return HeaderMatcher.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.HeaderMatcher.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.HeaderMatcher.access$900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.HeaderMatcher r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.HeaderMatcher) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.HeaderMatcher r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.HeaderMatcher) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.HeaderMatcher.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.HeaderMatcher$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public c v(l1 l1Var) {
            if (l1Var instanceof HeaderMatcher) {
                return g0((HeaderMatcher) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public c g0(HeaderMatcher headerMatcher) {
            if (headerMatcher == HeaderMatcher.getDefaultInstance()) {
                return this;
            }
            if (!headerMatcher.getName().isEmpty()) {
                this.f49140g = headerMatcher.name_;
                R();
            }
            if (headerMatcher.getInvertMatch()) {
                m0(headerMatcher.getInvertMatch());
            }
            switch (b.f49137a[headerMatcher.getHeaderMatchSpecifierCase().ordinal()]) {
                case 1:
                    this.f49138e = 4;
                    this.f49139f = headerMatcher.headerMatchSpecifier_;
                    R();
                    break;
                case 2:
                    i0(headerMatcher.getSafeRegexMatch());
                    break;
                case 3:
                    h0(headerMatcher.getRangeMatch());
                    break;
                case 4:
                    n0(headerMatcher.getPresentMatch());
                    break;
                case 5:
                    this.f49138e = 9;
                    this.f49139f = headerMatcher.headerMatchSpecifier_;
                    R();
                    break;
                case 6:
                    this.f49138e = 10;
                    this.f49139f = headerMatcher.headerMatchSpecifier_;
                    R();
                    break;
                case 7:
                    this.f49138e = 12;
                    this.f49139f = headerMatcher.headerMatchSpecifier_;
                    R();
                    break;
                case 8:
                    j0(headerMatcher.getStringMatch());
                    break;
            }
            z(((GeneratedMessageV3) headerMatcher).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return o.U0;
        }

        public c h0(Int64Range int64Range) {
            q2<Int64Range, Int64Range.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.e> q2Var = this.f49142i;
            if (q2Var == null) {
                if (this.f49138e == 6 && this.f49139f != Int64Range.getDefaultInstance()) {
                    this.f49139f = Int64Range.newBuilder((Int64Range) this.f49139f).g0(int64Range).I();
                } else {
                    this.f49139f = int64Range;
                }
                R();
            } else {
                if (this.f49138e == 6) {
                    q2Var.e(int64Range);
                }
                this.f49142i.g(int64Range);
            }
            this.f49138e = 6;
            return this;
        }

        @Deprecated
        public c i0(RegexMatcher regexMatcher) {
            q2<RegexMatcher, RegexMatcher.c, io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.l> q2Var = this.f49141h;
            if (q2Var == null) {
                if (this.f49138e == 11 && this.f49139f != RegexMatcher.getDefaultInstance()) {
                    this.f49139f = RegexMatcher.newBuilder((RegexMatcher) this.f49139f).g0(regexMatcher).I();
                } else {
                    this.f49139f = regexMatcher;
                }
                R();
            } else {
                if (this.f49138e == 11) {
                    q2Var.e(regexMatcher);
                }
                this.f49141h.g(regexMatcher);
            }
            this.f49138e = 11;
            return this;
        }

        public c j0(StringMatcher stringMatcher) {
            q2<StringMatcher, StringMatcher.c, io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.n> q2Var = this.f49143j;
            if (q2Var == null) {
                if (this.f49138e == 13 && this.f49139f != StringMatcher.getDefaultInstance()) {
                    this.f49139f = StringMatcher.newBuilder((StringMatcher) this.f49139f).g0(stringMatcher).I();
                } else {
                    this.f49139f = stringMatcher;
                }
                R();
            } else {
                if (this.f49138e == 13) {
                    q2Var.e(stringMatcher);
                }
                this.f49143j.g(stringMatcher);
            }
            this.f49138e = 13;
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: k0 */
        public final c z(h3 h3Var) {
            return (c) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: l0 */
        public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.c(fieldDescriptor, obj);
        }

        public c m0(boolean z10) {
            this.f49144k = z10;
            R();
            return this;
        }

        public c n0(boolean z10) {
            this.f49138e = 7;
            this.f49139f = Boolean.valueOf(z10);
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
            this.f49138e = 0;
            this.f49140g = "";
            b0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f49138e = 0;
            this.f49140g = "";
            b0();
        }
    }

    /* synthetic */ HeaderMatcher(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static HeaderMatcher getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return o.U0;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static HeaderMatcher parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (HeaderMatcher) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static HeaderMatcher parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<HeaderMatcher> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof HeaderMatcher)) {
            return super.equals(obj);
        }
        HeaderMatcher headerMatcher = (HeaderMatcher) obj;
        if (getName().equals(headerMatcher.getName()) && getInvertMatch() == headerMatcher.getInvertMatch() && getHeaderMatchSpecifierCase().equals(headerMatcher.getHeaderMatchSpecifierCase())) {
            switch (this.headerMatchSpecifierCase_) {
                case 4:
                    if (!getExactMatch().equals(headerMatcher.getExactMatch())) {
                        return false;
                    }
                    break;
                case 6:
                    if (!getRangeMatch().equals(headerMatcher.getRangeMatch())) {
                        return false;
                    }
                    break;
                case 7:
                    if (getPresentMatch() != headerMatcher.getPresentMatch()) {
                        return false;
                    }
                    break;
                case 9:
                    if (!getPrefixMatch().equals(headerMatcher.getPrefixMatch())) {
                        return false;
                    }
                    break;
                case 10:
                    if (!getSuffixMatch().equals(headerMatcher.getSuffixMatch())) {
                        return false;
                    }
                    break;
                case 11:
                    if (!getSafeRegexMatch().equals(headerMatcher.getSafeRegexMatch())) {
                        return false;
                    }
                    break;
                case 12:
                    if (!getContainsMatch().equals(headerMatcher.getContainsMatch())) {
                        return false;
                    }
                    break;
                case 13:
                    if (!getStringMatch().equals(headerMatcher.getStringMatch())) {
                        return false;
                    }
                    break;
            }
            return this.unknownFields.equals(headerMatcher.unknownFields);
        }
        return false;
    }

    @Deprecated
    public String getContainsMatch() {
        String str = this.headerMatchSpecifierCase_ == 12 ? this.headerMatchSpecifier_ : "";
        if (str instanceof String) {
            return (String) str;
        }
        String stringUtf8 = ((ByteString) str).toStringUtf8();
        if (this.headerMatchSpecifierCase_ == 12) {
            this.headerMatchSpecifier_ = stringUtf8;
        }
        return stringUtf8;
    }

    @Deprecated
    public ByteString getContainsMatchBytes() {
        String str = this.headerMatchSpecifierCase_ == 12 ? this.headerMatchSpecifier_ : "";
        if (str instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) str);
            if (this.headerMatchSpecifierCase_ == 12) {
                this.headerMatchSpecifier_ = copyFromUtf8;
            }
            return copyFromUtf8;
        }
        return (ByteString) str;
    }

    @Deprecated
    public String getExactMatch() {
        String str = this.headerMatchSpecifierCase_ == 4 ? this.headerMatchSpecifier_ : "";
        if (str instanceof String) {
            return (String) str;
        }
        String stringUtf8 = ((ByteString) str).toStringUtf8();
        if (this.headerMatchSpecifierCase_ == 4) {
            this.headerMatchSpecifier_ = stringUtf8;
        }
        return stringUtf8;
    }

    @Deprecated
    public ByteString getExactMatchBytes() {
        String str = this.headerMatchSpecifierCase_ == 4 ? this.headerMatchSpecifier_ : "";
        if (str instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) str);
            if (this.headerMatchSpecifierCase_ == 4) {
                this.headerMatchSpecifier_ = copyFromUtf8;
            }
            return copyFromUtf8;
        }
        return (ByteString) str;
    }

    public HeaderMatchSpecifierCase getHeaderMatchSpecifierCase() {
        return HeaderMatchSpecifierCase.forNumber(this.headerMatchSpecifierCase_);
    }

    public boolean getInvertMatch() {
        return this.invertMatch_;
    }

    public String getName() {
        Object obj = this.name_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.name_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getNameBytes() {
        Object obj = this.name_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.name_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<HeaderMatcher> getParserForType() {
        return PARSER;
    }

    @Deprecated
    public String getPrefixMatch() {
        String str = this.headerMatchSpecifierCase_ == 9 ? this.headerMatchSpecifier_ : "";
        if (str instanceof String) {
            return (String) str;
        }
        String stringUtf8 = ((ByteString) str).toStringUtf8();
        if (this.headerMatchSpecifierCase_ == 9) {
            this.headerMatchSpecifier_ = stringUtf8;
        }
        return stringUtf8;
    }

    @Deprecated
    public ByteString getPrefixMatchBytes() {
        String str = this.headerMatchSpecifierCase_ == 9 ? this.headerMatchSpecifier_ : "";
        if (str instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) str);
            if (this.headerMatchSpecifierCase_ == 9) {
                this.headerMatchSpecifier_ = copyFromUtf8;
            }
            return copyFromUtf8;
        }
        return (ByteString) str;
    }

    public boolean getPresentMatch() {
        if (this.headerMatchSpecifierCase_ == 7) {
            return ((Boolean) this.headerMatchSpecifier_).booleanValue();
        }
        return false;
    }

    public Int64Range getRangeMatch() {
        if (this.headerMatchSpecifierCase_ == 6) {
            return (Int64Range) this.headerMatchSpecifier_;
        }
        return Int64Range.getDefaultInstance();
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.e getRangeMatchOrBuilder() {
        if (this.headerMatchSpecifierCase_ == 6) {
            return (Int64Range) this.headerMatchSpecifier_;
        }
        return Int64Range.getDefaultInstance();
    }

    @Deprecated
    public RegexMatcher getSafeRegexMatch() {
        if (this.headerMatchSpecifierCase_ == 11) {
            return (RegexMatcher) this.headerMatchSpecifier_;
        }
        return RegexMatcher.getDefaultInstance();
    }

    @Deprecated
    public io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.l getSafeRegexMatchOrBuilder() {
        if (this.headerMatchSpecifierCase_ == 11) {
            return (RegexMatcher) this.headerMatchSpecifier_;
        }
        return RegexMatcher.getDefaultInstance();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = GeneratedMessageV3.isStringEmpty(this.name_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.name_);
        if (this.headerMatchSpecifierCase_ == 4) {
            computeStringSize += GeneratedMessageV3.computeStringSize(4, this.headerMatchSpecifier_);
        }
        if (this.headerMatchSpecifierCase_ == 6) {
            computeStringSize += CodedOutputStream.G(6, (Int64Range) this.headerMatchSpecifier_);
        }
        if (this.headerMatchSpecifierCase_ == 7) {
            computeStringSize += CodedOutputStream.e(7, ((Boolean) this.headerMatchSpecifier_).booleanValue());
        }
        boolean z10 = this.invertMatch_;
        if (z10) {
            computeStringSize += CodedOutputStream.e(8, z10);
        }
        if (this.headerMatchSpecifierCase_ == 9) {
            computeStringSize += GeneratedMessageV3.computeStringSize(9, this.headerMatchSpecifier_);
        }
        if (this.headerMatchSpecifierCase_ == 10) {
            computeStringSize += GeneratedMessageV3.computeStringSize(10, this.headerMatchSpecifier_);
        }
        if (this.headerMatchSpecifierCase_ == 11) {
            computeStringSize += CodedOutputStream.G(11, (RegexMatcher) this.headerMatchSpecifier_);
        }
        if (this.headerMatchSpecifierCase_ == 12) {
            computeStringSize += GeneratedMessageV3.computeStringSize(12, this.headerMatchSpecifier_);
        }
        if (this.headerMatchSpecifierCase_ == 13) {
            computeStringSize += CodedOutputStream.G(13, (StringMatcher) this.headerMatchSpecifier_);
        }
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public StringMatcher getStringMatch() {
        if (this.headerMatchSpecifierCase_ == 13) {
            return (StringMatcher) this.headerMatchSpecifier_;
        }
        return StringMatcher.getDefaultInstance();
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.n getStringMatchOrBuilder() {
        if (this.headerMatchSpecifierCase_ == 13) {
            return (StringMatcher) this.headerMatchSpecifier_;
        }
        return StringMatcher.getDefaultInstance();
    }

    @Deprecated
    public String getSuffixMatch() {
        String str = this.headerMatchSpecifierCase_ == 10 ? this.headerMatchSpecifier_ : "";
        if (str instanceof String) {
            return (String) str;
        }
        String stringUtf8 = ((ByteString) str).toStringUtf8();
        if (this.headerMatchSpecifierCase_ == 10) {
            this.headerMatchSpecifier_ = stringUtf8;
        }
        return stringUtf8;
    }

    @Deprecated
    public ByteString getSuffixMatchBytes() {
        String str = this.headerMatchSpecifierCase_ == 10 ? this.headerMatchSpecifier_ : "";
        if (str instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) str);
            if (this.headerMatchSpecifierCase_ == 10) {
                this.headerMatchSpecifier_ = copyFromUtf8;
            }
            return copyFromUtf8;
        }
        return (ByteString) str;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    @Deprecated
    public boolean hasContainsMatch() {
        return this.headerMatchSpecifierCase_ == 12;
    }

    @Deprecated
    public boolean hasExactMatch() {
        return this.headerMatchSpecifierCase_ == 4;
    }

    @Deprecated
    public boolean hasPrefixMatch() {
        return this.headerMatchSpecifierCase_ == 9;
    }

    public boolean hasPresentMatch() {
        return this.headerMatchSpecifierCase_ == 7;
    }

    public boolean hasRangeMatch() {
        return this.headerMatchSpecifierCase_ == 6;
    }

    @Deprecated
    public boolean hasSafeRegexMatch() {
        return this.headerMatchSpecifierCase_ == 11;
    }

    public boolean hasStringMatch() {
        return this.headerMatchSpecifierCase_ == 13;
    }

    @Deprecated
    public boolean hasSuffixMatch() {
        return this.headerMatchSpecifierCase_ == 10;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9;
        int hashCode;
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int hashCode2 = ((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode()) * 37) + 8) * 53) + u0.d(getInvertMatch());
        switch (this.headerMatchSpecifierCase_) {
            case 4:
                i9 = ((hashCode2 * 37) + 4) * 53;
                hashCode = getExactMatch().hashCode();
                hashCode2 = i9 + hashCode;
                int hashCode3 = (hashCode2 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode3;
                return hashCode3;
            case 5:
            case 8:
            default:
                int hashCode32 = (hashCode2 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode32;
                return hashCode32;
            case 6:
                i9 = ((hashCode2 * 37) + 6) * 53;
                hashCode = getRangeMatch().hashCode();
                hashCode2 = i9 + hashCode;
                int hashCode322 = (hashCode2 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode322;
                return hashCode322;
            case 7:
                i9 = ((hashCode2 * 37) + 7) * 53;
                hashCode = u0.d(getPresentMatch());
                hashCode2 = i9 + hashCode;
                int hashCode3222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode3222;
                return hashCode3222;
            case 9:
                i9 = ((hashCode2 * 37) + 9) * 53;
                hashCode = getPrefixMatch().hashCode();
                hashCode2 = i9 + hashCode;
                int hashCode32222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode32222;
                return hashCode32222;
            case 10:
                i9 = ((hashCode2 * 37) + 10) * 53;
                hashCode = getSuffixMatch().hashCode();
                hashCode2 = i9 + hashCode;
                int hashCode322222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode322222;
                return hashCode322222;
            case 11:
                i9 = ((hashCode2 * 37) + 11) * 53;
                hashCode = getSafeRegexMatch().hashCode();
                hashCode2 = i9 + hashCode;
                int hashCode3222222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode3222222;
                return hashCode3222222;
            case 12:
                i9 = ((hashCode2 * 37) + 12) * 53;
                hashCode = getContainsMatch().hashCode();
                hashCode2 = i9 + hashCode;
                int hashCode32222222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode32222222;
                return hashCode32222222;
            case 13:
                i9 = ((hashCode2 * 37) + 13) * 53;
                hashCode = getStringMatch().hashCode();
                hashCode2 = i9 + hashCode;
                int hashCode322222222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode322222222;
                return hashCode322222222;
        }
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return o.V0.d(HeaderMatcher.class, c.class);
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
        return new HeaderMatcher();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.name_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.name_);
        }
        if (this.headerMatchSpecifierCase_ == 4) {
            GeneratedMessageV3.writeString(codedOutputStream, 4, this.headerMatchSpecifier_);
        }
        if (this.headerMatchSpecifierCase_ == 6) {
            codedOutputStream.L0(6, (Int64Range) this.headerMatchSpecifier_);
        }
        if (this.headerMatchSpecifierCase_ == 7) {
            codedOutputStream.n0(7, ((Boolean) this.headerMatchSpecifier_).booleanValue());
        }
        boolean z10 = this.invertMatch_;
        if (z10) {
            codedOutputStream.n0(8, z10);
        }
        if (this.headerMatchSpecifierCase_ == 9) {
            GeneratedMessageV3.writeString(codedOutputStream, 9, this.headerMatchSpecifier_);
        }
        if (this.headerMatchSpecifierCase_ == 10) {
            GeneratedMessageV3.writeString(codedOutputStream, 10, this.headerMatchSpecifier_);
        }
        if (this.headerMatchSpecifierCase_ == 11) {
            codedOutputStream.L0(11, (RegexMatcher) this.headerMatchSpecifier_);
        }
        if (this.headerMatchSpecifierCase_ == 12) {
            GeneratedMessageV3.writeString(codedOutputStream, 12, this.headerMatchSpecifier_);
        }
        if (this.headerMatchSpecifierCase_ == 13) {
            codedOutputStream.L0(13, (StringMatcher) this.headerMatchSpecifier_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ HeaderMatcher(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(HeaderMatcher headerMatcher) {
        return DEFAULT_INSTANCE.toBuilder().g0(headerMatcher);
    }

    public static HeaderMatcher parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private HeaderMatcher(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.headerMatchSpecifierCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static HeaderMatcher parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (HeaderMatcher) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static HeaderMatcher parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public HeaderMatcher getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).g0(this);
    }

    public static HeaderMatcher parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    public static HeaderMatcher parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    private HeaderMatcher() {
        this.headerMatchSpecifierCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
        this.name_ = "";
    }

    public static HeaderMatcher parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static HeaderMatcher parseFrom(InputStream inputStream) throws IOException {
        return (HeaderMatcher) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static HeaderMatcher parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (HeaderMatcher) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    private HeaderMatcher(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    int L = pVar.L();
                    switch (L) {
                        case 0:
                            break;
                        case 10:
                            this.name_ = pVar.K();
                            continue;
                        case 34:
                            String K = pVar.K();
                            this.headerMatchSpecifierCase_ = 4;
                            this.headerMatchSpecifier_ = K;
                            continue;
                        case 50:
                            Int64Range.b builder = this.headerMatchSpecifierCase_ == 6 ? ((Int64Range) this.headerMatchSpecifier_).toBuilder() : null;
                            o1 B = pVar.B(Int64Range.parser(), f0Var);
                            this.headerMatchSpecifier_ = B;
                            if (builder != null) {
                                builder.g0((Int64Range) B);
                                this.headerMatchSpecifier_ = builder.I();
                            }
                            this.headerMatchSpecifierCase_ = 6;
                            continue;
                        case 56:
                            this.headerMatchSpecifier_ = Boolean.valueOf(pVar.r());
                            this.headerMatchSpecifierCase_ = 7;
                            continue;
                        case 64:
                            this.invertMatch_ = pVar.r();
                            continue;
                        case 74:
                            String K2 = pVar.K();
                            this.headerMatchSpecifierCase_ = 9;
                            this.headerMatchSpecifier_ = K2;
                            continue;
                        case 82:
                            String K3 = pVar.K();
                            this.headerMatchSpecifierCase_ = 10;
                            this.headerMatchSpecifier_ = K3;
                            continue;
                        case 90:
                            RegexMatcher.c builder2 = this.headerMatchSpecifierCase_ == 11 ? ((RegexMatcher) this.headerMatchSpecifier_).toBuilder() : null;
                            o1 B2 = pVar.B(RegexMatcher.parser(), f0Var);
                            this.headerMatchSpecifier_ = B2;
                            if (builder2 != null) {
                                builder2.g0((RegexMatcher) B2);
                                this.headerMatchSpecifier_ = builder2.I();
                            }
                            this.headerMatchSpecifierCase_ = 11;
                            continue;
                        case 98:
                            String K4 = pVar.K();
                            this.headerMatchSpecifierCase_ = 12;
                            this.headerMatchSpecifier_ = K4;
                            continue;
                        case 106:
                            StringMatcher.c builder3 = this.headerMatchSpecifierCase_ == 13 ? ((StringMatcher) this.headerMatchSpecifier_).toBuilder() : null;
                            o1 B3 = pVar.B(StringMatcher.parser(), f0Var);
                            this.headerMatchSpecifier_ = B3;
                            if (builder3 != null) {
                                builder3.g0((StringMatcher) B3);
                                this.headerMatchSpecifier_ = builder3.I();
                            }
                            this.headerMatchSpecifierCase_ = 13;
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
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static HeaderMatcher parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (HeaderMatcher) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static HeaderMatcher parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
        return (HeaderMatcher) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
