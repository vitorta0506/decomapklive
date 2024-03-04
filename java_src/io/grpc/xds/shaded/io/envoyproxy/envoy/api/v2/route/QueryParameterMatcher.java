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
import com.google.protobuf.l1;
import com.google.protobuf.o1;
import com.google.protobuf.q2;
import com.google.protobuf.u0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.StringMatcher;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class QueryParameterMatcher extends GeneratedMessageV3 implements g {
    public static final int NAME_FIELD_NUMBER = 1;
    public static final int PRESENT_MATCH_FIELD_NUMBER = 6;
    public static final int REGEX_FIELD_NUMBER = 4;
    public static final int STRING_MATCH_FIELD_NUMBER = 5;
    public static final int VALUE_FIELD_NUMBER = 3;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private volatile Object name_;
    private int queryParameterMatchSpecifierCase_;
    private Object queryParameterMatchSpecifier_;
    private BoolValue regex_;
    private volatile Object value_;
    private static final QueryParameterMatcher DEFAULT_INSTANCE = new QueryParameterMatcher();
    private static final e2<QueryParameterMatcher> PARSER = new a();

    /* loaded from: classes6.dex */
    public enum QueryParameterMatchSpecifierCase implements u0.c {
        STRING_MATCH(5),
        PRESENT_MATCH(6),
        QUERYPARAMETERMATCHSPECIFIER_NOT_SET(0);
        
        private final int value;

        QueryParameterMatchSpecifierCase(int i9) {
            this.value = i9;
        }

        public static QueryParameterMatchSpecifierCase forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 5) {
                    if (i9 != 6) {
                        return null;
                    }
                    return PRESENT_MATCH;
                }
                return STRING_MATCH;
            }
            return QUERYPARAMETERMATCHSPECIFIER_NOT_SET;
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static QueryParameterMatchSpecifierCase valueOf(int i9) {
            return forNumber(i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<QueryParameterMatcher> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public QueryParameterMatcher m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new QueryParameterMatcher(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f47048a;

        static {
            int[] iArr = new int[QueryParameterMatchSpecifierCase.values().length];
            f47048a = iArr;
            try {
                iArr[QueryParameterMatchSpecifierCase.STRING_MATCH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f47048a[QueryParameterMatchSpecifierCase.PRESENT_MATCH.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f47048a[QueryParameterMatchSpecifierCase.QUERYPARAMETERMATCHSPECIFIER_NOT_SET.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements g {

        /* renamed from: e  reason: collision with root package name */
        private int f47049e;

        /* renamed from: f  reason: collision with root package name */
        private Object f47050f;

        /* renamed from: g  reason: collision with root package name */
        private Object f47051g;

        /* renamed from: h  reason: collision with root package name */
        private Object f47052h;

        /* renamed from: i  reason: collision with root package name */
        private BoolValue f47053i;

        /* renamed from: j  reason: collision with root package name */
        private q2<BoolValue, BoolValue.b, com.google.protobuf.l> f47054j;

        /* renamed from: k  reason: collision with root package name */
        private q2<StringMatcher, StringMatcher.c, io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.k> f47055k;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return l.J0.d(QueryParameterMatcher.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public QueryParameterMatcher build() {
            QueryParameterMatcher I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public QueryParameterMatcher I() {
            QueryParameterMatcher queryParameterMatcher = new QueryParameterMatcher(this, (a) null);
            queryParameterMatcher.name_ = this.f47051g;
            queryParameterMatcher.value_ = this.f47052h;
            q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var = this.f47054j;
            if (q2Var == null) {
                queryParameterMatcher.regex_ = this.f47053i;
            } else {
                queryParameterMatcher.regex_ = q2Var.b();
            }
            if (this.f47049e == 5) {
                q2<StringMatcher, StringMatcher.c, io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.k> q2Var2 = this.f47055k;
                if (q2Var2 == null) {
                    queryParameterMatcher.queryParameterMatchSpecifier_ = this.f47050f;
                } else {
                    queryParameterMatcher.queryParameterMatchSpecifier_ = q2Var2.b();
                }
            }
            if (this.f47049e == 6) {
                queryParameterMatcher.queryParameterMatchSpecifier_ = this.f47050f;
            }
            queryParameterMatcher.queryParameterMatchSpecifierCase_ = this.f47049e;
            Q();
            return queryParameterMatcher;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public QueryParameterMatcher getDefaultInstanceForType() {
            return QueryParameterMatcher.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.QueryParameterMatcher.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.QueryParameterMatcher.access$1000()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.QueryParameterMatcher r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.QueryParameterMatcher) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.QueryParameterMatcher r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.QueryParameterMatcher) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.QueryParameterMatcher.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.QueryParameterMatcher$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public c v(l1 l1Var) {
            if (l1Var instanceof QueryParameterMatcher) {
                return g0((QueryParameterMatcher) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public c g0(QueryParameterMatcher queryParameterMatcher) {
            if (queryParameterMatcher == QueryParameterMatcher.getDefaultInstance()) {
                return this;
            }
            if (!queryParameterMatcher.getName().isEmpty()) {
                this.f47051g = queryParameterMatcher.name_;
                R();
            }
            if (!queryParameterMatcher.getValue().isEmpty()) {
                this.f47052h = queryParameterMatcher.value_;
                R();
            }
            if (queryParameterMatcher.hasRegex()) {
                h0(queryParameterMatcher.getRegex());
            }
            int i9 = b.f47048a[queryParameterMatcher.getQueryParameterMatchSpecifierCase().ordinal()];
            if (i9 == 1) {
                i0(queryParameterMatcher.getStringMatch());
            } else if (i9 == 2) {
                l0(queryParameterMatcher.getPresentMatch());
            }
            z(((GeneratedMessageV3) queryParameterMatcher).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return l.I0;
        }

        @Deprecated
        public c h0(BoolValue boolValue) {
            q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var = this.f47054j;
            if (q2Var == null) {
                BoolValue boolValue2 = this.f47053i;
                if (boolValue2 != null) {
                    this.f47053i = BoolValue.newBuilder(boolValue2).d0(boolValue).I();
                } else {
                    this.f47053i = boolValue;
                }
                R();
            } else {
                q2Var.e(boolValue);
            }
            return this;
        }

        public c i0(StringMatcher stringMatcher) {
            q2<StringMatcher, StringMatcher.c, io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.k> q2Var = this.f47055k;
            if (q2Var == null) {
                if (this.f47049e == 5 && this.f47050f != StringMatcher.getDefaultInstance()) {
                    this.f47050f = StringMatcher.newBuilder((StringMatcher) this.f47050f).g0(stringMatcher).I();
                } else {
                    this.f47050f = stringMatcher;
                }
                R();
            } else {
                if (this.f47049e == 5) {
                    q2Var.e(stringMatcher);
                }
                this.f47055k.g(stringMatcher);
            }
            this.f47049e = 5;
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: j0 */
        public final c z(h3 h3Var) {
            return (c) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: k0 */
        public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.c(fieldDescriptor, obj);
        }

        public c l0(boolean z10) {
            this.f47049e = 6;
            this.f47050f = Boolean.valueOf(z10);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: m0 */
        public final c f1(h3 h3Var) {
            return (c) super.f1(h3Var);
        }

        /* synthetic */ c(a aVar) {
            this();
        }

        private c() {
            this.f47049e = 0;
            this.f47051g = "";
            this.f47052h = "";
            b0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f47049e = 0;
            this.f47051g = "";
            this.f47052h = "";
            b0();
        }
    }

    /* synthetic */ QueryParameterMatcher(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static QueryParameterMatcher getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return l.I0;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static QueryParameterMatcher parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (QueryParameterMatcher) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static QueryParameterMatcher parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<QueryParameterMatcher> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof QueryParameterMatcher)) {
            return super.equals(obj);
        }
        QueryParameterMatcher queryParameterMatcher = (QueryParameterMatcher) obj;
        if (getName().equals(queryParameterMatcher.getName()) && getValue().equals(queryParameterMatcher.getValue()) && hasRegex() == queryParameterMatcher.hasRegex()) {
            if ((!hasRegex() || getRegex().equals(queryParameterMatcher.getRegex())) && getQueryParameterMatchSpecifierCase().equals(queryParameterMatcher.getQueryParameterMatchSpecifierCase())) {
                int i9 = this.queryParameterMatchSpecifierCase_;
                if (i9 != 5) {
                    if (i9 == 6 && getPresentMatch() != queryParameterMatcher.getPresentMatch()) {
                        return false;
                    }
                } else if (!getStringMatch().equals(queryParameterMatcher.getStringMatch())) {
                    return false;
                }
                return this.unknownFields.equals(queryParameterMatcher.unknownFields);
            }
            return false;
        }
        return false;
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
    public e2<QueryParameterMatcher> getParserForType() {
        return PARSER;
    }

    public boolean getPresentMatch() {
        if (this.queryParameterMatchSpecifierCase_ == 6) {
            return ((Boolean) this.queryParameterMatchSpecifier_).booleanValue();
        }
        return false;
    }

    public QueryParameterMatchSpecifierCase getQueryParameterMatchSpecifierCase() {
        return QueryParameterMatchSpecifierCase.forNumber(this.queryParameterMatchSpecifierCase_);
    }

    @Deprecated
    public BoolValue getRegex() {
        BoolValue boolValue = this.regex_;
        return boolValue == null ? BoolValue.getDefaultInstance() : boolValue;
    }

    @Deprecated
    public com.google.protobuf.l getRegexOrBuilder() {
        return getRegex();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = GeneratedMessageV3.isStringEmpty(this.name_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.name_);
        if (!GeneratedMessageV3.isStringEmpty(this.value_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(3, this.value_);
        }
        if (this.regex_ != null) {
            computeStringSize += CodedOutputStream.G(4, getRegex());
        }
        if (this.queryParameterMatchSpecifierCase_ == 5) {
            computeStringSize += CodedOutputStream.G(5, (StringMatcher) this.queryParameterMatchSpecifier_);
        }
        if (this.queryParameterMatchSpecifierCase_ == 6) {
            computeStringSize += CodedOutputStream.e(6, ((Boolean) this.queryParameterMatchSpecifier_).booleanValue());
        }
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public StringMatcher getStringMatch() {
        if (this.queryParameterMatchSpecifierCase_ == 5) {
            return (StringMatcher) this.queryParameterMatchSpecifier_;
        }
        return StringMatcher.getDefaultInstance();
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.k getStringMatchOrBuilder() {
        if (this.queryParameterMatchSpecifierCase_ == 5) {
            return (StringMatcher) this.queryParameterMatchSpecifier_;
        }
        return StringMatcher.getDefaultInstance();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    @Deprecated
    public String getValue() {
        Object obj = this.value_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.value_ = stringUtf8;
        return stringUtf8;
    }

    @Deprecated
    public ByteString getValueBytes() {
        Object obj = this.value_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.value_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public boolean hasPresentMatch() {
        return this.queryParameterMatchSpecifierCase_ == 6;
    }

    @Deprecated
    public boolean hasRegex() {
        return this.regex_ != null;
    }

    public boolean hasStringMatch() {
        return this.queryParameterMatchSpecifierCase_ == 5;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9;
        int hashCode;
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int hashCode2 = ((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode()) * 37) + 3) * 53) + getValue().hashCode();
        if (hasRegex()) {
            hashCode2 = (((hashCode2 * 37) + 4) * 53) + getRegex().hashCode();
        }
        int i11 = this.queryParameterMatchSpecifierCase_;
        if (i11 == 5) {
            i9 = ((hashCode2 * 37) + 5) * 53;
            hashCode = getStringMatch().hashCode();
        } else {
            if (i11 == 6) {
                i9 = ((hashCode2 * 37) + 6) * 53;
                hashCode = u0.d(getPresentMatch());
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
        return l.J0.d(QueryParameterMatcher.class, c.class);
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
        return new QueryParameterMatcher();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.name_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.name_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.value_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 3, this.value_);
        }
        if (this.regex_ != null) {
            codedOutputStream.L0(4, getRegex());
        }
        if (this.queryParameterMatchSpecifierCase_ == 5) {
            codedOutputStream.L0(5, (StringMatcher) this.queryParameterMatchSpecifier_);
        }
        if (this.queryParameterMatchSpecifierCase_ == 6) {
            codedOutputStream.n0(6, ((Boolean) this.queryParameterMatchSpecifier_).booleanValue());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ QueryParameterMatcher(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(QueryParameterMatcher queryParameterMatcher) {
        return DEFAULT_INSTANCE.toBuilder().g0(queryParameterMatcher);
    }

    public static QueryParameterMatcher parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private QueryParameterMatcher(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.queryParameterMatchSpecifierCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static QueryParameterMatcher parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (QueryParameterMatcher) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static QueryParameterMatcher parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public QueryParameterMatcher getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).g0(this);
    }

    public static QueryParameterMatcher parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    public static QueryParameterMatcher parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    private QueryParameterMatcher() {
        this.queryParameterMatchSpecifierCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
        this.name_ = "";
        this.value_ = "";
    }

    public static QueryParameterMatcher parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static QueryParameterMatcher parseFrom(InputStream inputStream) throws IOException {
        return (QueryParameterMatcher) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static QueryParameterMatcher parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (QueryParameterMatcher) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    private QueryParameterMatcher(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            this.name_ = pVar.K();
                        } else if (L != 26) {
                            if (L == 34) {
                                BoolValue boolValue = this.regex_;
                                BoolValue.b builder = boolValue != null ? boolValue.toBuilder() : null;
                                BoolValue boolValue2 = (BoolValue) pVar.B(BoolValue.parser(), f0Var);
                                this.regex_ = boolValue2;
                                if (builder != null) {
                                    builder.d0(boolValue2);
                                    this.regex_ = builder.I();
                                }
                            } else if (L == 42) {
                                StringMatcher.c builder2 = this.queryParameterMatchSpecifierCase_ == 5 ? ((StringMatcher) this.queryParameterMatchSpecifier_).toBuilder() : null;
                                o1 B = pVar.B(StringMatcher.parser(), f0Var);
                                this.queryParameterMatchSpecifier_ = B;
                                if (builder2 != null) {
                                    builder2.g0((StringMatcher) B);
                                    this.queryParameterMatchSpecifier_ = builder2.I();
                                }
                                this.queryParameterMatchSpecifierCase_ = 5;
                            } else if (L != 48) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                this.queryParameterMatchSpecifier_ = Boolean.valueOf(pVar.r());
                                this.queryParameterMatchSpecifierCase_ = 6;
                            }
                        } else {
                            this.value_ = pVar.K();
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

    public static QueryParameterMatcher parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (QueryParameterMatcher) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static QueryParameterMatcher parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
        return (QueryParameterMatcher) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
