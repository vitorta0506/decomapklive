package io.opencensus.proto.stats.v1;

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
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes7.dex */
public final class DistributionAggregation extends GeneratedMessageV3 implements io.opencensus.proto.stats.v1.b {
    public static final int BUCKET_BOUNDS_FIELD_NUMBER = 1;
    private static final DistributionAggregation DEFAULT_INSTANCE = new DistributionAggregation();
    private static final e2<DistributionAggregation> PARSER = new a();
    private static final long serialVersionUID = 0;
    private int bucketBoundsMemoizedSerializedSize;
    private List<Double> bucketBounds_;
    private byte memoizedIsInitialized;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static class a extends com.google.protobuf.c<DistributionAggregation> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public DistributionAggregation m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new DistributionAggregation(pVar, f0Var, null);
        }
    }

    /* loaded from: classes7.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements io.opencensus.proto.stats.v1.b {

        /* renamed from: e  reason: collision with root package name */
        private int f51071e;

        /* renamed from: f  reason: collision with root package name */
        private List<Double> f51072f;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f51071e & 1) != 1) {
                this.f51072f = new ArrayList(this.f51072f);
                this.f51071e |= 1;
            }
        }

        private void d0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return e.f51114n.d(DistributionAggregation.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public DistributionAggregation build() {
            DistributionAggregation I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public DistributionAggregation I() {
            DistributionAggregation distributionAggregation = new DistributionAggregation(this, (a) null);
            if ((this.f51071e & 1) == 1) {
                this.f51072f = Collections.unmodifiableList(this.f51072f);
                this.f51071e &= -2;
            }
            distributionAggregation.bucketBounds_ = this.f51072f;
            Q();
            return distributionAggregation;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: b0 */
        public DistributionAggregation getDefaultInstanceForType() {
            return DistributionAggregation.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.opencensus.proto.stats.v1.DistributionAggregation.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.opencensus.proto.stats.v1.DistributionAggregation.access$600()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.opencensus.proto.stats.v1.DistributionAggregation r3 = (io.opencensus.proto.stats.v1.DistributionAggregation) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.opencensus.proto.stats.v1.DistributionAggregation r4 = (io.opencensus.proto.stats.v1.DistributionAggregation) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.opencensus.proto.stats.v1.DistributionAggregation.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.opencensus.proto.stats.v1.DistributionAggregation$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof DistributionAggregation) {
                return h0((DistributionAggregation) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return e.f51113m;
        }

        public b h0(DistributionAggregation distributionAggregation) {
            if (distributionAggregation == DistributionAggregation.getDefaultInstance()) {
                return this;
            }
            if (!distributionAggregation.bucketBounds_.isEmpty()) {
                if (this.f51072f.isEmpty()) {
                    this.f51072f = distributionAggregation.bucketBounds_;
                    this.f51071e &= -2;
                } else {
                    a0();
                    this.f51072f.addAll(distributionAggregation.bucketBounds_);
                }
                R();
            }
            z(((GeneratedMessageV3) distributionAggregation).unknownFields);
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
            return (b) super.V(h3Var);
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            this.f51072f = Collections.emptyList();
            d0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f51072f = Collections.emptyList();
            d0();
        }
    }

    /* synthetic */ DistributionAggregation(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static DistributionAggregation getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return e.f51113m;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static DistributionAggregation parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (DistributionAggregation) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static DistributionAggregation parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<DistributionAggregation> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof DistributionAggregation)) {
            return super.equals(obj);
        }
        DistributionAggregation distributionAggregation = (DistributionAggregation) obj;
        return (getBucketBoundsList().equals(distributionAggregation.getBucketBoundsList())) && this.unknownFields.equals(distributionAggregation.unknownFields);
    }

    public double getBucketBounds(int i9) {
        return this.bucketBounds_.get(i9).doubleValue();
    }

    public int getBucketBoundsCount() {
        return this.bucketBounds_.size();
    }

    public List<Double> getBucketBoundsList() {
        return this.bucketBounds_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<DistributionAggregation> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int size = getBucketBoundsList().size() * 8;
        int i10 = size + 0;
        if (!getBucketBoundsList().isEmpty()) {
            i10 = i10 + 1 + CodedOutputStream.y(size);
        }
        this.bucketBoundsMemoizedSerializedSize = size;
        int serializedSize = i10 + this.unknownFields.getSerializedSize();
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
        int hashCode = 779 + getDescriptor().hashCode();
        if (getBucketBoundsCount() > 0) {
            hashCode = (((hashCode * 37) + 1) * 53) + getBucketBoundsList().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return e.f51114n.d(DistributionAggregation.class, b.class);
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

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        getSerializedSize();
        if (getBucketBoundsList().size() > 0) {
            codedOutputStream.d1(10);
            codedOutputStream.d1(this.bucketBoundsMemoizedSerializedSize);
        }
        for (int i9 = 0; i9 < this.bucketBounds_.size(); i9++) {
            codedOutputStream.u0(this.bucketBounds_.get(i9).doubleValue());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ DistributionAggregation(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(DistributionAggregation distributionAggregation) {
        return DEFAULT_INSTANCE.toBuilder().h0(distributionAggregation);
    }

    public static DistributionAggregation parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private DistributionAggregation(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.bucketBoundsMemoizedSerializedSize = -1;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static DistributionAggregation parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (DistributionAggregation) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static DistributionAggregation parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public DistributionAggregation getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).h0(this);
    }

    public static DistributionAggregation parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    public static DistributionAggregation parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    private DistributionAggregation() {
        this.bucketBoundsMemoizedSerializedSize = -1;
        this.memoizedIsInitialized = (byte) -1;
        this.bucketBounds_ = Collections.emptyList();
    }

    public static DistributionAggregation parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static DistributionAggregation parseFrom(InputStream inputStream) throws IOException {
        return (DistributionAggregation) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static DistributionAggregation parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (DistributionAggregation) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    private DistributionAggregation(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        boolean z11 = false;
        while (true) {
            if (z10) {
                break;
            }
            try {
                try {
                    try {
                        int L = pVar.L();
                        if (L != 0) {
                            if (L == 9) {
                                if (!(z11 & true)) {
                                    this.bucketBounds_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.bucketBounds_.add(Double.valueOf(pVar.t()));
                            } else if (L != 10) {
                                if (!parseUnknownFieldProto3(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                int q10 = pVar.q(pVar.D());
                                if (!(z11 & true) && pVar.e() > 0) {
                                    this.bucketBounds_ = new ArrayList();
                                    z11 |= true;
                                }
                                while (pVar.e() > 0) {
                                    this.bucketBounds_.add(Double.valueOf(pVar.t()));
                                }
                                pVar.p(q10);
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
                if (z11 & true) {
                    this.bucketBounds_ = Collections.unmodifiableList(this.bucketBounds_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static DistributionAggregation parseFrom(p pVar) throws IOException {
        return (DistributionAggregation) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static DistributionAggregation parseFrom(p pVar, f0 f0Var) throws IOException {
        return (DistributionAggregation) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
