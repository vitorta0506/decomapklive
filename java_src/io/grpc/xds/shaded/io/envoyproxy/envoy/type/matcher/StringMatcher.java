package io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher;

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
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.u0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.RegexMatcher;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class StringMatcher extends GeneratedMessageV3 implements k {
    public static final int EXACT_FIELD_NUMBER = 1;
    public static final int IGNORE_CASE_FIELD_NUMBER = 6;
    public static final int PREFIX_FIELD_NUMBER = 2;
    public static final int REGEX_FIELD_NUMBER = 4;
    public static final int SAFE_REGEX_FIELD_NUMBER = 5;
    public static final int SUFFIX_FIELD_NUMBER = 3;
    private static final long serialVersionUID = 0;
    private boolean ignoreCase_;
    private int matchPatternCase_;
    private Object matchPattern_;
    private byte memoizedIsInitialized;
    private static final StringMatcher DEFAULT_INSTANCE = new StringMatcher();
    private static final e2<StringMatcher> PARSER = new a();

    /* loaded from: classes6.dex */
    public enum MatchPatternCase implements u0.c {
        EXACT(1),
        PREFIX(2),
        SUFFIX(3),
        REGEX(4),
        SAFE_REGEX(5),
        MATCHPATTERN_NOT_SET(0);
        
        private final int value;

        MatchPatternCase(int i9) {
            this.value = i9;
        }

        public static MatchPatternCase forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 != 2) {
                        if (i9 != 3) {
                            if (i9 != 4) {
                                if (i9 != 5) {
                                    return null;
                                }
                                return SAFE_REGEX;
                            }
                            return REGEX;
                        }
                        return SUFFIX;
                    }
                    return PREFIX;
                }
                return EXACT;
            }
            return MATCHPATTERN_NOT_SET;
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static MatchPatternCase valueOf(int i9) {
            return forNumber(i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<StringMatcher> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public StringMatcher m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new StringMatcher(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f50296a;

        static {
            int[] iArr = new int[MatchPatternCase.values().length];
            f50296a = iArr;
            try {
                iArr[MatchPatternCase.EXACT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f50296a[MatchPatternCase.PREFIX.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f50296a[MatchPatternCase.SUFFIX.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f50296a[MatchPatternCase.REGEX.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f50296a[MatchPatternCase.SAFE_REGEX.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f50296a[MatchPatternCase.MATCHPATTERN_NOT_SET.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements k {

        /* renamed from: e  reason: collision with root package name */
        private int f50297e;

        /* renamed from: f  reason: collision with root package name */
        private Object f50298f;

        /* renamed from: g  reason: collision with root package name */
        private q2<RegexMatcher, RegexMatcher.c, i> f50299g;

        /* renamed from: h  reason: collision with root package name */
        private boolean f50300h;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return l.f50327b.d(StringMatcher.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public StringMatcher build() {
            StringMatcher I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public StringMatcher I() {
            StringMatcher stringMatcher = new StringMatcher(this, (a) null);
            if (this.f50297e == 1) {
                stringMatcher.matchPattern_ = this.f50298f;
            }
            if (this.f50297e == 2) {
                stringMatcher.matchPattern_ = this.f50298f;
            }
            if (this.f50297e == 3) {
                stringMatcher.matchPattern_ = this.f50298f;
            }
            if (this.f50297e == 4) {
                stringMatcher.matchPattern_ = this.f50298f;
            }
            if (this.f50297e == 5) {
                q2<RegexMatcher, RegexMatcher.c, i> q2Var = this.f50299g;
                if (q2Var == null) {
                    stringMatcher.matchPattern_ = this.f50298f;
                } else {
                    stringMatcher.matchPattern_ = q2Var.b();
                }
            }
            stringMatcher.ignoreCase_ = this.f50300h;
            stringMatcher.matchPatternCase_ = this.f50297e;
            Q();
            return stringMatcher;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public StringMatcher getDefaultInstanceForType() {
            return StringMatcher.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.StringMatcher.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.StringMatcher.access$800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.StringMatcher r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.StringMatcher) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.StringMatcher r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.StringMatcher) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.StringMatcher.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.StringMatcher$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public c v(l1 l1Var) {
            if (l1Var instanceof StringMatcher) {
                return g0((StringMatcher) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public c g0(StringMatcher stringMatcher) {
            if (stringMatcher == StringMatcher.getDefaultInstance()) {
                return this;
            }
            if (stringMatcher.getIgnoreCase()) {
                k0(stringMatcher.getIgnoreCase());
            }
            int i9 = b.f50296a[stringMatcher.getMatchPatternCase().ordinal()];
            if (i9 == 1) {
                this.f50297e = 1;
                this.f50298f = stringMatcher.matchPattern_;
                R();
            } else if (i9 == 2) {
                this.f50297e = 2;
                this.f50298f = stringMatcher.matchPattern_;
                R();
            } else if (i9 == 3) {
                this.f50297e = 3;
                this.f50298f = stringMatcher.matchPattern_;
                R();
            } else if (i9 == 4) {
                this.f50297e = 4;
                this.f50298f = stringMatcher.matchPattern_;
                R();
            } else if (i9 == 5) {
                h0(stringMatcher.getSafeRegex());
            }
            z(((GeneratedMessageV3) stringMatcher).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return l.f50326a;
        }

        public c h0(RegexMatcher regexMatcher) {
            q2<RegexMatcher, RegexMatcher.c, i> q2Var = this.f50299g;
            if (q2Var == null) {
                if (this.f50297e == 5 && this.f50298f != RegexMatcher.getDefaultInstance()) {
                    this.f50298f = RegexMatcher.newBuilder((RegexMatcher) this.f50298f).g0(regexMatcher).I();
                } else {
                    this.f50298f = regexMatcher;
                }
                R();
            } else {
                if (this.f50297e == 5) {
                    q2Var.e(regexMatcher);
                }
                this.f50299g.g(regexMatcher);
            }
            this.f50297e = 5;
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
            this.f50300h = z10;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: l0 */
        public final c f1(h3 h3Var) {
            return (c) super.f1(h3Var);
        }

        /* synthetic */ c(a aVar) {
            this();
        }

        private c() {
            this.f50297e = 0;
            b0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f50297e = 0;
            b0();
        }
    }

    /* synthetic */ StringMatcher(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static StringMatcher getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return l.f50326a;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static StringMatcher parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (StringMatcher) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static StringMatcher parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<StringMatcher> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof StringMatcher)) {
            return super.equals(obj);
        }
        StringMatcher stringMatcher = (StringMatcher) obj;
        if (getIgnoreCase() == stringMatcher.getIgnoreCase() && getMatchPatternCase().equals(stringMatcher.getMatchPatternCase())) {
            int i9 = this.matchPatternCase_;
            if (i9 != 1) {
                if (i9 != 2) {
                    if (i9 != 3) {
                        if (i9 != 4) {
                            if (i9 == 5 && !getSafeRegex().equals(stringMatcher.getSafeRegex())) {
                                return false;
                            }
                        } else if (!getRegex().equals(stringMatcher.getRegex())) {
                            return false;
                        }
                    } else if (!getSuffix().equals(stringMatcher.getSuffix())) {
                        return false;
                    }
                } else if (!getPrefix().equals(stringMatcher.getPrefix())) {
                    return false;
                }
            } else if (!getExact().equals(stringMatcher.getExact())) {
                return false;
            }
            return this.unknownFields.equals(stringMatcher.unknownFields);
        }
        return false;
    }

    public String getExact() {
        String str = this.matchPatternCase_ == 1 ? this.matchPattern_ : "";
        if (str instanceof String) {
            return (String) str;
        }
        String stringUtf8 = ((ByteString) str).toStringUtf8();
        if (this.matchPatternCase_ == 1) {
            this.matchPattern_ = stringUtf8;
        }
        return stringUtf8;
    }

    public ByteString getExactBytes() {
        String str = this.matchPatternCase_ == 1 ? this.matchPattern_ : "";
        if (str instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) str);
            if (this.matchPatternCase_ == 1) {
                this.matchPattern_ = copyFromUtf8;
            }
            return copyFromUtf8;
        }
        return (ByteString) str;
    }

    public boolean getIgnoreCase() {
        return this.ignoreCase_;
    }

    public MatchPatternCase getMatchPatternCase() {
        return MatchPatternCase.forNumber(this.matchPatternCase_);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<StringMatcher> getParserForType() {
        return PARSER;
    }

    public String getPrefix() {
        String str = this.matchPatternCase_ == 2 ? this.matchPattern_ : "";
        if (str instanceof String) {
            return (String) str;
        }
        String stringUtf8 = ((ByteString) str).toStringUtf8();
        if (this.matchPatternCase_ == 2) {
            this.matchPattern_ = stringUtf8;
        }
        return stringUtf8;
    }

    public ByteString getPrefixBytes() {
        String str = this.matchPatternCase_ == 2 ? this.matchPattern_ : "";
        if (str instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) str);
            if (this.matchPatternCase_ == 2) {
                this.matchPattern_ = copyFromUtf8;
            }
            return copyFromUtf8;
        }
        return (ByteString) str;
    }

    @Deprecated
    public String getRegex() {
        String str = this.matchPatternCase_ == 4 ? this.matchPattern_ : "";
        if (str instanceof String) {
            return (String) str;
        }
        String stringUtf8 = ((ByteString) str).toStringUtf8();
        if (this.matchPatternCase_ == 4) {
            this.matchPattern_ = stringUtf8;
        }
        return stringUtf8;
    }

    @Deprecated
    public ByteString getRegexBytes() {
        String str = this.matchPatternCase_ == 4 ? this.matchPattern_ : "";
        if (str instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) str);
            if (this.matchPatternCase_ == 4) {
                this.matchPattern_ = copyFromUtf8;
            }
            return copyFromUtf8;
        }
        return (ByteString) str;
    }

    public RegexMatcher getSafeRegex() {
        if (this.matchPatternCase_ == 5) {
            return (RegexMatcher) this.matchPattern_;
        }
        return RegexMatcher.getDefaultInstance();
    }

    public i getSafeRegexOrBuilder() {
        if (this.matchPatternCase_ == 5) {
            return (RegexMatcher) this.matchPattern_;
        }
        return RegexMatcher.getDefaultInstance();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = this.matchPatternCase_ == 1 ? 0 + GeneratedMessageV3.computeStringSize(1, this.matchPattern_) : 0;
        if (this.matchPatternCase_ == 2) {
            computeStringSize += GeneratedMessageV3.computeStringSize(2, this.matchPattern_);
        }
        if (this.matchPatternCase_ == 3) {
            computeStringSize += GeneratedMessageV3.computeStringSize(3, this.matchPattern_);
        }
        if (this.matchPatternCase_ == 4) {
            computeStringSize += GeneratedMessageV3.computeStringSize(4, this.matchPattern_);
        }
        if (this.matchPatternCase_ == 5) {
            computeStringSize += CodedOutputStream.G(5, (RegexMatcher) this.matchPattern_);
        }
        boolean z10 = this.ignoreCase_;
        if (z10) {
            computeStringSize += CodedOutputStream.e(6, z10);
        }
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public String getSuffix() {
        String str = this.matchPatternCase_ == 3 ? this.matchPattern_ : "";
        if (str instanceof String) {
            return (String) str;
        }
        String stringUtf8 = ((ByteString) str).toStringUtf8();
        if (this.matchPatternCase_ == 3) {
            this.matchPattern_ = stringUtf8;
        }
        return stringUtf8;
    }

    public ByteString getSuffixBytes() {
        String str = this.matchPatternCase_ == 3 ? this.matchPattern_ : "";
        if (str instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) str);
            if (this.matchPatternCase_ == 3) {
                this.matchPattern_ = copyFromUtf8;
            }
            return copyFromUtf8;
        }
        return (ByteString) str;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasExact() {
        return this.matchPatternCase_ == 1;
    }

    public boolean hasPrefix() {
        return this.matchPatternCase_ == 2;
    }

    @Deprecated
    public boolean hasRegex() {
        return this.matchPatternCase_ == 4;
    }

    public boolean hasSafeRegex() {
        return this.matchPatternCase_ == 5;
    }

    public boolean hasSuffix() {
        return this.matchPatternCase_ == 3;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9;
        int hashCode;
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int hashCode2 = ((((779 + getDescriptor().hashCode()) * 37) + 6) * 53) + u0.d(getIgnoreCase());
        int i11 = this.matchPatternCase_;
        if (i11 == 1) {
            i9 = ((hashCode2 * 37) + 1) * 53;
            hashCode = getExact().hashCode();
        } else if (i11 == 2) {
            i9 = ((hashCode2 * 37) + 2) * 53;
            hashCode = getPrefix().hashCode();
        } else if (i11 == 3) {
            i9 = ((hashCode2 * 37) + 3) * 53;
            hashCode = getSuffix().hashCode();
        } else if (i11 == 4) {
            i9 = ((hashCode2 * 37) + 4) * 53;
            hashCode = getRegex().hashCode();
        } else {
            if (i11 == 5) {
                i9 = ((hashCode2 * 37) + 5) * 53;
                hashCode = getSafeRegex().hashCode();
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
        return l.f50327b.d(StringMatcher.class, c.class);
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
        return new StringMatcher();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.matchPatternCase_ == 1) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.matchPattern_);
        }
        if (this.matchPatternCase_ == 2) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.matchPattern_);
        }
        if (this.matchPatternCase_ == 3) {
            GeneratedMessageV3.writeString(codedOutputStream, 3, this.matchPattern_);
        }
        if (this.matchPatternCase_ == 4) {
            GeneratedMessageV3.writeString(codedOutputStream, 4, this.matchPattern_);
        }
        if (this.matchPatternCase_ == 5) {
            codedOutputStream.L0(5, (RegexMatcher) this.matchPattern_);
        }
        boolean z10 = this.ignoreCase_;
        if (z10) {
            codedOutputStream.n0(6, z10);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ StringMatcher(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(StringMatcher stringMatcher) {
        return DEFAULT_INSTANCE.toBuilder().g0(stringMatcher);
    }

    public static StringMatcher parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private StringMatcher(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.matchPatternCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static StringMatcher parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (StringMatcher) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static StringMatcher parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public StringMatcher getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).g0(this);
    }

    public static StringMatcher parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    public static StringMatcher parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    private StringMatcher() {
        this.matchPatternCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static StringMatcher parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static StringMatcher parseFrom(InputStream inputStream) throws IOException {
        return (StringMatcher) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private StringMatcher(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            String K = pVar.K();
                            this.matchPatternCase_ = 1;
                            this.matchPattern_ = K;
                        } else if (L == 18) {
                            String K2 = pVar.K();
                            this.matchPatternCase_ = 2;
                            this.matchPattern_ = K2;
                        } else if (L == 26) {
                            String K3 = pVar.K();
                            this.matchPatternCase_ = 3;
                            this.matchPattern_ = K3;
                        } else if (L == 34) {
                            String K4 = pVar.K();
                            this.matchPatternCase_ = 4;
                            this.matchPattern_ = K4;
                        } else if (L == 42) {
                            RegexMatcher.c builder = this.matchPatternCase_ == 5 ? ((RegexMatcher) this.matchPattern_).toBuilder() : null;
                            o1 B = pVar.B(RegexMatcher.parser(), f0Var);
                            this.matchPattern_ = B;
                            if (builder != null) {
                                builder.g0((RegexMatcher) B);
                                this.matchPattern_ = builder.I();
                            }
                            this.matchPatternCase_ = 5;
                        } else if (L != 48) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            this.ignoreCase_ = pVar.r();
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

    public static StringMatcher parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (StringMatcher) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static StringMatcher parseFrom(p pVar) throws IOException {
        return (StringMatcher) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static StringMatcher parseFrom(p pVar, f0 f0Var) throws IOException {
        return (StringMatcher) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
