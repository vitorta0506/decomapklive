package io.grpc.health.v1;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.c;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.h2;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.p;
import com.google.protobuf.r1;
import com.google.protobuf.u0;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class HealthCheckResponse extends GeneratedMessageV3 implements r1 {
    private static final HealthCheckResponse DEFAULT_INSTANCE = new HealthCheckResponse();
    private static final e2<HealthCheckResponse> PARSER = new a();
    public static final int STATUS_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private int status_;

    /* loaded from: classes5.dex */
    public enum ServingStatus implements h2 {
        UNKNOWN(0),
        SERVING(1),
        NOT_SERVING(2),
        SERVICE_UNKNOWN(3),
        UNRECOGNIZED(-1);
        
        public static final int NOT_SERVING_VALUE = 2;
        public static final int SERVICE_UNKNOWN_VALUE = 3;
        public static final int SERVING_VALUE = 1;
        public static final int UNKNOWN_VALUE = 0;
        private final int value;
        private static final u0.d<ServingStatus> internalValueMap = new a();
        private static final ServingStatus[] VALUES = values();

        /* loaded from: classes5.dex */
        class a implements u0.d<ServingStatus> {
            a() {
            }

            @Override // com.google.protobuf.u0.d
            /* renamed from: b */
            public ServingStatus a(int i9) {
                return ServingStatus.forNumber(i9);
            }
        }

        ServingStatus(int i9) {
            this.value = i9;
        }

        public static ServingStatus forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 != 2) {
                        if (i9 != 3) {
                            return null;
                        }
                        return SERVICE_UNKNOWN;
                    }
                    return NOT_SERVING;
                }
                return SERVING;
            }
            return UNKNOWN;
        }

        public static final Descriptors.d getDescriptor() {
            return HealthCheckResponse.getDescriptor().k().get(0);
        }

        public static u0.d<ServingStatus> internalGetValueMap() {
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
        public static ServingStatus valueOf(int i9) {
            return forNumber(i9);
        }

        public static ServingStatus valueOf(Descriptors.e eVar) {
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
    /* loaded from: classes5.dex */
    public class a extends c<HealthCheckResponse> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public HealthCheckResponse m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new HealthCheckResponse(pVar, f0Var, null);
        }
    }

    /* loaded from: classes5.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private int f42333e;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return io.grpc.health.v1.b.f42339d.d(HealthCheckResponse.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public HealthCheckResponse build() {
            HealthCheckResponse I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public HealthCheckResponse I() {
            HealthCheckResponse healthCheckResponse = new HealthCheckResponse(this, (a) null);
            healthCheckResponse.status_ = this.f42333e;
            Q();
            return healthCheckResponse;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public HealthCheckResponse getDefaultInstanceForType() {
            return HealthCheckResponse.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.health.v1.HealthCheckResponse.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.health.v1.HealthCheckResponse.access$600()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.health.v1.HealthCheckResponse r3 = (io.grpc.health.v1.HealthCheckResponse) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.health.v1.HealthCheckResponse r4 = (io.grpc.health.v1.HealthCheckResponse) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.health.v1.HealthCheckResponse.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.health.v1.HealthCheckResponse$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof HealthCheckResponse) {
                return g0((HealthCheckResponse) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b g0(HealthCheckResponse healthCheckResponse) {
            if (healthCheckResponse == HealthCheckResponse.getDefaultInstance()) {
                return this;
            }
            if (healthCheckResponse.status_ != 0) {
                j0(healthCheckResponse.getStatusValue());
            }
            z(((GeneratedMessageV3) healthCheckResponse).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return io.grpc.health.v1.b.f42338c;
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

        public b j0(int i9) {
            this.f42333e = i9;
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
            this.f42333e = 0;
            b0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f42333e = 0;
            b0();
        }
    }

    /* synthetic */ HealthCheckResponse(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static HealthCheckResponse getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return io.grpc.health.v1.b.f42338c;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static HealthCheckResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (HealthCheckResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static HealthCheckResponse parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<HealthCheckResponse> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof HealthCheckResponse)) {
            return super.equals(obj);
        }
        HealthCheckResponse healthCheckResponse = (HealthCheckResponse) obj;
        return this.status_ == healthCheckResponse.status_ && this.unknownFields.equals(healthCheckResponse.unknownFields);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<HealthCheckResponse> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int l10 = (this.status_ != ServingStatus.UNKNOWN.getNumber() ? 0 + CodedOutputStream.l(1, this.status_) : 0) + this.unknownFields.getSerializedSize();
        this.memoizedSize = l10;
        return l10;
    }

    public ServingStatus getStatus() {
        ServingStatus valueOf = ServingStatus.valueOf(this.status_);
        return valueOf == null ? ServingStatus.UNRECOGNIZED : valueOf;
    }

    public int getStatusValue() {
        return this.status_;
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
        int hashCode = ((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + this.status_) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode;
        return hashCode;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return io.grpc.health.v1.b.f42339d.d(HealthCheckResponse.class, b.class);
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
        return new HealthCheckResponse();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.status_ != ServingStatus.UNKNOWN.getNumber()) {
            codedOutputStream.v0(1, this.status_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ HealthCheckResponse(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(HealthCheckResponse healthCheckResponse) {
        return DEFAULT_INSTANCE.toBuilder().g0(healthCheckResponse);
    }

    public static HealthCheckResponse parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private HealthCheckResponse(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static HealthCheckResponse parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (HealthCheckResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static HealthCheckResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public HealthCheckResponse getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static HealthCheckResponse parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private HealthCheckResponse() {
        this.memoizedIsInitialized = (byte) -1;
        this.status_ = 0;
    }

    public static HealthCheckResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static HealthCheckResponse parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static HealthCheckResponse parseFrom(InputStream inputStream) throws IOException {
        return (HealthCheckResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private HealthCheckResponse(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            this.status_ = pVar.u();
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

    public static HealthCheckResponse parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (HealthCheckResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static HealthCheckResponse parseFrom(p pVar) throws IOException {
        return (HealthCheckResponse) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static HealthCheckResponse parseFrom(p pVar, f0 f0Var) throws IOException {
        return (HealthCheckResponse) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
