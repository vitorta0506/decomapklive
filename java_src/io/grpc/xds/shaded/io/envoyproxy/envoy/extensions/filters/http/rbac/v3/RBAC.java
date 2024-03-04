package io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.http.rbac.v3;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.c;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.RBAC;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class RBAC extends GeneratedMessageV3 implements io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.http.rbac.v3.a {
    private static final RBAC DEFAULT_INSTANCE = new RBAC();
    private static final e2<RBAC> PARSER = new a();
    public static final int RULES_FIELD_NUMBER = 1;
    public static final int SHADOW_RULES_FIELD_NUMBER = 2;
    public static final int SHADOW_RULES_STAT_PREFIX_FIELD_NUMBER = 3;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.RBAC rules_;
    private volatile Object shadowRulesStatPrefix_;
    private io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.RBAC shadowRules_;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends c<RBAC> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public RBAC m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new RBAC(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.http.rbac.v3.a {

        /* renamed from: e  reason: collision with root package name */
        private io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.RBAC f49728e;

        /* renamed from: f  reason: collision with root package name */
        private q2<io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.RBAC, RBAC.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.c> f49729f;

        /* renamed from: g  reason: collision with root package name */
        private io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.RBAC f49730g;

        /* renamed from: h  reason: collision with root package name */
        private q2<io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.RBAC, RBAC.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.c> f49731h;

        /* renamed from: i  reason: collision with root package name */
        private Object f49732i;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.http.rbac.v3.b.f49736b.d(RBAC.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public RBAC build() {
            RBAC I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public RBAC I() {
            RBAC rbac = new RBAC(this, (a) null);
            q2<io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.RBAC, RBAC.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.c> q2Var = this.f49729f;
            if (q2Var == null) {
                rbac.rules_ = this.f49728e;
            } else {
                rbac.rules_ = q2Var.b();
            }
            q2<io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.RBAC, RBAC.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.c> q2Var2 = this.f49731h;
            if (q2Var2 == null) {
                rbac.shadowRules_ = this.f49730g;
            } else {
                rbac.shadowRules_ = q2Var2.b();
            }
            rbac.shadowRulesStatPrefix_ = this.f49732i;
            Q();
            return rbac;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public RBAC getDefaultInstanceForType() {
            return RBAC.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.http.rbac.v3.RBAC.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.http.rbac.v3.RBAC.access$800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.http.rbac.v3.RBAC r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.http.rbac.v3.RBAC) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.http.rbac.v3.RBAC r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.http.rbac.v3.RBAC) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.http.rbac.v3.RBAC.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.http.rbac.v3.RBAC$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof RBAC) {
                return g0((RBAC) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b g0(RBAC rbac) {
            if (rbac == RBAC.getDefaultInstance()) {
                return this;
            }
            if (rbac.hasRules()) {
                h0(rbac.getRules());
            }
            if (rbac.hasShadowRules()) {
                i0(rbac.getShadowRules());
            }
            if (!rbac.getShadowRulesStatPrefix().isEmpty()) {
                this.f49732i = rbac.shadowRulesStatPrefix_;
                R();
            }
            z(((GeneratedMessageV3) rbac).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.http.rbac.v3.b.f49735a;
        }

        public b h0(io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.RBAC rbac) {
            q2<io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.RBAC, RBAC.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.c> q2Var = this.f49729f;
            if (q2Var == null) {
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.RBAC rbac2 = this.f49728e;
                if (rbac2 != null) {
                    this.f49728e = io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.RBAC.newBuilder(rbac2).i0(rbac).I();
                } else {
                    this.f49728e = rbac;
                }
                R();
            } else {
                q2Var.e(rbac);
            }
            return this;
        }

        public b i0(io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.RBAC rbac) {
            q2<io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.RBAC, RBAC.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.c> q2Var = this.f49731h;
            if (q2Var == null) {
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.RBAC rbac2 = this.f49730g;
                if (rbac2 != null) {
                    this.f49730g = io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.RBAC.newBuilder(rbac2).i0(rbac).I();
                } else {
                    this.f49730g = rbac;
                }
                R();
            } else {
                q2Var.e(rbac);
            }
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
            this.f49732i = "";
            b0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f49732i = "";
            b0();
        }
    }

    /* synthetic */ RBAC(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static RBAC getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.http.rbac.v3.b.f49735a;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static RBAC parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (RBAC) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static RBAC parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<RBAC> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof RBAC)) {
            return super.equals(obj);
        }
        RBAC rbac = (RBAC) obj;
        if (hasRules() != rbac.hasRules()) {
            return false;
        }
        if ((!hasRules() || getRules().equals(rbac.getRules())) && hasShadowRules() == rbac.hasShadowRules()) {
            return (!hasShadowRules() || getShadowRules().equals(rbac.getShadowRules())) && getShadowRulesStatPrefix().equals(rbac.getShadowRulesStatPrefix()) && this.unknownFields.equals(rbac.unknownFields);
        }
        return false;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<RBAC> getParserForType() {
        return PARSER;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.RBAC getRules() {
        io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.RBAC rbac = this.rules_;
        return rbac == null ? io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.RBAC.getDefaultInstance() : rbac;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.c getRulesOrBuilder() {
        return getRules();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.rules_ != null ? 0 + CodedOutputStream.G(1, getRules()) : 0;
        if (this.shadowRules_ != null) {
            G += CodedOutputStream.G(2, getShadowRules());
        }
        if (!GeneratedMessageV3.isStringEmpty(this.shadowRulesStatPrefix_)) {
            G += GeneratedMessageV3.computeStringSize(3, this.shadowRulesStatPrefix_);
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.RBAC getShadowRules() {
        io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.RBAC rbac = this.shadowRules_;
        return rbac == null ? io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.RBAC.getDefaultInstance() : rbac;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.c getShadowRulesOrBuilder() {
        return getShadowRules();
    }

    public String getShadowRulesStatPrefix() {
        Object obj = this.shadowRulesStatPrefix_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.shadowRulesStatPrefix_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getShadowRulesStatPrefixBytes() {
        Object obj = this.shadowRulesStatPrefix_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.shadowRulesStatPrefix_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasRules() {
        return this.rules_ != null;
    }

    public boolean hasShadowRules() {
        return this.shadowRules_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasRules()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getRules().hashCode();
        }
        if (hasShadowRules()) {
            hashCode = (((hashCode * 37) + 2) * 53) + getShadowRules().hashCode();
        }
        int hashCode2 = (((((hashCode * 37) + 3) * 53) + getShadowRulesStatPrefix().hashCode()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.http.rbac.v3.b.f49736b.d(RBAC.class, b.class);
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
        return new RBAC();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.rules_ != null) {
            codedOutputStream.L0(1, getRules());
        }
        if (this.shadowRules_ != null) {
            codedOutputStream.L0(2, getShadowRules());
        }
        if (!GeneratedMessageV3.isStringEmpty(this.shadowRulesStatPrefix_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 3, this.shadowRulesStatPrefix_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ RBAC(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(RBAC rbac) {
        return DEFAULT_INSTANCE.toBuilder().g0(rbac);
    }

    public static RBAC parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private RBAC(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static RBAC parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (RBAC) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static RBAC parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public RBAC getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static RBAC parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private RBAC() {
        this.memoizedIsInitialized = (byte) -1;
        this.shadowRulesStatPrefix_ = "";
    }

    public static RBAC parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static RBAC parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static RBAC parseFrom(InputStream inputStream) throws IOException {
        return (RBAC) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private RBAC(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
        this();
        RBAC.b builder;
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
                                io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.RBAC rbac = this.rules_;
                                builder = rbac != null ? rbac.toBuilder() : null;
                                io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.RBAC rbac2 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.RBAC) pVar.B(io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.RBAC.parser(), f0Var);
                                this.rules_ = rbac2;
                                if (builder != null) {
                                    builder.i0(rbac2);
                                    this.rules_ = builder.I();
                                }
                            } else if (L == 18) {
                                io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.RBAC rbac3 = this.shadowRules_;
                                builder = rbac3 != null ? rbac3.toBuilder() : null;
                                io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.RBAC rbac4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.RBAC) pVar.B(io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.RBAC.parser(), f0Var);
                                this.shadowRules_ = rbac4;
                                if (builder != null) {
                                    builder.i0(rbac4);
                                    this.shadowRules_ = builder.I();
                                }
                            } else if (L != 26) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                this.shadowRulesStatPrefix_ = pVar.K();
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

    public static RBAC parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (RBAC) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static RBAC parseFrom(p pVar) throws IOException {
        return (RBAC) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static RBAC parseFrom(p pVar, f0 f0Var) throws IOException {
        return (RBAC) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
