package com.google.api;

import com.google.api.CustomHttpPattern;
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
import com.google.protobuf.u0;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class HttpRule extends GeneratedMessageV3 implements g0 {
    public static final int ADDITIONAL_BINDINGS_FIELD_NUMBER = 11;
    public static final int BODY_FIELD_NUMBER = 7;
    public static final int CUSTOM_FIELD_NUMBER = 8;
    public static final int DELETE_FIELD_NUMBER = 5;
    public static final int GET_FIELD_NUMBER = 2;
    public static final int PATCH_FIELD_NUMBER = 6;
    public static final int POST_FIELD_NUMBER = 4;
    public static final int PUT_FIELD_NUMBER = 3;
    public static final int RESPONSE_BODY_FIELD_NUMBER = 12;
    public static final int SELECTOR_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private List<HttpRule> additionalBindings_;
    private volatile Object body_;
    private byte memoizedIsInitialized;
    private int patternCase_;
    private Object pattern_;
    private volatile Object responseBody_;
    private volatile Object selector_;
    private static final HttpRule DEFAULT_INSTANCE = new HttpRule();
    private static final e2<HttpRule> PARSER = new a();

    /* loaded from: classes2.dex */
    public enum PatternCase implements u0.c {
        GET(2),
        PUT(3),
        POST(4),
        DELETE(5),
        PATCH(6),
        CUSTOM(8),
        PATTERN_NOT_SET(0);
        
        private final int value;

        PatternCase(int i9) {
            this.value = i9;
        }

        public static PatternCase forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 8) {
                    if (i9 != 2) {
                        if (i9 != 3) {
                            if (i9 != 4) {
                                if (i9 != 5) {
                                    if (i9 != 6) {
                                        return null;
                                    }
                                    return PATCH;
                                }
                                return DELETE;
                            }
                            return POST;
                        }
                        return PUT;
                    }
                    return GET;
                }
                return CUSTOM;
            }
            return PATTERN_NOT_SET;
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static PatternCase valueOf(int i9) {
            return forNumber(i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a extends com.google.protobuf.c<HttpRule> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public HttpRule m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return new HttpRule(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f10766a;

        static {
            int[] iArr = new int[PatternCase.values().length];
            f10766a = iArr;
            try {
                iArr[PatternCase.GET.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f10766a[PatternCase.PUT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f10766a[PatternCase.POST.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f10766a[PatternCase.DELETE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f10766a[PatternCase.PATCH.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f10766a[PatternCase.CUSTOM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f10766a[PatternCase.PATTERN_NOT_SET.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements g0 {

        /* renamed from: e  reason: collision with root package name */
        private int f10767e;

        /* renamed from: f  reason: collision with root package name */
        private Object f10768f;

        /* renamed from: g  reason: collision with root package name */
        private int f10769g;

        /* renamed from: h  reason: collision with root package name */
        private Object f10770h;

        /* renamed from: i  reason: collision with root package name */
        private q2<CustomHttpPattern, CustomHttpPattern.b, u> f10771i;

        /* renamed from: j  reason: collision with root package name */
        private Object f10772j;

        /* renamed from: k  reason: collision with root package name */
        private Object f10773k;

        /* renamed from: l  reason: collision with root package name */
        private List<HttpRule> f10774l;

        /* renamed from: m  reason: collision with root package name */
        private l2<HttpRule, c, g0> f10775m;

        /* synthetic */ c(a aVar) {
            this();
        }

        private void a0() {
            if ((this.f10769g & 1) == 0) {
                this.f10774l = new ArrayList(this.f10774l);
                this.f10769g |= 1;
            }
        }

        private l2<HttpRule, c, g0> b0() {
            if (this.f10775m == null) {
                this.f10775m = new l2<>(this.f10774l, (this.f10769g & 1) != 0, H(), O());
                this.f10774l = null;
            }
            return this.f10775m;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                b0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return f0.f11203d.d(HttpRule.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public HttpRule build() {
            HttpRule I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public HttpRule I() {
            HttpRule httpRule = new HttpRule(this, (a) null);
            httpRule.selector_ = this.f10770h;
            if (this.f10767e == 2) {
                httpRule.pattern_ = this.f10768f;
            }
            if (this.f10767e == 3) {
                httpRule.pattern_ = this.f10768f;
            }
            if (this.f10767e == 4) {
                httpRule.pattern_ = this.f10768f;
            }
            if (this.f10767e == 5) {
                httpRule.pattern_ = this.f10768f;
            }
            if (this.f10767e == 6) {
                httpRule.pattern_ = this.f10768f;
            }
            if (this.f10767e == 8) {
                q2<CustomHttpPattern, CustomHttpPattern.b, u> q2Var = this.f10771i;
                if (q2Var == null) {
                    httpRule.pattern_ = this.f10768f;
                } else {
                    httpRule.pattern_ = q2Var.b();
                }
            }
            httpRule.body_ = this.f10772j;
            httpRule.responseBody_ = this.f10773k;
            l2<HttpRule, c, g0> l2Var = this.f10775m;
            if (l2Var == null) {
                if ((this.f10769g & 1) != 0) {
                    this.f10774l = Collections.unmodifiableList(this.f10774l);
                    this.f10769g &= -2;
                }
                httpRule.additionalBindings_ = this.f10774l;
            } else {
                httpRule.additionalBindings_ = l2Var.e();
            }
            httpRule.patternCase_ = this.f10767e;
            Q();
            return httpRule;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: d0 */
        public HttpRule getDefaultInstanceForType() {
            return HttpRule.getDefaultInstance();
        }

        public c g0(CustomHttpPattern customHttpPattern) {
            q2<CustomHttpPattern, CustomHttpPattern.b, u> q2Var = this.f10771i;
            if (q2Var == null) {
                if (this.f10767e == 8 && this.f10768f != CustomHttpPattern.getDefaultInstance()) {
                    this.f10768f = CustomHttpPattern.newBuilder((CustomHttpPattern) this.f10768f).d0(customHttpPattern).I();
                } else {
                    this.f10768f = customHttpPattern;
                }
                R();
            } else {
                if (this.f10767e == 8) {
                    q2Var.e(customHttpPattern);
                }
                this.f10771i.g(customHttpPattern);
            }
            this.f10767e = 8;
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return f0.f11202c;
        }

        public c h0(HttpRule httpRule) {
            if (httpRule == HttpRule.getDefaultInstance()) {
                return this;
            }
            if (!httpRule.getSelector().isEmpty()) {
                this.f10770h = httpRule.selector_;
                R();
            }
            if (!httpRule.getBody().isEmpty()) {
                this.f10772j = httpRule.body_;
                R();
            }
            if (!httpRule.getResponseBody().isEmpty()) {
                this.f10773k = httpRule.responseBody_;
                R();
            }
            if (this.f10775m == null) {
                if (!httpRule.additionalBindings_.isEmpty()) {
                    if (this.f10774l.isEmpty()) {
                        this.f10774l = httpRule.additionalBindings_;
                        this.f10769g &= -2;
                    } else {
                        a0();
                        this.f10774l.addAll(httpRule.additionalBindings_);
                    }
                    R();
                }
            } else if (!httpRule.additionalBindings_.isEmpty()) {
                if (this.f10775m.k()) {
                    this.f10775m.f();
                    this.f10775m = null;
                    this.f10774l = httpRule.additionalBindings_;
                    this.f10769g &= -2;
                    this.f10775m = GeneratedMessageV3.alwaysUseFieldBuilders ? b0() : null;
                } else {
                    this.f10775m.b(httpRule.additionalBindings_);
                }
            }
            switch (b.f10766a[httpRule.getPatternCase().ordinal()]) {
                case 1:
                    this.f10767e = 2;
                    this.f10768f = httpRule.pattern_;
                    R();
                    break;
                case 2:
                    this.f10767e = 3;
                    this.f10768f = httpRule.pattern_;
                    R();
                    break;
                case 3:
                    this.f10767e = 4;
                    this.f10768f = httpRule.pattern_;
                    R();
                    break;
                case 4:
                    this.f10767e = 5;
                    this.f10768f = httpRule.pattern_;
                    R();
                    break;
                case 5:
                    this.f10767e = 6;
                    this.f10768f = httpRule.pattern_;
                    R();
                    break;
                case 6:
                    g0(httpRule.getCustom());
                    break;
            }
            z(((GeneratedMessageV3) httpRule).unknownFields);
            R();
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.api.HttpRule.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.api.HttpRule.access$1200()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.api.HttpRule r3 = (com.google.api.HttpRule) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                com.google.api.HttpRule r4 = (com.google.api.HttpRule) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.api.HttpRule.c.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.api.HttpRule$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: j0 */
        public c v(com.google.protobuf.l1 l1Var) {
            if (l1Var instanceof HttpRule) {
                return h0((HttpRule) l1Var);
            }
            super.P0(l1Var);
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

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: m0 */
        public final c f1(h3 h3Var) {
            return (c) super.f1(h3Var);
        }

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private c() {
            this.f10767e = 0;
            this.f10770h = "";
            this.f10772j = "";
            this.f10773k = "";
            this.f10774l = Collections.emptyList();
            e0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f10767e = 0;
            this.f10770h = "";
            this.f10772j = "";
            this.f10773k = "";
            this.f10774l = Collections.emptyList();
            e0();
        }
    }

    /* synthetic */ HttpRule(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static HttpRule getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return f0.f11202c;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static HttpRule parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (HttpRule) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static HttpRule parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<HttpRule> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof HttpRule)) {
            return super.equals(obj);
        }
        HttpRule httpRule = (HttpRule) obj;
        if (getSelector().equals(httpRule.getSelector()) && getBody().equals(httpRule.getBody()) && getResponseBody().equals(httpRule.getResponseBody()) && getAdditionalBindingsList().equals(httpRule.getAdditionalBindingsList()) && getPatternCase().equals(httpRule.getPatternCase())) {
            int i9 = this.patternCase_;
            if (i9 != 2) {
                if (i9 != 3) {
                    if (i9 != 4) {
                        if (i9 != 5) {
                            if (i9 != 6) {
                                if (i9 == 8 && !getCustom().equals(httpRule.getCustom())) {
                                    return false;
                                }
                            } else if (!getPatch().equals(httpRule.getPatch())) {
                                return false;
                            }
                        } else if (!getDelete().equals(httpRule.getDelete())) {
                            return false;
                        }
                    } else if (!getPost().equals(httpRule.getPost())) {
                        return false;
                    }
                } else if (!getPut().equals(httpRule.getPut())) {
                    return false;
                }
            } else if (!getGet().equals(httpRule.getGet())) {
                return false;
            }
            return this.unknownFields.equals(httpRule.unknownFields);
        }
        return false;
    }

    public HttpRule getAdditionalBindings(int i9) {
        return this.additionalBindings_.get(i9);
    }

    public int getAdditionalBindingsCount() {
        return this.additionalBindings_.size();
    }

    public List<HttpRule> getAdditionalBindingsList() {
        return this.additionalBindings_;
    }

    public g0 getAdditionalBindingsOrBuilder(int i9) {
        return this.additionalBindings_.get(i9);
    }

    public List<? extends g0> getAdditionalBindingsOrBuilderList() {
        return this.additionalBindings_;
    }

    public String getBody() {
        Object obj = this.body_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.body_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getBodyBytes() {
        Object obj = this.body_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.body_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public CustomHttpPattern getCustom() {
        if (this.patternCase_ == 8) {
            return (CustomHttpPattern) this.pattern_;
        }
        return CustomHttpPattern.getDefaultInstance();
    }

    public u getCustomOrBuilder() {
        if (this.patternCase_ == 8) {
            return (CustomHttpPattern) this.pattern_;
        }
        return CustomHttpPattern.getDefaultInstance();
    }

    public String getDelete() {
        String str = this.patternCase_ == 5 ? this.pattern_ : "";
        if (str instanceof String) {
            return (String) str;
        }
        String stringUtf8 = ((ByteString) str).toStringUtf8();
        if (this.patternCase_ == 5) {
            this.pattern_ = stringUtf8;
        }
        return stringUtf8;
    }

    public ByteString getDeleteBytes() {
        String str = this.patternCase_ == 5 ? this.pattern_ : "";
        if (str instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) str);
            if (this.patternCase_ == 5) {
                this.pattern_ = copyFromUtf8;
            }
            return copyFromUtf8;
        }
        return (ByteString) str;
    }

    public String getGet() {
        String str = this.patternCase_ == 2 ? this.pattern_ : "";
        if (str instanceof String) {
            return (String) str;
        }
        String stringUtf8 = ((ByteString) str).toStringUtf8();
        if (this.patternCase_ == 2) {
            this.pattern_ = stringUtf8;
        }
        return stringUtf8;
    }

    public ByteString getGetBytes() {
        String str = this.patternCase_ == 2 ? this.pattern_ : "";
        if (str instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) str);
            if (this.patternCase_ == 2) {
                this.pattern_ = copyFromUtf8;
            }
            return copyFromUtf8;
        }
        return (ByteString) str;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<HttpRule> getParserForType() {
        return PARSER;
    }

    public String getPatch() {
        String str = this.patternCase_ == 6 ? this.pattern_ : "";
        if (str instanceof String) {
            return (String) str;
        }
        String stringUtf8 = ((ByteString) str).toStringUtf8();
        if (this.patternCase_ == 6) {
            this.pattern_ = stringUtf8;
        }
        return stringUtf8;
    }

    public ByteString getPatchBytes() {
        String str = this.patternCase_ == 6 ? this.pattern_ : "";
        if (str instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) str);
            if (this.patternCase_ == 6) {
                this.pattern_ = copyFromUtf8;
            }
            return copyFromUtf8;
        }
        return (ByteString) str;
    }

    public PatternCase getPatternCase() {
        return PatternCase.forNumber(this.patternCase_);
    }

    public String getPost() {
        String str = this.patternCase_ == 4 ? this.pattern_ : "";
        if (str instanceof String) {
            return (String) str;
        }
        String stringUtf8 = ((ByteString) str).toStringUtf8();
        if (this.patternCase_ == 4) {
            this.pattern_ = stringUtf8;
        }
        return stringUtf8;
    }

    public ByteString getPostBytes() {
        String str = this.patternCase_ == 4 ? this.pattern_ : "";
        if (str instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) str);
            if (this.patternCase_ == 4) {
                this.pattern_ = copyFromUtf8;
            }
            return copyFromUtf8;
        }
        return (ByteString) str;
    }

    public String getPut() {
        String str = this.patternCase_ == 3 ? this.pattern_ : "";
        if (str instanceof String) {
            return (String) str;
        }
        String stringUtf8 = ((ByteString) str).toStringUtf8();
        if (this.patternCase_ == 3) {
            this.pattern_ = stringUtf8;
        }
        return stringUtf8;
    }

    public ByteString getPutBytes() {
        String str = this.patternCase_ == 3 ? this.pattern_ : "";
        if (str instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) str);
            if (this.patternCase_ == 3) {
                this.pattern_ = copyFromUtf8;
            }
            return copyFromUtf8;
        }
        return (ByteString) str;
    }

    public String getResponseBody() {
        Object obj = this.responseBody_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.responseBody_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getResponseBodyBytes() {
        Object obj = this.responseBody_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.responseBody_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
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
        if (this.patternCase_ == 2) {
            computeStringSize += GeneratedMessageV3.computeStringSize(2, this.pattern_);
        }
        if (this.patternCase_ == 3) {
            computeStringSize += GeneratedMessageV3.computeStringSize(3, this.pattern_);
        }
        if (this.patternCase_ == 4) {
            computeStringSize += GeneratedMessageV3.computeStringSize(4, this.pattern_);
        }
        if (this.patternCase_ == 5) {
            computeStringSize += GeneratedMessageV3.computeStringSize(5, this.pattern_);
        }
        if (this.patternCase_ == 6) {
            computeStringSize += GeneratedMessageV3.computeStringSize(6, this.pattern_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.body_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(7, this.body_);
        }
        if (this.patternCase_ == 8) {
            computeStringSize += CodedOutputStream.G(8, (CustomHttpPattern) this.pattern_);
        }
        for (int i10 = 0; i10 < this.additionalBindings_.size(); i10++) {
            computeStringSize += CodedOutputStream.G(11, this.additionalBindings_.get(i10));
        }
        if (!GeneratedMessageV3.isStringEmpty(this.responseBody_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(12, this.responseBody_);
        }
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasCustom() {
        return this.patternCase_ == 8;
    }

    public boolean hasDelete() {
        return this.patternCase_ == 5;
    }

    public boolean hasGet() {
        return this.patternCase_ == 2;
    }

    public boolean hasPatch() {
        return this.patternCase_ == 6;
    }

    public boolean hasPost() {
        return this.patternCase_ == 4;
    }

    public boolean hasPut() {
        return this.patternCase_ == 3;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9;
        int hashCode;
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int hashCode2 = ((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getSelector().hashCode()) * 37) + 7) * 53) + getBody().hashCode()) * 37) + 12) * 53) + getResponseBody().hashCode();
        if (getAdditionalBindingsCount() > 0) {
            hashCode2 = (((hashCode2 * 37) + 11) * 53) + getAdditionalBindingsList().hashCode();
        }
        int i11 = this.patternCase_;
        if (i11 == 2) {
            i9 = ((hashCode2 * 37) + 2) * 53;
            hashCode = getGet().hashCode();
        } else if (i11 == 3) {
            i9 = ((hashCode2 * 37) + 3) * 53;
            hashCode = getPut().hashCode();
        } else if (i11 == 4) {
            i9 = ((hashCode2 * 37) + 4) * 53;
            hashCode = getPost().hashCode();
        } else if (i11 == 5) {
            i9 = ((hashCode2 * 37) + 5) * 53;
            hashCode = getDelete().hashCode();
        } else if (i11 == 6) {
            i9 = ((hashCode2 * 37) + 6) * 53;
            hashCode = getPatch().hashCode();
        } else {
            if (i11 == 8) {
                i9 = ((hashCode2 * 37) + 8) * 53;
                hashCode = getCustom().hashCode();
            }
            int hashCode3 = (hashCode2 * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode3;
            return hashCode3;
        }
        hashCode2 = i9 + hashCode;
        int hashCode32 = (hashCode2 * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode32;
        return hashCode32;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return f0.f11203d.d(HttpRule.class, c.class);
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
        return new HttpRule();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.selector_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.selector_);
        }
        if (this.patternCase_ == 2) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.pattern_);
        }
        if (this.patternCase_ == 3) {
            GeneratedMessageV3.writeString(codedOutputStream, 3, this.pattern_);
        }
        if (this.patternCase_ == 4) {
            GeneratedMessageV3.writeString(codedOutputStream, 4, this.pattern_);
        }
        if (this.patternCase_ == 5) {
            GeneratedMessageV3.writeString(codedOutputStream, 5, this.pattern_);
        }
        if (this.patternCase_ == 6) {
            GeneratedMessageV3.writeString(codedOutputStream, 6, this.pattern_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.body_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 7, this.body_);
        }
        if (this.patternCase_ == 8) {
            codedOutputStream.L0(8, (CustomHttpPattern) this.pattern_);
        }
        for (int i9 = 0; i9 < this.additionalBindings_.size(); i9++) {
            codedOutputStream.L0(11, this.additionalBindings_.get(i9));
        }
        if (!GeneratedMessageV3.isStringEmpty(this.responseBody_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 12, this.responseBody_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ HttpRule(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(HttpRule httpRule) {
        return DEFAULT_INSTANCE.toBuilder().h0(httpRule);
    }

    public static HttpRule parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (HttpRule) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static HttpRule parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private HttpRule(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.patternCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static HttpRule parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public HttpRule getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).h0(this);
    }

    public static HttpRule parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    public static HttpRule parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    private HttpRule() {
        this.patternCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
        this.selector_ = "";
        this.body_ = "";
        this.responseBody_ = "";
        this.additionalBindings_ = Collections.emptyList();
    }

    public static HttpRule parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static HttpRule parseFrom(InputStream inputStream) throws IOException {
        return (HttpRule) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static HttpRule parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (HttpRule) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static HttpRule parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (HttpRule) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static HttpRule parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
        return (HttpRule) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private HttpRule(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                                this.selector_ = pVar.K();
                                continue;
                            case 18:
                                String K = pVar.K();
                                this.patternCase_ = 2;
                                this.pattern_ = K;
                                continue;
                            case 26:
                                String K2 = pVar.K();
                                this.patternCase_ = 3;
                                this.pattern_ = K2;
                                continue;
                            case 34:
                                String K3 = pVar.K();
                                this.patternCase_ = 4;
                                this.pattern_ = K3;
                                continue;
                            case 42:
                                String K4 = pVar.K();
                                this.patternCase_ = 5;
                                this.pattern_ = K4;
                                continue;
                            case 50:
                                String K5 = pVar.K();
                                this.patternCase_ = 6;
                                this.pattern_ = K5;
                                continue;
                            case 58:
                                this.body_ = pVar.K();
                                continue;
                            case 66:
                                CustomHttpPattern.b builder = this.patternCase_ == 8 ? ((CustomHttpPattern) this.pattern_).toBuilder() : null;
                                com.google.protobuf.o1 B = pVar.B(CustomHttpPattern.parser(), f0Var);
                                this.pattern_ = B;
                                if (builder != null) {
                                    builder.d0((CustomHttpPattern) B);
                                    this.pattern_ = builder.I();
                                }
                                this.patternCase_ = 8;
                                continue;
                            case 90:
                                if (!(z11 & true)) {
                                    this.additionalBindings_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.additionalBindings_.add(pVar.B(parser(), f0Var));
                                continue;
                            case 98:
                                this.responseBody_ = pVar.K();
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
                    }
                } catch (IOException e11) {
                    throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                }
            } finally {
                if (z11 & true) {
                    this.additionalBindings_ = Collections.unmodifiableList(this.additionalBindings_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }
}
