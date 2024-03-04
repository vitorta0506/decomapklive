package io.grpc.alts.internal;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import io.grpc.alts.internal.HandshakerResult;
import io.grpc.alts.internal.HandshakerStatus;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class HandshakerResp extends GeneratedMessageV3 implements r1 {
    public static final int BYTES_CONSUMED_FIELD_NUMBER = 2;
    public static final int OUT_FRAMES_FIELD_NUMBER = 1;
    public static final int RESULT_FIELD_NUMBER = 3;
    public static final int STATUS_FIELD_NUMBER = 4;
    private static final long serialVersionUID = 0;
    private int bytesConsumed_;
    private byte memoizedIsInitialized;
    private ByteString outFrames_;
    private HandshakerResult result_;
    private HandshakerStatus status_;
    private static final HandshakerResp DEFAULT_INSTANCE = new HandshakerResp();
    private static final e2<HandshakerResp> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends com.google.protobuf.c<HandshakerResp> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public HandshakerResp m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return new HandshakerResp(pVar, f0Var, null);
        }
    }

    /* loaded from: classes5.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private ByteString f41769e;

        /* renamed from: f  reason: collision with root package name */
        private int f41770f;

        /* renamed from: g  reason: collision with root package name */
        private HandshakerResult f41771g;

        /* renamed from: h  reason: collision with root package name */
        private q2<HandshakerResult, HandshakerResult.b, s> f41772h;

        /* renamed from: i  reason: collision with root package name */
        private HandshakerStatus f41773i;

        /* renamed from: j  reason: collision with root package name */
        private q2<HandshakerStatus, HandshakerStatus.b, u> f41774j;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return r.f41969x.d(HandshakerResp.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public HandshakerResp build() {
            HandshakerResp I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public HandshakerResp I() {
            HandshakerResp handshakerResp = new HandshakerResp(this, (a) null);
            handshakerResp.outFrames_ = this.f41769e;
            handshakerResp.bytesConsumed_ = this.f41770f;
            q2<HandshakerResult, HandshakerResult.b, s> q2Var = this.f41772h;
            if (q2Var == null) {
                handshakerResp.result_ = this.f41771g;
            } else {
                handshakerResp.result_ = q2Var.b();
            }
            q2<HandshakerStatus, HandshakerStatus.b, u> q2Var2 = this.f41774j;
            if (q2Var2 == null) {
                handshakerResp.status_ = this.f41773i;
            } else {
                handshakerResp.status_ = q2Var2.b();
            }
            Q();
            return handshakerResp;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public HandshakerResp getDefaultInstanceForType() {
            return HandshakerResp.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.alts.internal.HandshakerResp.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.alts.internal.HandshakerResp.access$900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.alts.internal.HandshakerResp r3 = (io.grpc.alts.internal.HandshakerResp) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.alts.internal.HandshakerResp r4 = (io.grpc.alts.internal.HandshakerResp) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.alts.internal.HandshakerResp.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.alts.internal.HandshakerResp$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof HandshakerResp) {
                return g0((HandshakerResp) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b g0(HandshakerResp handshakerResp) {
            if (handshakerResp == HandshakerResp.getDefaultInstance()) {
                return this;
            }
            if (handshakerResp.getOutFrames() != ByteString.EMPTY) {
                m0(handshakerResp.getOutFrames());
            }
            if (handshakerResp.getBytesConsumed() != 0) {
                k0(handshakerResp.getBytesConsumed());
            }
            if (handshakerResp.hasResult()) {
                h0(handshakerResp.getResult());
            }
            if (handshakerResp.hasStatus()) {
                i0(handshakerResp.getStatus());
            }
            z(((GeneratedMessageV3) handshakerResp).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return r.f41968w;
        }

        public b h0(HandshakerResult handshakerResult) {
            q2<HandshakerResult, HandshakerResult.b, s> q2Var = this.f41772h;
            if (q2Var == null) {
                HandshakerResult handshakerResult2 = this.f41771g;
                if (handshakerResult2 != null) {
                    this.f41771g = HandshakerResult.newBuilder(handshakerResult2).g0(handshakerResult).I();
                } else {
                    this.f41771g = handshakerResult;
                }
                R();
            } else {
                q2Var.e(handshakerResult);
            }
            return this;
        }

        public b i0(HandshakerStatus handshakerStatus) {
            q2<HandshakerStatus, HandshakerStatus.b, u> q2Var = this.f41774j;
            if (q2Var == null) {
                HandshakerStatus handshakerStatus2 = this.f41773i;
                if (handshakerStatus2 != null) {
                    this.f41773i = HandshakerStatus.newBuilder(handshakerStatus2).g0(handshakerStatus).I();
                } else {
                    this.f41773i = handshakerStatus;
                }
                R();
            } else {
                q2Var.e(handshakerStatus);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: j0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        public b k0(int i9) {
            this.f41770f = i9;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: l0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
        }

        public b m0(ByteString byteString) {
            Objects.requireNonNull(byteString);
            this.f41769e = byteString;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: n0 */
        public final b f1(h3 h3Var) {
            return (b) super.f1(h3Var);
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            this.f41769e = ByteString.EMPTY;
            b0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f41769e = ByteString.EMPTY;
            b0();
        }
    }

    /* synthetic */ HandshakerResp(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static HandshakerResp getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return r.f41968w;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static HandshakerResp parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (HandshakerResp) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static HandshakerResp parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<HandshakerResp> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof HandshakerResp)) {
            return super.equals(obj);
        }
        HandshakerResp handshakerResp = (HandshakerResp) obj;
        if (getOutFrames().equals(handshakerResp.getOutFrames()) && getBytesConsumed() == handshakerResp.getBytesConsumed() && hasResult() == handshakerResp.hasResult()) {
            if ((!hasResult() || getResult().equals(handshakerResp.getResult())) && hasStatus() == handshakerResp.hasStatus()) {
                return (!hasStatus() || getStatus().equals(handshakerResp.getStatus())) && this.unknownFields.equals(handshakerResp.unknownFields);
            }
            return false;
        }
        return false;
    }

    public int getBytesConsumed() {
        return this.bytesConsumed_;
    }

    public ByteString getOutFrames() {
        return this.outFrames_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<HandshakerResp> getParserForType() {
        return PARSER;
    }

    public HandshakerResult getResult() {
        HandshakerResult handshakerResult = this.result_;
        return handshakerResult == null ? HandshakerResult.getDefaultInstance() : handshakerResult;
    }

    public s getResultOrBuilder() {
        return getResult();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int h10 = this.outFrames_.isEmpty() ? 0 : 0 + CodedOutputStream.h(1, this.outFrames_);
        int i10 = this.bytesConsumed_;
        if (i10 != 0) {
            h10 += CodedOutputStream.Y(2, i10);
        }
        if (this.result_ != null) {
            h10 += CodedOutputStream.G(3, getResult());
        }
        if (this.status_ != null) {
            h10 += CodedOutputStream.G(4, getStatus());
        }
        int serializedSize = h10 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public HandshakerStatus getStatus() {
        HandshakerStatus handshakerStatus = this.status_;
        return handshakerStatus == null ? HandshakerStatus.getDefaultInstance() : handshakerStatus;
    }

    public u getStatusOrBuilder() {
        return getStatus();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasResult() {
        return this.result_ != null;
    }

    public boolean hasStatus() {
        return this.status_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = ((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getOutFrames().hashCode()) * 37) + 2) * 53) + getBytesConsumed();
        if (hasResult()) {
            hashCode = (((hashCode * 37) + 3) * 53) + getResult().hashCode();
        }
        if (hasStatus()) {
            hashCode = (((hashCode * 37) + 4) * 53) + getStatus().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return r.f41969x.d(HandshakerResp.class, b.class);
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
        return new HandshakerResp();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!this.outFrames_.isEmpty()) {
            codedOutputStream.r0(1, this.outFrames_);
        }
        int i9 = this.bytesConsumed_;
        if (i9 != 0) {
            codedOutputStream.c1(2, i9);
        }
        if (this.result_ != null) {
            codedOutputStream.L0(3, getResult());
        }
        if (this.status_ != null) {
            codedOutputStream.L0(4, getStatus());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ HandshakerResp(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(HandshakerResp handshakerResp) {
        return DEFAULT_INSTANCE.toBuilder().g0(handshakerResp);
    }

    public static HandshakerResp parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private HandshakerResp(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static HandshakerResp parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (HandshakerResp) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static HandshakerResp parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public HandshakerResp getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static HandshakerResp parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private HandshakerResp() {
        this.memoizedIsInitialized = (byte) -1;
        this.outFrames_ = ByteString.EMPTY;
    }

    public static HandshakerResp parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static HandshakerResp parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static HandshakerResp parseFrom(InputStream inputStream) throws IOException {
        return (HandshakerResp) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private HandshakerResp(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                            if (L == 10) {
                                this.outFrames_ = pVar.s();
                            } else if (L != 16) {
                                if (L == 26) {
                                    HandshakerResult handshakerResult = this.result_;
                                    HandshakerResult.b builder = handshakerResult != null ? handshakerResult.toBuilder() : null;
                                    HandshakerResult handshakerResult2 = (HandshakerResult) pVar.B(HandshakerResult.parser(), f0Var);
                                    this.result_ = handshakerResult2;
                                    if (builder != null) {
                                        builder.g0(handshakerResult2);
                                        this.result_ = builder.I();
                                    }
                                } else if (L != 34) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    HandshakerStatus handshakerStatus = this.status_;
                                    HandshakerStatus.b builder2 = handshakerStatus != null ? handshakerStatus.toBuilder() : null;
                                    HandshakerStatus handshakerStatus2 = (HandshakerStatus) pVar.B(HandshakerStatus.parser(), f0Var);
                                    this.status_ = handshakerStatus2;
                                    if (builder2 != null) {
                                        builder2.g0(handshakerStatus2);
                                        this.status_ = builder2.I();
                                    }
                                }
                            } else {
                                this.bytesConsumed_ = pVar.M();
                            }
                        }
                        z10 = true;
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

    public static HandshakerResp parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (HandshakerResp) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static HandshakerResp parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (HandshakerResp) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static HandshakerResp parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
        return (HandshakerResp) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
