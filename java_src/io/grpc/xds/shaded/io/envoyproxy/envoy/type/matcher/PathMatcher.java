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
import io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.StringMatcher;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class PathMatcher extends GeneratedMessageV3 implements f {
    private static final PathMatcher DEFAULT_INSTANCE = new PathMatcher();
    private static final e2<PathMatcher> PARSER = new a();
    public static final int PATH_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private int ruleCase_;
    private Object rule_;

    /* loaded from: classes6.dex */
    public enum RuleCase implements u0.c {
        PATH(1),
        RULE_NOT_SET(0);
        
        private final int value;

        RuleCase(int i9) {
            this.value = i9;
        }

        public static RuleCase forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    return null;
                }
                return PATH;
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
    public class a extends com.google.protobuf.c<PathMatcher> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public PathMatcher m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new PathMatcher(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f50282a;

        static {
            int[] iArr = new int[RuleCase.values().length];
            f50282a = iArr;
            try {
                iArr[RuleCase.PATH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f50282a[RuleCase.RULE_NOT_SET.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements f {

        /* renamed from: e  reason: collision with root package name */
        private int f50283e;

        /* renamed from: f  reason: collision with root package name */
        private Object f50284f;

        /* renamed from: g  reason: collision with root package name */
        private q2<StringMatcher, StringMatcher.c, k> f50285g;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return g.f50317b.d(PathMatcher.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public PathMatcher build() {
            PathMatcher I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public PathMatcher I() {
            PathMatcher pathMatcher = new PathMatcher(this, (a) null);
            if (this.f50283e == 1) {
                q2<StringMatcher, StringMatcher.c, k> q2Var = this.f50285g;
                if (q2Var == null) {
                    pathMatcher.rule_ = this.f50284f;
                } else {
                    pathMatcher.rule_ = q2Var.b();
                }
            }
            pathMatcher.ruleCase_ = this.f50283e;
            Q();
            return pathMatcher;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public PathMatcher getDefaultInstanceForType() {
            return PathMatcher.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.PathMatcher.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.PathMatcher.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.PathMatcher r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.PathMatcher) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.PathMatcher r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.PathMatcher) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.PathMatcher.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.PathMatcher$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public c v(l1 l1Var) {
            if (l1Var instanceof PathMatcher) {
                return g0((PathMatcher) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public c g0(PathMatcher pathMatcher) {
            if (pathMatcher == PathMatcher.getDefaultInstance()) {
                return this;
            }
            if (b.f50282a[pathMatcher.getRuleCase().ordinal()] == 1) {
                h0(pathMatcher.getPath());
            }
            z(((GeneratedMessageV3) pathMatcher).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return g.f50316a;
        }

        public c h0(StringMatcher stringMatcher) {
            q2<StringMatcher, StringMatcher.c, k> q2Var = this.f50285g;
            if (q2Var == null) {
                if (this.f50283e == 1 && this.f50284f != StringMatcher.getDefaultInstance()) {
                    this.f50284f = StringMatcher.newBuilder((StringMatcher) this.f50284f).g0(stringMatcher).I();
                } else {
                    this.f50284f = stringMatcher;
                }
                R();
            } else {
                if (this.f50283e == 1) {
                    q2Var.e(stringMatcher);
                }
                this.f50285g.g(stringMatcher);
            }
            this.f50283e = 1;
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
            this.f50283e = 0;
            b0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f50283e = 0;
            b0();
        }
    }

    /* synthetic */ PathMatcher(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static PathMatcher getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return g.f50316a;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static PathMatcher parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (PathMatcher) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static PathMatcher parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<PathMatcher> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof PathMatcher)) {
            return super.equals(obj);
        }
        PathMatcher pathMatcher = (PathMatcher) obj;
        if (getRuleCase().equals(pathMatcher.getRuleCase())) {
            return (this.ruleCase_ != 1 || getPath().equals(pathMatcher.getPath())) && this.unknownFields.equals(pathMatcher.unknownFields);
        }
        return false;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<PathMatcher> getParserForType() {
        return PARSER;
    }

    public StringMatcher getPath() {
        if (this.ruleCase_ == 1) {
            return (StringMatcher) this.rule_;
        }
        return StringMatcher.getDefaultInstance();
    }

    public k getPathOrBuilder() {
        if (this.ruleCase_ == 1) {
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
        int G = (this.ruleCase_ == 1 ? 0 + CodedOutputStream.G(1, (StringMatcher) this.rule_) : 0) + this.unknownFields.getSerializedSize();
        this.memoizedSize = G;
        return G;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasPath() {
        return this.ruleCase_ == 1;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (this.ruleCase_ == 1) {
            hashCode = (((hashCode * 37) + 1) * 53) + getPath().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return g.f50317b.d(PathMatcher.class, c.class);
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
        return new PathMatcher();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.ruleCase_ == 1) {
            codedOutputStream.L0(1, (StringMatcher) this.rule_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ PathMatcher(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(PathMatcher pathMatcher) {
        return DEFAULT_INSTANCE.toBuilder().g0(pathMatcher);
    }

    public static PathMatcher parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private PathMatcher(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.ruleCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static PathMatcher parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (PathMatcher) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static PathMatcher parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public PathMatcher getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).g0(this);
    }

    public static PathMatcher parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    public static PathMatcher parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    private PathMatcher() {
        this.ruleCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static PathMatcher parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static PathMatcher parseFrom(InputStream inputStream) throws IOException {
        return (PathMatcher) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private PathMatcher(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    int L = pVar.L();
                    if (L != 0) {
                        if (L != 10) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            StringMatcher.c builder = this.ruleCase_ == 1 ? ((StringMatcher) this.rule_).toBuilder() : null;
                            o1 B = pVar.B(StringMatcher.parser(), f0Var);
                            this.rule_ = B;
                            if (builder != null) {
                                builder.g0((StringMatcher) B);
                                this.rule_ = builder.I();
                            }
                            this.ruleCase_ = 1;
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

    public static PathMatcher parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (PathMatcher) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static PathMatcher parseFrom(p pVar) throws IOException {
        return (PathMatcher) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static PathMatcher parseFrom(p pVar, f0 f0Var) throws IOException {
        return (PathMatcher) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
