package io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.UInt32Value;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.e3;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.q2;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.BackoffStrategy;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class RetryPolicy extends GeneratedMessageV3 implements j0 {
    public static final int NUM_RETRIES_FIELD_NUMBER = 2;
    public static final int RETRY_BACK_OFF_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private UInt32Value numRetries_;
    private BackoffStrategy retryBackOff_;
    private static final RetryPolicy DEFAULT_INSTANCE = new RetryPolicy();
    private static final e2<RetryPolicy> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<RetryPolicy> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public RetryPolicy m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return new RetryPolicy(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements j0 {

        /* renamed from: e  reason: collision with root package name */
        private BackoffStrategy f46630e;

        /* renamed from: f  reason: collision with root package name */
        private q2<BackoffStrategy, BackoffStrategy.b, f> f46631f;

        /* renamed from: g  reason: collision with root package name */
        private UInt32Value f46632g;

        /* renamed from: h  reason: collision with root package name */
        private q2<UInt32Value, UInt32Value.b, e3> f46633h;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return g.B.d(RetryPolicy.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public RetryPolicy build() {
            RetryPolicy I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public RetryPolicy I() {
            RetryPolicy retryPolicy = new RetryPolicy(this, (a) null);
            q2<BackoffStrategy, BackoffStrategy.b, f> q2Var = this.f46631f;
            if (q2Var == null) {
                retryPolicy.retryBackOff_ = this.f46630e;
            } else {
                retryPolicy.retryBackOff_ = q2Var.b();
            }
            q2<UInt32Value, UInt32Value.b, e3> q2Var2 = this.f46633h;
            if (q2Var2 == null) {
                retryPolicy.numRetries_ = this.f46632g;
            } else {
                retryPolicy.numRetries_ = q2Var2.b();
            }
            Q();
            return retryPolicy;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public RetryPolicy getDefaultInstanceForType() {
            return RetryPolicy.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.RetryPolicy.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.RetryPolicy.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.RetryPolicy r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.RetryPolicy) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.RetryPolicy r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.RetryPolicy) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.RetryPolicy.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.RetryPolicy$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof RetryPolicy) {
                return g0((RetryPolicy) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b g0(RetryPolicy retryPolicy) {
            if (retryPolicy == RetryPolicy.getDefaultInstance()) {
                return this;
            }
            if (retryPolicy.hasRetryBackOff()) {
                i0(retryPolicy.getRetryBackOff());
            }
            if (retryPolicy.hasNumRetries()) {
                h0(retryPolicy.getNumRetries());
            }
            z(((GeneratedMessageV3) retryPolicy).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return g.A;
        }

        public b h0(UInt32Value uInt32Value) {
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f46633h;
            if (q2Var == null) {
                UInt32Value uInt32Value2 = this.f46632g;
                if (uInt32Value2 != null) {
                    this.f46632g = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                } else {
                    this.f46632g = uInt32Value;
                }
                R();
            } else {
                q2Var.e(uInt32Value);
            }
            return this;
        }

        public b i0(BackoffStrategy backoffStrategy) {
            q2<BackoffStrategy, BackoffStrategy.b, f> q2Var = this.f46631f;
            if (q2Var == null) {
                BackoffStrategy backoffStrategy2 = this.f46630e;
                if (backoffStrategy2 != null) {
                    this.f46630e = BackoffStrategy.newBuilder(backoffStrategy2).h0(backoffStrategy).I();
                } else {
                    this.f46630e = backoffStrategy;
                }
                R();
            } else {
                q2Var.e(backoffStrategy);
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

    /* synthetic */ RetryPolicy(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static RetryPolicy getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return g.A;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static RetryPolicy parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (RetryPolicy) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static RetryPolicy parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<RetryPolicy> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof RetryPolicy)) {
            return super.equals(obj);
        }
        RetryPolicy retryPolicy = (RetryPolicy) obj;
        if (hasRetryBackOff() != retryPolicy.hasRetryBackOff()) {
            return false;
        }
        if ((!hasRetryBackOff() || getRetryBackOff().equals(retryPolicy.getRetryBackOff())) && hasNumRetries() == retryPolicy.hasNumRetries()) {
            return (!hasNumRetries() || getNumRetries().equals(retryPolicy.getNumRetries())) && this.unknownFields.equals(retryPolicy.unknownFields);
        }
        return false;
    }

    public UInt32Value getNumRetries() {
        UInt32Value uInt32Value = this.numRetries_;
        return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
    }

    public e3 getNumRetriesOrBuilder() {
        return getNumRetries();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<RetryPolicy> getParserForType() {
        return PARSER;
    }

    public BackoffStrategy getRetryBackOff() {
        BackoffStrategy backoffStrategy = this.retryBackOff_;
        return backoffStrategy == null ? BackoffStrategy.getDefaultInstance() : backoffStrategy;
    }

    public f getRetryBackOffOrBuilder() {
        return getRetryBackOff();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.retryBackOff_ != null ? 0 + CodedOutputStream.G(1, getRetryBackOff()) : 0;
        if (this.numRetries_ != null) {
            G += CodedOutputStream.G(2, getNumRetries());
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasNumRetries() {
        return this.numRetries_ != null;
    }

    public boolean hasRetryBackOff() {
        return this.retryBackOff_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasRetryBackOff()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getRetryBackOff().hashCode();
        }
        if (hasNumRetries()) {
            hashCode = (((hashCode * 37) + 2) * 53) + getNumRetries().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return g.B.d(RetryPolicy.class, b.class);
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
        return new RetryPolicy();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.retryBackOff_ != null) {
            codedOutputStream.L0(1, getRetryBackOff());
        }
        if (this.numRetries_ != null) {
            codedOutputStream.L0(2, getNumRetries());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ RetryPolicy(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(RetryPolicy retryPolicy) {
        return DEFAULT_INSTANCE.toBuilder().g0(retryPolicy);
    }

    public static RetryPolicy parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private RetryPolicy(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static RetryPolicy parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (RetryPolicy) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static RetryPolicy parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public RetryPolicy getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static RetryPolicy parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private RetryPolicy() {
        this.memoizedIsInitialized = (byte) -1;
    }

    public static RetryPolicy parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static RetryPolicy parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    private RetryPolicy(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                            BackoffStrategy backoffStrategy = this.retryBackOff_;
                            BackoffStrategy.b builder = backoffStrategy != null ? backoffStrategy.toBuilder() : null;
                            BackoffStrategy backoffStrategy2 = (BackoffStrategy) pVar.B(BackoffStrategy.parser(), f0Var);
                            this.retryBackOff_ = backoffStrategy2;
                            if (builder != null) {
                                builder.h0(backoffStrategy2);
                                this.retryBackOff_ = builder.I();
                            }
                        } else if (L != 18) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            UInt32Value uInt32Value = this.numRetries_;
                            UInt32Value.b builder2 = uInt32Value != null ? uInt32Value.toBuilder() : null;
                            UInt32Value uInt32Value2 = (UInt32Value) pVar.B(UInt32Value.parser(), f0Var);
                            this.numRetries_ = uInt32Value2;
                            if (builder2 != null) {
                                builder2.g0(uInt32Value2);
                                this.numRetries_ = builder2.I();
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

    public static RetryPolicy parseFrom(InputStream inputStream) throws IOException {
        return (RetryPolicy) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static RetryPolicy parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (RetryPolicy) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static RetryPolicy parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (RetryPolicy) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static RetryPolicy parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
        return (RetryPolicy) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
