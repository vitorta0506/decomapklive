package io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.listener;

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
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import com.google.protobuf.u0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.type.Int32Range;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class ListenerFilterChainMatchPredicate extends GeneratedMessageV3 implements e {
    public static final int AND_MATCH_FIELD_NUMBER = 2;
    public static final int ANY_MATCH_FIELD_NUMBER = 4;
    public static final int DESTINATION_PORT_RANGE_FIELD_NUMBER = 5;
    public static final int NOT_MATCH_FIELD_NUMBER = 3;
    public static final int OR_MATCH_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private int ruleCase_;
    private Object rule_;
    private static final ListenerFilterChainMatchPredicate DEFAULT_INSTANCE = new ListenerFilterChainMatchPredicate();
    private static final e2<ListenerFilterChainMatchPredicate> PARSER = new a();

    /* loaded from: classes6.dex */
    public static final class MatchSet extends GeneratedMessageV3 implements d {
        private static final MatchSet DEFAULT_INSTANCE = new MatchSet();
        private static final e2<MatchSet> PARSER = new a();
        public static final int RULES_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private List<ListenerFilterChainMatchPredicate> rules_;

        /* loaded from: classes6.dex */
        class a extends com.google.protobuf.c<MatchSet> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public MatchSet m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new MatchSet(pVar, f0Var, null);
            }
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements d {

            /* renamed from: e  reason: collision with root package name */
            private int f46961e;

            /* renamed from: f  reason: collision with root package name */
            private List<ListenerFilterChainMatchPredicate> f46962f;

            /* renamed from: g  reason: collision with root package name */
            private l2<ListenerFilterChainMatchPredicate, c, e> f46963g;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void a0() {
                if ((this.f46961e & 1) == 0) {
                    this.f46962f = new ArrayList(this.f46962f);
                    this.f46961e |= 1;
                }
            }

            private l2<ListenerFilterChainMatchPredicate, c, e> d0() {
                if (this.f46963g == null) {
                    this.f46963g = new l2<>(this.f46962f, (this.f46961e & 1) != 0, H(), O());
                    this.f46962f = null;
                }
                return this.f46963g;
            }

            private void e0() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    d0();
                }
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.listener.d.f46986j.d(MatchSet.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public MatchSet build() {
                MatchSet I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public MatchSet I() {
                MatchSet matchSet = new MatchSet(this, (a) null);
                int i9 = this.f46961e;
                l2<ListenerFilterChainMatchPredicate, c, e> l2Var = this.f46963g;
                if (l2Var == null) {
                    if ((i9 & 1) != 0) {
                        this.f46962f = Collections.unmodifiableList(this.f46962f);
                        this.f46961e &= -2;
                    }
                    matchSet.rules_ = this.f46962f;
                } else {
                    matchSet.rules_ = l2Var.e();
                }
                Q();
                return matchSet;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: b0 */
            public MatchSet getDefaultInstanceForType() {
                return MatchSet.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: g0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.listener.ListenerFilterChainMatchPredicate.MatchSet.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.listener.ListenerFilterChainMatchPredicate.MatchSet.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.listener.ListenerFilterChainMatchPredicate$MatchSet r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.listener.ListenerFilterChainMatchPredicate.MatchSet) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    if (r3 == 0) goto L10
                    r2.i0(r3)
                L10:
                    return r2
                L11:
                    r3 = move-exception
                    goto L21
                L13:
                    r3 = move-exception
                    com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                    io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.listener.ListenerFilterChainMatchPredicate$MatchSet r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.listener.ListenerFilterChainMatchPredicate.MatchSet) r4     // Catch: java.lang.Throwable -> L11
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                    throw r3     // Catch: java.lang.Throwable -> L1f
                L1f:
                    r3 = move-exception
                    r0 = r4
                L21:
                    if (r0 == 0) goto L26
                    r2.i0(r0)
                L26:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.listener.ListenerFilterChainMatchPredicate.MatchSet.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.listener.ListenerFilterChainMatchPredicate$MatchSet$b");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.listener.d.f46985i;
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: h0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof MatchSet) {
                    return i0((MatchSet) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b i0(MatchSet matchSet) {
                if (matchSet == MatchSet.getDefaultInstance()) {
                    return this;
                }
                if (this.f46963g == null) {
                    if (!matchSet.rules_.isEmpty()) {
                        if (this.f46962f.isEmpty()) {
                            this.f46962f = matchSet.rules_;
                            this.f46961e &= -2;
                        } else {
                            a0();
                            this.f46962f.addAll(matchSet.rules_);
                        }
                        R();
                    }
                } else if (!matchSet.rules_.isEmpty()) {
                    if (this.f46963g.k()) {
                        this.f46963g.f();
                        this.f46963g = null;
                        this.f46962f = matchSet.rules_;
                        this.f46961e &= -2;
                        this.f46963g = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                    } else {
                        this.f46963g.b(matchSet.rules_);
                    }
                }
                z(((GeneratedMessageV3) matchSet).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: j0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: k0 */
            public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.c(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: l0 */
            public final b f1(h3 h3Var) {
                return (b) super.f1(h3Var);
            }

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                this.f46962f = Collections.emptyList();
                e0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f46962f = Collections.emptyList();
                e0();
            }
        }

        /* synthetic */ MatchSet(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static MatchSet getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.listener.d.f46985i;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static MatchSet parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (MatchSet) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static MatchSet parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<MatchSet> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof MatchSet)) {
                return super.equals(obj);
            }
            MatchSet matchSet = (MatchSet) obj;
            return getRulesList().equals(matchSet.getRulesList()) && this.unknownFields.equals(matchSet.unknownFields);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<MatchSet> getParserForType() {
            return PARSER;
        }

        public ListenerFilterChainMatchPredicate getRules(int i9) {
            return this.rules_.get(i9);
        }

        public int getRulesCount() {
            return this.rules_.size();
        }

        public List<ListenerFilterChainMatchPredicate> getRulesList() {
            return this.rules_;
        }

        public e getRulesOrBuilder(int i9) {
            return this.rules_.get(i9);
        }

        public List<? extends e> getRulesOrBuilderList() {
            return this.rules_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int i10 = 0;
            for (int i11 = 0; i11 < this.rules_.size(); i11++) {
                i10 += CodedOutputStream.G(1, this.rules_.get(i11));
            }
            int serializedSize = i10 + this.unknownFields.getSerializedSize();
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
            int hashCode = 779 + getDescriptor().hashCode();
            if (getRulesCount() > 0) {
                hashCode = (((hashCode * 37) + 1) * 53) + getRulesList().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.listener.d.f46986j.d(MatchSet.class, b.class);
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
            return new MatchSet();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            for (int i9 = 0; i9 < this.rules_.size(); i9++) {
                codedOutputStream.L0(1, this.rules_.get(i9));
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ MatchSet(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(MatchSet matchSet) {
            return DEFAULT_INSTANCE.toBuilder().i0(matchSet);
        }

        public static MatchSet parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private MatchSet(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static MatchSet parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (MatchSet) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static MatchSet parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public MatchSet getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).i0(this);
        }

        public static MatchSet parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private MatchSet() {
            this.memoizedIsInitialized = (byte) -1;
            this.rules_ = Collections.emptyList();
        }

        public static MatchSet parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static MatchSet parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static MatchSet parseFrom(InputStream inputStream) throws IOException {
            return (MatchSet) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private MatchSet(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            if (L != 10) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                if (!(z11 & true)) {
                                    this.rules_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.rules_.add((ListenerFilterChainMatchPredicate) pVar.B(ListenerFilterChainMatchPredicate.parser(), f0Var));
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
                        this.rules_ = Collections.unmodifiableList(this.rules_);
                    }
                    this.unknownFields = h10.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static MatchSet parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (MatchSet) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static MatchSet parseFrom(p pVar) throws IOException {
            return (MatchSet) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static MatchSet parseFrom(p pVar, f0 f0Var) throws IOException {
            return (MatchSet) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes6.dex */
    public enum RuleCase implements u0.c {
        OR_MATCH(1),
        AND_MATCH(2),
        NOT_MATCH(3),
        ANY_MATCH(4),
        DESTINATION_PORT_RANGE(5),
        RULE_NOT_SET(0);
        
        private final int value;

        RuleCase(int i9) {
            this.value = i9;
        }

        public static RuleCase forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 != 2) {
                        if (i9 != 3) {
                            if (i9 != 4) {
                                if (i9 != 5) {
                                    return null;
                                }
                                return DESTINATION_PORT_RANGE;
                            }
                            return ANY_MATCH;
                        }
                        return NOT_MATCH;
                    }
                    return AND_MATCH;
                }
                return OR_MATCH;
            }
            return RULE_NOT_SET;
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static RuleCase valueOf(int i9) {
            return forNumber(i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<ListenerFilterChainMatchPredicate> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public ListenerFilterChainMatchPredicate m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new ListenerFilterChainMatchPredicate(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f46964a;

        static {
            int[] iArr = new int[RuleCase.values().length];
            f46964a = iArr;
            try {
                iArr[RuleCase.OR_MATCH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f46964a[RuleCase.AND_MATCH.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f46964a[RuleCase.NOT_MATCH.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f46964a[RuleCase.ANY_MATCH.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f46964a[RuleCase.DESTINATION_PORT_RANGE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f46964a[RuleCase.RULE_NOT_SET.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements e {

        /* renamed from: e  reason: collision with root package name */
        private int f46965e;

        /* renamed from: f  reason: collision with root package name */
        private Object f46966f;

        /* renamed from: g  reason: collision with root package name */
        private q2<MatchSet, MatchSet.b, d> f46967g;

        /* renamed from: h  reason: collision with root package name */
        private q2<MatchSet, MatchSet.b, d> f46968h;

        /* renamed from: i  reason: collision with root package name */
        private q2<ListenerFilterChainMatchPredicate, c, e> f46969i;

        /* renamed from: j  reason: collision with root package name */
        private q2<Int32Range, Int32Range.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.d> f46970j;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.listener.d.f46984h.d(ListenerFilterChainMatchPredicate.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public ListenerFilterChainMatchPredicate build() {
            ListenerFilterChainMatchPredicate I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public ListenerFilterChainMatchPredicate I() {
            ListenerFilterChainMatchPredicate listenerFilterChainMatchPredicate = new ListenerFilterChainMatchPredicate(this, (a) null);
            if (this.f46965e == 1) {
                q2<MatchSet, MatchSet.b, d> q2Var = this.f46967g;
                if (q2Var == null) {
                    listenerFilterChainMatchPredicate.rule_ = this.f46966f;
                } else {
                    listenerFilterChainMatchPredicate.rule_ = q2Var.b();
                }
            }
            if (this.f46965e == 2) {
                q2<MatchSet, MatchSet.b, d> q2Var2 = this.f46968h;
                if (q2Var2 == null) {
                    listenerFilterChainMatchPredicate.rule_ = this.f46966f;
                } else {
                    listenerFilterChainMatchPredicate.rule_ = q2Var2.b();
                }
            }
            if (this.f46965e == 3) {
                q2<ListenerFilterChainMatchPredicate, c, e> q2Var3 = this.f46969i;
                if (q2Var3 == null) {
                    listenerFilterChainMatchPredicate.rule_ = this.f46966f;
                } else {
                    listenerFilterChainMatchPredicate.rule_ = q2Var3.b();
                }
            }
            if (this.f46965e == 4) {
                listenerFilterChainMatchPredicate.rule_ = this.f46966f;
            }
            if (this.f46965e == 5) {
                q2<Int32Range, Int32Range.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.d> q2Var4 = this.f46970j;
                if (q2Var4 == null) {
                    listenerFilterChainMatchPredicate.rule_ = this.f46966f;
                } else {
                    listenerFilterChainMatchPredicate.rule_ = q2Var4.b();
                }
            }
            listenerFilterChainMatchPredicate.ruleCase_ = this.f46965e;
            Q();
            return listenerFilterChainMatchPredicate;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public ListenerFilterChainMatchPredicate getDefaultInstanceForType() {
            return ListenerFilterChainMatchPredicate.getDefaultInstance();
        }

        public c d0(MatchSet matchSet) {
            q2<MatchSet, MatchSet.b, d> q2Var = this.f46968h;
            if (q2Var == null) {
                if (this.f46965e == 2 && this.f46966f != MatchSet.getDefaultInstance()) {
                    this.f46966f = MatchSet.newBuilder((MatchSet) this.f46966f).i0(matchSet).I();
                } else {
                    this.f46966f = matchSet;
                }
                R();
            } else {
                if (this.f46965e == 2) {
                    q2Var.e(matchSet);
                }
                this.f46968h.g(matchSet);
            }
            this.f46965e = 2;
            return this;
        }

        public c e0(Int32Range int32Range) {
            q2<Int32Range, Int32Range.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.d> q2Var = this.f46970j;
            if (q2Var == null) {
                if (this.f46965e == 5 && this.f46966f != Int32Range.getDefaultInstance()) {
                    this.f46966f = Int32Range.newBuilder((Int32Range) this.f46966f).g0(int32Range).I();
                } else {
                    this.f46966f = int32Range;
                }
                R();
            } else {
                if (this.f46965e == 5) {
                    q2Var.e(int32Range);
                }
                this.f46970j.g(int32Range);
            }
            this.f46965e = 5;
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.listener.ListenerFilterChainMatchPredicate.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.listener.ListenerFilterChainMatchPredicate.access$1600()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.listener.ListenerFilterChainMatchPredicate r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.listener.ListenerFilterChainMatchPredicate) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.i0(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.listener.ListenerFilterChainMatchPredicate r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.listener.ListenerFilterChainMatchPredicate) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.i0(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.listener.ListenerFilterChainMatchPredicate.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.listener.ListenerFilterChainMatchPredicate$c");
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.listener.d.f46983g;
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public c v(l1 l1Var) {
            if (l1Var instanceof ListenerFilterChainMatchPredicate) {
                return i0((ListenerFilterChainMatchPredicate) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public c i0(ListenerFilterChainMatchPredicate listenerFilterChainMatchPredicate) {
            if (listenerFilterChainMatchPredicate == ListenerFilterChainMatchPredicate.getDefaultInstance()) {
                return this;
            }
            int i9 = b.f46964a[listenerFilterChainMatchPredicate.getRuleCase().ordinal()];
            if (i9 == 1) {
                k0(listenerFilterChainMatchPredicate.getOrMatch());
            } else if (i9 == 2) {
                d0(listenerFilterChainMatchPredicate.getAndMatch());
            } else if (i9 == 3) {
                j0(listenerFilterChainMatchPredicate.getNotMatch());
            } else if (i9 == 4) {
                m0(listenerFilterChainMatchPredicate.getAnyMatch());
            } else if (i9 == 5) {
                e0(listenerFilterChainMatchPredicate.getDestinationPortRange());
            }
            z(((GeneratedMessageV3) listenerFilterChainMatchPredicate).unknownFields);
            R();
            return this;
        }

        public c j0(ListenerFilterChainMatchPredicate listenerFilterChainMatchPredicate) {
            q2<ListenerFilterChainMatchPredicate, c, e> q2Var = this.f46969i;
            if (q2Var == null) {
                if (this.f46965e == 3 && this.f46966f != ListenerFilterChainMatchPredicate.getDefaultInstance()) {
                    this.f46966f = ListenerFilterChainMatchPredicate.newBuilder((ListenerFilterChainMatchPredicate) this.f46966f).i0(listenerFilterChainMatchPredicate).I();
                } else {
                    this.f46966f = listenerFilterChainMatchPredicate;
                }
                R();
            } else {
                if (this.f46965e == 3) {
                    q2Var.e(listenerFilterChainMatchPredicate);
                }
                this.f46969i.g(listenerFilterChainMatchPredicate);
            }
            this.f46965e = 3;
            return this;
        }

        public c k0(MatchSet matchSet) {
            q2<MatchSet, MatchSet.b, d> q2Var = this.f46967g;
            if (q2Var == null) {
                if (this.f46965e == 1 && this.f46966f != MatchSet.getDefaultInstance()) {
                    this.f46966f = MatchSet.newBuilder((MatchSet) this.f46966f).i0(matchSet).I();
                } else {
                    this.f46966f = matchSet;
                }
                R();
            } else {
                if (this.f46965e == 1) {
                    q2Var.e(matchSet);
                }
                this.f46967g.g(matchSet);
            }
            this.f46965e = 1;
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: l0 */
        public final c z(h3 h3Var) {
            return (c) super.z(h3Var);
        }

        public c m0(boolean z10) {
            this.f46965e = 4;
            this.f46966f = Boolean.valueOf(z10);
            R();
            return this;
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
            this.f46965e = 0;
            b0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f46965e = 0;
            b0();
        }
    }

    /* loaded from: classes6.dex */
    public interface d extends r1 {
    }

    /* synthetic */ ListenerFilterChainMatchPredicate(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static ListenerFilterChainMatchPredicate getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.listener.d.f46983g;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static ListenerFilterChainMatchPredicate parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (ListenerFilterChainMatchPredicate) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static ListenerFilterChainMatchPredicate parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<ListenerFilterChainMatchPredicate> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ListenerFilterChainMatchPredicate)) {
            return super.equals(obj);
        }
        ListenerFilterChainMatchPredicate listenerFilterChainMatchPredicate = (ListenerFilterChainMatchPredicate) obj;
        if (getRuleCase().equals(listenerFilterChainMatchPredicate.getRuleCase())) {
            int i9 = this.ruleCase_;
            if (i9 != 1) {
                if (i9 != 2) {
                    if (i9 != 3) {
                        if (i9 != 4) {
                            if (i9 == 5 && !getDestinationPortRange().equals(listenerFilterChainMatchPredicate.getDestinationPortRange())) {
                                return false;
                            }
                        } else if (getAnyMatch() != listenerFilterChainMatchPredicate.getAnyMatch()) {
                            return false;
                        }
                    } else if (!getNotMatch().equals(listenerFilterChainMatchPredicate.getNotMatch())) {
                        return false;
                    }
                } else if (!getAndMatch().equals(listenerFilterChainMatchPredicate.getAndMatch())) {
                    return false;
                }
            } else if (!getOrMatch().equals(listenerFilterChainMatchPredicate.getOrMatch())) {
                return false;
            }
            return this.unknownFields.equals(listenerFilterChainMatchPredicate.unknownFields);
        }
        return false;
    }

    public MatchSet getAndMatch() {
        if (this.ruleCase_ == 2) {
            return (MatchSet) this.rule_;
        }
        return MatchSet.getDefaultInstance();
    }

    public d getAndMatchOrBuilder() {
        if (this.ruleCase_ == 2) {
            return (MatchSet) this.rule_;
        }
        return MatchSet.getDefaultInstance();
    }

    public boolean getAnyMatch() {
        if (this.ruleCase_ == 4) {
            return ((Boolean) this.rule_).booleanValue();
        }
        return false;
    }

    public Int32Range getDestinationPortRange() {
        if (this.ruleCase_ == 5) {
            return (Int32Range) this.rule_;
        }
        return Int32Range.getDefaultInstance();
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.type.d getDestinationPortRangeOrBuilder() {
        if (this.ruleCase_ == 5) {
            return (Int32Range) this.rule_;
        }
        return Int32Range.getDefaultInstance();
    }

    public ListenerFilterChainMatchPredicate getNotMatch() {
        if (this.ruleCase_ == 3) {
            return (ListenerFilterChainMatchPredicate) this.rule_;
        }
        return getDefaultInstance();
    }

    public e getNotMatchOrBuilder() {
        if (this.ruleCase_ == 3) {
            return (ListenerFilterChainMatchPredicate) this.rule_;
        }
        return getDefaultInstance();
    }

    public MatchSet getOrMatch() {
        if (this.ruleCase_ == 1) {
            return (MatchSet) this.rule_;
        }
        return MatchSet.getDefaultInstance();
    }

    public d getOrMatchOrBuilder() {
        if (this.ruleCase_ == 1) {
            return (MatchSet) this.rule_;
        }
        return MatchSet.getDefaultInstance();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<ListenerFilterChainMatchPredicate> getParserForType() {
        return PARSER;
    }

    public RuleCase getRuleCase() {
        return RuleCase.forNumber(this.ruleCase_);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.ruleCase_ == 1 ? 0 + CodedOutputStream.G(1, (MatchSet) this.rule_) : 0;
        if (this.ruleCase_ == 2) {
            G += CodedOutputStream.G(2, (MatchSet) this.rule_);
        }
        if (this.ruleCase_ == 3) {
            G += CodedOutputStream.G(3, (ListenerFilterChainMatchPredicate) this.rule_);
        }
        if (this.ruleCase_ == 4) {
            G += CodedOutputStream.e(4, ((Boolean) this.rule_).booleanValue());
        }
        if (this.ruleCase_ == 5) {
            G += CodedOutputStream.G(5, (Int32Range) this.rule_);
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasAndMatch() {
        return this.ruleCase_ == 2;
    }

    public boolean hasAnyMatch() {
        return this.ruleCase_ == 4;
    }

    public boolean hasDestinationPortRange() {
        return this.ruleCase_ == 5;
    }

    public boolean hasNotMatch() {
        return this.ruleCase_ == 3;
    }

    public boolean hasOrMatch() {
        return this.ruleCase_ == 1;
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
        int i11 = this.ruleCase_;
        if (i11 == 1) {
            i9 = ((hashCode2 * 37) + 1) * 53;
            hashCode = getOrMatch().hashCode();
        } else if (i11 == 2) {
            i9 = ((hashCode2 * 37) + 2) * 53;
            hashCode = getAndMatch().hashCode();
        } else if (i11 == 3) {
            i9 = ((hashCode2 * 37) + 3) * 53;
            hashCode = getNotMatch().hashCode();
        } else if (i11 == 4) {
            i9 = ((hashCode2 * 37) + 4) * 53;
            hashCode = u0.d(getAnyMatch());
        } else {
            if (i11 == 5) {
                i9 = ((hashCode2 * 37) + 5) * 53;
                hashCode = getDestinationPortRange().hashCode();
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
        return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.listener.d.f46984h.d(ListenerFilterChainMatchPredicate.class, c.class);
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
        return new ListenerFilterChainMatchPredicate();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.ruleCase_ == 1) {
            codedOutputStream.L0(1, (MatchSet) this.rule_);
        }
        if (this.ruleCase_ == 2) {
            codedOutputStream.L0(2, (MatchSet) this.rule_);
        }
        if (this.ruleCase_ == 3) {
            codedOutputStream.L0(3, (ListenerFilterChainMatchPredicate) this.rule_);
        }
        if (this.ruleCase_ == 4) {
            codedOutputStream.n0(4, ((Boolean) this.rule_).booleanValue());
        }
        if (this.ruleCase_ == 5) {
            codedOutputStream.L0(5, (Int32Range) this.rule_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ ListenerFilterChainMatchPredicate(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(ListenerFilterChainMatchPredicate listenerFilterChainMatchPredicate) {
        return DEFAULT_INSTANCE.toBuilder().i0(listenerFilterChainMatchPredicate);
    }

    public static ListenerFilterChainMatchPredicate parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private ListenerFilterChainMatchPredicate(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.ruleCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static ListenerFilterChainMatchPredicate parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ListenerFilterChainMatchPredicate) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static ListenerFilterChainMatchPredicate parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public ListenerFilterChainMatchPredicate getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).i0(this);
    }

    public static ListenerFilterChainMatchPredicate parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    public static ListenerFilterChainMatchPredicate parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    private ListenerFilterChainMatchPredicate() {
        this.ruleCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static ListenerFilterChainMatchPredicate parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static ListenerFilterChainMatchPredicate parseFrom(InputStream inputStream) throws IOException {
        return (ListenerFilterChainMatchPredicate) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private ListenerFilterChainMatchPredicate(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                MatchSet.b builder = this.ruleCase_ == 1 ? ((MatchSet) this.rule_).toBuilder() : null;
                                o1 B = pVar.B(MatchSet.parser(), f0Var);
                                this.rule_ = B;
                                if (builder != null) {
                                    builder.i0((MatchSet) B);
                                    this.rule_ = builder.I();
                                }
                                this.ruleCase_ = 1;
                            } else if (L == 18) {
                                MatchSet.b builder2 = this.ruleCase_ == 2 ? ((MatchSet) this.rule_).toBuilder() : null;
                                o1 B2 = pVar.B(MatchSet.parser(), f0Var);
                                this.rule_ = B2;
                                if (builder2 != null) {
                                    builder2.i0((MatchSet) B2);
                                    this.rule_ = builder2.I();
                                }
                                this.ruleCase_ = 2;
                            } else if (L == 26) {
                                c builder3 = this.ruleCase_ == 3 ? ((ListenerFilterChainMatchPredicate) this.rule_).toBuilder() : null;
                                o1 B3 = pVar.B(parser(), f0Var);
                                this.rule_ = B3;
                                if (builder3 != null) {
                                    builder3.i0((ListenerFilterChainMatchPredicate) B3);
                                    this.rule_ = builder3.I();
                                }
                                this.ruleCase_ = 3;
                            } else if (L == 32) {
                                this.rule_ = Boolean.valueOf(pVar.r());
                                this.ruleCase_ = 4;
                            } else if (L != 42) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                Int32Range.b builder4 = this.ruleCase_ == 5 ? ((Int32Range) this.rule_).toBuilder() : null;
                                o1 B4 = pVar.B(Int32Range.parser(), f0Var);
                                this.rule_ = B4;
                                if (builder4 != null) {
                                    builder4.g0((Int32Range) B4);
                                    this.rule_ = builder4.I();
                                }
                                this.ruleCase_ = 5;
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
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static ListenerFilterChainMatchPredicate parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ListenerFilterChainMatchPredicate) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static ListenerFilterChainMatchPredicate parseFrom(p pVar) throws IOException {
        return (ListenerFilterChainMatchPredicate) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static ListenerFilterChainMatchPredicate parseFrom(p pVar, f0 f0Var) throws IOException {
        return (ListenerFilterChainMatchPredicate) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
