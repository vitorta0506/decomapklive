package io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.fault.v2;

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
import com.google.protobuf.r1;
import com.google.protobuf.u0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.type.FractionalPercent;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class FaultRateLimit extends GeneratedMessageV3 implements io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.fault.v2.c {
    public static final int FIXED_LIMIT_FIELD_NUMBER = 1;
    public static final int HEADER_LIMIT_FIELD_NUMBER = 3;
    public static final int PERCENTAGE_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private int limitTypeCase_;
    private Object limitType_;
    private byte memoizedIsInitialized;
    private FractionalPercent percentage_;
    private static final FaultRateLimit DEFAULT_INSTANCE = new FaultRateLimit();
    private static final e2<FaultRateLimit> PARSER = new a();

    /* loaded from: classes6.dex */
    public static final class FixedLimit extends GeneratedMessageV3 implements d {
        public static final int LIMIT_KBPS_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private long limitKbps_;
        private byte memoizedIsInitialized;
        private static final FixedLimit DEFAULT_INSTANCE = new FixedLimit();
        private static final e2<FixedLimit> PARSER = new a();

        /* loaded from: classes6.dex */
        class a extends com.google.protobuf.c<FixedLimit> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public FixedLimit m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new FixedLimit(pVar, f0Var, null);
            }
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements d {

            /* renamed from: e  reason: collision with root package name */
            private long f48533e;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.fault.v2.b.f48548h.d(FixedLimit.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public FixedLimit build() {
                FixedLimit I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public FixedLimit I() {
                FixedLimit fixedLimit = new FixedLimit(this, (a) null);
                fixedLimit.limitKbps_ = this.f48533e;
                Q();
                return fixedLimit;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public FixedLimit getDefaultInstanceForType() {
                return FixedLimit.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: d0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.fault.v2.FaultRateLimit.FixedLimit.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.fault.v2.FaultRateLimit.FixedLimit.access$600()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.fault.v2.FaultRateLimit$FixedLimit r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.fault.v2.FaultRateLimit.FixedLimit) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.fault.v2.FaultRateLimit$FixedLimit r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.fault.v2.FaultRateLimit.FixedLimit) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.fault.v2.FaultRateLimit.FixedLimit.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.fault.v2.FaultRateLimit$FixedLimit$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof FixedLimit) {
                    return g0((FixedLimit) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b g0(FixedLimit fixedLimit) {
                if (fixedLimit == FixedLimit.getDefaultInstance()) {
                    return this;
                }
                if (fixedLimit.getLimitKbps() != 0) {
                    j0(fixedLimit.getLimitKbps());
                }
                z(((GeneratedMessageV3) fixedLimit).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.fault.v2.b.f48547g;
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

            public b j0(long j10) {
                this.f48533e = j10;
                R();
                return this;
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

        /* synthetic */ FixedLimit(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static FixedLimit getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.fault.v2.b.f48547g;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static FixedLimit parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (FixedLimit) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static FixedLimit parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<FixedLimit> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof FixedLimit)) {
                return super.equals(obj);
            }
            FixedLimit fixedLimit = (FixedLimit) obj;
            return getLimitKbps() == fixedLimit.getLimitKbps() && this.unknownFields.equals(fixedLimit.unknownFields);
        }

        public long getLimitKbps() {
            return this.limitKbps_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<FixedLimit> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            long j10 = this.limitKbps_;
            int a02 = (j10 != 0 ? 0 + CodedOutputStream.a0(1, j10) : 0) + this.unknownFields.getSerializedSize();
            this.memoizedSize = a02;
            return a02;
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
            int hashCode = ((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + u0.i(getLimitKbps())) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode;
            return hashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.fault.v2.b.f48548h.d(FixedLimit.class, b.class);
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
            return new FixedLimit();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            long j10 = this.limitKbps_;
            if (j10 != 0) {
                codedOutputStream.e1(1, j10);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ FixedLimit(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(FixedLimit fixedLimit) {
            return DEFAULT_INSTANCE.toBuilder().g0(fixedLimit);
        }

        public static FixedLimit parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private FixedLimit(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static FixedLimit parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (FixedLimit) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static FixedLimit parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public FixedLimit getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
        }

        public static FixedLimit parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private FixedLimit() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static FixedLimit parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static FixedLimit parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        private FixedLimit(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            this();
            Objects.requireNonNull(f0Var);
            h3.b h10 = h3.h();
            boolean z10 = false;
            while (!z10) {
                try {
                    try {
                        int L = pVar.L();
                        if (L != 0) {
                            if (L != 8) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                this.limitKbps_ = pVar.N();
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

        public static FixedLimit parseFrom(InputStream inputStream) throws IOException {
            return (FixedLimit) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static FixedLimit parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (FixedLimit) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static FixedLimit parseFrom(p pVar) throws IOException {
            return (FixedLimit) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static FixedLimit parseFrom(p pVar, f0 f0Var) throws IOException {
            return (FixedLimit) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes6.dex */
    public static final class HeaderLimit extends GeneratedMessageV3 implements e {
        private static final HeaderLimit DEFAULT_INSTANCE = new HeaderLimit();
        private static final e2<HeaderLimit> PARSER = new a();
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;

        /* loaded from: classes6.dex */
        class a extends com.google.protobuf.c<HeaderLimit> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public HeaderLimit m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new HeaderLimit(pVar, f0Var, null);
            }
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements e {
            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.fault.v2.b.f48550j.d(HeaderLimit.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public HeaderLimit build() {
                HeaderLimit I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public HeaderLimit I() {
                HeaderLimit headerLimit = new HeaderLimit(this, (a) null);
                Q();
                return headerLimit;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public HeaderLimit getDefaultInstanceForType() {
                return HeaderLimit.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: d0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.fault.v2.FaultRateLimit.HeaderLimit.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.fault.v2.FaultRateLimit.HeaderLimit.access$1300()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.fault.v2.FaultRateLimit$HeaderLimit r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.fault.v2.FaultRateLimit.HeaderLimit) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.fault.v2.FaultRateLimit$HeaderLimit r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.fault.v2.FaultRateLimit.HeaderLimit) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.fault.v2.FaultRateLimit.HeaderLimit.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.fault.v2.FaultRateLimit$HeaderLimit$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof HeaderLimit) {
                    return g0((HeaderLimit) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b g0(HeaderLimit headerLimit) {
                if (headerLimit == HeaderLimit.getDefaultInstance()) {
                    return this;
                }
                z(((GeneratedMessageV3) headerLimit).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.fault.v2.b.f48549i;
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

        /* synthetic */ HeaderLimit(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static HeaderLimit getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.fault.v2.b.f48549i;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static HeaderLimit parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (HeaderLimit) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static HeaderLimit parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<HeaderLimit> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj instanceof HeaderLimit) {
                return this.unknownFields.equals(((HeaderLimit) obj).unknownFields);
            }
            return super.equals(obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<HeaderLimit> getParserForType() {
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
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.fault.v2.b.f48550j.d(HeaderLimit.class, b.class);
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
            return new HeaderLimit();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ HeaderLimit(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(HeaderLimit headerLimit) {
            return DEFAULT_INSTANCE.toBuilder().g0(headerLimit);
        }

        public static HeaderLimit parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private HeaderLimit(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static HeaderLimit parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (HeaderLimit) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static HeaderLimit parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public HeaderLimit getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
        }

        public static HeaderLimit parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private HeaderLimit() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static HeaderLimit parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static HeaderLimit parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        private HeaderLimit(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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

        public static HeaderLimit parseFrom(InputStream inputStream) throws IOException {
            return (HeaderLimit) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static HeaderLimit parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (HeaderLimit) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static HeaderLimit parseFrom(p pVar) throws IOException {
            return (HeaderLimit) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static HeaderLimit parseFrom(p pVar, f0 f0Var) throws IOException {
            return (HeaderLimit) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes6.dex */
    public enum LimitTypeCase implements u0.c {
        FIXED_LIMIT(1),
        HEADER_LIMIT(3),
        LIMITTYPE_NOT_SET(0);
        
        private final int value;

        LimitTypeCase(int i9) {
            this.value = i9;
        }

        public static LimitTypeCase forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 != 3) {
                        return null;
                    }
                    return HEADER_LIMIT;
                }
                return FIXED_LIMIT;
            }
            return LIMITTYPE_NOT_SET;
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static LimitTypeCase valueOf(int i9) {
            return forNumber(i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<FaultRateLimit> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public FaultRateLimit m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new FaultRateLimit(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f48534a;

        static {
            int[] iArr = new int[LimitTypeCase.values().length];
            f48534a = iArr;
            try {
                iArr[LimitTypeCase.FIXED_LIMIT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f48534a[LimitTypeCase.HEADER_LIMIT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f48534a[LimitTypeCase.LIMITTYPE_NOT_SET.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.fault.v2.c {

        /* renamed from: e  reason: collision with root package name */
        private int f48535e;

        /* renamed from: f  reason: collision with root package name */
        private Object f48536f;

        /* renamed from: g  reason: collision with root package name */
        private q2<FixedLimit, FixedLimit.b, d> f48537g;

        /* renamed from: h  reason: collision with root package name */
        private q2<HeaderLimit, HeaderLimit.b, e> f48538h;

        /* renamed from: i  reason: collision with root package name */
        private FractionalPercent f48539i;

        /* renamed from: j  reason: collision with root package name */
        private q2<FractionalPercent, FractionalPercent.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.b> f48540j;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.fault.v2.b.f48546f.d(FaultRateLimit.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public FaultRateLimit build() {
            FaultRateLimit I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public FaultRateLimit I() {
            FaultRateLimit faultRateLimit = new FaultRateLimit(this, (a) null);
            if (this.f48535e == 1) {
                q2<FixedLimit, FixedLimit.b, d> q2Var = this.f48537g;
                if (q2Var == null) {
                    faultRateLimit.limitType_ = this.f48536f;
                } else {
                    faultRateLimit.limitType_ = q2Var.b();
                }
            }
            if (this.f48535e == 3) {
                q2<HeaderLimit, HeaderLimit.b, e> q2Var2 = this.f48538h;
                if (q2Var2 == null) {
                    faultRateLimit.limitType_ = this.f48536f;
                } else {
                    faultRateLimit.limitType_ = q2Var2.b();
                }
            }
            q2<FractionalPercent, FractionalPercent.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.b> q2Var3 = this.f48540j;
            if (q2Var3 == null) {
                faultRateLimit.percentage_ = this.f48539i;
            } else {
                faultRateLimit.percentage_ = q2Var3.b();
            }
            faultRateLimit.limitTypeCase_ = this.f48535e;
            Q();
            return faultRateLimit;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public FaultRateLimit getDefaultInstanceForType() {
            return FaultRateLimit.getDefaultInstance();
        }

        public c d0(FixedLimit fixedLimit) {
            q2<FixedLimit, FixedLimit.b, d> q2Var = this.f48537g;
            if (q2Var == null) {
                if (this.f48535e == 1 && this.f48536f != FixedLimit.getDefaultInstance()) {
                    this.f48536f = FixedLimit.newBuilder((FixedLimit) this.f48536f).g0(fixedLimit).I();
                } else {
                    this.f48536f = fixedLimit;
                }
                R();
            } else {
                if (this.f48535e == 1) {
                    q2Var.e(fixedLimit);
                }
                this.f48537g.g(fixedLimit);
            }
            this.f48535e = 1;
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.fault.v2.FaultRateLimit.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.fault.v2.FaultRateLimit.access$2300()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.fault.v2.FaultRateLimit r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.fault.v2.FaultRateLimit) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.fault.v2.FaultRateLimit r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.fault.v2.FaultRateLimit) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.fault.v2.FaultRateLimit.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.fault.v2.FaultRateLimit$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        public c v(l1 l1Var) {
            if (l1Var instanceof FaultRateLimit) {
                return h0((FaultRateLimit) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.fault.v2.b.f48545e;
        }

        public c h0(FaultRateLimit faultRateLimit) {
            if (faultRateLimit == FaultRateLimit.getDefaultInstance()) {
                return this;
            }
            if (faultRateLimit.hasPercentage()) {
                j0(faultRateLimit.getPercentage());
            }
            int i9 = b.f48534a[faultRateLimit.getLimitTypeCase().ordinal()];
            if (i9 == 1) {
                d0(faultRateLimit.getFixedLimit());
            } else if (i9 == 2) {
                i0(faultRateLimit.getHeaderLimit());
            }
            z(((GeneratedMessageV3) faultRateLimit).unknownFields);
            R();
            return this;
        }

        public c i0(HeaderLimit headerLimit) {
            q2<HeaderLimit, HeaderLimit.b, e> q2Var = this.f48538h;
            if (q2Var == null) {
                if (this.f48535e == 3 && this.f48536f != HeaderLimit.getDefaultInstance()) {
                    this.f48536f = HeaderLimit.newBuilder((HeaderLimit) this.f48536f).g0(headerLimit).I();
                } else {
                    this.f48536f = headerLimit;
                }
                R();
            } else {
                if (this.f48535e == 3) {
                    q2Var.e(headerLimit);
                }
                this.f48538h.g(headerLimit);
            }
            this.f48535e = 3;
            return this;
        }

        public c j0(FractionalPercent fractionalPercent) {
            q2<FractionalPercent, FractionalPercent.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.b> q2Var = this.f48540j;
            if (q2Var == null) {
                FractionalPercent fractionalPercent2 = this.f48539i;
                if (fractionalPercent2 != null) {
                    this.f48539i = FractionalPercent.newBuilder(fractionalPercent2).g0(fractionalPercent).I();
                } else {
                    this.f48539i = fractionalPercent;
                }
                R();
            } else {
                q2Var.e(fractionalPercent);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: k0 */
        public final c z(h3 h3Var) {
            return (c) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: l0 */
        public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.c(fieldDescriptor, obj);
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
            this.f48535e = 0;
            b0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f48535e = 0;
            b0();
        }
    }

    /* loaded from: classes6.dex */
    public interface d extends r1 {
    }

    /* loaded from: classes6.dex */
    public interface e extends r1 {
    }

    /* synthetic */ FaultRateLimit(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static FaultRateLimit getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.fault.v2.b.f48545e;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static FaultRateLimit parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (FaultRateLimit) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static FaultRateLimit parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<FaultRateLimit> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof FaultRateLimit)) {
            return super.equals(obj);
        }
        FaultRateLimit faultRateLimit = (FaultRateLimit) obj;
        if (hasPercentage() != faultRateLimit.hasPercentage()) {
            return false;
        }
        if ((!hasPercentage() || getPercentage().equals(faultRateLimit.getPercentage())) && getLimitTypeCase().equals(faultRateLimit.getLimitTypeCase())) {
            int i9 = this.limitTypeCase_;
            if (i9 != 1) {
                if (i9 == 3 && !getHeaderLimit().equals(faultRateLimit.getHeaderLimit())) {
                    return false;
                }
            } else if (!getFixedLimit().equals(faultRateLimit.getFixedLimit())) {
                return false;
            }
            return this.unknownFields.equals(faultRateLimit.unknownFields);
        }
        return false;
    }

    public FixedLimit getFixedLimit() {
        if (this.limitTypeCase_ == 1) {
            return (FixedLimit) this.limitType_;
        }
        return FixedLimit.getDefaultInstance();
    }

    public d getFixedLimitOrBuilder() {
        if (this.limitTypeCase_ == 1) {
            return (FixedLimit) this.limitType_;
        }
        return FixedLimit.getDefaultInstance();
    }

    public HeaderLimit getHeaderLimit() {
        if (this.limitTypeCase_ == 3) {
            return (HeaderLimit) this.limitType_;
        }
        return HeaderLimit.getDefaultInstance();
    }

    public e getHeaderLimitOrBuilder() {
        if (this.limitTypeCase_ == 3) {
            return (HeaderLimit) this.limitType_;
        }
        return HeaderLimit.getDefaultInstance();
    }

    public LimitTypeCase getLimitTypeCase() {
        return LimitTypeCase.forNumber(this.limitTypeCase_);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<FaultRateLimit> getParserForType() {
        return PARSER;
    }

    public FractionalPercent getPercentage() {
        FractionalPercent fractionalPercent = this.percentage_;
        return fractionalPercent == null ? FractionalPercent.getDefaultInstance() : fractionalPercent;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.type.b getPercentageOrBuilder() {
        return getPercentage();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.limitTypeCase_ == 1 ? 0 + CodedOutputStream.G(1, (FixedLimit) this.limitType_) : 0;
        if (this.percentage_ != null) {
            G += CodedOutputStream.G(2, getPercentage());
        }
        if (this.limitTypeCase_ == 3) {
            G += CodedOutputStream.G(3, (HeaderLimit) this.limitType_);
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasFixedLimit() {
        return this.limitTypeCase_ == 1;
    }

    public boolean hasHeaderLimit() {
        return this.limitTypeCase_ == 3;
    }

    public boolean hasPercentage() {
        return this.percentage_ != null;
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
        if (hasPercentage()) {
            hashCode2 = (((hashCode2 * 37) + 2) * 53) + getPercentage().hashCode();
        }
        int i11 = this.limitTypeCase_;
        if (i11 == 1) {
            i9 = ((hashCode2 * 37) + 1) * 53;
            hashCode = getFixedLimit().hashCode();
        } else {
            if (i11 == 3) {
                i9 = ((hashCode2 * 37) + 3) * 53;
                hashCode = getHeaderLimit().hashCode();
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
        return io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.fault.v2.b.f48546f.d(FaultRateLimit.class, c.class);
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
        return new FaultRateLimit();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.limitTypeCase_ == 1) {
            codedOutputStream.L0(1, (FixedLimit) this.limitType_);
        }
        if (this.percentage_ != null) {
            codedOutputStream.L0(2, getPercentage());
        }
        if (this.limitTypeCase_ == 3) {
            codedOutputStream.L0(3, (HeaderLimit) this.limitType_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ FaultRateLimit(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(FaultRateLimit faultRateLimit) {
        return DEFAULT_INSTANCE.toBuilder().h0(faultRateLimit);
    }

    public static FaultRateLimit parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private FaultRateLimit(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.limitTypeCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static FaultRateLimit parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (FaultRateLimit) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static FaultRateLimit parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public FaultRateLimit getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).h0(this);
    }

    public static FaultRateLimit parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    public static FaultRateLimit parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    private FaultRateLimit() {
        this.limitTypeCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static FaultRateLimit parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static FaultRateLimit parseFrom(InputStream inputStream) throws IOException {
        return (FaultRateLimit) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private FaultRateLimit(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            FixedLimit.b builder = this.limitTypeCase_ == 1 ? ((FixedLimit) this.limitType_).toBuilder() : null;
                            o1 B = pVar.B(FixedLimit.parser(), f0Var);
                            this.limitType_ = B;
                            if (builder != null) {
                                builder.g0((FixedLimit) B);
                                this.limitType_ = builder.I();
                            }
                            this.limitTypeCase_ = 1;
                        } else if (L == 18) {
                            FractionalPercent fractionalPercent = this.percentage_;
                            FractionalPercent.b builder2 = fractionalPercent != null ? fractionalPercent.toBuilder() : null;
                            FractionalPercent fractionalPercent2 = (FractionalPercent) pVar.B(FractionalPercent.parser(), f0Var);
                            this.percentage_ = fractionalPercent2;
                            if (builder2 != null) {
                                builder2.g0(fractionalPercent2);
                                this.percentage_ = builder2.I();
                            }
                        } else if (L != 26) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            HeaderLimit.b builder3 = this.limitTypeCase_ == 3 ? ((HeaderLimit) this.limitType_).toBuilder() : null;
                            o1 B2 = pVar.B(HeaderLimit.parser(), f0Var);
                            this.limitType_ = B2;
                            if (builder3 != null) {
                                builder3.g0((HeaderLimit) B2);
                                this.limitType_ = builder3.I();
                            }
                            this.limitTypeCase_ = 3;
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

    public static FaultRateLimit parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (FaultRateLimit) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static FaultRateLimit parseFrom(p pVar) throws IOException {
        return (FaultRateLimit) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static FaultRateLimit parseFrom(p pVar, f0 f0Var) throws IOException {
        return (FaultRateLimit) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
