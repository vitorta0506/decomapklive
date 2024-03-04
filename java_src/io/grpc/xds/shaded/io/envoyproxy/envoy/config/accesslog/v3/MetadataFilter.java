package io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3;

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
import com.google.protobuf.q2;
import io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.MetadataMatcher;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class MetadataFilter extends GeneratedMessageV3 implements j {
    public static final int MATCHER_FIELD_NUMBER = 1;
    public static final int MATCH_IF_KEY_NOT_FOUND_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private BoolValue matchIfKeyNotFound_;
    private MetadataMatcher matcher_;
    private byte memoizedIsInitialized;
    private static final MetadataFilter DEFAULT_INSTANCE = new MetadataFilter();
    private static final e2<MetadataFilter> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<MetadataFilter> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public MetadataFilter m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new MetadataFilter(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements j {

        /* renamed from: e  reason: collision with root package name */
        private MetadataMatcher f47375e;

        /* renamed from: f  reason: collision with root package name */
        private q2<MetadataMatcher, MetadataMatcher.c, io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.d> f47376f;

        /* renamed from: g  reason: collision with root package name */
        private BoolValue f47377g;

        /* renamed from: h  reason: collision with root package name */
        private q2<BoolValue, BoolValue.b, com.google.protobuf.l> f47378h;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return c.B.d(MetadataFilter.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public MetadataFilter build() {
            MetadataFilter I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public MetadataFilter I() {
            MetadataFilter metadataFilter = new MetadataFilter(this, (a) null);
            q2<MetadataMatcher, MetadataMatcher.c, io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.d> q2Var = this.f47376f;
            if (q2Var == null) {
                metadataFilter.matcher_ = this.f47375e;
            } else {
                metadataFilter.matcher_ = q2Var.b();
            }
            q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var2 = this.f47378h;
            if (q2Var2 == null) {
                metadataFilter.matchIfKeyNotFound_ = this.f47377g;
            } else {
                metadataFilter.matchIfKeyNotFound_ = q2Var2.b();
            }
            Q();
            return metadataFilter;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public MetadataFilter getDefaultInstanceForType() {
            return MetadataFilter.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.MetadataFilter.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.MetadataFilter.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.MetadataFilter r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.MetadataFilter) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.MetadataFilter r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.MetadataFilter) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.MetadataFilter.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.MetadataFilter$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof MetadataFilter) {
                return g0((MetadataFilter) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b g0(MetadataFilter metadataFilter) {
            if (metadataFilter == MetadataFilter.getDefaultInstance()) {
                return this;
            }
            if (metadataFilter.hasMatcher()) {
                i0(metadataFilter.getMatcher());
            }
            if (metadataFilter.hasMatchIfKeyNotFound()) {
                h0(metadataFilter.getMatchIfKeyNotFound());
            }
            z(((GeneratedMessageV3) metadataFilter).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return c.A;
        }

        public b h0(BoolValue boolValue) {
            q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var = this.f47378h;
            if (q2Var == null) {
                BoolValue boolValue2 = this.f47377g;
                if (boolValue2 != null) {
                    this.f47377g = BoolValue.newBuilder(boolValue2).d0(boolValue).I();
                } else {
                    this.f47377g = boolValue;
                }
                R();
            } else {
                q2Var.e(boolValue);
            }
            return this;
        }

        public b i0(MetadataMatcher metadataMatcher) {
            q2<MetadataMatcher, MetadataMatcher.c, io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.d> q2Var = this.f47376f;
            if (q2Var == null) {
                MetadataMatcher metadataMatcher2 = this.f47375e;
                if (metadataMatcher2 != null) {
                    this.f47375e = MetadataMatcher.newBuilder(metadataMatcher2).i0(metadataMatcher).I();
                } else {
                    this.f47375e = metadataMatcher;
                }
                R();
            } else {
                q2Var.e(metadataMatcher);
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
            b0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            b0();
        }
    }

    /* synthetic */ MetadataFilter(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static MetadataFilter getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return c.A;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static MetadataFilter parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (MetadataFilter) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static MetadataFilter parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<MetadataFilter> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof MetadataFilter)) {
            return super.equals(obj);
        }
        MetadataFilter metadataFilter = (MetadataFilter) obj;
        if (hasMatcher() != metadataFilter.hasMatcher()) {
            return false;
        }
        if ((!hasMatcher() || getMatcher().equals(metadataFilter.getMatcher())) && hasMatchIfKeyNotFound() == metadataFilter.hasMatchIfKeyNotFound()) {
            return (!hasMatchIfKeyNotFound() || getMatchIfKeyNotFound().equals(metadataFilter.getMatchIfKeyNotFound())) && this.unknownFields.equals(metadataFilter.unknownFields);
        }
        return false;
    }

    public BoolValue getMatchIfKeyNotFound() {
        BoolValue boolValue = this.matchIfKeyNotFound_;
        return boolValue == null ? BoolValue.getDefaultInstance() : boolValue;
    }

    public com.google.protobuf.l getMatchIfKeyNotFoundOrBuilder() {
        return getMatchIfKeyNotFound();
    }

    public MetadataMatcher getMatcher() {
        MetadataMatcher metadataMatcher = this.matcher_;
        return metadataMatcher == null ? MetadataMatcher.getDefaultInstance() : metadataMatcher;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.d getMatcherOrBuilder() {
        return getMatcher();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<MetadataFilter> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.matcher_ != null ? 0 + CodedOutputStream.G(1, getMatcher()) : 0;
        if (this.matchIfKeyNotFound_ != null) {
            G += CodedOutputStream.G(2, getMatchIfKeyNotFound());
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasMatchIfKeyNotFound() {
        return this.matchIfKeyNotFound_ != null;
    }

    public boolean hasMatcher() {
        return this.matcher_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasMatcher()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getMatcher().hashCode();
        }
        if (hasMatchIfKeyNotFound()) {
            hashCode = (((hashCode * 37) + 2) * 53) + getMatchIfKeyNotFound().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return c.B.d(MetadataFilter.class, b.class);
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
        return new MetadataFilter();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.matcher_ != null) {
            codedOutputStream.L0(1, getMatcher());
        }
        if (this.matchIfKeyNotFound_ != null) {
            codedOutputStream.L0(2, getMatchIfKeyNotFound());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ MetadataFilter(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(MetadataFilter metadataFilter) {
        return DEFAULT_INSTANCE.toBuilder().g0(metadataFilter);
    }

    public static MetadataFilter parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private MetadataFilter(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static MetadataFilter parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (MetadataFilter) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static MetadataFilter parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public MetadataFilter getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static MetadataFilter parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private MetadataFilter() {
        this.memoizedIsInitialized = (byte) -1;
    }

    public static MetadataFilter parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static MetadataFilter parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    private MetadataFilter(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            MetadataMatcher metadataMatcher = this.matcher_;
                            MetadataMatcher.c builder = metadataMatcher != null ? metadataMatcher.toBuilder() : null;
                            MetadataMatcher metadataMatcher2 = (MetadataMatcher) pVar.B(MetadataMatcher.parser(), f0Var);
                            this.matcher_ = metadataMatcher2;
                            if (builder != null) {
                                builder.i0(metadataMatcher2);
                                this.matcher_ = builder.I();
                            }
                        } else if (L != 18) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            BoolValue boolValue = this.matchIfKeyNotFound_;
                            BoolValue.b builder2 = boolValue != null ? boolValue.toBuilder() : null;
                            BoolValue boolValue2 = (BoolValue) pVar.B(BoolValue.parser(), f0Var);
                            this.matchIfKeyNotFound_ = boolValue2;
                            if (builder2 != null) {
                                builder2.d0(boolValue2);
                                this.matchIfKeyNotFound_ = builder2.I();
                            }
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

    public static MetadataFilter parseFrom(InputStream inputStream) throws IOException {
        return (MetadataFilter) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static MetadataFilter parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (MetadataFilter) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static MetadataFilter parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (MetadataFilter) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static MetadataFilter parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
        return (MetadataFilter) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
