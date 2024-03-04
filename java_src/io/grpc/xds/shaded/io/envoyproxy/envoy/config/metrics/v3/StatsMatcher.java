package io.grpc.xds.shaded.io.envoyproxy.envoy.config.metrics.v3;

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
import io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.ListStringMatcher;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class StatsMatcher extends GeneratedMessageV3 implements io.grpc.xds.shaded.io.envoyproxy.envoy.config.metrics.v3.c {
    public static final int EXCLUSION_LIST_FIELD_NUMBER = 2;
    public static final int INCLUSION_LIST_FIELD_NUMBER = 3;
    public static final int REJECT_ALL_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private int statsMatcherCase_;
    private Object statsMatcher_;
    private static final StatsMatcher DEFAULT_INSTANCE = new StatsMatcher();
    private static final e2<StatsMatcher> PARSER = new a();

    /* loaded from: classes6.dex */
    public enum StatsMatcherCase implements u0.c {
        REJECT_ALL(1),
        EXCLUSION_LIST(2),
        INCLUSION_LIST(3),
        STATSMATCHER_NOT_SET(0);
        
        private final int value;

        StatsMatcherCase(int i9) {
            this.value = i9;
        }

        public static StatsMatcherCase forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 != 2) {
                        if (i9 != 3) {
                            return null;
                        }
                        return INCLUSION_LIST;
                    }
                    return EXCLUSION_LIST;
                }
                return REJECT_ALL;
            }
            return STATSMATCHER_NOT_SET;
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static StatsMatcherCase valueOf(int i9) {
            return forNumber(i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<StatsMatcher> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public StatsMatcher m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new StatsMatcher(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f48894a;

        static {
            int[] iArr = new int[StatsMatcherCase.values().length];
            f48894a = iArr;
            try {
                iArr[StatsMatcherCase.REJECT_ALL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f48894a[StatsMatcherCase.EXCLUSION_LIST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f48894a[StatsMatcherCase.INCLUSION_LIST.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f48894a[StatsMatcherCase.STATSMATCHER_NOT_SET.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements io.grpc.xds.shaded.io.envoyproxy.envoy.config.metrics.v3.c {

        /* renamed from: e  reason: collision with root package name */
        private int f48895e;

        /* renamed from: f  reason: collision with root package name */
        private Object f48896f;

        /* renamed from: g  reason: collision with root package name */
        private q2<ListStringMatcher, ListStringMatcher.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.c> f48897g;

        /* renamed from: h  reason: collision with root package name */
        private q2<ListStringMatcher, ListStringMatcher.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.c> f48898h;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return d.f48918f.d(StatsMatcher.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public StatsMatcher build() {
            StatsMatcher I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public StatsMatcher I() {
            StatsMatcher statsMatcher = new StatsMatcher(this, (a) null);
            if (this.f48895e == 1) {
                statsMatcher.statsMatcher_ = this.f48896f;
            }
            if (this.f48895e == 2) {
                q2<ListStringMatcher, ListStringMatcher.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.c> q2Var = this.f48897g;
                if (q2Var == null) {
                    statsMatcher.statsMatcher_ = this.f48896f;
                } else {
                    statsMatcher.statsMatcher_ = q2Var.b();
                }
            }
            if (this.f48895e == 3) {
                q2<ListStringMatcher, ListStringMatcher.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.c> q2Var2 = this.f48898h;
                if (q2Var2 == null) {
                    statsMatcher.statsMatcher_ = this.f48896f;
                } else {
                    statsMatcher.statsMatcher_ = q2Var2.b();
                }
            }
            statsMatcher.statsMatcherCase_ = this.f48895e;
            Q();
            return statsMatcher;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public StatsMatcher getDefaultInstanceForType() {
            return StatsMatcher.getDefaultInstance();
        }

        public c d0(ListStringMatcher listStringMatcher) {
            q2<ListStringMatcher, ListStringMatcher.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.c> q2Var = this.f48897g;
            if (q2Var == null) {
                if (this.f48895e == 2 && this.f48896f != ListStringMatcher.getDefaultInstance()) {
                    this.f48896f = ListStringMatcher.newBuilder((ListStringMatcher) this.f48896f).i0(listStringMatcher).I();
                } else {
                    this.f48896f = listStringMatcher;
                }
                R();
            } else {
                if (this.f48895e == 2) {
                    q2Var.e(listStringMatcher);
                }
                this.f48897g.g(listStringMatcher);
            }
            this.f48895e = 2;
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.metrics.v3.StatsMatcher.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.metrics.v3.StatsMatcher.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.metrics.v3.StatsMatcher r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.metrics.v3.StatsMatcher) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.metrics.v3.StatsMatcher r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.metrics.v3.StatsMatcher) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.metrics.v3.StatsMatcher.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.metrics.v3.StatsMatcher$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        public c v(l1 l1Var) {
            if (l1Var instanceof StatsMatcher) {
                return h0((StatsMatcher) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return d.f48917e;
        }

        public c h0(StatsMatcher statsMatcher) {
            if (statsMatcher == StatsMatcher.getDefaultInstance()) {
                return this;
            }
            int i9 = b.f48894a[statsMatcher.getStatsMatcherCase().ordinal()];
            if (i9 == 1) {
                l0(statsMatcher.getRejectAll());
            } else if (i9 == 2) {
                d0(statsMatcher.getExclusionList());
            } else if (i9 == 3) {
                i0(statsMatcher.getInclusionList());
            }
            z(((GeneratedMessageV3) statsMatcher).unknownFields);
            R();
            return this;
        }

        public c i0(ListStringMatcher listStringMatcher) {
            q2<ListStringMatcher, ListStringMatcher.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.c> q2Var = this.f48898h;
            if (q2Var == null) {
                if (this.f48895e == 3 && this.f48896f != ListStringMatcher.getDefaultInstance()) {
                    this.f48896f = ListStringMatcher.newBuilder((ListStringMatcher) this.f48896f).i0(listStringMatcher).I();
                } else {
                    this.f48896f = listStringMatcher;
                }
                R();
            } else {
                if (this.f48895e == 3) {
                    q2Var.e(listStringMatcher);
                }
                this.f48898h.g(listStringMatcher);
            }
            this.f48895e = 3;
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
            this.f48895e = 1;
            this.f48896f = Boolean.valueOf(z10);
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
            this.f48895e = 0;
            b0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f48895e = 0;
            b0();
        }
    }

    /* synthetic */ StatsMatcher(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static StatsMatcher getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return d.f48917e;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static StatsMatcher parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (StatsMatcher) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static StatsMatcher parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<StatsMatcher> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof StatsMatcher)) {
            return super.equals(obj);
        }
        StatsMatcher statsMatcher = (StatsMatcher) obj;
        if (getStatsMatcherCase().equals(statsMatcher.getStatsMatcherCase())) {
            int i9 = this.statsMatcherCase_;
            if (i9 != 1) {
                if (i9 != 2) {
                    if (i9 == 3 && !getInclusionList().equals(statsMatcher.getInclusionList())) {
                        return false;
                    }
                } else if (!getExclusionList().equals(statsMatcher.getExclusionList())) {
                    return false;
                }
            } else if (getRejectAll() != statsMatcher.getRejectAll()) {
                return false;
            }
            return this.unknownFields.equals(statsMatcher.unknownFields);
        }
        return false;
    }

    public ListStringMatcher getExclusionList() {
        if (this.statsMatcherCase_ == 2) {
            return (ListStringMatcher) this.statsMatcher_;
        }
        return ListStringMatcher.getDefaultInstance();
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.c getExclusionListOrBuilder() {
        if (this.statsMatcherCase_ == 2) {
            return (ListStringMatcher) this.statsMatcher_;
        }
        return ListStringMatcher.getDefaultInstance();
    }

    public ListStringMatcher getInclusionList() {
        if (this.statsMatcherCase_ == 3) {
            return (ListStringMatcher) this.statsMatcher_;
        }
        return ListStringMatcher.getDefaultInstance();
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.c getInclusionListOrBuilder() {
        if (this.statsMatcherCase_ == 3) {
            return (ListStringMatcher) this.statsMatcher_;
        }
        return ListStringMatcher.getDefaultInstance();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<StatsMatcher> getParserForType() {
        return PARSER;
    }

    public boolean getRejectAll() {
        if (this.statsMatcherCase_ == 1) {
            return ((Boolean) this.statsMatcher_).booleanValue();
        }
        return false;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int e10 = this.statsMatcherCase_ == 1 ? 0 + CodedOutputStream.e(1, ((Boolean) this.statsMatcher_).booleanValue()) : 0;
        if (this.statsMatcherCase_ == 2) {
            e10 += CodedOutputStream.G(2, (ListStringMatcher) this.statsMatcher_);
        }
        if (this.statsMatcherCase_ == 3) {
            e10 += CodedOutputStream.G(3, (ListStringMatcher) this.statsMatcher_);
        }
        int serializedSize = e10 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public StatsMatcherCase getStatsMatcherCase() {
        return StatsMatcherCase.forNumber(this.statsMatcherCase_);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasExclusionList() {
        return this.statsMatcherCase_ == 2;
    }

    public boolean hasInclusionList() {
        return this.statsMatcherCase_ == 3;
    }

    public boolean hasRejectAll() {
        return this.statsMatcherCase_ == 1;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9;
        int d10;
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        int i11 = this.statsMatcherCase_;
        if (i11 == 1) {
            i9 = ((hashCode * 37) + 1) * 53;
            d10 = u0.d(getRejectAll());
        } else if (i11 == 2) {
            i9 = ((hashCode * 37) + 2) * 53;
            d10 = getExclusionList().hashCode();
        } else {
            if (i11 == 3) {
                i9 = ((hashCode * 37) + 3) * 53;
                d10 = getInclusionList().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }
        hashCode = i9 + d10;
        int hashCode22 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode22;
        return hashCode22;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return d.f48918f.d(StatsMatcher.class, c.class);
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
        return new StatsMatcher();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.statsMatcherCase_ == 1) {
            codedOutputStream.n0(1, ((Boolean) this.statsMatcher_).booleanValue());
        }
        if (this.statsMatcherCase_ == 2) {
            codedOutputStream.L0(2, (ListStringMatcher) this.statsMatcher_);
        }
        if (this.statsMatcherCase_ == 3) {
            codedOutputStream.L0(3, (ListStringMatcher) this.statsMatcher_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ StatsMatcher(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(StatsMatcher statsMatcher) {
        return DEFAULT_INSTANCE.toBuilder().h0(statsMatcher);
    }

    public static StatsMatcher parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private StatsMatcher(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.statsMatcherCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static StatsMatcher parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (StatsMatcher) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static StatsMatcher parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public StatsMatcher getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).h0(this);
    }

    public static StatsMatcher parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    public static StatsMatcher parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    private StatsMatcher() {
        this.statsMatcherCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static StatsMatcher parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static StatsMatcher parseFrom(InputStream inputStream) throws IOException {
        return (StatsMatcher) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private StatsMatcher(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
        this();
        ListStringMatcher.b builder;
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    int L = pVar.L();
                    if (L != 0) {
                        if (L != 8) {
                            if (L == 18) {
                                builder = this.statsMatcherCase_ == 2 ? ((ListStringMatcher) this.statsMatcher_).toBuilder() : null;
                                o1 B = pVar.B(ListStringMatcher.parser(), f0Var);
                                this.statsMatcher_ = B;
                                if (builder != null) {
                                    builder.i0((ListStringMatcher) B);
                                    this.statsMatcher_ = builder.I();
                                }
                                this.statsMatcherCase_ = 2;
                            } else if (L != 26) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                builder = this.statsMatcherCase_ == 3 ? ((ListStringMatcher) this.statsMatcher_).toBuilder() : null;
                                o1 B2 = pVar.B(ListStringMatcher.parser(), f0Var);
                                this.statsMatcher_ = B2;
                                if (builder != null) {
                                    builder.i0((ListStringMatcher) B2);
                                    this.statsMatcher_ = builder.I();
                                }
                                this.statsMatcherCase_ = 3;
                            }
                        } else {
                            this.statsMatcher_ = Boolean.valueOf(pVar.r());
                            this.statsMatcherCase_ = 1;
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

    public static StatsMatcher parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (StatsMatcher) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static StatsMatcher parseFrom(p pVar) throws IOException {
        return (StatsMatcher) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static StatsMatcher parseFrom(p pVar, f0 f0Var) throws IOException {
        return (StatsMatcher) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
