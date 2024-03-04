package io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3;

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
import com.google.protobuf.r1;
import com.google.protobuf.u0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.DoubleMatcher;
import io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.ListMatcher;
import io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.StringMatcher;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class ValueMatcher extends GeneratedMessageV3 implements r {
    public static final int BOOL_MATCH_FIELD_NUMBER = 4;
    public static final int DOUBLE_MATCH_FIELD_NUMBER = 2;
    public static final int LIST_MATCH_FIELD_NUMBER = 6;
    public static final int NULL_MATCH_FIELD_NUMBER = 1;
    public static final int PRESENT_MATCH_FIELD_NUMBER = 5;
    public static final int STRING_MATCH_FIELD_NUMBER = 3;
    private static final long serialVersionUID = 0;
    private int matchPatternCase_;
    private Object matchPattern_;
    private byte memoizedIsInitialized;
    private static final ValueMatcher DEFAULT_INSTANCE = new ValueMatcher();
    private static final e2<ValueMatcher> PARSER = new a();

    /* loaded from: classes6.dex */
    public enum MatchPatternCase implements u0.c {
        NULL_MATCH(1),
        DOUBLE_MATCH(2),
        STRING_MATCH(3),
        BOOL_MATCH(4),
        PRESENT_MATCH(5),
        LIST_MATCH(6),
        MATCHPATTERN_NOT_SET(0);
        
        private final int value;

        MatchPatternCase(int i9) {
            this.value = i9;
        }

        public static MatchPatternCase forNumber(int i9) {
            switch (i9) {
                case 0:
                    return MATCHPATTERN_NOT_SET;
                case 1:
                    return NULL_MATCH;
                case 2:
                    return DOUBLE_MATCH;
                case 3:
                    return STRING_MATCH;
                case 4:
                    return BOOL_MATCH;
                case 5:
                    return PRESENT_MATCH;
                case 6:
                    return LIST_MATCH;
                default:
                    return null;
            }
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

    /* loaded from: classes6.dex */
    public static final class NullMatch extends GeneratedMessageV3 implements d {
        private static final NullMatch DEFAULT_INSTANCE = new NullMatch();
        private static final e2<NullMatch> PARSER = new a();
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;

        /* loaded from: classes6.dex */
        class a extends com.google.protobuf.c<NullMatch> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public NullMatch m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new NullMatch(pVar, f0Var, null);
            }
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements d {
            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return s.f50431d.d(NullMatch.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public NullMatch build() {
                NullMatch I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public NullMatch I() {
                NullMatch nullMatch = new NullMatch(this, (a) null);
                Q();
                return nullMatch;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public NullMatch getDefaultInstanceForType() {
                return NullMatch.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: d0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.ValueMatcher.NullMatch.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.ValueMatcher.NullMatch.access$500()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.ValueMatcher$NullMatch r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.ValueMatcher.NullMatch) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.ValueMatcher$NullMatch r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.ValueMatcher.NullMatch) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.ValueMatcher.NullMatch.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.ValueMatcher$NullMatch$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof NullMatch) {
                    return g0((NullMatch) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b g0(NullMatch nullMatch) {
                if (nullMatch == NullMatch.getDefaultInstance()) {
                    return this;
                }
                z(((GeneratedMessageV3) nullMatch).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return s.f50430c;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: h0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: i0 */
            public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.c(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: j0 */
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

        /* synthetic */ NullMatch(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static NullMatch getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return s.f50430c;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static NullMatch parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (NullMatch) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static NullMatch parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<NullMatch> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj instanceof NullMatch) {
                return this.unknownFields.equals(((NullMatch) obj).unknownFields);
            }
            return super.equals(obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<NullMatch> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int serializedSize = this.unknownFields.getSerializedSize() + 0;
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = ((779 + getDescriptor().hashCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode;
            return hashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return s.f50431d.d(NullMatch.class, b.class);
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
            return new NullMatch();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ NullMatch(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(NullMatch nullMatch) {
            return DEFAULT_INSTANCE.toBuilder().g0(nullMatch);
        }

        public static NullMatch parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private NullMatch(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static NullMatch parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (NullMatch) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static NullMatch parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public NullMatch getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
        }

        public static NullMatch parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private NullMatch() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static NullMatch parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static NullMatch parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        private NullMatch(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            this();
            Objects.requireNonNull(f0Var);
            h3.b h10 = h3.h();
            boolean z10 = false;
            while (!z10) {
                try {
                    try {
                        try {
                            int L = pVar.L();
                            if (L == 0 || !parseUnknownField(pVar, h10, f0Var, L)) {
                                z10 = true;
                            }
                        } catch (InvalidProtocolBufferException e10) {
                            throw e10.setUnfinishedMessage(this);
                        }
                    } catch (IOException e11) {
                        throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                    }
                } finally {
                    this.unknownFields = h10.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static NullMatch parseFrom(InputStream inputStream) throws IOException {
            return (NullMatch) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static NullMatch parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (NullMatch) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static NullMatch parseFrom(com.google.protobuf.p pVar) throws IOException {
            return (NullMatch) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static NullMatch parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
            return (NullMatch) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<ValueMatcher> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public ValueMatcher m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new ValueMatcher(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f50390a;

        static {
            int[] iArr = new int[MatchPatternCase.values().length];
            f50390a = iArr;
            try {
                iArr[MatchPatternCase.NULL_MATCH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f50390a[MatchPatternCase.DOUBLE_MATCH.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f50390a[MatchPatternCase.STRING_MATCH.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f50390a[MatchPatternCase.BOOL_MATCH.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f50390a[MatchPatternCase.PRESENT_MATCH.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f50390a[MatchPatternCase.LIST_MATCH.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f50390a[MatchPatternCase.MATCHPATTERN_NOT_SET.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements r {

        /* renamed from: e  reason: collision with root package name */
        private int f50391e;

        /* renamed from: f  reason: collision with root package name */
        private Object f50392f;

        /* renamed from: g  reason: collision with root package name */
        private q2<NullMatch, NullMatch.b, d> f50393g;

        /* renamed from: h  reason: collision with root package name */
        private q2<DoubleMatcher, DoubleMatcher.c, io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.a> f50394h;

        /* renamed from: i  reason: collision with root package name */
        private q2<StringMatcher, StringMatcher.c, n> f50395i;

        /* renamed from: j  reason: collision with root package name */
        private q2<ListMatcher, ListMatcher.c, io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.b> f50396j;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return s.f50429b.d(ValueMatcher.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public ValueMatcher build() {
            ValueMatcher I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public ValueMatcher I() {
            ValueMatcher valueMatcher = new ValueMatcher(this, (a) null);
            if (this.f50391e == 1) {
                q2<NullMatch, NullMatch.b, d> q2Var = this.f50393g;
                if (q2Var == null) {
                    valueMatcher.matchPattern_ = this.f50392f;
                } else {
                    valueMatcher.matchPattern_ = q2Var.b();
                }
            }
            if (this.f50391e == 2) {
                q2<DoubleMatcher, DoubleMatcher.c, io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.a> q2Var2 = this.f50394h;
                if (q2Var2 == null) {
                    valueMatcher.matchPattern_ = this.f50392f;
                } else {
                    valueMatcher.matchPattern_ = q2Var2.b();
                }
            }
            if (this.f50391e == 3) {
                q2<StringMatcher, StringMatcher.c, n> q2Var3 = this.f50395i;
                if (q2Var3 == null) {
                    valueMatcher.matchPattern_ = this.f50392f;
                } else {
                    valueMatcher.matchPattern_ = q2Var3.b();
                }
            }
            if (this.f50391e == 4) {
                valueMatcher.matchPattern_ = this.f50392f;
            }
            if (this.f50391e == 5) {
                valueMatcher.matchPattern_ = this.f50392f;
            }
            if (this.f50391e == 6) {
                q2<ListMatcher, ListMatcher.c, io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.b> q2Var4 = this.f50396j;
                if (q2Var4 == null) {
                    valueMatcher.matchPattern_ = this.f50392f;
                } else {
                    valueMatcher.matchPattern_ = q2Var4.b();
                }
            }
            valueMatcher.matchPatternCase_ = this.f50391e;
            Q();
            return valueMatcher;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public ValueMatcher getDefaultInstanceForType() {
            return ValueMatcher.getDefaultInstance();
        }

        public c d0(DoubleMatcher doubleMatcher) {
            q2<DoubleMatcher, DoubleMatcher.c, io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.a> q2Var = this.f50394h;
            if (q2Var == null) {
                if (this.f50391e == 2 && this.f50392f != DoubleMatcher.getDefaultInstance()) {
                    this.f50392f = DoubleMatcher.newBuilder((DoubleMatcher) this.f50392f).g0(doubleMatcher).I();
                } else {
                    this.f50392f = doubleMatcher;
                }
                R();
            } else {
                if (this.f50391e == 2) {
                    q2Var.e(doubleMatcher);
                }
                this.f50394h.g(doubleMatcher);
            }
            this.f50391e = 2;
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.ValueMatcher.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.ValueMatcher.access$1400()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.ValueMatcher r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.ValueMatcher) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.ValueMatcher r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.ValueMatcher) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.ValueMatcher.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.ValueMatcher$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        public c v(l1 l1Var) {
            if (l1Var instanceof ValueMatcher) {
                return h0((ValueMatcher) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return s.f50428a;
        }

        public c h0(ValueMatcher valueMatcher) {
            if (valueMatcher == ValueMatcher.getDefaultInstance()) {
                return this;
            }
            switch (b.f50390a[valueMatcher.getMatchPatternCase().ordinal()]) {
                case 1:
                    j0(valueMatcher.getNullMatch());
                    break;
                case 2:
                    d0(valueMatcher.getDoubleMatch());
                    break;
                case 3:
                    k0(valueMatcher.getStringMatch());
                    break;
                case 4:
                    m0(valueMatcher.getBoolMatch());
                    break;
                case 5:
                    o0(valueMatcher.getPresentMatch());
                    break;
                case 6:
                    i0(valueMatcher.getListMatch());
                    break;
            }
            z(((GeneratedMessageV3) valueMatcher).unknownFields);
            R();
            return this;
        }

        public c i0(ListMatcher listMatcher) {
            q2<ListMatcher, ListMatcher.c, io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.b> q2Var = this.f50396j;
            if (q2Var == null) {
                if (this.f50391e == 6 && this.f50392f != ListMatcher.getDefaultInstance()) {
                    this.f50392f = ListMatcher.newBuilder((ListMatcher) this.f50392f).g0(listMatcher).I();
                } else {
                    this.f50392f = listMatcher;
                }
                R();
            } else {
                if (this.f50391e == 6) {
                    q2Var.e(listMatcher);
                }
                this.f50396j.g(listMatcher);
            }
            this.f50391e = 6;
            return this;
        }

        public c j0(NullMatch nullMatch) {
            q2<NullMatch, NullMatch.b, d> q2Var = this.f50393g;
            if (q2Var == null) {
                if (this.f50391e == 1 && this.f50392f != NullMatch.getDefaultInstance()) {
                    this.f50392f = NullMatch.newBuilder((NullMatch) this.f50392f).g0(nullMatch).I();
                } else {
                    this.f50392f = nullMatch;
                }
                R();
            } else {
                if (this.f50391e == 1) {
                    q2Var.e(nullMatch);
                }
                this.f50393g.g(nullMatch);
            }
            this.f50391e = 1;
            return this;
        }

        public c k0(StringMatcher stringMatcher) {
            q2<StringMatcher, StringMatcher.c, n> q2Var = this.f50395i;
            if (q2Var == null) {
                if (this.f50391e == 3 && this.f50392f != StringMatcher.getDefaultInstance()) {
                    this.f50392f = StringMatcher.newBuilder((StringMatcher) this.f50392f).g0(stringMatcher).I();
                } else {
                    this.f50392f = stringMatcher;
                }
                R();
            } else {
                if (this.f50391e == 3) {
                    q2Var.e(stringMatcher);
                }
                this.f50395i.g(stringMatcher);
            }
            this.f50391e = 3;
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: l0 */
        public final c z(h3 h3Var) {
            return (c) super.z(h3Var);
        }

        public c m0(boolean z10) {
            this.f50391e = 4;
            this.f50392f = Boolean.valueOf(z10);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: n0 */
        public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.c(fieldDescriptor, obj);
        }

        public c o0(boolean z10) {
            this.f50391e = 5;
            this.f50392f = Boolean.valueOf(z10);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: q0 */
        public final c f1(h3 h3Var) {
            return (c) super.f1(h3Var);
        }

        /* synthetic */ c(a aVar) {
            this();
        }

        private c() {
            this.f50391e = 0;
            b0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f50391e = 0;
            b0();
        }
    }

    /* loaded from: classes6.dex */
    public interface d extends r1 {
    }

    /* synthetic */ ValueMatcher(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static ValueMatcher getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return s.f50428a;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static ValueMatcher parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (ValueMatcher) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static ValueMatcher parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<ValueMatcher> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ValueMatcher)) {
            return super.equals(obj);
        }
        ValueMatcher valueMatcher = (ValueMatcher) obj;
        if (getMatchPatternCase().equals(valueMatcher.getMatchPatternCase())) {
            switch (this.matchPatternCase_) {
                case 1:
                    if (!getNullMatch().equals(valueMatcher.getNullMatch())) {
                        return false;
                    }
                    break;
                case 2:
                    if (!getDoubleMatch().equals(valueMatcher.getDoubleMatch())) {
                        return false;
                    }
                    break;
                case 3:
                    if (!getStringMatch().equals(valueMatcher.getStringMatch())) {
                        return false;
                    }
                    break;
                case 4:
                    if (getBoolMatch() != valueMatcher.getBoolMatch()) {
                        return false;
                    }
                    break;
                case 5:
                    if (getPresentMatch() != valueMatcher.getPresentMatch()) {
                        return false;
                    }
                    break;
                case 6:
                    if (!getListMatch().equals(valueMatcher.getListMatch())) {
                        return false;
                    }
                    break;
            }
            return this.unknownFields.equals(valueMatcher.unknownFields);
        }
        return false;
    }

    public boolean getBoolMatch() {
        if (this.matchPatternCase_ == 4) {
            return ((Boolean) this.matchPattern_).booleanValue();
        }
        return false;
    }

    public DoubleMatcher getDoubleMatch() {
        if (this.matchPatternCase_ == 2) {
            return (DoubleMatcher) this.matchPattern_;
        }
        return DoubleMatcher.getDefaultInstance();
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.a getDoubleMatchOrBuilder() {
        if (this.matchPatternCase_ == 2) {
            return (DoubleMatcher) this.matchPattern_;
        }
        return DoubleMatcher.getDefaultInstance();
    }

    public ListMatcher getListMatch() {
        if (this.matchPatternCase_ == 6) {
            return (ListMatcher) this.matchPattern_;
        }
        return ListMatcher.getDefaultInstance();
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.b getListMatchOrBuilder() {
        if (this.matchPatternCase_ == 6) {
            return (ListMatcher) this.matchPattern_;
        }
        return ListMatcher.getDefaultInstance();
    }

    public MatchPatternCase getMatchPatternCase() {
        return MatchPatternCase.forNumber(this.matchPatternCase_);
    }

    public NullMatch getNullMatch() {
        if (this.matchPatternCase_ == 1) {
            return (NullMatch) this.matchPattern_;
        }
        return NullMatch.getDefaultInstance();
    }

    public d getNullMatchOrBuilder() {
        if (this.matchPatternCase_ == 1) {
            return (NullMatch) this.matchPattern_;
        }
        return NullMatch.getDefaultInstance();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<ValueMatcher> getParserForType() {
        return PARSER;
    }

    public boolean getPresentMatch() {
        if (this.matchPatternCase_ == 5) {
            return ((Boolean) this.matchPattern_).booleanValue();
        }
        return false;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.matchPatternCase_ == 1 ? 0 + CodedOutputStream.G(1, (NullMatch) this.matchPattern_) : 0;
        if (this.matchPatternCase_ == 2) {
            G += CodedOutputStream.G(2, (DoubleMatcher) this.matchPattern_);
        }
        if (this.matchPatternCase_ == 3) {
            G += CodedOutputStream.G(3, (StringMatcher) this.matchPattern_);
        }
        if (this.matchPatternCase_ == 4) {
            G += CodedOutputStream.e(4, ((Boolean) this.matchPattern_).booleanValue());
        }
        if (this.matchPatternCase_ == 5) {
            G += CodedOutputStream.e(5, ((Boolean) this.matchPattern_).booleanValue());
        }
        if (this.matchPatternCase_ == 6) {
            G += CodedOutputStream.G(6, (ListMatcher) this.matchPattern_);
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public StringMatcher getStringMatch() {
        if (this.matchPatternCase_ == 3) {
            return (StringMatcher) this.matchPattern_;
        }
        return StringMatcher.getDefaultInstance();
    }

    public n getStringMatchOrBuilder() {
        if (this.matchPatternCase_ == 3) {
            return (StringMatcher) this.matchPattern_;
        }
        return StringMatcher.getDefaultInstance();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasBoolMatch() {
        return this.matchPatternCase_ == 4;
    }

    public boolean hasDoubleMatch() {
        return this.matchPatternCase_ == 2;
    }

    public boolean hasListMatch() {
        return this.matchPatternCase_ == 6;
    }

    public boolean hasNullMatch() {
        return this.matchPatternCase_ == 1;
    }

    public boolean hasPresentMatch() {
        return this.matchPatternCase_ == 5;
    }

    public boolean hasStringMatch() {
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
        int hashCode2 = 779 + getDescriptor().hashCode();
        switch (this.matchPatternCase_) {
            case 1:
                i9 = ((hashCode2 * 37) + 1) * 53;
                hashCode = getNullMatch().hashCode();
                hashCode2 = i9 + hashCode;
                int hashCode3 = (hashCode2 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode3;
                return hashCode3;
            case 2:
                i9 = ((hashCode2 * 37) + 2) * 53;
                hashCode = getDoubleMatch().hashCode();
                hashCode2 = i9 + hashCode;
                int hashCode32 = (hashCode2 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode32;
                return hashCode32;
            case 3:
                i9 = ((hashCode2 * 37) + 3) * 53;
                hashCode = getStringMatch().hashCode();
                hashCode2 = i9 + hashCode;
                int hashCode322 = (hashCode2 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode322;
                return hashCode322;
            case 4:
                i9 = ((hashCode2 * 37) + 4) * 53;
                hashCode = u0.d(getBoolMatch());
                hashCode2 = i9 + hashCode;
                int hashCode3222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode3222;
                return hashCode3222;
            case 5:
                i9 = ((hashCode2 * 37) + 5) * 53;
                hashCode = u0.d(getPresentMatch());
                hashCode2 = i9 + hashCode;
                int hashCode32222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode32222;
                return hashCode32222;
            case 6:
                i9 = ((hashCode2 * 37) + 6) * 53;
                hashCode = getListMatch().hashCode();
                hashCode2 = i9 + hashCode;
                int hashCode322222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode322222;
                return hashCode322222;
            default:
                int hashCode3222222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode3222222;
                return hashCode3222222;
        }
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return s.f50429b.d(ValueMatcher.class, c.class);
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
        return new ValueMatcher();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.matchPatternCase_ == 1) {
            codedOutputStream.L0(1, (NullMatch) this.matchPattern_);
        }
        if (this.matchPatternCase_ == 2) {
            codedOutputStream.L0(2, (DoubleMatcher) this.matchPattern_);
        }
        if (this.matchPatternCase_ == 3) {
            codedOutputStream.L0(3, (StringMatcher) this.matchPattern_);
        }
        if (this.matchPatternCase_ == 4) {
            codedOutputStream.n0(4, ((Boolean) this.matchPattern_).booleanValue());
        }
        if (this.matchPatternCase_ == 5) {
            codedOutputStream.n0(5, ((Boolean) this.matchPattern_).booleanValue());
        }
        if (this.matchPatternCase_ == 6) {
            codedOutputStream.L0(6, (ListMatcher) this.matchPattern_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ ValueMatcher(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(ValueMatcher valueMatcher) {
        return DEFAULT_INSTANCE.toBuilder().h0(valueMatcher);
    }

    public static ValueMatcher parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private ValueMatcher(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.matchPatternCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static ValueMatcher parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ValueMatcher) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static ValueMatcher parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public ValueMatcher getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).h0(this);
    }

    public static ValueMatcher parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    public static ValueMatcher parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    private ValueMatcher() {
        this.matchPatternCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static ValueMatcher parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static ValueMatcher parseFrom(InputStream inputStream) throws IOException {
        return (ValueMatcher) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private ValueMatcher(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                NullMatch.b builder = this.matchPatternCase_ == 1 ? ((NullMatch) this.matchPattern_).toBuilder() : null;
                                o1 B = pVar.B(NullMatch.parser(), f0Var);
                                this.matchPattern_ = B;
                                if (builder != null) {
                                    builder.g0((NullMatch) B);
                                    this.matchPattern_ = builder.I();
                                }
                                this.matchPatternCase_ = 1;
                            } else if (L == 18) {
                                DoubleMatcher.c builder2 = this.matchPatternCase_ == 2 ? ((DoubleMatcher) this.matchPattern_).toBuilder() : null;
                                o1 B2 = pVar.B(DoubleMatcher.parser(), f0Var);
                                this.matchPattern_ = B2;
                                if (builder2 != null) {
                                    builder2.g0((DoubleMatcher) B2);
                                    this.matchPattern_ = builder2.I();
                                }
                                this.matchPatternCase_ = 2;
                            } else if (L == 26) {
                                StringMatcher.c builder3 = this.matchPatternCase_ == 3 ? ((StringMatcher) this.matchPattern_).toBuilder() : null;
                                o1 B3 = pVar.B(StringMatcher.parser(), f0Var);
                                this.matchPattern_ = B3;
                                if (builder3 != null) {
                                    builder3.g0((StringMatcher) B3);
                                    this.matchPattern_ = builder3.I();
                                }
                                this.matchPatternCase_ = 3;
                            } else if (L == 32) {
                                this.matchPattern_ = Boolean.valueOf(pVar.r());
                                this.matchPatternCase_ = 4;
                            } else if (L == 40) {
                                this.matchPattern_ = Boolean.valueOf(pVar.r());
                                this.matchPatternCase_ = 5;
                            } else if (L != 50) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                ListMatcher.c builder4 = this.matchPatternCase_ == 6 ? ((ListMatcher) this.matchPattern_).toBuilder() : null;
                                o1 B4 = pVar.B(ListMatcher.parser(), f0Var);
                                this.matchPattern_ = B4;
                                if (builder4 != null) {
                                    builder4.g0((ListMatcher) B4);
                                    this.matchPattern_ = builder4.I();
                                }
                                this.matchPatternCase_ = 6;
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

    public static ValueMatcher parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ValueMatcher) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static ValueMatcher parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (ValueMatcher) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static ValueMatcher parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
        return (ValueMatcher) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
