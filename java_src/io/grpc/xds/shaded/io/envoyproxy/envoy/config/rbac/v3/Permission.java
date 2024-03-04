package io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3;

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
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.CidrRange;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.j;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.HeaderMatcher;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.f;
import io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.MetadataMatcher;
import io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.PathMatcher;
import io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.StringMatcher;
import io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.i;
import io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.n;
import io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.Int32Range;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class Permission extends GeneratedMessageV3 implements io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.a {
    public static final int AND_RULES_FIELD_NUMBER = 1;
    public static final int ANY_FIELD_NUMBER = 3;
    public static final int DESTINATION_IP_FIELD_NUMBER = 5;
    public static final int DESTINATION_PORT_FIELD_NUMBER = 6;
    public static final int DESTINATION_PORT_RANGE_FIELD_NUMBER = 11;
    public static final int HEADER_FIELD_NUMBER = 4;
    public static final int METADATA_FIELD_NUMBER = 7;
    public static final int NOT_RULE_FIELD_NUMBER = 8;
    public static final int OR_RULES_FIELD_NUMBER = 2;
    public static final int REQUESTED_SERVER_NAME_FIELD_NUMBER = 9;
    public static final int URL_PATH_FIELD_NUMBER = 10;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private int ruleCase_;
    private Object rule_;
    private static final Permission DEFAULT_INSTANCE = new Permission();
    private static final e2<Permission> PARSER = new a();

    /* loaded from: classes6.dex */
    public enum RuleCase implements u0.c {
        AND_RULES(1),
        OR_RULES(2),
        ANY(3),
        HEADER(4),
        URL_PATH(10),
        DESTINATION_IP(5),
        DESTINATION_PORT(6),
        DESTINATION_PORT_RANGE(11),
        METADATA(7),
        NOT_RULE(8),
        REQUESTED_SERVER_NAME(9),
        RULE_NOT_SET(0);
        
        private final int value;

        RuleCase(int i9) {
            this.value = i9;
        }

        public static RuleCase forNumber(int i9) {
            switch (i9) {
                case 0:
                    return RULE_NOT_SET;
                case 1:
                    return AND_RULES;
                case 2:
                    return OR_RULES;
                case 3:
                    return ANY;
                case 4:
                    return HEADER;
                case 5:
                    return DESTINATION_IP;
                case 6:
                    return DESTINATION_PORT;
                case 7:
                    return METADATA;
                case 8:
                    return NOT_RULE;
                case 9:
                    return REQUESTED_SERVER_NAME;
                case 10:
                    return URL_PATH;
                case 11:
                    return DESTINATION_PORT_RANGE;
                default:
                    return null;
            }
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

    /* loaded from: classes6.dex */
    public static final class Set extends GeneratedMessageV3 implements d {
        private static final Set DEFAULT_INSTANCE = new Set();
        private static final e2<Set> PARSER = new a();
        public static final int RULES_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private List<Permission> rules_;

        /* loaded from: classes6.dex */
        class a extends com.google.protobuf.c<Set> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public Set m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new Set(pVar, f0Var, null);
            }
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements d {

            /* renamed from: e  reason: collision with root package name */
            private int f49047e;

            /* renamed from: f  reason: collision with root package name */
            private List<Permission> f49048f;

            /* renamed from: g  reason: collision with root package name */
            private l2<Permission, c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.a> f49049g;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void a0() {
                if ((this.f49047e & 1) == 0) {
                    this.f49048f = new ArrayList(this.f49048f);
                    this.f49047e |= 1;
                }
            }

            private l2<Permission, c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.a> d0() {
                if (this.f49049g == null) {
                    this.f49049g = new l2<>(this.f49048f, (this.f49047e & 1) != 0, H(), O());
                    this.f49048f = null;
                }
                return this.f49049g;
            }

            private void e0() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    d0();
                }
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.d.f49101j.d(Set.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public Set build() {
                Set I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public Set I() {
                Set set = new Set(this, (a) null);
                int i9 = this.f49047e;
                l2<Permission, c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.a> l2Var = this.f49049g;
                if (l2Var == null) {
                    if ((i9 & 1) != 0) {
                        this.f49048f = Collections.unmodifiableList(this.f49048f);
                        this.f49047e &= -2;
                    }
                    set.rules_ = this.f49048f;
                } else {
                    set.rules_ = l2Var.e();
                }
                Q();
                return set;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: b0 */
            public Set getDefaultInstanceForType() {
                return Set.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: g0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.Permission.Set.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.Permission.Set.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.Permission$Set r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.Permission.Set) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.Permission$Set r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.Permission.Set) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.Permission.Set.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.Permission$Set$b");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.d.f49100i;
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: h0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof Set) {
                    return i0((Set) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b i0(Set set) {
                if (set == Set.getDefaultInstance()) {
                    return this;
                }
                if (this.f49049g == null) {
                    if (!set.rules_.isEmpty()) {
                        if (this.f49048f.isEmpty()) {
                            this.f49048f = set.rules_;
                            this.f49047e &= -2;
                        } else {
                            a0();
                            this.f49048f.addAll(set.rules_);
                        }
                        R();
                    }
                } else if (!set.rules_.isEmpty()) {
                    if (this.f49049g.k()) {
                        this.f49049g.f();
                        this.f49049g = null;
                        this.f49048f = set.rules_;
                        this.f49047e &= -2;
                        this.f49049g = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                    } else {
                        this.f49049g.b(set.rules_);
                    }
                }
                z(((GeneratedMessageV3) set).unknownFields);
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
                this.f49048f = Collections.emptyList();
                e0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f49048f = Collections.emptyList();
                e0();
            }
        }

        /* synthetic */ Set(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static Set getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.d.f49100i;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Set parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Set) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Set parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<Set> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Set)) {
                return super.equals(obj);
            }
            Set set = (Set) obj;
            return getRulesList().equals(set.getRulesList()) && this.unknownFields.equals(set.unknownFields);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<Set> getParserForType() {
            return PARSER;
        }

        public Permission getRules(int i9) {
            return this.rules_.get(i9);
        }

        public int getRulesCount() {
            return this.rules_.size();
        }

        public List<Permission> getRulesList() {
            return this.rules_;
        }

        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.a getRulesOrBuilder(int i9) {
            return this.rules_.get(i9);
        }

        public List<? extends io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.a> getRulesOrBuilderList() {
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
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.d.f49101j.d(Set.class, b.class);
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
            return new Set();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            for (int i9 = 0; i9 < this.rules_.size(); i9++) {
                codedOutputStream.L0(1, this.rules_.get(i9));
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ Set(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(Set set) {
            return DEFAULT_INSTANCE.toBuilder().i0(set);
        }

        public static Set parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private Set(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Set parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Set) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static Set parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public Set getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).i0(this);
        }

        public static Set parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private Set() {
            this.memoizedIsInitialized = (byte) -1;
            this.rules_ = Collections.emptyList();
        }

        public static Set parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static Set parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static Set parseFrom(InputStream inputStream) throws IOException {
            return (Set) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private Set(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                this.rules_.add((Permission) pVar.B(Permission.parser(), f0Var));
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

        public static Set parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Set) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static Set parseFrom(p pVar) throws IOException {
            return (Set) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static Set parseFrom(p pVar, f0 f0Var) throws IOException {
            return (Set) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<Permission> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public Permission m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new Permission(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f49050a;

        static {
            int[] iArr = new int[RuleCase.values().length];
            f49050a = iArr;
            try {
                iArr[RuleCase.AND_RULES.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f49050a[RuleCase.OR_RULES.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f49050a[RuleCase.ANY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f49050a[RuleCase.HEADER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f49050a[RuleCase.URL_PATH.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f49050a[RuleCase.DESTINATION_IP.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f49050a[RuleCase.DESTINATION_PORT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f49050a[RuleCase.DESTINATION_PORT_RANGE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f49050a[RuleCase.METADATA.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f49050a[RuleCase.NOT_RULE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f49050a[RuleCase.REQUESTED_SERVER_NAME.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f49050a[RuleCase.RULE_NOT_SET.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.a {

        /* renamed from: e  reason: collision with root package name */
        private int f49051e;

        /* renamed from: f  reason: collision with root package name */
        private Object f49052f;

        /* renamed from: g  reason: collision with root package name */
        private q2<Set, Set.b, d> f49053g;

        /* renamed from: h  reason: collision with root package name */
        private q2<Set, Set.b, d> f49054h;

        /* renamed from: i  reason: collision with root package name */
        private q2<HeaderMatcher, HeaderMatcher.c, f> f49055i;

        /* renamed from: j  reason: collision with root package name */
        private q2<PathMatcher, PathMatcher.c, i> f49056j;

        /* renamed from: k  reason: collision with root package name */
        private q2<CidrRange, CidrRange.b, j> f49057k;

        /* renamed from: l  reason: collision with root package name */
        private q2<Int32Range, Int32Range.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.d> f49058l;

        /* renamed from: m  reason: collision with root package name */
        private q2<MetadataMatcher, MetadataMatcher.c, io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.d> f49059m;

        /* renamed from: n  reason: collision with root package name */
        private q2<Permission, c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.a> f49060n;

        /* renamed from: o  reason: collision with root package name */
        private q2<StringMatcher, StringMatcher.c, n> f49061o;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.d.f49099h.d(Permission.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public Permission build() {
            Permission I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public Permission I() {
            Permission permission = new Permission(this, (a) null);
            if (this.f49051e == 1) {
                q2<Set, Set.b, d> q2Var = this.f49053g;
                if (q2Var == null) {
                    permission.rule_ = this.f49052f;
                } else {
                    permission.rule_ = q2Var.b();
                }
            }
            if (this.f49051e == 2) {
                q2<Set, Set.b, d> q2Var2 = this.f49054h;
                if (q2Var2 == null) {
                    permission.rule_ = this.f49052f;
                } else {
                    permission.rule_ = q2Var2.b();
                }
            }
            if (this.f49051e == 3) {
                permission.rule_ = this.f49052f;
            }
            if (this.f49051e == 4) {
                q2<HeaderMatcher, HeaderMatcher.c, f> q2Var3 = this.f49055i;
                if (q2Var3 == null) {
                    permission.rule_ = this.f49052f;
                } else {
                    permission.rule_ = q2Var3.b();
                }
            }
            if (this.f49051e == 10) {
                q2<PathMatcher, PathMatcher.c, i> q2Var4 = this.f49056j;
                if (q2Var4 == null) {
                    permission.rule_ = this.f49052f;
                } else {
                    permission.rule_ = q2Var4.b();
                }
            }
            if (this.f49051e == 5) {
                q2<CidrRange, CidrRange.b, j> q2Var5 = this.f49057k;
                if (q2Var5 == null) {
                    permission.rule_ = this.f49052f;
                } else {
                    permission.rule_ = q2Var5.b();
                }
            }
            if (this.f49051e == 6) {
                permission.rule_ = this.f49052f;
            }
            if (this.f49051e == 11) {
                q2<Int32Range, Int32Range.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.d> q2Var6 = this.f49058l;
                if (q2Var6 == null) {
                    permission.rule_ = this.f49052f;
                } else {
                    permission.rule_ = q2Var6.b();
                }
            }
            if (this.f49051e == 7) {
                q2<MetadataMatcher, MetadataMatcher.c, io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.d> q2Var7 = this.f49059m;
                if (q2Var7 == null) {
                    permission.rule_ = this.f49052f;
                } else {
                    permission.rule_ = q2Var7.b();
                }
            }
            if (this.f49051e == 8) {
                q2<Permission, c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.a> q2Var8 = this.f49060n;
                if (q2Var8 == null) {
                    permission.rule_ = this.f49052f;
                } else {
                    permission.rule_ = q2Var8.b();
                }
            }
            if (this.f49051e == 9) {
                q2<StringMatcher, StringMatcher.c, n> q2Var9 = this.f49061o;
                if (q2Var9 == null) {
                    permission.rule_ = this.f49052f;
                } else {
                    permission.rule_ = q2Var9.b();
                }
            }
            permission.ruleCase_ = this.f49051e;
            Q();
            return permission;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public Permission getDefaultInstanceForType() {
            return Permission.getDefaultInstance();
        }

        public c d0(Set set) {
            q2<Set, Set.b, d> q2Var = this.f49053g;
            if (q2Var == null) {
                if (this.f49051e == 1 && this.f49052f != Set.getDefaultInstance()) {
                    this.f49052f = Set.newBuilder((Set) this.f49052f).i0(set).I();
                } else {
                    this.f49052f = set;
                }
                R();
            } else {
                if (this.f49051e == 1) {
                    q2Var.e(set);
                }
                this.f49053g.g(set);
            }
            this.f49051e = 1;
            return this;
        }

        public c e0(CidrRange cidrRange) {
            q2<CidrRange, CidrRange.b, j> q2Var = this.f49057k;
            if (q2Var == null) {
                if (this.f49051e == 5 && this.f49052f != CidrRange.getDefaultInstance()) {
                    this.f49052f = CidrRange.newBuilder((CidrRange) this.f49052f).g0(cidrRange).I();
                } else {
                    this.f49052f = cidrRange;
                }
                R();
            } else {
                if (this.f49051e == 5) {
                    q2Var.e(cidrRange);
                }
                this.f49057k.g(cidrRange);
            }
            this.f49051e = 5;
            return this;
        }

        public c g0(Int32Range int32Range) {
            q2<Int32Range, Int32Range.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.d> q2Var = this.f49058l;
            if (q2Var == null) {
                if (this.f49051e == 11 && this.f49052f != Int32Range.getDefaultInstance()) {
                    this.f49052f = Int32Range.newBuilder((Int32Range) this.f49052f).g0(int32Range).I();
                } else {
                    this.f49052f = int32Range;
                }
                R();
            } else {
                if (this.f49051e == 11) {
                    q2Var.e(int32Range);
                }
                this.f49058l.g(int32Range);
            }
            this.f49051e = 11;
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.d.f49098g;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.Permission.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.Permission.access$1600()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.Permission r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.Permission) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.j0(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.Permission r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.Permission) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.j0(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.Permission.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.Permission$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public c v(l1 l1Var) {
            if (l1Var instanceof Permission) {
                return j0((Permission) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public c j0(Permission permission) {
            if (permission == Permission.getDefaultInstance()) {
                return this;
            }
            switch (b.f49050a[permission.getRuleCase().ordinal()]) {
                case 1:
                    d0(permission.getAndRules());
                    break;
                case 2:
                    n0(permission.getOrRules());
                    break;
                case 3:
                    s0(permission.getAny());
                    break;
                case 4:
                    k0(permission.getHeader());
                    break;
                case 5:
                    r0(permission.getUrlPath());
                    break;
                case 6:
                    e0(permission.getDestinationIp());
                    break;
                case 7:
                    t0(permission.getDestinationPort());
                    break;
                case 8:
                    g0(permission.getDestinationPortRange());
                    break;
                case 9:
                    l0(permission.getMetadata());
                    break;
                case 10:
                    m0(permission.getNotRule());
                    break;
                case 11:
                    o0(permission.getRequestedServerName());
                    break;
            }
            z(((GeneratedMessageV3) permission).unknownFields);
            R();
            return this;
        }

        public c k0(HeaderMatcher headerMatcher) {
            q2<HeaderMatcher, HeaderMatcher.c, f> q2Var = this.f49055i;
            if (q2Var == null) {
                if (this.f49051e == 4 && this.f49052f != HeaderMatcher.getDefaultInstance()) {
                    this.f49052f = HeaderMatcher.newBuilder((HeaderMatcher) this.f49052f).g0(headerMatcher).I();
                } else {
                    this.f49052f = headerMatcher;
                }
                R();
            } else {
                if (this.f49051e == 4) {
                    q2Var.e(headerMatcher);
                }
                this.f49055i.g(headerMatcher);
            }
            this.f49051e = 4;
            return this;
        }

        public c l0(MetadataMatcher metadataMatcher) {
            q2<MetadataMatcher, MetadataMatcher.c, io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.d> q2Var = this.f49059m;
            if (q2Var == null) {
                if (this.f49051e == 7 && this.f49052f != MetadataMatcher.getDefaultInstance()) {
                    this.f49052f = MetadataMatcher.newBuilder((MetadataMatcher) this.f49052f).i0(metadataMatcher).I();
                } else {
                    this.f49052f = metadataMatcher;
                }
                R();
            } else {
                if (this.f49051e == 7) {
                    q2Var.e(metadataMatcher);
                }
                this.f49059m.g(metadataMatcher);
            }
            this.f49051e = 7;
            return this;
        }

        public c m0(Permission permission) {
            q2<Permission, c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.a> q2Var = this.f49060n;
            if (q2Var == null) {
                if (this.f49051e == 8 && this.f49052f != Permission.getDefaultInstance()) {
                    this.f49052f = Permission.newBuilder((Permission) this.f49052f).j0(permission).I();
                } else {
                    this.f49052f = permission;
                }
                R();
            } else {
                if (this.f49051e == 8) {
                    q2Var.e(permission);
                }
                this.f49060n.g(permission);
            }
            this.f49051e = 8;
            return this;
        }

        public c n0(Set set) {
            q2<Set, Set.b, d> q2Var = this.f49054h;
            if (q2Var == null) {
                if (this.f49051e == 2 && this.f49052f != Set.getDefaultInstance()) {
                    this.f49052f = Set.newBuilder((Set) this.f49052f).i0(set).I();
                } else {
                    this.f49052f = set;
                }
                R();
            } else {
                if (this.f49051e == 2) {
                    q2Var.e(set);
                }
                this.f49054h.g(set);
            }
            this.f49051e = 2;
            return this;
        }

        public c o0(StringMatcher stringMatcher) {
            q2<StringMatcher, StringMatcher.c, n> q2Var = this.f49061o;
            if (q2Var == null) {
                if (this.f49051e == 9 && this.f49052f != StringMatcher.getDefaultInstance()) {
                    this.f49052f = StringMatcher.newBuilder((StringMatcher) this.f49052f).g0(stringMatcher).I();
                } else {
                    this.f49052f = stringMatcher;
                }
                R();
            } else {
                if (this.f49051e == 9) {
                    q2Var.e(stringMatcher);
                }
                this.f49061o.g(stringMatcher);
            }
            this.f49051e = 9;
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: q0 */
        public final c z(h3 h3Var) {
            return (c) super.z(h3Var);
        }

        public c r0(PathMatcher pathMatcher) {
            q2<PathMatcher, PathMatcher.c, i> q2Var = this.f49056j;
            if (q2Var == null) {
                if (this.f49051e == 10 && this.f49052f != PathMatcher.getDefaultInstance()) {
                    this.f49052f = PathMatcher.newBuilder((PathMatcher) this.f49052f).g0(pathMatcher).I();
                } else {
                    this.f49052f = pathMatcher;
                }
                R();
            } else {
                if (this.f49051e == 10) {
                    q2Var.e(pathMatcher);
                }
                this.f49056j.g(pathMatcher);
            }
            this.f49051e = 10;
            return this;
        }

        public c s0(boolean z10) {
            this.f49051e = 3;
            this.f49052f = Boolean.valueOf(z10);
            R();
            return this;
        }

        public c t0(int i9) {
            this.f49051e = 6;
            this.f49052f = Integer.valueOf(i9);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: u0 */
        public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.c(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: v0 */
        public final c f1(h3 h3Var) {
            return (c) super.f1(h3Var);
        }

        /* synthetic */ c(a aVar) {
            this();
        }

        private c() {
            this.f49051e = 0;
            b0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f49051e = 0;
            b0();
        }
    }

    /* loaded from: classes6.dex */
    public interface d extends r1 {
    }

    /* synthetic */ Permission(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static Permission getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.d.f49098g;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Permission parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Permission) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Permission parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<Permission> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Permission)) {
            return super.equals(obj);
        }
        Permission permission = (Permission) obj;
        if (getRuleCase().equals(permission.getRuleCase())) {
            switch (this.ruleCase_) {
                case 1:
                    if (!getAndRules().equals(permission.getAndRules())) {
                        return false;
                    }
                    break;
                case 2:
                    if (!getOrRules().equals(permission.getOrRules())) {
                        return false;
                    }
                    break;
                case 3:
                    if (getAny() != permission.getAny()) {
                        return false;
                    }
                    break;
                case 4:
                    if (!getHeader().equals(permission.getHeader())) {
                        return false;
                    }
                    break;
                case 5:
                    if (!getDestinationIp().equals(permission.getDestinationIp())) {
                        return false;
                    }
                    break;
                case 6:
                    if (getDestinationPort() != permission.getDestinationPort()) {
                        return false;
                    }
                    break;
                case 7:
                    if (!getMetadata().equals(permission.getMetadata())) {
                        return false;
                    }
                    break;
                case 8:
                    if (!getNotRule().equals(permission.getNotRule())) {
                        return false;
                    }
                    break;
                case 9:
                    if (!getRequestedServerName().equals(permission.getRequestedServerName())) {
                        return false;
                    }
                    break;
                case 10:
                    if (!getUrlPath().equals(permission.getUrlPath())) {
                        return false;
                    }
                    break;
                case 11:
                    if (!getDestinationPortRange().equals(permission.getDestinationPortRange())) {
                        return false;
                    }
                    break;
            }
            return this.unknownFields.equals(permission.unknownFields);
        }
        return false;
    }

    public Set getAndRules() {
        if (this.ruleCase_ == 1) {
            return (Set) this.rule_;
        }
        return Set.getDefaultInstance();
    }

    public d getAndRulesOrBuilder() {
        if (this.ruleCase_ == 1) {
            return (Set) this.rule_;
        }
        return Set.getDefaultInstance();
    }

    public boolean getAny() {
        if (this.ruleCase_ == 3) {
            return ((Boolean) this.rule_).booleanValue();
        }
        return false;
    }

    public CidrRange getDestinationIp() {
        if (this.ruleCase_ == 5) {
            return (CidrRange) this.rule_;
        }
        return CidrRange.getDefaultInstance();
    }

    public j getDestinationIpOrBuilder() {
        if (this.ruleCase_ == 5) {
            return (CidrRange) this.rule_;
        }
        return CidrRange.getDefaultInstance();
    }

    public int getDestinationPort() {
        if (this.ruleCase_ == 6) {
            return ((Integer) this.rule_).intValue();
        }
        return 0;
    }

    public Int32Range getDestinationPortRange() {
        if (this.ruleCase_ == 11) {
            return (Int32Range) this.rule_;
        }
        return Int32Range.getDefaultInstance();
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.d getDestinationPortRangeOrBuilder() {
        if (this.ruleCase_ == 11) {
            return (Int32Range) this.rule_;
        }
        return Int32Range.getDefaultInstance();
    }

    public HeaderMatcher getHeader() {
        if (this.ruleCase_ == 4) {
            return (HeaderMatcher) this.rule_;
        }
        return HeaderMatcher.getDefaultInstance();
    }

    public f getHeaderOrBuilder() {
        if (this.ruleCase_ == 4) {
            return (HeaderMatcher) this.rule_;
        }
        return HeaderMatcher.getDefaultInstance();
    }

    public MetadataMatcher getMetadata() {
        if (this.ruleCase_ == 7) {
            return (MetadataMatcher) this.rule_;
        }
        return MetadataMatcher.getDefaultInstance();
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.d getMetadataOrBuilder() {
        if (this.ruleCase_ == 7) {
            return (MetadataMatcher) this.rule_;
        }
        return MetadataMatcher.getDefaultInstance();
    }

    public Permission getNotRule() {
        if (this.ruleCase_ == 8) {
            return (Permission) this.rule_;
        }
        return getDefaultInstance();
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.a getNotRuleOrBuilder() {
        if (this.ruleCase_ == 8) {
            return (Permission) this.rule_;
        }
        return getDefaultInstance();
    }

    public Set getOrRules() {
        if (this.ruleCase_ == 2) {
            return (Set) this.rule_;
        }
        return Set.getDefaultInstance();
    }

    public d getOrRulesOrBuilder() {
        if (this.ruleCase_ == 2) {
            return (Set) this.rule_;
        }
        return Set.getDefaultInstance();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<Permission> getParserForType() {
        return PARSER;
    }

    public StringMatcher getRequestedServerName() {
        if (this.ruleCase_ == 9) {
            return (StringMatcher) this.rule_;
        }
        return StringMatcher.getDefaultInstance();
    }

    public n getRequestedServerNameOrBuilder() {
        if (this.ruleCase_ == 9) {
            return (StringMatcher) this.rule_;
        }
        return StringMatcher.getDefaultInstance();
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
        int G = this.ruleCase_ == 1 ? 0 + CodedOutputStream.G(1, (Set) this.rule_) : 0;
        if (this.ruleCase_ == 2) {
            G += CodedOutputStream.G(2, (Set) this.rule_);
        }
        if (this.ruleCase_ == 3) {
            G += CodedOutputStream.e(3, ((Boolean) this.rule_).booleanValue());
        }
        if (this.ruleCase_ == 4) {
            G += CodedOutputStream.G(4, (HeaderMatcher) this.rule_);
        }
        if (this.ruleCase_ == 5) {
            G += CodedOutputStream.G(5, (CidrRange) this.rule_);
        }
        if (this.ruleCase_ == 6) {
            G += CodedOutputStream.Y(6, ((Integer) this.rule_).intValue());
        }
        if (this.ruleCase_ == 7) {
            G += CodedOutputStream.G(7, (MetadataMatcher) this.rule_);
        }
        if (this.ruleCase_ == 8) {
            G += CodedOutputStream.G(8, (Permission) this.rule_);
        }
        if (this.ruleCase_ == 9) {
            G += CodedOutputStream.G(9, (StringMatcher) this.rule_);
        }
        if (this.ruleCase_ == 10) {
            G += CodedOutputStream.G(10, (PathMatcher) this.rule_);
        }
        if (this.ruleCase_ == 11) {
            G += CodedOutputStream.G(11, (Int32Range) this.rule_);
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public PathMatcher getUrlPath() {
        if (this.ruleCase_ == 10) {
            return (PathMatcher) this.rule_;
        }
        return PathMatcher.getDefaultInstance();
    }

    public i getUrlPathOrBuilder() {
        if (this.ruleCase_ == 10) {
            return (PathMatcher) this.rule_;
        }
        return PathMatcher.getDefaultInstance();
    }

    public boolean hasAndRules() {
        return this.ruleCase_ == 1;
    }

    public boolean hasAny() {
        return this.ruleCase_ == 3;
    }

    public boolean hasDestinationIp() {
        return this.ruleCase_ == 5;
    }

    public boolean hasDestinationPort() {
        return this.ruleCase_ == 6;
    }

    public boolean hasDestinationPortRange() {
        return this.ruleCase_ == 11;
    }

    public boolean hasHeader() {
        return this.ruleCase_ == 4;
    }

    public boolean hasMetadata() {
        return this.ruleCase_ == 7;
    }

    public boolean hasNotRule() {
        return this.ruleCase_ == 8;
    }

    public boolean hasOrRules() {
        return this.ruleCase_ == 2;
    }

    public boolean hasRequestedServerName() {
        return this.ruleCase_ == 9;
    }

    public boolean hasUrlPath() {
        return this.ruleCase_ == 10;
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
        switch (this.ruleCase_) {
            case 1:
                i9 = ((hashCode2 * 37) + 1) * 53;
                hashCode = getAndRules().hashCode();
                hashCode2 = i9 + hashCode;
                int hashCode3 = (hashCode2 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode3;
                return hashCode3;
            case 2:
                i9 = ((hashCode2 * 37) + 2) * 53;
                hashCode = getOrRules().hashCode();
                hashCode2 = i9 + hashCode;
                int hashCode32 = (hashCode2 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode32;
                return hashCode32;
            case 3:
                i9 = ((hashCode2 * 37) + 3) * 53;
                hashCode = u0.d(getAny());
                hashCode2 = i9 + hashCode;
                int hashCode322 = (hashCode2 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode322;
                return hashCode322;
            case 4:
                i9 = ((hashCode2 * 37) + 4) * 53;
                hashCode = getHeader().hashCode();
                hashCode2 = i9 + hashCode;
                int hashCode3222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode3222;
                return hashCode3222;
            case 5:
                i9 = ((hashCode2 * 37) + 5) * 53;
                hashCode = getDestinationIp().hashCode();
                hashCode2 = i9 + hashCode;
                int hashCode32222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode32222;
                return hashCode32222;
            case 6:
                i9 = ((hashCode2 * 37) + 6) * 53;
                hashCode = getDestinationPort();
                hashCode2 = i9 + hashCode;
                int hashCode322222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode322222;
                return hashCode322222;
            case 7:
                i9 = ((hashCode2 * 37) + 7) * 53;
                hashCode = getMetadata().hashCode();
                hashCode2 = i9 + hashCode;
                int hashCode3222222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode3222222;
                return hashCode3222222;
            case 8:
                i9 = ((hashCode2 * 37) + 8) * 53;
                hashCode = getNotRule().hashCode();
                hashCode2 = i9 + hashCode;
                int hashCode32222222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode32222222;
                return hashCode32222222;
            case 9:
                i9 = ((hashCode2 * 37) + 9) * 53;
                hashCode = getRequestedServerName().hashCode();
                hashCode2 = i9 + hashCode;
                int hashCode322222222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode322222222;
                return hashCode322222222;
            case 10:
                i9 = ((hashCode2 * 37) + 10) * 53;
                hashCode = getUrlPath().hashCode();
                hashCode2 = i9 + hashCode;
                int hashCode3222222222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode3222222222;
                return hashCode3222222222;
            case 11:
                i9 = ((hashCode2 * 37) + 11) * 53;
                hashCode = getDestinationPortRange().hashCode();
                hashCode2 = i9 + hashCode;
                int hashCode32222222222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode32222222222;
                return hashCode32222222222;
            default:
                int hashCode322222222222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode322222222222;
                return hashCode322222222222;
        }
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.d.f49099h.d(Permission.class, c.class);
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
        return new Permission();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.ruleCase_ == 1) {
            codedOutputStream.L0(1, (Set) this.rule_);
        }
        if (this.ruleCase_ == 2) {
            codedOutputStream.L0(2, (Set) this.rule_);
        }
        if (this.ruleCase_ == 3) {
            codedOutputStream.n0(3, ((Boolean) this.rule_).booleanValue());
        }
        if (this.ruleCase_ == 4) {
            codedOutputStream.L0(4, (HeaderMatcher) this.rule_);
        }
        if (this.ruleCase_ == 5) {
            codedOutputStream.L0(5, (CidrRange) this.rule_);
        }
        if (this.ruleCase_ == 6) {
            codedOutputStream.c1(6, ((Integer) this.rule_).intValue());
        }
        if (this.ruleCase_ == 7) {
            codedOutputStream.L0(7, (MetadataMatcher) this.rule_);
        }
        if (this.ruleCase_ == 8) {
            codedOutputStream.L0(8, (Permission) this.rule_);
        }
        if (this.ruleCase_ == 9) {
            codedOutputStream.L0(9, (StringMatcher) this.rule_);
        }
        if (this.ruleCase_ == 10) {
            codedOutputStream.L0(10, (PathMatcher) this.rule_);
        }
        if (this.ruleCase_ == 11) {
            codedOutputStream.L0(11, (Int32Range) this.rule_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ Permission(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(Permission permission) {
        return DEFAULT_INSTANCE.toBuilder().j0(permission);
    }

    public static Permission parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private Permission(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.ruleCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Permission parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Permission) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static Permission parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public Permission getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).j0(this);
    }

    public static Permission parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    public static Permission parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    private Permission() {
        this.ruleCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Permission parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static Permission parseFrom(InputStream inputStream) throws IOException {
        return (Permission) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private Permission(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            Set.b builder = this.ruleCase_ == 1 ? ((Set) this.rule_).toBuilder() : null;
                            o1 B = pVar.B(Set.parser(), f0Var);
                            this.rule_ = B;
                            if (builder != null) {
                                builder.i0((Set) B);
                                this.rule_ = builder.I();
                            }
                            this.ruleCase_ = 1;
                            continue;
                        case 18:
                            Set.b builder2 = this.ruleCase_ == 2 ? ((Set) this.rule_).toBuilder() : null;
                            o1 B2 = pVar.B(Set.parser(), f0Var);
                            this.rule_ = B2;
                            if (builder2 != null) {
                                builder2.i0((Set) B2);
                                this.rule_ = builder2.I();
                            }
                            this.ruleCase_ = 2;
                            continue;
                        case 24:
                            this.rule_ = Boolean.valueOf(pVar.r());
                            this.ruleCase_ = 3;
                            continue;
                        case 34:
                            HeaderMatcher.c builder3 = this.ruleCase_ == 4 ? ((HeaderMatcher) this.rule_).toBuilder() : null;
                            o1 B3 = pVar.B(HeaderMatcher.parser(), f0Var);
                            this.rule_ = B3;
                            if (builder3 != null) {
                                builder3.g0((HeaderMatcher) B3);
                                this.rule_ = builder3.I();
                            }
                            this.ruleCase_ = 4;
                            continue;
                        case 42:
                            CidrRange.b builder4 = this.ruleCase_ == 5 ? ((CidrRange) this.rule_).toBuilder() : null;
                            o1 B4 = pVar.B(CidrRange.parser(), f0Var);
                            this.rule_ = B4;
                            if (builder4 != null) {
                                builder4.g0((CidrRange) B4);
                                this.rule_ = builder4.I();
                            }
                            this.ruleCase_ = 5;
                            continue;
                        case 48:
                            this.rule_ = Integer.valueOf(pVar.M());
                            this.ruleCase_ = 6;
                            continue;
                        case 58:
                            MetadataMatcher.c builder5 = this.ruleCase_ == 7 ? ((MetadataMatcher) this.rule_).toBuilder() : null;
                            o1 B5 = pVar.B(MetadataMatcher.parser(), f0Var);
                            this.rule_ = B5;
                            if (builder5 != null) {
                                builder5.i0((MetadataMatcher) B5);
                                this.rule_ = builder5.I();
                            }
                            this.ruleCase_ = 7;
                            continue;
                        case 66:
                            c builder6 = this.ruleCase_ == 8 ? ((Permission) this.rule_).toBuilder() : null;
                            o1 B6 = pVar.B(parser(), f0Var);
                            this.rule_ = B6;
                            if (builder6 != null) {
                                builder6.j0((Permission) B6);
                                this.rule_ = builder6.I();
                            }
                            this.ruleCase_ = 8;
                            continue;
                        case 74:
                            StringMatcher.c builder7 = this.ruleCase_ == 9 ? ((StringMatcher) this.rule_).toBuilder() : null;
                            o1 B7 = pVar.B(StringMatcher.parser(), f0Var);
                            this.rule_ = B7;
                            if (builder7 != null) {
                                builder7.g0((StringMatcher) B7);
                                this.rule_ = builder7.I();
                            }
                            this.ruleCase_ = 9;
                            continue;
                        case 82:
                            PathMatcher.c builder8 = this.ruleCase_ == 10 ? ((PathMatcher) this.rule_).toBuilder() : null;
                            o1 B8 = pVar.B(PathMatcher.parser(), f0Var);
                            this.rule_ = B8;
                            if (builder8 != null) {
                                builder8.g0((PathMatcher) B8);
                                this.rule_ = builder8.I();
                            }
                            this.ruleCase_ = 10;
                            continue;
                        case 90:
                            Int32Range.b builder9 = this.ruleCase_ == 11 ? ((Int32Range) this.rule_).toBuilder() : null;
                            o1 B9 = pVar.B(Int32Range.parser(), f0Var);
                            this.rule_ = B9;
                            if (builder9 != null) {
                                builder9.g0((Int32Range) B9);
                                this.rule_ = builder9.I();
                            }
                            this.ruleCase_ = 11;
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

    public static Permission parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Permission) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static Permission parseFrom(p pVar) throws IOException {
        return (Permission) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static Permission parseFrom(p pVar, f0 f0Var) throws IOException {
        return (Permission) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
