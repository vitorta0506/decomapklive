package io.opencensus.proto.metrics.v1;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Timestamp;
import com.google.protobuf.WireFormat;
import com.google.protobuf.a;
import com.google.protobuf.e1;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.g1;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.l2;
import com.google.protobuf.o1;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import com.google.protobuf.u0;
import com.google.protobuf.z2;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes7.dex */
public final class DistributionValue extends GeneratedMessageV3 implements io.opencensus.proto.metrics.v1.a {
    public static final int BUCKETS_FIELD_NUMBER = 5;
    public static final int BUCKET_OPTIONS_FIELD_NUMBER = 4;
    public static final int COUNT_FIELD_NUMBER = 1;
    private static final DistributionValue DEFAULT_INSTANCE = new DistributionValue();
    private static final e2<DistributionValue> PARSER = new a();
    public static final int SUM_FIELD_NUMBER = 2;
    public static final int SUM_OF_SQUARED_DEVIATION_FIELD_NUMBER = 3;
    private static final long serialVersionUID = 0;
    private int bitField0_;
    private BucketOptions bucketOptions_;
    private List<Bucket> buckets_;
    private long count_;
    private byte memoizedIsInitialized;
    private double sumOfSquaredDeviation_;
    private double sum_;

    /* loaded from: classes7.dex */
    public static final class Bucket extends GeneratedMessageV3 implements d {
        public static final int COUNT_FIELD_NUMBER = 1;
        public static final int EXEMPLAR_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private long count_;
        private Exemplar exemplar_;
        private byte memoizedIsInitialized;
        private static final Bucket DEFAULT_INSTANCE = new Bucket();
        private static final e2<Bucket> PARSER = new a();

