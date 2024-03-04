package io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.UInt32Value;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.e3;
import com.google.protobuf.f0;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.o1;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import com.google.protobuf.u0;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class RegexMatcher extends GeneratedMessageV3 implements i {
    public static final int GOOGLE_RE2_FIELD_NUMBER = 1;
    public static final int REGEX_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private int engineTypeCase_;
    private Object engineType_;
    private byte memoizedIsInitialized;
    private volatile Object regex_;
    private static final RegexMatcher DEFAULT_INSTANCE = new RegexMatcher();
    private static final e2<RegexMatcher> PARSER = new a();

    /* loaded from: classes6.dex */
    public enum EngineTypeCase implements u0.c {
        GOOGLE_RE2(1),
        ENGINETYPE_NOT_SET(0);
        
        private final int value;

        EngineTypeCase(int i9) {
            this.value = i9;
        }

        public static EngineTypeCase forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    return null;
                }
                return GOOGLE_RE2;
            }
            return ENGINETYPE_NOT_SET;
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static EngineTypeCase valueOf(int i9) {
            return forNumber(i9);
        }
    }

    /* loaded from: classes6.dex */
    public static final class GoogleRE2 extends GeneratedMessageV3 implements d {
        public static final int MAX_PROGRAM_SIZE_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private UInt32Value maxProgramSize_;
        private byte memoizedIsInitialized;
        private static final GoogleRE2 DEFAULT_INSTANCE = new GoogleRE2();
        private static final e2<GoogleRE2> PARSER = new a();

        /* loaded from: classes6.dex */
        class a extends com.google.protobuf.c<GoogleRE2> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public GoogleRE2 m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new GoogleRE2(pVar, f0Var, null);
            }
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements d {

            /* renamed from: e  reason: collision with root package name */
            private UInt32Value f50289e;

            /* renamed from: f  reason: collision with root package name */
            private q2<UInt32Value, UInt32Value.b, e3> f50290f;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return j.f50322d.d(GoogleRE2.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public GoogleRE2 build() {
                GoogleRE2 I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public GoogleRE2 I() {
                GoogleRE2 googleRE2 = new GoogleRE2(this, (a) null);
                q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f50290f;
                if (q2Var == null) {
                    googleRE2.maxProgramSize_ = this.f50289e;
                } else {
                    googleRE2.maxProgramSize_ = q2Var.b();
                }
                Q();
                return googleRE2;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public GoogleRE2 getDefaultInstanceForType() {
                return GoogleRE2.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: d0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.RegexMatcher.GoogleRE2.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.RegexMatcher.GoogleRE2.access$600()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.RegexMatcher$GoogleRE2 r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.RegexMatcher.GoogleRE2) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.RegexMatcher$GoogleRE2 r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.RegexMatcher.GoogleRE2) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.RegexMatcher.GoogleRE2.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.RegexMatcher$GoogleRE2$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof GoogleRE2) {
                    return g0((GoogleRE2) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b g0(GoogleRE2 googleRE2) {
                if (googleRE2 == GoogleRE2.getDefaultInstance()) {
                    return this;
                }
                if (googleRE2.hasMaxProgramSize()) {
                    h0(googleRE2.getMaxProgramSize());
                }
                z(((GeneratedMessageV3) googleRE2).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return j.f50321c;
            }

            @Deprecated
            public b h0(UInt32Value uInt32Value) {
                q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f50290f;
                if (q2Var == null) {
                    UInt32Value uInt32Value2 = this.f50289e;
                    if (uInt32Value2 != null) {
                        this.f50289e = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                    } else {
                        this.f50289e = uInt32Value;
                    }
                    R();
                } else {
                    q2Var.e(uInt32Value);
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: i0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: j0 */
            public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.c(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: k0 */
            public final b f1(h3 h3Var) {
                return (b) super.f1(h3Var);
            }

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                b0();
            }
        }

        /* synthetic */ GoogleRE2(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static GoogleRE2 getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return j.f50321c;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static GoogleRE2 parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (GoogleRE2) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static GoogleRE2 parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<GoogleRE2> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof GoogleRE2)) {
                return super.equals(obj);
            }
            GoogleRE2 googleRE2 = (GoogleRE2) obj;
            if (hasMaxProgramSize() != googleRE2.hasMaxProgramSize()) {
                return false;
            }
            return (!hasMaxProgramSize() || getMaxProgramSize().equals(googleRE2.getMaxProgramSize())) && this.unknownFields.equals(googleRE2.unknownFields);
        }

        @Deprecated
        public UInt32Value getMaxProgramSize() {
            UInt32Value uInt32Value = this.maxProgramSize_;
            return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
        }

        @Deprecated
        public e3 getMaxProgramSizeOrBuilder() {
            return getMaxProgramSize();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<GoogleRE2> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int G = (this.maxProgramSize_ != null ? 0 + CodedOutputStream.G(1, getMaxProgramSize()) : 0) + this.unknownFields.getSerializedSize();
            this.memoizedSize = G;
            return G;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        @Deprecated
        public boolean hasMaxProgramSize() {
            return this.maxProgramSize_ != null;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (hasMaxProgramSize()) {
                hashCode = (((hashCode * 37) + 1) * 53) + getMaxProgramSize().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return j.f50322d.d(GoogleRE2.class, b.class);
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
            return new GoogleRE2();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (this.maxProgramSize_ != null) {
                codedOutputStream.L0(1, getMaxProgramSize());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ GoogleRE2(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(GoogleRE2 googleRE2) {
            return DEFAULT_INSTANCE.toBuilder().g0(googleRE2);
        }

        public static GoogleRE2 parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private GoogleRE2(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static GoogleRE2 parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (GoogleRE2) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static GoogleRE2 parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public GoogleRE2 getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
        }

        public static GoogleRE2 parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private GoogleRE2() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static GoogleRE2 parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static GoogleRE2 parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        private GoogleRE2(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            this();
            Objects.requireNonNull(f0Var);
            h3.b h10 = h3.h();
            boolean z10 = false;
            while (!z10) {
                try {
                    try {
                        try {
                            int L = pVar.L();
                            if (L != 0) {
                                if (L != 10) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    UInt32Value uInt32Value = this.maxProgramSize_;
                                    UInt32Value.b builder = uInt32Value != null ? uInt32Value.toBuilder() : null;
                                    UInt32Value uInt32Value2 = (UInt32Value) pVar.B(UInt32Value.parser(), f0Var);
                                    this.maxProgramSize_ = uInt32Value2;
                                    if (builder != null) {
                                        builder.g0(uInt32Value2);
                                        this.maxProgramSize_ = builder.I();
                                    }
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
                    this.unknownFields = h10.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static GoogleRE2 parseFrom(InputStream inputStream) throws IOException {
            return (GoogleRE2) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static GoogleRE2 parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (GoogleRE2) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static GoogleRE2 parseFrom(p pVar) throws IOException {
            return (GoogleRE2) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static GoogleRE2 parseFrom(p pVar, f0 f0Var) throws IOException {
            return (GoogleRE2) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<RegexMatcher> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public RegexMatcher m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new RegexMatcher(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f50291a;

        static {
            int[] iArr = new int[EngineTypeCase.values().length];
            f50291a = iArr;
            try {
                iArr[EngineTypeCase.GOOGLE_RE2.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f50291a[EngineTypeCase.ENGINETYPE_NOT_SET.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements i {

        /* renamed from: e  reason: collision with root package name */
        private int f50292e;

        /* renamed from: f  reason: collision with root package name */
        private Object f50293f;

        /* renamed from: g  reason: collision with root package name */
        private q2<GoogleRE2, GoogleRE2.b, d> f50294g;

        /* renamed from: h  reason: collision with root package name */
        private Object f50295h;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return j.f50320b.d(RegexMatcher.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public RegexMatcher build() {
            RegexMatcher I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public RegexMatcher I() {
            RegexMatcher regexMatcher = new RegexMatcher(this, (a) null);
            if (this.f50292e == 1) {
                q2<GoogleRE2, GoogleRE2.b, d> q2Var = this.f50294g;
                if (q2Var == null) {
                    regexMatcher.engineType_ = this.f50293f;
                } else {
                    regexMatcher.engineType_ = q2Var.b();
                }
            }
            regexMatcher.regex_ = this.f50295h;
            regexMatcher.engineTypeCase_ = this.f50292e;
            Q();
            return regexMatcher;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public RegexMatcher getDefaultInstanceForType() {
            return RegexMatcher.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.RegexMatcher.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.RegexMatcher.access$1600()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.RegexMatcher r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.RegexMatcher) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.RegexMatcher r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.RegexMatcher) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.RegexMatcher.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.RegexMatcher$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public c v(l1 l1Var) {
            if (l1Var instanceof RegexMatcher) {
                return g0((RegexMatcher) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public c g0(RegexMatcher regexMatcher) {
            if (regexMatcher == RegexMatcher.getDefaultInstance()) {
                return this;
            }
            if (!regexMatcher.getRegex().isEmpty()) {
                this.f50295h = regexMatcher.regex_;
                R();
            }
            if (b.f50291a[regexMatcher.getEngineTypeCase().ordinal()] == 1) {
                h0(regexMatcher.getGoogleRe2());
            }
            z(((GeneratedMessageV3) regexMatcher).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return j.f50319a;
        }

        public c h0(GoogleRE2 googleRE2) {
            q2<GoogleRE2, GoogleRE2.b, d> q2Var = this.f50294g;
            if (q2Var == null) {
                if (this.f50292e == 1 && this.f50293f != GoogleRE2.getDefaultInstance()) {
                    this.f50293f = GoogleRE2.newBuilder((GoogleRE2) this.f50293f).g0(googleRE2).I();
                } else {
                    this.f50293f = googleRE2;
                }
                R();
            } else {
                if (this.f50292e == 1) {
                    q2Var.e(googleRE2);
                }
                this.f50294g.g(googleRE2);
            }
            this.f50292e = 1;
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

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: k0 */
        public final c f1(h3 h3Var) {
            return (c) super.f1(h3Var);
        }

        /* synthetic */ c(a aVar) {
            this();
        }

        private c() {
            this.f50292e = 0;
            this.f50295h = "";
            b0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f50292e = 0;
            this.f50295h = "";
            b0();
        }
    }

    /* loaded from: classes6.dex */
    public interface d extends r1 {
    }

    /* synthetic */ RegexMatcher(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static RegexMatcher getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return j.f50319a;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static RegexMatcher parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (RegexMatcher) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static RegexMatcher parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<RegexMatcher> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof RegexMatcher)) {
            return super.equals(obj);
        }
        RegexMatcher regexMatcher = (RegexMatcher) obj;
        if (getRegex().equals(regexMatcher.getRegex()) && getEngineTypeCase().equals(regexMatcher.getEngineTypeCase())) {
            return (this.engineTypeCase_ != 1 || getGoogleRe2().equals(regexMatcher.getGoogleRe2())) && this.unknownFields.equals(regexMatcher.unknownFields);
        }
        return false;
    }

    public EngineTypeCase getEngineTypeCase() {
        return EngineTypeCase.forNumber(this.engineTypeCase_);
    }

    public GoogleRE2 getGoogleRe2() {
        if (this.engineTypeCase_ == 1) {
            return (GoogleRE2) this.engineType_;
        }
        return GoogleRE2.getDefaultInstance();
    }

    public d getGoogleRe2OrBuilder() {
        if (this.engineTypeCase_ == 1) {
            return (GoogleRE2) this.engineType_;
        }
        return GoogleRE2.getDefaultInstance();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<RegexMatcher> getParserForType() {
        return PARSER;
    }

    public String getRegex() {
        Object obj = this.regex_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.regex_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getRegexBytes() {
        Object obj = this.regex_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.regex_ = copyFromUtf8;
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
        int G = this.engineTypeCase_ == 1 ? 0 + CodedOutputStream.G(1, (GoogleRE2) this.engineType_) : 0;
        if (!GeneratedMessageV3.isStringEmpty(this.regex_)) {
            G += GeneratedMessageV3.computeStringSize(2, this.regex_);
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasGoogleRe2() {
        return this.engineTypeCase_ == 1;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 2) * 53) + getRegex().hashCode();
        if (this.engineTypeCase_ == 1) {
            hashCode = (((hashCode * 37) + 1) * 53) + getGoogleRe2().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return j.f50320b.d(RegexMatcher.class, c.class);
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
        return new RegexMatcher();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.engineTypeCase_ == 1) {
            codedOutputStream.L0(1, (GoogleRE2) this.engineType_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.regex_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.regex_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ RegexMatcher(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(RegexMatcher regexMatcher) {
        return DEFAULT_INSTANCE.toBuilder().g0(regexMatcher);
    }

    public static RegexMatcher parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private RegexMatcher(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.engineTypeCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static RegexMatcher parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (RegexMatcher) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static RegexMatcher parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public RegexMatcher getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).g0(this);
    }

    public static RegexMatcher parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    public static RegexMatcher parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    private RegexMatcher() {
        this.engineTypeCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
        this.regex_ = "";
    }

    public static RegexMatcher parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static RegexMatcher parseFrom(InputStream inputStream) throws IOException {
        return (RegexMatcher) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static RegexMatcher parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (RegexMatcher) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    private RegexMatcher(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    try {
                        int L = pVar.L();
                        if (L != 0) {
                            if (L == 10) {
                                GoogleRE2.b builder = this.engineTypeCase_ == 1 ? ((GoogleRE2) this.engineType_).toBuilder() : null;
                                o1 B = pVar.B(GoogleRE2.parser(), f0Var);
                                this.engineType_ = B;
                                if (builder != null) {
                                    builder.g0((GoogleRE2) B);
                                    this.engineType_ = builder.I();
                                }
                                this.engineTypeCase_ = 1;
                            } else if (L != 18) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                this.regex_ = pVar.K();
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
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static RegexMatcher parseFrom(p pVar) throws IOException {
        return (RegexMatcher) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static RegexMatcher parseFrom(p pVar, f0 f0Var) throws IOException {
        return (RegexMatcher) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
