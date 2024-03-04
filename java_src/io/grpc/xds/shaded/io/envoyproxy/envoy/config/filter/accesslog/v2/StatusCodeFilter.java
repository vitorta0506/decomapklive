package io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.accesslog.v2;

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
import com.google.protobuf.p;
import com.google.protobuf.q2;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.accesslog.v2.ComparisonFilter;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class StatusCodeFilter extends GeneratedMessageV3 implements n {
    public static final int COMPARISON_FIELD_NUMBER = 1;
    private static final StatusCodeFilter DEFAULT_INSTANCE = new StatusCodeFilter();
    private static final e2<StatusCodeFilter> PARSER = new a();
    private static final long serialVersionUID = 0;
    private ComparisonFilter comparison_;
    private byte memoizedIsInitialized;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<StatusCodeFilter> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public StatusCodeFilter m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new StatusCodeFilter(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements n {

        /* renamed from: e  reason: collision with root package name */
        private ComparisonFilter f48497e;

        /* renamed from: f  reason: collision with root package name */
        private q2<ComparisonFilter, ComparisonFilter.b, e> f48498f;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return c.f48506h.d(StatusCodeFilter.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public StatusCodeFilter build() {
            StatusCodeFilter I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public StatusCodeFilter I() {
            StatusCodeFilter statusCodeFilter = new StatusCodeFilter(this, (a) null);
            q2<ComparisonFilter, ComparisonFilter.b, e> q2Var = this.f48498f;
            if (q2Var == null) {
                statusCodeFilter.comparison_ = this.f48497e;
            } else {
                statusCodeFilter.comparison_ = q2Var.b();
            }
            Q();
            return statusCodeFilter;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public StatusCodeFilter getDefaultInstanceForType() {
            return StatusCodeFilter.getDefaultInstance();
        }

        public b d0(ComparisonFilter comparisonFilter) {
            q2<ComparisonFilter, ComparisonFilter.b, e> q2Var = this.f48498f;
            if (q2Var == null) {
                ComparisonFilter comparisonFilter2 = this.f48497e;
                if (comparisonFilter2 != null) {
                    this.f48497e = ComparisonFilter.newBuilder(comparisonFilter2).g0(comparisonFilter).I();
                } else {
                    this.f48497e = comparisonFilter;
                }
                R();
            } else {
                q2Var.e(comparisonFilter);
            }
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.accesslog.v2.StatusCodeFilter.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.accesslog.v2.StatusCodeFilter.access$600()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.accesslog.v2.StatusCodeFilter r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.accesslog.v2.StatusCodeFilter) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.accesslog.v2.StatusCodeFilter r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.accesslog.v2.StatusCodeFilter) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.accesslog.v2.StatusCodeFilter.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.accesslog.v2.StatusCodeFilter$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof StatusCodeFilter) {
                return h0((StatusCodeFilter) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return c.f48505g;
        }

        public b h0(StatusCodeFilter statusCodeFilter) {
            if (statusCodeFilter == StatusCodeFilter.getDefaultInstance()) {
                return this;
            }
            if (statusCodeFilter.hasComparison()) {
                d0(statusCodeFilter.getComparison());
            }
            z(((GeneratedMessageV3) statusCodeFilter).unknownFields);
            R();
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

    /* synthetic */ StatusCodeFilter(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static StatusCodeFilter getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return c.f48505g;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static StatusCodeFilter parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (StatusCodeFilter) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static StatusCodeFilter parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<StatusCodeFilter> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof StatusCodeFilter)) {
            return super.equals(obj);
        }
        StatusCodeFilter statusCodeFilter = (StatusCodeFilter) obj;
        if (hasComparison() != statusCodeFilter.hasComparison()) {
            return false;
        }
        return (!hasComparison() || getComparison().equals(statusCodeFilter.getComparison())) && this.unknownFields.equals(statusCodeFilter.unknownFields);
    }

    public ComparisonFilter getComparison() {
        ComparisonFilter comparisonFilter = this.comparison_;
        return comparisonFilter == null ? ComparisonFilter.getDefaultInstance() : comparisonFilter;
    }

    public e getComparisonOrBuilder() {
        return getComparison();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<StatusCodeFilter> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = (this.comparison_ != null ? 0 + CodedOutputStream.G(1, getComparison()) : 0) + this.unknownFields.getSerializedSize();
        this.memoizedSize = G;
        return G;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasComparison() {
        return this.comparison_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasComparison()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getComparison().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return c.f48506h.d(StatusCodeFilter.class, b.class);
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
        return new StatusCodeFilter();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.comparison_ != null) {
            codedOutputStream.L0(1, getComparison());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ StatusCodeFilter(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(StatusCodeFilter statusCodeFilter) {
        return DEFAULT_INSTANCE.toBuilder().h0(statusCodeFilter);
    }

    public static StatusCodeFilter parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private StatusCodeFilter(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static StatusCodeFilter parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (StatusCodeFilter) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static StatusCodeFilter parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public StatusCodeFilter getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).h0(this);
    }

    public static StatusCodeFilter parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private StatusCodeFilter() {
        this.memoizedIsInitialized = (byte) -1;
    }

    public static StatusCodeFilter parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static StatusCodeFilter parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    private StatusCodeFilter(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                ComparisonFilter comparisonFilter = this.comparison_;
                                ComparisonFilter.b builder = comparisonFilter != null ? comparisonFilter.toBuilder() : null;
                                ComparisonFilter comparisonFilter2 = (ComparisonFilter) pVar.B(ComparisonFilter.parser(), f0Var);
                                this.comparison_ = comparisonFilter2;
                                if (builder != null) {
                                    builder.g0(comparisonFilter2);
                                    this.comparison_ = builder.I();
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

    public static StatusCodeFilter parseFrom(InputStream inputStream) throws IOException {
        return (StatusCodeFilter) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static StatusCodeFilter parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (StatusCodeFilter) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static StatusCodeFilter parseFrom(p pVar) throws IOException {
        return (StatusCodeFilter) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static StatusCodeFilter parseFrom(p pVar, f0 f0Var) throws IOException {
        return (StatusCodeFilter) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