        /* loaded from: classes7.dex */
        static class a extends com.google.protobuf.c<Bucket> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public Bucket m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new Bucket(pVar, f0Var, null);
            }
        }

        /* loaded from: classes7.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements d {

            /* renamed from: e  reason: collision with root package name */
            private long f50968e;

            /* renamed from: f  reason: collision with root package name */
            private Exemplar f50969f;

            /* renamed from: g  reason: collision with root package name */
            private q2<Exemplar, Exemplar.c, f> f50970g;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.opencensus.proto.metrics.v1.f.f51056t.d(Bucket.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public Bucket build() {
                Bucket I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public Bucket I() {
                Bucket bucket = new Bucket(this, (a) null);
                bucket.count_ = this.f50968e;
                q2<Exemplar, Exemplar.c, f> q2Var = this.f50970g;
                if (q2Var == null) {
                    bucket.exemplar_ = this.f50969f;
                } else {
                    bucket.exemplar_ = q2Var.b();
                }
                Q();
                return bucket;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public Bucket getDefaultInstanceForType() {
                return Bucket.getDefaultInstance();
            }

            public b d0(Exemplar exemplar) {
                q2<Exemplar, Exemplar.c, f> q2Var = this.f50970g;
                if (q2Var == null) {
                    Exemplar exemplar2 = this.f50969f;
                    if (exemplar2 != null) {
                        this.f50969f = Exemplar.newBuilder(exemplar2).i0(exemplar).I();
                    } else {
                        this.f50969f = exemplar;
                    }
                    R();
                } else {
                    q2Var.e(exemplar);
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
            public io.opencensus.proto.metrics.v1.DistributionValue.Bucket.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.opencensus.proto.metrics.v1.DistributionValue.Bucket.access$2400()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.opencensus.proto.metrics.v1.DistributionValue$Bucket r3 = (io.opencensus.proto.metrics.v1.DistributionValue.Bucket) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.opencensus.proto.metrics.v1.DistributionValue$Bucket r4 = (io.opencensus.proto.metrics.v1.DistributionValue.Bucket) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.opencensus.proto.metrics.v1.DistributionValue.Bucket.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.opencensus.proto.metrics.v1.DistributionValue$Bucket$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: g0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof Bucket) {
                    return h0((Bucket) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return io.opencensus.proto.metrics.v1.f.f51055s;
            }

            public b h0(Bucket bucket) {
                if (bucket == Bucket.getDefaultInstance()) {
                    return this;
                }
                if (bucket.getCount() != 0) {
                    j0(bucket.getCount());
                }
                if (bucket.hasExemplar()) {
                    d0(bucket.getExemplar());
                }
                z(((GeneratedMessageV3) bucket).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: i0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            public b j0(long j10) {
                this.f50968e = j10;
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: k0 */
            public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.c(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: l0 */
            public final b f1(h3 h3Var) {
                return (b) super.V(h3Var);
            }

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                this.f50969f = null;
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f50969f = null;
                b0();
            }
        }

        /* synthetic */ Bucket(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static Bucket getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.opencensus.proto.metrics.v1.f.f51055s;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Bucket parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Bucket) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Bucket parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<Bucket> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Bucket)) {
                return super.equals(obj);
            }
            Bucket bucket = (Bucket) obj;
            boolean z10 = ((getCount() > bucket.getCount() ? 1 : (getCount() == bucket.getCount() ? 0 : -1)) == 0) && hasExemplar() == bucket.hasExemplar();
            if (hasExemplar()) {
                z10 = z10 && getExemplar().equals(bucket.getExemplar());
            }
            return z10 && this.unknownFields.equals(bucket.unknownFields);
        }

        public long getCount() {
            return this.count_;
        }

        public Exemplar getExemplar() {
            Exemplar exemplar = this.exemplar_;
            return exemplar == null ? Exemplar.getDefaultInstance() : exemplar;
        }

        public f getExemplarOrBuilder() {
            return getExemplar();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<Bucket> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            long j10 = this.count_;
            int z10 = j10 != 0 ? 0 + CodedOutputStream.z(1, j10) : 0;
            if (this.exemplar_ != null) {
                z10 += CodedOutputStream.G(2, getExemplar());
            }
            int serializedSize = z10 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasExemplar() {
            return this.exemplar_ != null;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + u0.i(getCount());
            if (hasExemplar()) {
                hashCode = (((hashCode * 37) + 2) * 53) + getExemplar().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return io.opencensus.proto.metrics.v1.f.f51056t.d(Bucket.class, b.class);
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
            long j10 = this.count_;
            if (j10 != 0) {
                codedOutputStream.J0(1, j10);
            }
            if (this.exemplar_ != null) {
                codedOutputStream.L0(2, getExemplar());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ Bucket(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(Bucket bucket) {
            return DEFAULT_INSTANCE.toBuilder().h0(bucket);
        }

        public static Bucket parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private Bucket(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Bucket parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Bucket) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static Bucket parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public Bucket getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).h0(this);
        }

        public static Bucket parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private Bucket() {
            this.memoizedIsInitialized = (byte) -1;
            this.count_ = 0L;
        }

        public static Bucket parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static Bucket parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static Bucket parseFrom(InputStream inputStream) throws IOException {
            return (Bucket) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private Bucket(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            this();
            Objects.requireNonNull(f0Var);
            h3.b h10 = h3.h();
            boolean z10 = false;
            while (!z10) {
                try {
                    try {
                        int L = pVar.L();
                        if (L != 0) {
                            if (L == 8) {
                                this.count_ = pVar.A();
                            } else if (L != 18) {
                                if (!parseUnknownFieldProto3(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                Exemplar exemplar = this.exemplar_;
                                Exemplar.c builder = exemplar != null ? exemplar.toBuilder() : null;
                                Exemplar exemplar2 = (Exemplar) pVar.B(Exemplar.parser(), f0Var);
                                this.exemplar_ = exemplar2;
                                if (builder != null) {
                                    builder.i0(exemplar2);
                                    this.exemplar_ = builder.I();
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

        public static Bucket parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Bucket) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static Bucket parseFrom(p pVar) throws IOException {
            return (Bucket) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static Bucket parseFrom(p pVar, f0 f0Var) throws IOException {
            return (Bucket) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes7.dex */
    public static final class BucketOptions extends GeneratedMessageV3 implements c {
        public static final int EXPLICIT_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private int typeCase_;
        private Object type_;
        private static final BucketOptions DEFAULT_INSTANCE = new BucketOptions();
        private static final e2<BucketOptions> PARSER = new a();

        /* loaded from: classes7.dex */
        public static final class Explicit extends GeneratedMessageV3 implements c {
            public static final int BOUNDS_FIELD_NUMBER = 1;
            private static final Explicit DEFAULT_INSTANCE = new Explicit();
            private static final e2<Explicit> PARSER = new a();
            private static final long serialVersionUID = 0;
            private int boundsMemoizedSerializedSize;
            private List<Double> bounds_;
            private byte memoizedIsInitialized;

            /* loaded from: classes7.dex */
            static class a extends com.google.protobuf.c<Explicit> {
                a() {
                }

                @Override // com.google.protobuf.e2
                /* renamed from: G */
                public Explicit m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                    return new Explicit(pVar, f0Var, null);
                }
            }

            /* loaded from: classes7.dex */
            public static final class b extends GeneratedMessageV3.b<b> implements c {

                /* renamed from: e  reason: collision with root package name */
                private int f50971e;

                /* renamed from: f  reason: collision with root package name */
                private List<Double> f50972f;

                /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                    this(cVar);
                }

                private void a0() {
                    if ((this.f50971e & 1) != 1) {
                        this.f50972f = new ArrayList(this.f50972f);
                        this.f50971e |= 1;
                    }
                }

                private void d0() {
                    boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e K() {
                    return io.opencensus.proto.metrics.v1.f.f51054r.d(Explicit.class, b.class);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
                /* renamed from: W */
                public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (b) super.L(fieldDescriptor, obj);
                }

                @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                /* renamed from: X */
                public Explicit build() {
                    Explicit I = I();
                    if (I.isInitialized()) {
                        return I;
                    }
                    throw a.AbstractC0142a.A(I);
                }

                @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                /* renamed from: Y */
                public Explicit I() {
                    Explicit explicit = new Explicit(this, (a) null);
                    if ((this.f50971e & 1) == 1) {
                        this.f50972f = Collections.unmodifiableList(this.f50972f);
                        this.f50971e &= -2;
                    }
                    explicit.bounds_ = this.f50972f;
                    Q();
                    return explicit;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
                /* renamed from: Z */
                public b n() {
                    return (b) super.n();
                }

                @Override // com.google.protobuf.p1, com.google.protobuf.r1
                /* renamed from: b0 */
                public Explicit getDefaultInstanceForType() {
                    return Explicit.getDefaultInstance();
                }

                /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: e0 */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public io.opencensus.proto.metrics.v1.DistributionValue.BucketOptions.Explicit.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.google.protobuf.e2 r1 = io.opencensus.proto.metrics.v1.DistributionValue.BucketOptions.Explicit.access$600()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        io.opencensus.proto.metrics.v1.DistributionValue$BucketOptions$Explicit r3 = (io.opencensus.proto.metrics.v1.DistributionValue.BucketOptions.Explicit) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                        io.opencensus.proto.metrics.v1.DistributionValue$BucketOptions$Explicit r4 = (io.opencensus.proto.metrics.v1.DistributionValue.BucketOptions.Explicit) r4     // Catch: java.lang.Throwable -> L11
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
                    throw new UnsupportedOperationException("Method not decompiled: io.opencensus.proto.metrics.v1.DistributionValue.BucketOptions.Explicit.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.opencensus.proto.metrics.v1.DistributionValue$BucketOptions$Explicit$b");
                }

                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: g0 */
                public b v(l1 l1Var) {
                    if (l1Var instanceof Explicit) {
                        return h0((Explicit) l1Var);
                    }
                    super.P0(l1Var);
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
                public Descriptors.b getDescriptorForType() {
                    return io.opencensus.proto.metrics.v1.f.f51053q;
                }

                public b h0(Explicit explicit) {
                    if (explicit == Explicit.getDefaultInstance()) {
                        return this;
                    }
                    if (!explicit.bounds_.isEmpty()) {
                        if (this.f50972f.isEmpty()) {
                            this.f50972f = explicit.bounds_;
                            this.f50971e &= -2;
                        } else {
                            a0();
                            this.f50972f.addAll(explicit.bounds_);
                        }
                        R();
                    }
                    z(((GeneratedMessageV3) explicit).unknownFields);
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
                    this.f50972f = Collections.emptyList();
                    d0();
                }

                private b(GeneratedMessageV3.c cVar) {
                    super(cVar);
                    this.f50972f = Collections.emptyList();
                    d0();
                }
            }

            /* synthetic */ Explicit(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
                this(pVar, f0Var);
            }

            public static Explicit getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.b getDescriptor() {
                return io.opencensus.proto.metrics.v1.f.f51053q;
            }

            public static b newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static Explicit parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (Explicit) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static Explicit parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.l(byteBuffer);
            }

            public static e2<Explicit> parser() {
                return PARSER;
            }

            @Override // com.google.protobuf.a
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof Explicit)) {
                    return super.equals(obj);
                }
                Explicit explicit = (Explicit) obj;
                return (getBoundsList().equals(explicit.getBoundsList())) && this.unknownFields.equals(explicit.unknownFields);
            }

            public double getBounds(int i9) {
                return this.bounds_.get(i9).doubleValue();
            }

            public int getBoundsCount() {
                return this.bounds_.size();
            }

            public List<Double> getBoundsList() {
                return this.bounds_;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public e2<Explicit> getParserForType() {
                return PARSER;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
            public int getSerializedSize() {
                int i9 = this.memoizedSize;
                if (i9 != -1) {
                    return i9;
                }
                int size = getBoundsList().size() * 8;
                int i10 = size + 0;
                if (!getBoundsList().isEmpty()) {
                    i10 = i10 + 1 + CodedOutputStream.y(size);
                }
                this.boundsMemoizedSerializedSize = size;
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
                if (getBoundsCount() > 0) {
                    hashCode = (((hashCode * 37) + 1) * 53) + getBoundsList().hashCode();
                }
                int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode2;
                return hashCode2;
            }

            @Override // com.google.protobuf.GeneratedMessageV3
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return io.opencensus.proto.metrics.v1.f.f51054r.d(Explicit.class, b.class);
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
                if (getBoundsList().size() > 0) {
                    codedOutputStream.d1(10);
                    codedOutputStream.d1(this.boundsMemoizedSerializedSize);
                }
                for (int i9 = 0; i9 < this.bounds_.size(); i9++) {
                    codedOutputStream.u0(this.bounds_.get(i9).doubleValue());
                }
                this.unknownFields.writeTo(codedOutputStream);
            }

            /* synthetic */ Explicit(GeneratedMessageV3.b bVar, a aVar) {
                this(bVar);
            }

            public static b newBuilder(Explicit explicit) {
                return DEFAULT_INSTANCE.toBuilder().h0(explicit);
            }

            public static Explicit parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.f(byteBuffer, f0Var);
            }

            private Explicit(GeneratedMessageV3.b<?> bVar) {
                super(bVar);
                this.boundsMemoizedSerializedSize = -1;
                this.memoizedIsInitialized = (byte) -1;
            }

            public static Explicit parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
                return (Explicit) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
            }

            public static Explicit parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.c(byteString);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
            public Explicit getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public b toBuilder() {
                return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).h0(this);
            }

            public static Explicit parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.b(byteString, f0Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public b newBuilderForType() {
                return newBuilder();
            }

            public static Explicit parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.a(bArr);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.protobuf.GeneratedMessageV3
            public b newBuilderForType(GeneratedMessageV3.c cVar) {
                return new b(cVar, null);
            }

            private Explicit() {
                this.boundsMemoizedSerializedSize = -1;
                this.memoizedIsInitialized = (byte) -1;
                this.bounds_ = Collections.emptyList();
            }

            public static Explicit parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.g(bArr, f0Var);
            }

            public static Explicit parseFrom(InputStream inputStream) throws IOException {
                return (Explicit) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            public static Explicit parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
                return (Explicit) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
            }

            private Explicit(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                            this.bounds_ = new ArrayList();
                                            z11 |= true;
                                        }
                                        this.bounds_.add(Double.valueOf(pVar.t()));
                                    } else if (L != 10) {
                                        if (!parseUnknownFieldProto3(pVar, h10, f0Var, L)) {
                                        }
                                    } else {
                                        int q10 = pVar.q(pVar.D());
                                        if (!(z11 & true) && pVar.e() > 0) {
                                            this.bounds_ = new ArrayList();
                                            z11 |= true;
                                        }
                                        while (pVar.e() > 0) {
                                            this.bounds_.add(Double.valueOf(pVar.t()));
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
                            this.bounds_ = Collections.unmodifiableList(this.bounds_);
                        }
                        this.unknownFields = h10.build();
                        makeExtensionsImmutable();
                    }
                }
            }

            public static Explicit parseFrom(p pVar) throws IOException {
                return (Explicit) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
            }

            public static Explicit parseFrom(p pVar, f0 f0Var) throws IOException {
                return (Explicit) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
            }
        }

        /* loaded from: classes7.dex */
        public enum TypeCase implements u0.c {
            EXPLICIT(1),
            TYPE_NOT_SET(0);
            
            private final int value;

            TypeCase(int i9) {
                this.value = i9;
            }

            public static TypeCase forNumber(int i9) {
                if (i9 != 0) {
                    if (i9 != 1) {
                        return null;
                    }
                    return EXPLICIT;
                }
                return TYPE_NOT_SET;
            }

            @Override // com.google.protobuf.u0.c
            public int getNumber() {
                return this.value;
            }

            @Deprecated
            public static TypeCase valueOf(int i9) {
                return forNumber(i9);
            }
        }

        /* loaded from: classes7.dex */
        static class a extends com.google.protobuf.c<BucketOptions> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public BucketOptions m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new BucketOptions(pVar, f0Var, null);
            }
        }

        /* loaded from: classes7.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements c {

            /* renamed from: e  reason: collision with root package name */
            private int f50973e;

            /* renamed from: f  reason: collision with root package name */
            private Object f50974f;

            /* renamed from: g  reason: collision with root package name */
            private q2<Explicit, Explicit.b, c> f50975g;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.opencensus.proto.metrics.v1.f.f51052p.d(BucketOptions.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public BucketOptions build() {
                BucketOptions I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public BucketOptions I() {
                BucketOptions bucketOptions = new BucketOptions(this, (a) null);
                if (this.f50973e == 1) {
                    q2<Explicit, Explicit.b, c> q2Var = this.f50975g;
                    if (q2Var == null) {
                        bucketOptions.type_ = this.f50974f;
                    } else {
                        bucketOptions.type_ = q2Var.b();
                    }
                }
                bucketOptions.typeCase_ = this.f50973e;
                Q();
                return bucketOptions;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public BucketOptions getDefaultInstanceForType() {
                return BucketOptions.getDefaultInstance();
            }

            public b d0(Explicit explicit) {
                q2<Explicit, Explicit.b, c> q2Var = this.f50975g;
                if (q2Var == null) {
                    if (this.f50973e == 1 && this.f50974f != Explicit.getDefaultInstance()) {
                        this.f50974f = Explicit.newBuilder((Explicit) this.f50974f).h0(explicit).I();
                    } else {
                        this.f50974f = explicit;
                    }
                    R();
                } else {
                    if (this.f50973e == 1) {
                        q2Var.e(explicit);
                    }
                    this.f50975g.g(explicit);
                }
                this.f50973e = 1;
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.opencensus.proto.metrics.v1.DistributionValue.BucketOptions.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.opencensus.proto.metrics.v1.DistributionValue.BucketOptions.access$1500()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.opencensus.proto.metrics.v1.DistributionValue$BucketOptions r3 = (io.opencensus.proto.metrics.v1.DistributionValue.BucketOptions) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.opencensus.proto.metrics.v1.DistributionValue$BucketOptions r4 = (io.opencensus.proto.metrics.v1.DistributionValue.BucketOptions) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.opencensus.proto.metrics.v1.DistributionValue.BucketOptions.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.opencensus.proto.metrics.v1.DistributionValue$BucketOptions$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: g0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof BucketOptions) {
                    return h0((BucketOptions) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return io.opencensus.proto.metrics.v1.f.f51051o;
            }

            public b h0(BucketOptions bucketOptions) {
                if (bucketOptions == BucketOptions.getDefaultInstance()) {
                    return this;
                }
                if (b.f50981a[bucketOptions.getTypeCase().ordinal()] == 1) {
                    d0(bucketOptions.getExplicit());
                }
                z(((GeneratedMessageV3) bucketOptions).unknownFields);
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
                this.f50973e = 0;
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f50973e = 0;
                b0();
            }
        }

        /* loaded from: classes7.dex */
        public interface c extends r1 {
        }

        /* synthetic */ BucketOptions(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static BucketOptions getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.opencensus.proto.metrics.v1.f.f51051o;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static BucketOptions parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (BucketOptions) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static BucketOptions parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<BucketOptions> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof BucketOptions)) {
                return super.equals(obj);
            }
            BucketOptions bucketOptions = (BucketOptions) obj;
            boolean z10 = getTypeCase().equals(bucketOptions.getTypeCase());
            if (z10) {
                if (this.typeCase_ == 1) {
                    z10 = z10 && getExplicit().equals(bucketOptions.getExplicit());
                }
                return z10 && this.unknownFields.equals(bucketOptions.unknownFields);
            }
            return false;
        }

        public Explicit getExplicit() {
            if (this.typeCase_ == 1) {
                return (Explicit) this.type_;
            }
            return Explicit.getDefaultInstance();
        }

        public c getExplicitOrBuilder() {
            if (this.typeCase_ == 1) {
                return (Explicit) this.type_;
            }
            return Explicit.getDefaultInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<BucketOptions> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int G = (this.typeCase_ == 1 ? 0 + CodedOutputStream.G(1, (Explicit) this.type_) : 0) + this.unknownFields.getSerializedSize();
            this.memoizedSize = G;
            return G;
        }

        public TypeCase getTypeCase() {
            return TypeCase.forNumber(this.typeCase_);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasExplicit() {
            return this.typeCase_ == 1;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (this.typeCase_ == 1) {
                hashCode = (((hashCode * 37) + 1) * 53) + getExplicit().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return io.opencensus.proto.metrics.v1.f.f51052p.d(BucketOptions.class, b.class);
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
            if (this.typeCase_ == 1) {
                codedOutputStream.L0(1, (Explicit) this.type_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ BucketOptions(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(BucketOptions bucketOptions) {
            return DEFAULT_INSTANCE.toBuilder().h0(bucketOptions);
        }

        public static BucketOptions parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private BucketOptions(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.typeCase_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static BucketOptions parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (BucketOptions) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static BucketOptions parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public BucketOptions getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).h0(this);
        }

        public static BucketOptions parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        public static BucketOptions parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        private BucketOptions() {
            this.typeCase_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static BucketOptions parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static BucketOptions parseFrom(InputStream inputStream) throws IOException {
            return (BucketOptions) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private BucketOptions(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            this();
            Objects.requireNonNull(f0Var);
            h3.b h10 = h3.h();
            boolean z10 = false;
            while (!z10) {
                try {
                    try {
                        int L = pVar.L();
                        if (L != 0) {
                            if (L != 10) {
                                if (!parseUnknownFieldProto3(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                Explicit.b builder = this.typeCase_ == 1 ? ((Explicit) this.type_).toBuilder() : null;
                                o1 B = pVar.B(Explicit.parser(), f0Var);
                                this.type_ = B;
                                if (builder != null) {
                                    builder.h0((Explicit) B);
                                    this.type_ = builder.I();
                                }
                                this.typeCase_ = 1;
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

        public static BucketOptions parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (BucketOptions) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static BucketOptions parseFrom(p pVar) throws IOException {
            return (BucketOptions) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static BucketOptions parseFrom(p pVar, f0 f0Var) throws IOException {
            return (BucketOptions) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes7.dex */
    public static final class Exemplar extends GeneratedMessageV3 implements f {
        public static final int ATTACHMENTS_FIELD_NUMBER = 3;
        private static final Exemplar DEFAULT_INSTANCE = new Exemplar();
        private static final e2<Exemplar> PARSER = new a();
        public static final int TIMESTAMP_FIELD_NUMBER = 2;
        public static final int VALUE_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private g1<String, String> attachments_;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private Timestamp timestamp_;
        private double value_;

        /* loaded from: classes7.dex */
        static class a extends com.google.protobuf.c<Exemplar> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public Exemplar m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new Exemplar(pVar, f0Var, null);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes7.dex */
        public static final class b {

            /* renamed from: a  reason: collision with root package name */
            static final e1<String, String> f50976a;

            static {
                Descriptors.b bVar = io.opencensus.proto.metrics.v1.f.f51059w;
                WireFormat.FieldType fieldType = WireFormat.FieldType.STRING;
                f50976a = e1.k(bVar, fieldType, "", fieldType, "");
            }
        }

        /* loaded from: classes7.dex */
        public static final class c extends GeneratedMessageV3.b<c> implements f {

            /* renamed from: e  reason: collision with root package name */
            private double f50977e;

            /* renamed from: f  reason: collision with root package name */
            private Timestamp f50978f;

            /* renamed from: g  reason: collision with root package name */
            private q2<Timestamp, Timestamp.b, z2> f50979g;

            /* renamed from: h  reason: collision with root package name */
            private g1<String, String> f50980h;

            /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private g1<String, String> b0() {
                g1<String, String> g1Var = this.f50980h;
                return g1Var == null ? g1.g(b.f50976a) : g1Var;
            }

            private g1<String, String> d0() {
                R();
                if (this.f50980h == null) {
                    this.f50980h = g1.p(b.f50976a);
                }
                if (!this.f50980h.m()) {
                    this.f50980h = this.f50980h.f();
                }
                return this.f50980h;
            }

            private void e0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.opencensus.proto.metrics.v1.f.f51058v.d(Exemplar.class, c.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected g1 M(int i9) {
                if (i9 == 3) {
                    return b0();
                }
                throw new RuntimeException("Invalid map field number: " + i9);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected g1 N(int i9) {
                if (i9 == 3) {
                    return d0();
                }
                throw new RuntimeException("Invalid map field number: " + i9);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (c) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public Exemplar build() {
                Exemplar I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public Exemplar I() {
                Exemplar exemplar = new Exemplar(this, (a) null);
                exemplar.value_ = this.f50977e;
                q2<Timestamp, Timestamp.b, z2> q2Var = this.f50979g;
                if (q2Var == null) {
                    exemplar.timestamp_ = this.f50978f;
                } else {
                    exemplar.timestamp_ = q2Var.b();
                }
                exemplar.attachments_ = b0();
                exemplar.attachments_.n();
                exemplar.bitField0_ = 0;
                Q();
                return exemplar;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public c n() {
                return (c) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public Exemplar getDefaultInstanceForType() {
                return Exemplar.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: g0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.opencensus.proto.metrics.v1.DistributionValue.Exemplar.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.opencensus.proto.metrics.v1.DistributionValue.Exemplar.access$3600()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.opencensus.proto.metrics.v1.DistributionValue$Exemplar r3 = (io.opencensus.proto.metrics.v1.DistributionValue.Exemplar) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.opencensus.proto.metrics.v1.DistributionValue$Exemplar r4 = (io.opencensus.proto.metrics.v1.DistributionValue.Exemplar) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.opencensus.proto.metrics.v1.DistributionValue.Exemplar.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.opencensus.proto.metrics.v1.DistributionValue$Exemplar$c");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return io.opencensus.proto.metrics.v1.f.f51057u;
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: h0 */
            public c v(l1 l1Var) {
                if (l1Var instanceof Exemplar) {
                    return i0((Exemplar) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public c i0(Exemplar exemplar) {
                if (exemplar == Exemplar.getDefaultInstance()) {
                    return this;
                }
                if (exemplar.getValue() != 0.0d) {
                    n0(exemplar.getValue());
                }
                if (exemplar.hasTimestamp()) {
                    j0(exemplar.getTimestamp());
                }
                d0().o(exemplar.internalGetAttachments());
                z(((GeneratedMessageV3) exemplar).unknownFields);
                R();
                return this;
            }

            public c j0(Timestamp timestamp) {
                q2<Timestamp, Timestamp.b, z2> q2Var = this.f50979g;
                if (q2Var == null) {
                    Timestamp timestamp2 = this.f50978f;
                    if (timestamp2 != null) {
                        this.f50978f = Timestamp.newBuilder(timestamp2).g0(timestamp).I();
                    } else {
                        this.f50978f = timestamp;
                    }
                    R();
                } else {
                    q2Var.e(timestamp);
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
                return (c) super.V(h3Var);
            }

            public c n0(double d10) {
                this.f50977e = d10;
                R();
                return this;
            }

            /* synthetic */ c(a aVar) {
                this();
            }

            private c() {
                this.f50978f = null;
                e0();
            }

            private c(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f50978f = null;
                e0();
            }
        }

        /* synthetic */ Exemplar(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static Exemplar getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.opencensus.proto.metrics.v1.f.f51057u;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public g1<String, String> internalGetAttachments() {
            g1<String, String> g1Var = this.attachments_;
            return g1Var == null ? g1.g(b.f50976a) : g1Var;
        }

        public static c newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Exemplar parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Exemplar) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Exemplar parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<Exemplar> parser() {
            return PARSER;
        }

        public boolean containsAttachments(String str) {
            Objects.requireNonNull(str);
            return internalGetAttachments().i().containsKey(str);
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Exemplar)) {
                return super.equals(obj);
            }
            Exemplar exemplar = (Exemplar) obj;
            boolean z10 = ((Double.doubleToLongBits(getValue()) > Double.doubleToLongBits(exemplar.getValue()) ? 1 : (Double.doubleToLongBits(getValue()) == Double.doubleToLongBits(exemplar.getValue()) ? 0 : -1)) == 0) && hasTimestamp() == exemplar.hasTimestamp();
            if (hasTimestamp()) {
                z10 = z10 && getTimestamp().equals(exemplar.getTimestamp());
            }
            return (z10 && internalGetAttachments().equals(exemplar.internalGetAttachments())) && this.unknownFields.equals(exemplar.unknownFields);
        }

        @Deprecated
        public Map<String, String> getAttachments() {
            return getAttachmentsMap();
        }

        public int getAttachmentsCount() {
            return internalGetAttachments().i().size();
        }

        public Map<String, String> getAttachmentsMap() {
            return internalGetAttachments().i();
        }

        public String getAttachmentsOrDefault(String str, String str2) {
            Objects.requireNonNull(str);
            Map<String, String> i9 = internalGetAttachments().i();
            return i9.containsKey(str) ? i9.get(str) : str2;
        }

        public String getAttachmentsOrThrow(String str) {
            Objects.requireNonNull(str);
            Map<String, String> i9 = internalGetAttachments().i();
            if (i9.containsKey(str)) {
                return i9.get(str);
            }
            throw new IllegalArgumentException();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<Exemplar> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            double d10 = this.value_;
            int j10 = d10 != 0.0d ? 0 + CodedOutputStream.j(1, d10) : 0;
            if (this.timestamp_ != null) {
                j10 += CodedOutputStream.G(2, getTimestamp());
            }
            for (Map.Entry<String, String> entry : internalGetAttachments().i().entrySet()) {
                j10 += CodedOutputStream.G(3, b.f50976a.newBuilderForType().N(entry.getKey()).P(entry.getValue()).build());
            }
            int serializedSize = j10 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        public Timestamp getTimestamp() {
            Timestamp timestamp = this.timestamp_;
            return timestamp == null ? Timestamp.getDefaultInstance() : timestamp;
        }

        public z2 getTimestampOrBuilder() {
            return getTimestamp();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public double getValue() {
            return this.value_;
        }

        public boolean hasTimestamp() {
            return this.timestamp_ != null;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + u0.i(Double.doubleToLongBits(getValue()));
            if (hasTimestamp()) {
                hashCode = (((hashCode * 37) + 2) * 53) + getTimestamp().hashCode();
            }
            if (!internalGetAttachments().i().isEmpty()) {
                hashCode = (((hashCode * 37) + 3) * 53) + internalGetAttachments().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return io.opencensus.proto.metrics.v1.f.f51058v.d(Exemplar.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected g1 internalGetMapField(int i9) {
            if (i9 == 3) {
                return internalGetAttachments();
            }
            throw new RuntimeException("Invalid map field number: " + i9);
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
            double d10 = this.value_;
            if (d10 != 0.0d) {
                codedOutputStream.t0(1, d10);
            }
            if (this.timestamp_ != null) {
                codedOutputStream.L0(2, getTimestamp());
            }
            GeneratedMessageV3.serializeStringMapTo(codedOutputStream, internalGetAttachments(), b.f50976a, 3);
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ Exemplar(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static c newBuilder(Exemplar exemplar) {
            return DEFAULT_INSTANCE.toBuilder().i0(exemplar);
        }

        public static Exemplar parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private Exemplar(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Exemplar parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Exemplar) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static Exemplar parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public Exemplar getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public c toBuilder() {
            return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).i0(this);
        }

        public static Exemplar parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public c newBuilderForType() {
            return newBuilder();
        }

        private Exemplar() {
            this.memoizedIsInitialized = (byte) -1;
            this.value_ = 0.0d;
        }

        public static Exemplar parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public c newBuilderForType(GeneratedMessageV3.c cVar) {
            return new c(cVar, null);
        }

        public static Exemplar parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static Exemplar parseFrom(InputStream inputStream) throws IOException {
            return (Exemplar) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        /* JADX WARN: Type inference failed for: r3v7, types: [java.lang.Object] */
        /* JADX WARN: Type inference failed for: r5v3, types: [java.lang.Object] */
        private Exemplar(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            if (L == 9) {
                                this.value_ = pVar.t();
                            } else if (L == 18) {
                                Timestamp timestamp = this.timestamp_;
                                Timestamp.b builder = timestamp != null ? timestamp.toBuilder() : null;
                                Timestamp timestamp2 = (Timestamp) pVar.B(Timestamp.parser(), f0Var);
                                this.timestamp_ = timestamp2;
                                if (builder != null) {
                                    builder.g0(timestamp2);
                                    this.timestamp_ = builder.I();
                                }
                            } else if (L != 26) {
                                if (!parseUnknownFieldProto3(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                if (!(z11 & true)) {
                                    this.attachments_ = g1.p(b.f50976a);
                                    z11 |= true;
                                }
                                e1 e1Var = (e1) pVar.B(b.f50976a.getParserForType(), f0Var);
                                this.attachments_.l().put(e1Var.f(), e1Var.h());
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

        public static Exemplar parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Exemplar) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static Exemplar parseFrom(p pVar) throws IOException {
            return (Exemplar) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static Exemplar parseFrom(p pVar, f0 f0Var) throws IOException {
            return (Exemplar) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static class a extends com.google.protobuf.c<DistributionValue> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public DistributionValue m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new DistributionValue(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f50981a;

        static {
            int[] iArr = new int[BucketOptions.TypeCase.values().length];
            f50981a = iArr;
            try {
                iArr[BucketOptions.TypeCase.EXPLICIT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f50981a[BucketOptions.TypeCase.TYPE_NOT_SET.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* loaded from: classes7.dex */
    public interface c extends r1 {
    }

    /* loaded from: classes7.dex */
    public interface d extends r1 {
    }

    /* loaded from: classes7.dex */
    public static final class e extends GeneratedMessageV3.b<e> implements io.opencensus.proto.metrics.v1.a {

        /* renamed from: e  reason: collision with root package name */
        private int f50982e;

        /* renamed from: f  reason: collision with root package name */
        private long f50983f;

        /* renamed from: g  reason: collision with root package name */
        private double f50984g;

        /* renamed from: h  reason: collision with root package name */
        private double f50985h;

        /* renamed from: i  reason: collision with root package name */
        private BucketOptions f50986i;

        /* renamed from: j  reason: collision with root package name */
        private q2<BucketOptions, BucketOptions.b, c> f50987j;

        /* renamed from: k  reason: collision with root package name */
        private List<Bucket> f50988k;

        /* renamed from: l  reason: collision with root package name */
        private l2<Bucket, Bucket.b, d> f50989l;

        /* synthetic */ e(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f50982e & 16) != 16) {
                this.f50988k = new ArrayList(this.f50988k);
                this.f50982e |= 16;
            }
        }

        private l2<Bucket, Bucket.b, d> b0() {
            if (this.f50989l == null) {
                this.f50989l = new l2<>(this.f50988k, (this.f50982e & 16) == 16, H(), O());
                this.f50988k = null;
            }
            return this.f50989l;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                b0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return io.opencensus.proto.metrics.v1.f.f51050n.d(DistributionValue.class, e.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public e L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (e) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public DistributionValue build() {
            DistributionValue I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public DistributionValue I() {
            DistributionValue distributionValue = new DistributionValue(this, (a) null);
            distributionValue.count_ = this.f50983f;
            distributionValue.sum_ = this.f50984g;
            distributionValue.sumOfSquaredDeviation_ = this.f50985h;
            q2<BucketOptions, BucketOptions.b, c> q2Var = this.f50987j;
            if (q2Var == null) {
                distributionValue.bucketOptions_ = this.f50986i;
            } else {
                distributionValue.bucketOptions_ = q2Var.b();
            }
            l2<Bucket, Bucket.b, d> l2Var = this.f50989l;
            if (l2Var == null) {
                if ((this.f50982e & 16) == 16) {
                    this.f50988k = Collections.unmodifiableList(this.f50988k);
                    this.f50982e &= -17;
                }
                distributionValue.buckets_ = this.f50988k;
            } else {
                distributionValue.buckets_ = l2Var.e();
            }
            distributionValue.bitField0_ = 0;
            Q();
            return distributionValue;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public e n() {
            return (e) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: d0 */
        public DistributionValue getDefaultInstanceForType() {
            return DistributionValue.getDefaultInstance();
        }

        public e g0(BucketOptions bucketOptions) {
            q2<BucketOptions, BucketOptions.b, c> q2Var = this.f50987j;
            if (q2Var == null) {
                BucketOptions bucketOptions2 = this.f50986i;
                if (bucketOptions2 != null) {
                    this.f50986i = BucketOptions.newBuilder(bucketOptions2).h0(bucketOptions).I();
                } else {
                    this.f50986i = bucketOptions;
                }
                R();
            } else {
                q2Var.e(bucketOptions);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return io.opencensus.proto.metrics.v1.f.f51049m;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.opencensus.proto.metrics.v1.DistributionValue.e u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.opencensus.proto.metrics.v1.DistributionValue.access$5000()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.opencensus.proto.metrics.v1.DistributionValue r3 = (io.opencensus.proto.metrics.v1.DistributionValue) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.j0(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                io.opencensus.proto.metrics.v1.DistributionValue r4 = (io.opencensus.proto.metrics.v1.DistributionValue) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.j0(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: io.opencensus.proto.metrics.v1.DistributionValue.e.u(com.google.protobuf.p, com.google.protobuf.f0):io.opencensus.proto.metrics.v1.DistributionValue$e");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public e v(l1 l1Var) {
            if (l1Var instanceof DistributionValue) {
                return j0((DistributionValue) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public e j0(DistributionValue distributionValue) {
            if (distributionValue == DistributionValue.getDefaultInstance()) {
                return this;
            }
            if (distributionValue.getCount() != 0) {
                l0(distributionValue.getCount());
            }
            if (distributionValue.getSum() != 0.0d) {
                n0(distributionValue.getSum());
            }
            if (distributionValue.getSumOfSquaredDeviation() != 0.0d) {
                o0(distributionValue.getSumOfSquaredDeviation());
            }
            if (distributionValue.hasBucketOptions()) {
                g0(distributionValue.getBucketOptions());
            }
            if (this.f50989l == null) {
                if (!distributionValue.buckets_.isEmpty()) {
                    if (this.f50988k.isEmpty()) {
                        this.f50988k = distributionValue.buckets_;
                        this.f50982e &= -17;
                    } else {
                        a0();
                        this.f50988k.addAll(distributionValue.buckets_);
                    }
                    R();
                }
            } else if (!distributionValue.buckets_.isEmpty()) {
                if (this.f50989l.k()) {
                    this.f50989l.f();
                    this.f50989l = null;
                    this.f50988k = distributionValue.buckets_;
                    this.f50982e &= -17;
                    this.f50989l = GeneratedMessageV3.alwaysUseFieldBuilders ? b0() : null;
                } else {
                    this.f50989l.b(distributionValue.buckets_);
                }
            }
            z(((GeneratedMessageV3) distributionValue).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: k0 */
        public final e z(h3 h3Var) {
            return (e) super.z(h3Var);
        }

        public e l0(long j10) {
            this.f50983f = j10;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: m0 */
        public e c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (e) super.c(fieldDescriptor, obj);
        }

        public e n0(double d10) {
            this.f50984g = d10;
            R();
            return this;
        }

        public e o0(double d10) {
            this.f50985h = d10;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: q0 */
        public final e f1(h3 h3Var) {
            return (e) super.V(h3Var);
        }

        /* synthetic */ e(a aVar) {
            this();
        }

        private e() {
            this.f50986i = null;
            this.f50988k = Collections.emptyList();
            e0();
        }

        private e(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f50986i = null;
            this.f50988k = Collections.emptyList();
            e0();
        }
    }

    /* loaded from: classes7.dex */
    public interface f extends r1 {
    }

    /* synthetic */ DistributionValue(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static DistributionValue getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return io.opencensus.proto.metrics.v1.f.f51049m;
    }

    public static e newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static DistributionValue parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (DistributionValue) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static DistributionValue parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<DistributionValue> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof DistributionValue)) {
            return super.equals(obj);
        }
        DistributionValue distributionValue = (DistributionValue) obj;
        boolean z10 = ((((getCount() > distributionValue.getCount() ? 1 : (getCount() == distributionValue.getCount() ? 0 : -1)) == 0) && (Double.doubleToLongBits(getSum()) > Double.doubleToLongBits(distributionValue.getSum()) ? 1 : (Double.doubleToLongBits(getSum()) == Double.doubleToLongBits(distributionValue.getSum()) ? 0 : -1)) == 0) && (Double.doubleToLongBits(getSumOfSquaredDeviation()) > Double.doubleToLongBits(distributionValue.getSumOfSquaredDeviation()) ? 1 : (Double.doubleToLongBits(getSumOfSquaredDeviation()) == Double.doubleToLongBits(distributionValue.getSumOfSquaredDeviation()) ? 0 : -1)) == 0) && hasBucketOptions() == distributionValue.hasBucketOptions();
        if (hasBucketOptions()) {
            z10 = z10 && getBucketOptions().equals(distributionValue.getBucketOptions());
        }
        return (z10 && getBucketsList().equals(distributionValue.getBucketsList())) && this.unknownFields.equals(distributionValue.unknownFields);
    }

    public BucketOptions getBucketOptions() {
        BucketOptions bucketOptions = this.bucketOptions_;
        return bucketOptions == null ? BucketOptions.getDefaultInstance() : bucketOptions;
    }

    public c getBucketOptionsOrBuilder() {
        return getBucketOptions();
    }

    public Bucket getBuckets(int i9) {
        return this.buckets_.get(i9);
    }

    public int getBucketsCount() {
        return this.buckets_.size();
    }

    public List<Bucket> getBucketsList() {
        return this.buckets_;
    }

    public d getBucketsOrBuilder(int i9) {
        return this.buckets_.get(i9);
    }

    public List<? extends d> getBucketsOrBuilderList() {
        return this.buckets_;
    }

    public long getCount() {
        return this.count_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<DistributionValue> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        long j10 = this.count_;
        int z10 = j10 != 0 ? CodedOutputStream.z(1, j10) + 0 : 0;
        double d10 = this.sum_;
        if (d10 != 0.0d) {
            z10 += CodedOutputStream.j(2, d10);
        }
        double d11 = this.sumOfSquaredDeviation_;
        if (d11 != 0.0d) {
            z10 += CodedOutputStream.j(3, d11);
        }
        if (this.bucketOptions_ != null) {
            z10 += CodedOutputStream.G(4, getBucketOptions());
        }
        for (int i10 = 0; i10 < this.buckets_.size(); i10++) {
            z10 += CodedOutputStream.G(5, this.buckets_.get(i10));
        }
        int serializedSize = z10 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public double getSum() {
        return this.sum_;
    }

    public double getSumOfSquaredDeviation() {
        return this.sumOfSquaredDeviation_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasBucketOptions() {
        return this.bucketOptions_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = ((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + u0.i(getCount())) * 37) + 2) * 53) + u0.i(Double.doubleToLongBits(getSum()))) * 37) + 3) * 53) + u0.i(Double.doubleToLongBits(getSumOfSquaredDeviation()));
        if (hasBucketOptions()) {
            hashCode = (((hashCode * 37) + 4) * 53) + getBucketOptions().hashCode();
        }
        if (getBucketsCount() > 0) {
            hashCode = (((hashCode * 37) + 5) * 53) + getBucketsList().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return io.opencensus.proto.metrics.v1.f.f51050n.d(DistributionValue.class, e.class);
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
        long j10 = this.count_;
        if (j10 != 0) {
            codedOutputStream.J0(1, j10);
        }
        double d10 = this.sum_;
        if (d10 != 0.0d) {
            codedOutputStream.t0(2, d10);
        }
        double d11 = this.sumOfSquaredDeviation_;
        if (d11 != 0.0d) {
            codedOutputStream.t0(3, d11);
        }
        if (this.bucketOptions_ != null) {
            codedOutputStream.L0(4, getBucketOptions());
        }
        for (int i9 = 0; i9 < this.buckets_.size(); i9++) {
            codedOutputStream.L0(5, this.buckets_.get(i9));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ DistributionValue(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static e newBuilder(DistributionValue distributionValue) {
        return DEFAULT_INSTANCE.toBuilder().j0(distributionValue);
    }

    public static DistributionValue parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private DistributionValue(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static DistributionValue parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (DistributionValue) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static DistributionValue parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public DistributionValue getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e toBuilder() {
        return this == DEFAULT_INSTANCE ? new e((a) null) : new e((a) null).j0(this);
    }

    public static DistributionValue parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e newBuilderForType() {
        return newBuilder();
    }

    private DistributionValue() {
        this.memoizedIsInitialized = (byte) -1;
        this.count_ = 0L;
        this.sum_ = 0.0d;
        this.sumOfSquaredDeviation_ = 0.0d;
        this.buckets_ = Collections.emptyList();
    }

    public static DistributionValue parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public e newBuilderForType(GeneratedMessageV3.c cVar) {
        return new e(cVar, null);
    }

    public static DistributionValue parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static DistributionValue parseFrom(InputStream inputStream) throws IOException {
        return (DistributionValue) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static DistributionValue parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (DistributionValue) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private DistributionValue(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                    int L = pVar.L();
                    if (L != 0) {
                        if (L == 8) {
                            this.count_ = pVar.A();
                        } else if (L == 17) {
                            this.sum_ = pVar.t();
                        } else if (L == 25) {
                            this.sumOfSquaredDeviation_ = pVar.t();
                        } else if (L == 34) {
                            BucketOptions bucketOptions = this.bucketOptions_;
                            BucketOptions.b builder = bucketOptions != null ? bucketOptions.toBuilder() : null;
                            BucketOptions bucketOptions2 = (BucketOptions) pVar.B(BucketOptions.parser(), f0Var);
                            this.bucketOptions_ = bucketOptions2;
                            if (builder != null) {
                                builder.h0(bucketOptions2);
                                this.bucketOptions_ = builder.I();
                            }
                        } else if (L != 42) {
                            if (!parseUnknownFieldProto3(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            if (!(z11 & true)) {
                                this.buckets_ = new ArrayList();
                                z11 |= true;
                            }
                            this.buckets_.add(pVar.B(Bucket.parser(), f0Var));
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
                    this.buckets_ = Collections.unmodifiableList(this.buckets_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static DistributionValue parseFrom(p pVar) throws IOException {
        return (DistributionValue) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static DistributionValue parseFrom(p pVar, f0 f0Var) throws IOException {
        return (DistributionValue) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
