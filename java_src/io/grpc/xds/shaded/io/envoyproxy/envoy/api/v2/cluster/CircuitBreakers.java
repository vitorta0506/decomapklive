package io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.cluster;

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
import com.google.protobuf.l2;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import com.google.protobuf.u0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.RoutingPriority;
import io.grpc.xds.shaded.io.envoyproxy.envoy.type.Percent;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class CircuitBreakers extends GeneratedMessageV3 implements io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.cluster.b {
    private static final CircuitBreakers DEFAULT_INSTANCE = new CircuitBreakers();
    private static final e2<CircuitBreakers> PARSER = new a();
    public static final int THRESHOLDS_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private List<Thresholds> thresholds_;

    /* loaded from: classes5.dex */
    public static final class Thresholds extends GeneratedMessageV3 implements c {
        public static final int MAX_CONNECTIONS_FIELD_NUMBER = 2;
        public static final int MAX_CONNECTION_POOLS_FIELD_NUMBER = 7;
        public static final int MAX_PENDING_REQUESTS_FIELD_NUMBER = 3;
        public static final int MAX_REQUESTS_FIELD_NUMBER = 4;
        public static final int MAX_RETRIES_FIELD_NUMBER = 5;
        public static final int PRIORITY_FIELD_NUMBER = 1;
        public static final int RETRY_BUDGET_FIELD_NUMBER = 8;
        public static final int TRACK_REMAINING_FIELD_NUMBER = 6;
        private static final long serialVersionUID = 0;
        private UInt32Value maxConnectionPools_;
        private UInt32Value maxConnections_;
        private UInt32Value maxPendingRequests_;
        private UInt32Value maxRequests_;
        private UInt32Value maxRetries_;
        private byte memoizedIsInitialized;
        private int priority_;
        private RetryBudget retryBudget_;
        private boolean trackRemaining_;
        private static final Thresholds DEFAULT_INSTANCE = new Thresholds();
        private static final e2<Thresholds> PARSER = new a();

        /* loaded from: classes5.dex */
        public static final class RetryBudget extends GeneratedMessageV3 implements c {
            public static final int BUDGET_PERCENT_FIELD_NUMBER = 1;
            public static final int MIN_RETRY_CONCURRENCY_FIELD_NUMBER = 2;
            private static final long serialVersionUID = 0;
            private Percent budgetPercent_;
            private byte memoizedIsInitialized;
            private UInt32Value minRetryConcurrency_;
            private static final RetryBudget DEFAULT_INSTANCE = new RetryBudget();
            private static final e2<RetryBudget> PARSER = new a();

            /* loaded from: classes5.dex */
            class a extends com.google.protobuf.c<RetryBudget> {
                a() {
                }

                @Override // com.google.protobuf.e2
                /* renamed from: G */
                public RetryBudget m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                    return new RetryBudget(pVar, f0Var, null);
                }
            }

            /* loaded from: classes5.dex */
            public static final class b extends GeneratedMessageV3.b<b> implements c {

                /* renamed from: e  reason: collision with root package name */
                private Percent f46291e;

                /* renamed from: f  reason: collision with root package name */
                private q2<Percent, Percent.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.f> f46292f;

                /* renamed from: g  reason: collision with root package name */
                private UInt32Value f46293g;

                /* renamed from: h  reason: collision with root package name */
                private q2<UInt32Value, UInt32Value.b, e3> f46294h;

                /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                    this(cVar);
                }

                private void b0() {
                    boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e K() {
                    return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.cluster.a.f46342f.d(RetryBudget.class, b.class);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
                /* renamed from: W */
                public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (b) super.L(fieldDescriptor, obj);
                }

                @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                /* renamed from: X */
                public RetryBudget build() {
                    RetryBudget I = I();
                    if (I.isInitialized()) {
                        return I;
                    }
                    throw a.AbstractC0142a.A(I);
                }

                @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                /* renamed from: Y */
                public RetryBudget I() {
                    RetryBudget retryBudget = new RetryBudget(this, (a) null);
                    q2<Percent, Percent.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.f> q2Var = this.f46292f;
                    if (q2Var == null) {
                        retryBudget.budgetPercent_ = this.f46291e;
                    } else {
                        retryBudget.budgetPercent_ = q2Var.b();
                    }
                    q2<UInt32Value, UInt32Value.b, e3> q2Var2 = this.f46294h;
                    if (q2Var2 == null) {
                        retryBudget.minRetryConcurrency_ = this.f46293g;
                    } else {
                        retryBudget.minRetryConcurrency_ = q2Var2.b();
                    }
                    Q();
                    return retryBudget;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
                /* renamed from: Z */
                public b n() {
                    return (b) super.n();
                }

                @Override // com.google.protobuf.p1, com.google.protobuf.r1
                /* renamed from: a0 */
                public RetryBudget getDefaultInstanceForType() {
                    return RetryBudget.getDefaultInstance();
                }

                public b d0(Percent percent) {
                    q2<Percent, Percent.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.f> q2Var = this.f46292f;
                    if (q2Var == null) {
                        Percent percent2 = this.f46291e;
                        if (percent2 != null) {
                            this.f46291e = Percent.newBuilder(percent2).g0(percent).I();
                        } else {
                            this.f46291e = percent;
                        }
                        R();
                    } else {
                        q2Var.e(percent);
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
                public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.cluster.CircuitBreakers.Thresholds.RetryBudget.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.cluster.CircuitBreakers.Thresholds.RetryBudget.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.cluster.CircuitBreakers$Thresholds$RetryBudget r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.cluster.CircuitBreakers.Thresholds.RetryBudget) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                        io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.cluster.CircuitBreakers$Thresholds$RetryBudget r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.cluster.CircuitBreakers.Thresholds.RetryBudget) r4     // Catch: java.lang.Throwable -> L11
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
                    throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.cluster.CircuitBreakers.Thresholds.RetryBudget.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.cluster.CircuitBreakers$Thresholds$RetryBudget$b");
                }

                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: g0 */
                public b v(l1 l1Var) {
                    if (l1Var instanceof RetryBudget) {
                        return h0((RetryBudget) l1Var);
                    }
                    super.P0(l1Var);
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
                public Descriptors.b getDescriptorForType() {
                    return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.cluster.a.f46341e;
                }

                public b h0(RetryBudget retryBudget) {
                    if (retryBudget == RetryBudget.getDefaultInstance()) {
                        return this;
                    }
                    if (retryBudget.hasBudgetPercent()) {
                        d0(retryBudget.getBudgetPercent());
                    }
                    if (retryBudget.hasMinRetryConcurrency()) {
                        i0(retryBudget.getMinRetryConcurrency());
                    }
                    z(((GeneratedMessageV3) retryBudget).unknownFields);
                    R();
                    return this;
                }

                public b i0(UInt32Value uInt32Value) {
                    q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f46294h;
                    if (q2Var == null) {
                        UInt32Value uInt32Value2 = this.f46293g;
                        if (uInt32Value2 != null) {
                            this.f46293g = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                        } else {
                            this.f46293g = uInt32Value;
                        }
                        R();
                    } else {
                        q2Var.e(uInt32Value);
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

            /* synthetic */ RetryBudget(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
                this(pVar, f0Var);
            }

            public static RetryBudget getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.b getDescriptor() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.cluster.a.f46341e;
            }

            public static b newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static RetryBudget parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (RetryBudget) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static RetryBudget parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.l(byteBuffer);
            }

            public static e2<RetryBudget> parser() {
                return PARSER;
            }

            @Override // com.google.protobuf.a
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof RetryBudget)) {
                    return super.equals(obj);
                }
                RetryBudget retryBudget = (RetryBudget) obj;
                if (hasBudgetPercent() != retryBudget.hasBudgetPercent()) {
                    return false;
                }
                if ((!hasBudgetPercent() || getBudgetPercent().equals(retryBudget.getBudgetPercent())) && hasMinRetryConcurrency() == retryBudget.hasMinRetryConcurrency()) {
                    return (!hasMinRetryConcurrency() || getMinRetryConcurrency().equals(retryBudget.getMinRetryConcurrency())) && this.unknownFields.equals(retryBudget.unknownFields);
                }
                return false;
            }

            public Percent getBudgetPercent() {
                Percent percent = this.budgetPercent_;
                return percent == null ? Percent.getDefaultInstance() : percent;
            }

            public io.grpc.xds.shaded.io.envoyproxy.envoy.type.f getBudgetPercentOrBuilder() {
                return getBudgetPercent();
            }

            public UInt32Value getMinRetryConcurrency() {
                UInt32Value uInt32Value = this.minRetryConcurrency_;
                return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
            }

            public e3 getMinRetryConcurrencyOrBuilder() {
                return getMinRetryConcurrency();
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public e2<RetryBudget> getParserForType() {
                return PARSER;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
            public int getSerializedSize() {
                int i9 = this.memoizedSize;
                if (i9 != -1) {
                    return i9;
                }
                int G = this.budgetPercent_ != null ? 0 + CodedOutputStream.G(1, getBudgetPercent()) : 0;
                if (this.minRetryConcurrency_ != null) {
                    G += CodedOutputStream.G(2, getMinRetryConcurrency());
                }
                int serializedSize = G + this.unknownFields.getSerializedSize();
                this.memoizedSize = serializedSize;
                return serializedSize;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
            public final h3 getUnknownFields() {
                return this.unknownFields;
            }

            public boolean hasBudgetPercent() {
                return this.budgetPercent_ != null;
            }

            public boolean hasMinRetryConcurrency() {
                return this.minRetryConcurrency_ != null;
            }

            @Override // com.google.protobuf.a
            public int hashCode() {
                int i9 = this.memoizedHashCode;
                if (i9 != 0) {
                    return i9;
                }
                int hashCode = 779 + getDescriptor().hashCode();
                if (hasBudgetPercent()) {
                    hashCode = (((hashCode * 37) + 1) * 53) + getBudgetPercent().hashCode();
                }
                if (hasMinRetryConcurrency()) {
                    hashCode = (((hashCode * 37) + 2) * 53) + getMinRetryConcurrency().hashCode();
                }
                int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode2;
                return hashCode2;
            }

            @Override // com.google.protobuf.GeneratedMessageV3
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.cluster.a.f46342f.d(RetryBudget.class, b.class);
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
                return new RetryBudget();
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
            public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                if (this.budgetPercent_ != null) {
                    codedOutputStream.L0(1, getBudgetPercent());
                }
                if (this.minRetryConcurrency_ != null) {
                    codedOutputStream.L0(2, getMinRetryConcurrency());
                }
                this.unknownFields.writeTo(codedOutputStream);
            }

            /* synthetic */ RetryBudget(GeneratedMessageV3.b bVar, a aVar) {
                this(bVar);
            }

            public static b newBuilder(RetryBudget retryBudget) {
                return DEFAULT_INSTANCE.toBuilder().h0(retryBudget);
            }

            public static RetryBudget parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.f(byteBuffer, f0Var);
            }

            private RetryBudget(GeneratedMessageV3.b<?> bVar) {
                super(bVar);
                this.memoizedIsInitialized = (byte) -1;
            }

            public static RetryBudget parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
                return (RetryBudget) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
            }

            public static RetryBudget parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.c(byteString);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
            public RetryBudget getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public b toBuilder() {
                return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).h0(this);
            }

            public static RetryBudget parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.b(byteString, f0Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public b newBuilderForType() {
                return newBuilder();
            }

            private RetryBudget() {
                this.memoizedIsInitialized = (byte) -1;
            }

            public static RetryBudget parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.a(bArr);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.protobuf.GeneratedMessageV3
            public b newBuilderForType(GeneratedMessageV3.c cVar) {
                return new b(cVar, null);
            }

            public static RetryBudget parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.g(bArr, f0Var);
            }

            private RetryBudget(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                    Percent percent = this.budgetPercent_;
                                    Percent.b builder = percent != null ? percent.toBuilder() : null;
                                    Percent percent2 = (Percent) pVar.B(Percent.parser(), f0Var);
                                    this.budgetPercent_ = percent2;
                                    if (builder != null) {
                                        builder.g0(percent2);
                                        this.budgetPercent_ = builder.I();
                                    }
                                } else if (L != 18) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    UInt32Value uInt32Value = this.minRetryConcurrency_;
                                    UInt32Value.b builder2 = uInt32Value != null ? uInt32Value.toBuilder() : null;
                                    UInt32Value uInt32Value2 = (UInt32Value) pVar.B(UInt32Value.parser(), f0Var);
                                    this.minRetryConcurrency_ = uInt32Value2;
                                    if (builder2 != null) {
                                        builder2.g0(uInt32Value2);
                                        this.minRetryConcurrency_ = builder2.I();
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

            public static RetryBudget parseFrom(InputStream inputStream) throws IOException {
                return (RetryBudget) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            public static RetryBudget parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
                return (RetryBudget) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
            }

            public static RetryBudget parseFrom(p pVar) throws IOException {
                return (RetryBudget) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
            }

            public static RetryBudget parseFrom(p pVar, f0 f0Var) throws IOException {
                return (RetryBudget) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
            }
        }

        /* loaded from: classes5.dex */
        class a extends com.google.protobuf.c<Thresholds> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public Thresholds m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new Thresholds(pVar, f0Var, null);
            }
        }

        /* loaded from: classes5.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements c {

            /* renamed from: e  reason: collision with root package name */
            private int f46295e;

            /* renamed from: f  reason: collision with root package name */
            private UInt32Value f46296f;

            /* renamed from: g  reason: collision with root package name */
            private q2<UInt32Value, UInt32Value.b, e3> f46297g;

            /* renamed from: h  reason: collision with root package name */
            private UInt32Value f46298h;

            /* renamed from: i  reason: collision with root package name */
            private q2<UInt32Value, UInt32Value.b, e3> f46299i;

            /* renamed from: j  reason: collision with root package name */
            private UInt32Value f46300j;

            /* renamed from: k  reason: collision with root package name */
            private q2<UInt32Value, UInt32Value.b, e3> f46301k;

            /* renamed from: l  reason: collision with root package name */
            private UInt32Value f46302l;

            /* renamed from: m  reason: collision with root package name */
            private q2<UInt32Value, UInt32Value.b, e3> f46303m;

            /* renamed from: n  reason: collision with root package name */
            private RetryBudget f46304n;

            /* renamed from: o  reason: collision with root package name */
            private q2<RetryBudget, RetryBudget.b, c> f46305o;

            /* renamed from: p  reason: collision with root package name */
            private boolean f46306p;

            /* renamed from: q  reason: collision with root package name */
            private UInt32Value f46307q;

            /* renamed from: r  reason: collision with root package name */
            private q2<UInt32Value, UInt32Value.b, e3> f46308r;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.cluster.a.f46340d.d(Thresholds.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public Thresholds build() {
                Thresholds I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public Thresholds I() {
                Thresholds thresholds = new Thresholds(this, (a) null);
                thresholds.priority_ = this.f46295e;
                q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f46297g;
                if (q2Var == null) {
                    thresholds.maxConnections_ = this.f46296f;
                } else {
                    thresholds.maxConnections_ = q2Var.b();
                }
                q2<UInt32Value, UInt32Value.b, e3> q2Var2 = this.f46299i;
                if (q2Var2 == null) {
                    thresholds.maxPendingRequests_ = this.f46298h;
                } else {
                    thresholds.maxPendingRequests_ = q2Var2.b();
                }
                q2<UInt32Value, UInt32Value.b, e3> q2Var3 = this.f46301k;
                if (q2Var3 == null) {
                    thresholds.maxRequests_ = this.f46300j;
                } else {
                    thresholds.maxRequests_ = q2Var3.b();
                }
                q2<UInt32Value, UInt32Value.b, e3> q2Var4 = this.f46303m;
                if (q2Var4 == null) {
                    thresholds.maxRetries_ = this.f46302l;
                } else {
                    thresholds.maxRetries_ = q2Var4.b();
                }
                q2<RetryBudget, RetryBudget.b, c> q2Var5 = this.f46305o;
                if (q2Var5 == null) {
                    thresholds.retryBudget_ = this.f46304n;
                } else {
                    thresholds.retryBudget_ = q2Var5.b();
                }
                thresholds.trackRemaining_ = this.f46306p;
                q2<UInt32Value, UInt32Value.b, e3> q2Var6 = this.f46308r;
                if (q2Var6 == null) {
                    thresholds.maxConnectionPools_ = this.f46307q;
                } else {
                    thresholds.maxConnectionPools_ = q2Var6.b();
                }
                Q();
                return thresholds;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public Thresholds getDefaultInstanceForType() {
                return Thresholds.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: d0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.cluster.CircuitBreakers.Thresholds.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.cluster.CircuitBreakers.Thresholds.access$2200()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.cluster.CircuitBreakers$Thresholds r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.cluster.CircuitBreakers.Thresholds) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.cluster.CircuitBreakers$Thresholds r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.cluster.CircuitBreakers.Thresholds) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.cluster.CircuitBreakers.Thresholds.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.cluster.CircuitBreakers$Thresholds$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof Thresholds) {
                    return g0((Thresholds) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b g0(Thresholds thresholds) {
                if (thresholds == Thresholds.getDefaultInstance()) {
                    return this;
                }
                if (thresholds.priority_ != 0) {
                    q0(thresholds.getPriorityValue());
                }
                if (thresholds.hasMaxConnections()) {
                    i0(thresholds.getMaxConnections());
                }
                if (thresholds.hasMaxPendingRequests()) {
                    j0(thresholds.getMaxPendingRequests());
                }
                if (thresholds.hasMaxRequests()) {
                    k0(thresholds.getMaxRequests());
                }
                if (thresholds.hasMaxRetries()) {
                    l0(thresholds.getMaxRetries());
                }
                if (thresholds.hasRetryBudget()) {
                    m0(thresholds.getRetryBudget());
                }
                if (thresholds.getTrackRemaining()) {
                    r0(thresholds.getTrackRemaining());
                }
                if (thresholds.hasMaxConnectionPools()) {
                    h0(thresholds.getMaxConnectionPools());
                }
                z(((GeneratedMessageV3) thresholds).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.cluster.a.f46339c;
            }

            public b h0(UInt32Value uInt32Value) {
                q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f46308r;
                if (q2Var == null) {
                    UInt32Value uInt32Value2 = this.f46307q;
                    if (uInt32Value2 != null) {
                        this.f46307q = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                    } else {
                        this.f46307q = uInt32Value;
                    }
                    R();
                } else {
                    q2Var.e(uInt32Value);
                }
                return this;
            }

            public b i0(UInt32Value uInt32Value) {
                q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f46297g;
                if (q2Var == null) {
                    UInt32Value uInt32Value2 = this.f46296f;
                    if (uInt32Value2 != null) {
                        this.f46296f = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                    } else {
                        this.f46296f = uInt32Value;
                    }
                    R();
                } else {
                    q2Var.e(uInt32Value);
                }
                return this;
            }

            public b j0(UInt32Value uInt32Value) {
                q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f46299i;
                if (q2Var == null) {
                    UInt32Value uInt32Value2 = this.f46298h;
                    if (uInt32Value2 != null) {
                        this.f46298h = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                    } else {
                        this.f46298h = uInt32Value;
                    }
                    R();
                } else {
                    q2Var.e(uInt32Value);
                }
                return this;
            }

            public b k0(UInt32Value uInt32Value) {
                q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f46301k;
                if (q2Var == null) {
                    UInt32Value uInt32Value2 = this.f46300j;
                    if (uInt32Value2 != null) {
                        this.f46300j = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                    } else {
                        this.f46300j = uInt32Value;
                    }
                    R();
                } else {
                    q2Var.e(uInt32Value);
                }
                return this;
            }

            public b l0(UInt32Value uInt32Value) {
                q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f46303m;
                if (q2Var == null) {
                    UInt32Value uInt32Value2 = this.f46302l;
                    if (uInt32Value2 != null) {
                        this.f46302l = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                    } else {
                        this.f46302l = uInt32Value;
                    }
                    R();
                } else {
                    q2Var.e(uInt32Value);
                }
                return this;
            }

            public b m0(RetryBudget retryBudget) {
                q2<RetryBudget, RetryBudget.b, c> q2Var = this.f46305o;
                if (q2Var == null) {
                    RetryBudget retryBudget2 = this.f46304n;
                    if (retryBudget2 != null) {
                        this.f46304n = RetryBudget.newBuilder(retryBudget2).h0(retryBudget).I();
                    } else {
                        this.f46304n = retryBudget;
                    }
                    R();
                } else {
                    q2Var.e(retryBudget);
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: n0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: o0 */
            public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.c(fieldDescriptor, obj);
            }

            public b q0(int i9) {
                this.f46295e = i9;
                R();
                return this;
            }

            public b r0(boolean z10) {
                this.f46306p = z10;
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: s0 */
            public final b f1(h3 h3Var) {
                return (b) super.f1(h3Var);
            }

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                this.f46295e = 0;
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f46295e = 0;
                b0();
            }
        }

        /* loaded from: classes5.dex */
        public interface c extends r1 {
        }

        /* synthetic */ Thresholds(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static Thresholds getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.cluster.a.f46339c;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Thresholds parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Thresholds) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Thresholds parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<Thresholds> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Thresholds)) {
                return super.equals(obj);
            }
            Thresholds thresholds = (Thresholds) obj;
            if (this.priority_ == thresholds.priority_ && hasMaxConnections() == thresholds.hasMaxConnections()) {
                if ((!hasMaxConnections() || getMaxConnections().equals(thresholds.getMaxConnections())) && hasMaxPendingRequests() == thresholds.hasMaxPendingRequests()) {
                    if ((!hasMaxPendingRequests() || getMaxPendingRequests().equals(thresholds.getMaxPendingRequests())) && hasMaxRequests() == thresholds.hasMaxRequests()) {
                        if ((!hasMaxRequests() || getMaxRequests().equals(thresholds.getMaxRequests())) && hasMaxRetries() == thresholds.hasMaxRetries()) {
                            if ((!hasMaxRetries() || getMaxRetries().equals(thresholds.getMaxRetries())) && hasRetryBudget() == thresholds.hasRetryBudget()) {
                                if ((!hasRetryBudget() || getRetryBudget().equals(thresholds.getRetryBudget())) && getTrackRemaining() == thresholds.getTrackRemaining() && hasMaxConnectionPools() == thresholds.hasMaxConnectionPools()) {
                                    return (!hasMaxConnectionPools() || getMaxConnectionPools().equals(thresholds.getMaxConnectionPools())) && this.unknownFields.equals(thresholds.unknownFields);
                                }
                                return false;
                            }
                            return false;
                        }
                        return false;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }

        public UInt32Value getMaxConnectionPools() {
            UInt32Value uInt32Value = this.maxConnectionPools_;
            return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
        }

        public e3 getMaxConnectionPoolsOrBuilder() {
            return getMaxConnectionPools();
        }

        public UInt32Value getMaxConnections() {
            UInt32Value uInt32Value = this.maxConnections_;
            return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
        }

        public e3 getMaxConnectionsOrBuilder() {
            return getMaxConnections();
        }

        public UInt32Value getMaxPendingRequests() {
            UInt32Value uInt32Value = this.maxPendingRequests_;
            return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
        }

        public e3 getMaxPendingRequestsOrBuilder() {
            return getMaxPendingRequests();
        }

        public UInt32Value getMaxRequests() {
            UInt32Value uInt32Value = this.maxRequests_;
            return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
        }

        public e3 getMaxRequestsOrBuilder() {
            return getMaxRequests();
        }

        public UInt32Value getMaxRetries() {
            UInt32Value uInt32Value = this.maxRetries_;
            return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
        }

        public e3 getMaxRetriesOrBuilder() {
            return getMaxRetries();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<Thresholds> getParserForType() {
            return PARSER;
        }

        public RoutingPriority getPriority() {
            RoutingPriority valueOf = RoutingPriority.valueOf(this.priority_);
            return valueOf == null ? RoutingPriority.UNRECOGNIZED : valueOf;
        }

        public int getPriorityValue() {
            return this.priority_;
        }

        public RetryBudget getRetryBudget() {
            RetryBudget retryBudget = this.retryBudget_;
            return retryBudget == null ? RetryBudget.getDefaultInstance() : retryBudget;
        }

        public c getRetryBudgetOrBuilder() {
            return getRetryBudget();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int l10 = this.priority_ != RoutingPriority.DEFAULT.getNumber() ? 0 + CodedOutputStream.l(1, this.priority_) : 0;
            if (this.maxConnections_ != null) {
                l10 += CodedOutputStream.G(2, getMaxConnections());
            }
            if (this.maxPendingRequests_ != null) {
                l10 += CodedOutputStream.G(3, getMaxPendingRequests());
            }
            if (this.maxRequests_ != null) {
                l10 += CodedOutputStream.G(4, getMaxRequests());
            }
            if (this.maxRetries_ != null) {
                l10 += CodedOutputStream.G(5, getMaxRetries());
            }
            boolean z10 = this.trackRemaining_;
            if (z10) {
                l10 += CodedOutputStream.e(6, z10);
            }
            if (this.maxConnectionPools_ != null) {
                l10 += CodedOutputStream.G(7, getMaxConnectionPools());
            }
            if (this.retryBudget_ != null) {
                l10 += CodedOutputStream.G(8, getRetryBudget());
            }
            int serializedSize = l10 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        public boolean getTrackRemaining() {
            return this.trackRemaining_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasMaxConnectionPools() {
            return this.maxConnectionPools_ != null;
        }

        public boolean hasMaxConnections() {
            return this.maxConnections_ != null;
        }

        public boolean hasMaxPendingRequests() {
            return this.maxPendingRequests_ != null;
        }

        public boolean hasMaxRequests() {
            return this.maxRequests_ != null;
        }

        public boolean hasMaxRetries() {
            return this.maxRetries_ != null;
        }

        public boolean hasRetryBudget() {
            return this.retryBudget_ != null;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + this.priority_;
            if (hasMaxConnections()) {
                hashCode = (((hashCode * 37) + 2) * 53) + getMaxConnections().hashCode();
            }
            if (hasMaxPendingRequests()) {
                hashCode = (((hashCode * 37) + 3) * 53) + getMaxPendingRequests().hashCode();
            }
            if (hasMaxRequests()) {
                hashCode = (((hashCode * 37) + 4) * 53) + getMaxRequests().hashCode();
            }
            if (hasMaxRetries()) {
                hashCode = (((hashCode * 37) + 5) * 53) + getMaxRetries().hashCode();
            }
            if (hasRetryBudget()) {
                hashCode = (((hashCode * 37) + 8) * 53) + getRetryBudget().hashCode();
            }
            int d10 = (((hashCode * 37) + 6) * 53) + u0.d(getTrackRemaining());
            if (hasMaxConnectionPools()) {
                d10 = (((d10 * 37) + 7) * 53) + getMaxConnectionPools().hashCode();
            }
            int hashCode2 = (d10 * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.cluster.a.f46340d.d(Thresholds.class, b.class);
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
            return new Thresholds();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (this.priority_ != RoutingPriority.DEFAULT.getNumber()) {
                codedOutputStream.v0(1, this.priority_);
            }
            if (this.maxConnections_ != null) {
                codedOutputStream.L0(2, getMaxConnections());
            }
            if (this.maxPendingRequests_ != null) {
                codedOutputStream.L0(3, getMaxPendingRequests());
            }
            if (this.maxRequests_ != null) {
                codedOutputStream.L0(4, getMaxRequests());
            }
            if (this.maxRetries_ != null) {
                codedOutputStream.L0(5, getMaxRetries());
            }
            boolean z10 = this.trackRemaining_;
            if (z10) {
                codedOutputStream.n0(6, z10);
            }
            if (this.maxConnectionPools_ != null) {
                codedOutputStream.L0(7, getMaxConnectionPools());
            }
            if (this.retryBudget_ != null) {
                codedOutputStream.L0(8, getRetryBudget());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ Thresholds(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(Thresholds thresholds) {
            return DEFAULT_INSTANCE.toBuilder().g0(thresholds);
        }

        public static Thresholds parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private Thresholds(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Thresholds parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Thresholds) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static Thresholds parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public Thresholds getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
        }

        public static Thresholds parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private Thresholds() {
            this.memoizedIsInitialized = (byte) -1;
            this.priority_ = 0;
        }

        public static Thresholds parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static Thresholds parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static Thresholds parseFrom(InputStream inputStream) throws IOException {
            return (Thresholds) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private Thresholds(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                if (L != 8) {
                                    if (L == 18) {
                                        UInt32Value uInt32Value = this.maxConnections_;
                                        UInt32Value.b builder = uInt32Value != null ? uInt32Value.toBuilder() : null;
                                        UInt32Value uInt32Value2 = (UInt32Value) pVar.B(UInt32Value.parser(), f0Var);
                                        this.maxConnections_ = uInt32Value2;
                                        if (builder != null) {
                                            builder.g0(uInt32Value2);
                                            this.maxConnections_ = builder.I();
                                        }
                                    } else if (L == 26) {
                                        UInt32Value uInt32Value3 = this.maxPendingRequests_;
                                        UInt32Value.b builder2 = uInt32Value3 != null ? uInt32Value3.toBuilder() : null;
                                        UInt32Value uInt32Value4 = (UInt32Value) pVar.B(UInt32Value.parser(), f0Var);
                                        this.maxPendingRequests_ = uInt32Value4;
                                        if (builder2 != null) {
                                            builder2.g0(uInt32Value4);
                                            this.maxPendingRequests_ = builder2.I();
                                        }
                                    } else if (L == 34) {
                                        UInt32Value uInt32Value5 = this.maxRequests_;
                                        UInt32Value.b builder3 = uInt32Value5 != null ? uInt32Value5.toBuilder() : null;
                                        UInt32Value uInt32Value6 = (UInt32Value) pVar.B(UInt32Value.parser(), f0Var);
                                        this.maxRequests_ = uInt32Value6;
                                        if (builder3 != null) {
                                            builder3.g0(uInt32Value6);
                                            this.maxRequests_ = builder3.I();
                                        }
                                    } else if (L == 42) {
                                        UInt32Value uInt32Value7 = this.maxRetries_;
                                        UInt32Value.b builder4 = uInt32Value7 != null ? uInt32Value7.toBuilder() : null;
                                        UInt32Value uInt32Value8 = (UInt32Value) pVar.B(UInt32Value.parser(), f0Var);
                                        this.maxRetries_ = uInt32Value8;
                                        if (builder4 != null) {
                                            builder4.g0(uInt32Value8);
                                            this.maxRetries_ = builder4.I();
                                        }
                                    } else if (L == 48) {
                                        this.trackRemaining_ = pVar.r();
                                    } else if (L == 58) {
                                        UInt32Value uInt32Value9 = this.maxConnectionPools_;
                                        UInt32Value.b builder5 = uInt32Value9 != null ? uInt32Value9.toBuilder() : null;
                                        UInt32Value uInt32Value10 = (UInt32Value) pVar.B(UInt32Value.parser(), f0Var);
                                        this.maxConnectionPools_ = uInt32Value10;
                                        if (builder5 != null) {
                                            builder5.g0(uInt32Value10);
                                            this.maxConnectionPools_ = builder5.I();
                                        }
                                    } else if (L != 66) {
                                        if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                        }
                                    } else {
                                        RetryBudget retryBudget = this.retryBudget_;
                                        RetryBudget.b builder6 = retryBudget != null ? retryBudget.toBuilder() : null;
                                        RetryBudget retryBudget2 = (RetryBudget) pVar.B(RetryBudget.parser(), f0Var);
                                        this.retryBudget_ = retryBudget2;
                                        if (builder6 != null) {
                                            builder6.h0(retryBudget2);
                                            this.retryBudget_ = builder6.I();
                                        }
                                    }
                                } else {
                                    this.priority_ = pVar.u();
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

        public static Thresholds parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Thresholds) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static Thresholds parseFrom(p pVar) throws IOException {
            return (Thresholds) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static Thresholds parseFrom(p pVar, f0 f0Var) throws IOException {
            return (Thresholds) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends com.google.protobuf.c<CircuitBreakers> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public CircuitBreakers m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new CircuitBreakers(pVar, f0Var, null);
        }
    }

    /* loaded from: classes5.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.cluster.b {

        /* renamed from: e  reason: collision with root package name */
        private int f46309e;

        /* renamed from: f  reason: collision with root package name */
        private List<Thresholds> f46310f;

        /* renamed from: g  reason: collision with root package name */
        private l2<Thresholds, Thresholds.b, c> f46311g;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f46309e & 1) == 0) {
                this.f46310f = new ArrayList(this.f46310f);
                this.f46309e |= 1;
            }
        }

        private l2<Thresholds, Thresholds.b, c> d0() {
            if (this.f46311g == null) {
                this.f46311g = new l2<>(this.f46310f, (this.f46309e & 1) != 0, H(), O());
                this.f46310f = null;
            }
            return this.f46311g;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                d0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.cluster.a.f46338b.d(CircuitBreakers.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public CircuitBreakers build() {
            CircuitBreakers I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public CircuitBreakers I() {
            CircuitBreakers circuitBreakers = new CircuitBreakers(this, (a) null);
            int i9 = this.f46309e;
            l2<Thresholds, Thresholds.b, c> l2Var = this.f46311g;
            if (l2Var == null) {
                if ((i9 & 1) != 0) {
                    this.f46310f = Collections.unmodifiableList(this.f46310f);
                    this.f46309e &= -2;
                }
                circuitBreakers.thresholds_ = this.f46310f;
            } else {
                circuitBreakers.thresholds_ = l2Var.e();
            }
            Q();
            return circuitBreakers;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: b0 */
        public CircuitBreakers getDefaultInstanceForType() {
            return CircuitBreakers.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.cluster.CircuitBreakers.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.cluster.CircuitBreakers.access$3100()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.cluster.CircuitBreakers r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.cluster.CircuitBreakers) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.cluster.CircuitBreakers r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.cluster.CircuitBreakers) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.cluster.CircuitBreakers.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.cluster.CircuitBreakers$b");
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.cluster.a.f46337a;
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof CircuitBreakers) {
                return i0((CircuitBreakers) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b i0(CircuitBreakers circuitBreakers) {
            if (circuitBreakers == CircuitBreakers.getDefaultInstance()) {
                return this;
            }
            if (this.f46311g == null) {
                if (!circuitBreakers.thresholds_.isEmpty()) {
                    if (this.f46310f.isEmpty()) {
                        this.f46310f = circuitBreakers.thresholds_;
                        this.f46309e &= -2;
                    } else {
                        a0();
                        this.f46310f.addAll(circuitBreakers.thresholds_);
                    }
                    R();
                }
            } else if (!circuitBreakers.thresholds_.isEmpty()) {
                if (this.f46311g.k()) {
                    this.f46311g.f();
                    this.f46311g = null;
                    this.f46310f = circuitBreakers.thresholds_;
                    this.f46309e &= -2;
                    this.f46311g = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                } else {
                    this.f46311g.b(circuitBreakers.thresholds_);
                }
            }
            z(((GeneratedMessageV3) circuitBreakers).unknownFields);
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
            this.f46310f = Collections.emptyList();
            e0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f46310f = Collections.emptyList();
            e0();
        }
    }

    /* loaded from: classes5.dex */
    public interface c extends r1 {
    }

    /* synthetic */ CircuitBreakers(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static CircuitBreakers getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.cluster.a.f46337a;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static CircuitBreakers parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (CircuitBreakers) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static CircuitBreakers parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<CircuitBreakers> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CircuitBreakers)) {
            return super.equals(obj);
        }
        CircuitBreakers circuitBreakers = (CircuitBreakers) obj;
        return getThresholdsList().equals(circuitBreakers.getThresholdsList()) && this.unknownFields.equals(circuitBreakers.unknownFields);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<CircuitBreakers> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < this.thresholds_.size(); i11++) {
            i10 += CodedOutputStream.G(1, this.thresholds_.get(i11));
        }
        int serializedSize = i10 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public Thresholds getThresholds(int i9) {
        return this.thresholds_.get(i9);
    }

    public int getThresholdsCount() {
        return this.thresholds_.size();
    }

    public List<Thresholds> getThresholdsList() {
        return this.thresholds_;
    }

    public c getThresholdsOrBuilder(int i9) {
        return this.thresholds_.get(i9);
    }

    public List<? extends c> getThresholdsOrBuilderList() {
        return this.thresholds_;
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
        if (getThresholdsCount() > 0) {
            hashCode = (((hashCode * 37) + 1) * 53) + getThresholdsList().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.cluster.a.f46338b.d(CircuitBreakers.class, b.class);
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
        return new CircuitBreakers();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        for (int i9 = 0; i9 < this.thresholds_.size(); i9++) {
            codedOutputStream.L0(1, this.thresholds_.get(i9));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ CircuitBreakers(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(CircuitBreakers circuitBreakers) {
        return DEFAULT_INSTANCE.toBuilder().i0(circuitBreakers);
    }

    public static CircuitBreakers parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private CircuitBreakers(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static CircuitBreakers parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (CircuitBreakers) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static CircuitBreakers parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public CircuitBreakers getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).i0(this);
    }

    public static CircuitBreakers parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private CircuitBreakers() {
        this.memoizedIsInitialized = (byte) -1;
        this.thresholds_ = Collections.emptyList();
    }

    public static CircuitBreakers parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static CircuitBreakers parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static CircuitBreakers parseFrom(InputStream inputStream) throws IOException {
        return (CircuitBreakers) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private CircuitBreakers(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                this.thresholds_ = new ArrayList();
                                z11 |= true;
                            }
                            this.thresholds_.add((Thresholds) pVar.B(Thresholds.parser(), f0Var));
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
                    this.thresholds_ = Collections.unmodifiableList(this.thresholds_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static CircuitBreakers parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (CircuitBreakers) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static CircuitBreakers parseFrom(p pVar) throws IOException {
        return (CircuitBreakers) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static CircuitBreakers parseFrom(p pVar, f0 f0Var) throws IOException {
        return (CircuitBreakers) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
