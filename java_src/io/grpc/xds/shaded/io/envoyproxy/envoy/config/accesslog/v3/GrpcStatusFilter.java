package io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.h2;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.u0;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class GrpcStatusFilter extends GeneratedMessageV3 implements h {
    public static final int EXCLUDE_FIELD_NUMBER = 2;
    public static final int STATUSES_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private boolean exclude_;
    private byte memoizedIsInitialized;
    private int statusesMemoizedSerializedSize;
    private List<Integer> statuses_;
    private static final u0.h.a<Integer, Status> statuses_converter_ = new a();
    private static final GrpcStatusFilter DEFAULT_INSTANCE = new GrpcStatusFilter();
    private static final e2<GrpcStatusFilter> PARSER = new b();

    /* loaded from: classes6.dex */
    public enum Status implements h2 {
        OK(0),
        CANCELED(1),
        UNKNOWN(2),
        INVALID_ARGUMENT(3),
        DEADLINE_EXCEEDED(4),
        NOT_FOUND(5),
        ALREADY_EXISTS(6),
        PERMISSION_DENIED(7),
        RESOURCE_EXHAUSTED(8),
        FAILED_PRECONDITION(9),
        ABORTED(10),
        OUT_OF_RANGE(11),
        UNIMPLEMENTED(12),
        INTERNAL(13),
        UNAVAILABLE(14),
        DATA_LOSS(15),
        UNAUTHENTICATED(16),
        UNRECOGNIZED(-1);
        
        public static final int ABORTED_VALUE = 10;
        public static final int ALREADY_EXISTS_VALUE = 6;
        public static final int CANCELED_VALUE = 1;
        public static final int DATA_LOSS_VALUE = 15;
        public static final int DEADLINE_EXCEEDED_VALUE = 4;
        public static final int FAILED_PRECONDITION_VALUE = 9;
        public static final int INTERNAL_VALUE = 13;
        public static final int INVALID_ARGUMENT_VALUE = 3;
        public static final int NOT_FOUND_VALUE = 5;
        public static final int OK_VALUE = 0;
        public static final int OUT_OF_RANGE_VALUE = 11;
        public static final int PERMISSION_DENIED_VALUE = 7;
        public static final int RESOURCE_EXHAUSTED_VALUE = 8;
        public static final int UNAUTHENTICATED_VALUE = 16;
        public static final int UNAVAILABLE_VALUE = 14;
        public static final int UNIMPLEMENTED_VALUE = 12;
        public static final int UNKNOWN_VALUE = 2;
        private final int value;
        private static final u0.d<Status> internalValueMap = new a();
        private static final Status[] VALUES = values();

        /* loaded from: classes6.dex */
        class a implements u0.d<Status> {
            a() {
            }

            @Override // com.google.protobuf.u0.d
            /* renamed from: b */
            public Status a(int i9) {
                return Status.forNumber(i9);
            }
        }

        Status(int i9) {
            this.value = i9;
        }

        public static Status forNumber(int i9) {
            switch (i9) {
                case 0:
                    return OK;
                case 1:
                    return CANCELED;
                case 2:
                    return UNKNOWN;
                case 3:
                    return INVALID_ARGUMENT;
                case 4:
                    return DEADLINE_EXCEEDED;
                case 5:
                    return NOT_FOUND;
                case 6:
                    return ALREADY_EXISTS;
                case 7:
                    return PERMISSION_DENIED;
                case 8:
                    return RESOURCE_EXHAUSTED;
                case 9:
                    return FAILED_PRECONDITION;
                case 10:
                    return ABORTED;
                case 11:
                    return OUT_OF_RANGE;
                case 12:
                    return UNIMPLEMENTED;
                case 13:
                    return INTERNAL;
                case 14:
                    return UNAVAILABLE;
                case 15:
                    return DATA_LOSS;
                case 16:
                    return UNAUTHENTICATED;
                default:
                    return null;
            }
        }

        public static final Descriptors.d getDescriptor() {
            return GrpcStatusFilter.getDescriptor().k().get(0);
        }

        public static u0.d<Status> internalGetValueMap() {
            return internalValueMap;
        }

        public final Descriptors.d getDescriptorForType() {
            return getDescriptor();
        }

        @Override // com.google.protobuf.u0.c
        public final int getNumber() {
            if (this != UNRECOGNIZED) {
                return this.value;
            }
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }

        public final Descriptors.e getValueDescriptor() {
            if (this != UNRECOGNIZED) {
                return getDescriptor().k().get(ordinal());
            }
            throw new IllegalStateException("Can't get the descriptor of an unrecognized enum value.");
        }

        @Deprecated
        public static Status valueOf(int i9) {
            return forNumber(i9);
        }

        public static Status valueOf(Descriptors.e eVar) {
            if (eVar.h() == getDescriptor()) {
                if (eVar.g() == -1) {
                    return UNRECOGNIZED;
                }
                return VALUES[eVar.g()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a implements u0.h.a<Integer, Status> {
        a() {
        }

        @Override // com.google.protobuf.u0.h.a
        /* renamed from: a */
        public Status convert(Integer num) {
            Status valueOf = Status.valueOf(num.intValue());
            return valueOf == null ? Status.UNRECOGNIZED : valueOf;
        }
    }

    /* loaded from: classes6.dex */
    class b extends com.google.protobuf.c<GrpcStatusFilter> {
        b() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public GrpcStatusFilter m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new GrpcStatusFilter(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements h {

        /* renamed from: e  reason: collision with root package name */
        private int f47370e;

        /* renamed from: f  reason: collision with root package name */
        private List<Integer> f47371f;

        /* renamed from: g  reason: collision with root package name */
        private boolean f47372g;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f47370e & 1) == 0) {
                this.f47371f = new ArrayList(this.f47371f);
                this.f47370e |= 1;
            }
        }

        private void d0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.c.f47415z.d(GrpcStatusFilter.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public GrpcStatusFilter build() {
            GrpcStatusFilter I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public GrpcStatusFilter I() {
            GrpcStatusFilter grpcStatusFilter = new GrpcStatusFilter(this, (a) null);
            if ((this.f47370e & 1) != 0) {
                this.f47371f = Collections.unmodifiableList(this.f47371f);
                this.f47370e &= -2;
            }
            grpcStatusFilter.statuses_ = this.f47371f;
            grpcStatusFilter.exclude_ = this.f47372g;
            Q();
            return grpcStatusFilter;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: b0 */
        public GrpcStatusFilter getDefaultInstanceForType() {
            return GrpcStatusFilter.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.GrpcStatusFilter.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.GrpcStatusFilter.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.GrpcStatusFilter r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.GrpcStatusFilter) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.GrpcStatusFilter r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.GrpcStatusFilter) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.GrpcStatusFilter.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.GrpcStatusFilter$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        public c v(l1 l1Var) {
            if (l1Var instanceof GrpcStatusFilter) {
                return h0((GrpcStatusFilter) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.c.f47414y;
        }

        public c h0(GrpcStatusFilter grpcStatusFilter) {
            if (grpcStatusFilter == GrpcStatusFilter.getDefaultInstance()) {
                return this;
            }
            if (!grpcStatusFilter.statuses_.isEmpty()) {
                if (this.f47371f.isEmpty()) {
                    this.f47371f = grpcStatusFilter.statuses_;
                    this.f47370e &= -2;
                } else {
                    a0();
                    this.f47371f.addAll(grpcStatusFilter.statuses_);
                }
                R();
            }
            if (grpcStatusFilter.getExclude()) {
                j0(grpcStatusFilter.getExclude());
            }
            z(((GeneratedMessageV3) grpcStatusFilter).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public final c z(h3 h3Var) {
            return (c) super.z(h3Var);
        }

        public c j0(boolean z10) {
            this.f47372g = z10;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: k0 */
        public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.c(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: l0 */
        public final c f1(h3 h3Var) {
            return (c) super.f1(h3Var);
        }

        /* synthetic */ c(a aVar) {
            this();
        }

        private c() {
            this.f47371f = Collections.emptyList();
            d0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f47371f = Collections.emptyList();
            d0();
        }
    }

    /* synthetic */ GrpcStatusFilter(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static GrpcStatusFilter getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.c.f47414y;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static GrpcStatusFilter parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (GrpcStatusFilter) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static GrpcStatusFilter parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<GrpcStatusFilter> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof GrpcStatusFilter)) {
            return super.equals(obj);
        }
        GrpcStatusFilter grpcStatusFilter = (GrpcStatusFilter) obj;
        return this.statuses_.equals(grpcStatusFilter.statuses_) && getExclude() == grpcStatusFilter.getExclude() && this.unknownFields.equals(grpcStatusFilter.unknownFields);
    }

    public boolean getExclude() {
        return this.exclude_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<GrpcStatusFilter> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < this.statuses_.size(); i11++) {
            i10 += CodedOutputStream.m(this.statuses_.get(i11).intValue());
        }
        int i12 = 0 + i10;
        if (!getStatusesList().isEmpty()) {
            i12 = i12 + 1 + CodedOutputStream.Z(i10);
        }
        this.statusesMemoizedSerializedSize = i10;
        boolean z10 = this.exclude_;
        if (z10) {
            i12 += CodedOutputStream.e(2, z10);
        }
        int serializedSize = i12 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public Status getStatuses(int i9) {
        return statuses_converter_.convert(this.statuses_.get(i9));
    }

    public int getStatusesCount() {
        return this.statuses_.size();
    }

    public List<Status> getStatusesList() {
        return new u0.h(this.statuses_, statuses_converter_);
    }

    public int getStatusesValue(int i9) {
        return this.statuses_.get(i9).intValue();
    }

    public List<Integer> getStatusesValueList() {
        return this.statuses_;
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
        if (getStatusesCount() > 0) {
            hashCode = (((hashCode * 37) + 1) * 53) + this.statuses_.hashCode();
        }
        int d10 = (((((hashCode * 37) + 2) * 53) + u0.d(getExclude())) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = d10;
        return d10;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.c.f47415z.d(GrpcStatusFilter.class, c.class);
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
        return new GrpcStatusFilter();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        getSerializedSize();
        if (getStatusesList().size() > 0) {
            codedOutputStream.d1(10);
            codedOutputStream.d1(this.statusesMemoizedSerializedSize);
        }
        for (int i9 = 0; i9 < this.statuses_.size(); i9++) {
            codedOutputStream.w0(this.statuses_.get(i9).intValue());
        }
        boolean z10 = this.exclude_;
        if (z10) {
            codedOutputStream.n0(2, z10);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ GrpcStatusFilter(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(GrpcStatusFilter grpcStatusFilter) {
        return DEFAULT_INSTANCE.toBuilder().h0(grpcStatusFilter);
    }

    public static GrpcStatusFilter parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private GrpcStatusFilter(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static GrpcStatusFilter parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (GrpcStatusFilter) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static GrpcStatusFilter parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public GrpcStatusFilter getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).h0(this);
    }

    public static GrpcStatusFilter parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    private GrpcStatusFilter() {
        this.memoizedIsInitialized = (byte) -1;
        this.statuses_ = Collections.emptyList();
    }

    public static GrpcStatusFilter parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    public static GrpcStatusFilter parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static GrpcStatusFilter parseFrom(InputStream inputStream) throws IOException {
        return (GrpcStatusFilter) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private GrpcStatusFilter(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                        if (L == 8) {
                            int u10 = pVar.u();
                            if (!(z11 & true)) {
                                this.statuses_ = new ArrayList();
                                z11 |= true;
                            }
                            this.statuses_.add(Integer.valueOf(u10));
                        } else if (L == 10) {
                            int q10 = pVar.q(pVar.D());
                            while (pVar.e() > 0) {
                                int u11 = pVar.u();
                                if (!(z11 & true)) {
                                    this.statuses_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.statuses_.add(Integer.valueOf(u11));
                            }
                            pVar.p(q10);
                        } else if (L != 16) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            this.exclude_ = pVar.r();
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
                    this.statuses_ = Collections.unmodifiableList(this.statuses_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static GrpcStatusFilter parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (GrpcStatusFilter) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static GrpcStatusFilter parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (GrpcStatusFilter) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static GrpcStatusFilter parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
        return (GrpcStatusFilter) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
