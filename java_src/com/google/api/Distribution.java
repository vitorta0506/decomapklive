package com.google.api;

import com.google.protobuf.Any;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Timestamp;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.h3;
import com.google.protobuf.l2;
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
import java.util.Objects;
/* loaded from: classes2.dex */
public final class Distribution extends GeneratedMessageV3 implements r1 {
    public static final int BUCKET_COUNTS_FIELD_NUMBER = 7;
    public static final int BUCKET_OPTIONS_FIELD_NUMBER = 6;
    public static final int COUNT_FIELD_NUMBER = 1;
    public static final int EXEMPLARS_FIELD_NUMBER = 10;
    public static final int MEAN_FIELD_NUMBER = 2;
    public static final int RANGE_FIELD_NUMBER = 4;
    public static final int SUM_OF_SQUARED_DEVIATION_FIELD_NUMBER = 3;
    private static final long serialVersionUID = 0;
    private int bucketCountsMemoizedSerializedSize;
    private u0.i bucketCounts_;
    private BucketOptions bucketOptions_;
    private long count_;
    private List<Exemplar> exemplars_;
    private double mean_;
    private byte memoizedIsInitialized;
    private Range range_;
    private double sumOfSquaredDeviation_;
    private static final Distribution DEFAULT_INSTANCE = new Distribution();
    private static final e2<Distribution> PARSER = new a();

    /* loaded from: classes2.dex */
    public static final class BucketOptions extends GeneratedMessageV3 implements c {
        public static final int EXPLICIT_BUCKETS_FIELD_NUMBER = 3;
        public static final int EXPONENTIAL_BUCKETS_FIELD_NUMBER = 2;
        public static final int LINEAR_BUCKETS_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private int optionsCase_;
        private Object options_;
        private static final BucketOptions DEFAULT_INSTANCE = new BucketOptions();
        private static final e2<BucketOptions> PARSER = new a();

        /* loaded from: classes2.dex */
        public static final class Explicit extends GeneratedMessageV3 implements c {
            public static final int BOUNDS_FIELD_NUMBER = 1;
            private static final Explicit DEFAULT_INSTANCE = new Explicit();
            private static final e2<Explicit> PARSER = new a();
            private static final long serialVersionUID = 0;
            private int boundsMemoizedSerializedSize;
            private u0.b bounds_;
            private byte memoizedIsInitialized;

            /* loaded from: classes2.dex */
            static class a extends com.google.protobuf.c<Explicit> {
                a() {
                }

                @Override // com.google.protobuf.e2
                /* renamed from: G */
                public Explicit m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
                    return new Explicit(pVar, f0Var, null);
                }
            }

            /* loaded from: classes2.dex */
            public static final class b extends GeneratedMessageV3.b<b> implements c {

                /* renamed from: e  reason: collision with root package name */
                private int f10707e;

                /* renamed from: f  reason: collision with root package name */
                private u0.b f10708f;

                /* synthetic */ b(a aVar) {
                    this();
                }

                private void a0() {
                    if ((this.f10707e & 1) == 0) {
                        this.f10708f = GeneratedMessageV3.mutableCopy(this.f10708f);
                        this.f10707e |= 1;
                    }
                }

                private void d0() {
                    boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e K() {
                    return v.f11491l.d(Explicit.class, b.class);
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
                    if ((this.f10707e & 1) != 0) {
                        this.f10708f.C();
                        this.f10707e &= -2;
                    }
                    explicit.bounds_ = this.f10708f;
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

                public b e0(Explicit explicit) {
                    if (explicit == Explicit.getDefaultInstance()) {
                        return this;
                    }
                    if (!explicit.bounds_.isEmpty()) {
                        if (this.f10708f.isEmpty()) {
                            this.f10708f = explicit.bounds_;
                            this.f10707e &= -2;
                        } else {
                            a0();
                            this.f10708f.addAll(explicit.bounds_);
                        }
                        R();
                    }
                    z(((GeneratedMessageV3) explicit).unknownFields);
                    R();
                    return this;
                }

                /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: g0 */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public com.google.api.Distribution.BucketOptions.Explicit.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.google.protobuf.e2 r1 = com.google.api.Distribution.BucketOptions.Explicit.access$3600()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        com.google.api.Distribution$BucketOptions$Explicit r3 = (com.google.api.Distribution.BucketOptions.Explicit) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        if (r3 == 0) goto L10
                        r2.e0(r3)
                    L10:
                        return r2
                    L11:
                        r3 = move-exception
                        goto L21
                    L13:
                        r3 = move-exception
                        com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                        com.google.api.Distribution$BucketOptions$Explicit r4 = (com.google.api.Distribution.BucketOptions.Explicit) r4     // Catch: java.lang.Throwable -> L11
                        java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                        throw r3     // Catch: java.lang.Throwable -> L1f
                    L1f:
                        r3 = move-exception
                        r0 = r4
                    L21:
                        if (r0 == 0) goto L26
                        r2.e0(r0)
                    L26:
                        throw r3
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.google.api.Distribution.BucketOptions.Explicit.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.api.Distribution$BucketOptions$Explicit$b");
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
                public Descriptors.b getDescriptorForType() {
                    return v.f11490k;
                }

                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: h0 */
                public b v(com.google.protobuf.l1 l1Var) {
                    if (l1Var instanceof Explicit) {
                        return e0((Explicit) l1Var);
                    }
                    super.P0(l1Var);
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

                /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                    this(cVar);
                }

                private b() {
                    this.f10708f = Explicit.access$3700();
                    d0();
                }

                private b(GeneratedMessageV3.c cVar) {
                    super(cVar);
                    this.f10708f = Explicit.access$3700();
                    d0();
                }
            }

            /* synthetic */ Explicit(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
                this(pVar, f0Var);
            }

            static /* synthetic */ u0.b access$3700() {
                return GeneratedMessageV3.emptyDoubleList();
            }

            public static Explicit getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.b getDescriptor() {
                return v.f11490k;
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
                return getBoundsList().equals(explicit.getBoundsList()) && this.unknownFields.equals(explicit.unknownFields);
            }

            public double getBounds(int i9) {
                return this.bounds_.getDouble(i9);
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
                return v.f11491l.d(Explicit.class, b.class);
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
                return new Explicit();
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
            public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                getSerializedSize();
                if (getBoundsList().size() > 0) {
                    codedOutputStream.d1(10);
                    codedOutputStream.d1(this.boundsMemoizedSerializedSize);
                }
                for (int i9 = 0; i9 < this.bounds_.size(); i9++) {
                    codedOutputStream.u0(this.bounds_.getDouble(i9));
                }
                this.unknownFields.writeTo(codedOutputStream);
            }

            /* synthetic */ Explicit(GeneratedMessageV3.b bVar, a aVar) {
                this(bVar);
            }

            public static b newBuilder(Explicit explicit) {
                return DEFAULT_INSTANCE.toBuilder().e0(explicit);
            }

            public static Explicit parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
                return (Explicit) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
            }

            public static Explicit parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.f(byteBuffer, f0Var);
            }

            private Explicit(GeneratedMessageV3.b<?> bVar) {
                super(bVar);
                this.boundsMemoizedSerializedSize = -1;
                this.memoizedIsInitialized = (byte) -1;
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
                return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).e0(this);
            }

            public static Explicit parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                this.bounds_ = GeneratedMessageV3.emptyDoubleList();
            }

            public static Explicit parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.g(bArr, f0Var);
            }

            public static Explicit parseFrom(InputStream inputStream) throws IOException {
                return (Explicit) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            public static Explicit parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
                return (Explicit) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
            }

            public static Explicit parseFrom(com.google.protobuf.p pVar) throws IOException {
                return (Explicit) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
            }

            private Explicit(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                                    if (!(z11 & true)) {
                                        this.bounds_ = GeneratedMessageV3.newDoubleList();
                                        z11 |= true;
                                    }
                                    this.bounds_.N0(pVar.t());
                                } else if (L != 10) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    int q10 = pVar.q(pVar.D());
                                    if (!(z11 & true) && pVar.e() > 0) {
                                        this.bounds_ = GeneratedMessageV3.newDoubleList();
                                        z11 |= true;
                                    }
                                    while (pVar.e() > 0) {
                                        this.bounds_.N0(pVar.t());
                                    }
                                    pVar.p(q10);
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
                            this.bounds_.C();
                        }
                        this.unknownFields = h10.build();
                        makeExtensionsImmutable();
                    }
                }
            }

            public static Explicit parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
                return (Explicit) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
            }
        }

        /* loaded from: classes2.dex */
        public static final class Exponential extends GeneratedMessageV3 implements d {
            public static final int GROWTH_FACTOR_FIELD_NUMBER = 2;
            public static final int NUM_FINITE_BUCKETS_FIELD_NUMBER = 1;
            public static final int SCALE_FIELD_NUMBER = 3;
            private static final long serialVersionUID = 0;
            private double growthFactor_;
            private byte memoizedIsInitialized;
            private int numFiniteBuckets_;
            private double scale_;
            private static final Exponential DEFAULT_INSTANCE = new Exponential();
            private static final e2<Exponential> PARSER = new a();

            /* loaded from: classes2.dex */
            static class a extends com.google.protobuf.c<Exponential> {
                a() {
                }

                @Override // com.google.protobuf.e2
                /* renamed from: G */
                public Exponential m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
                    return new Exponential(pVar, f0Var, null);
                }
            }

            /* loaded from: classes2.dex */
            public static final class b extends GeneratedMessageV3.b<b> implements d {

                /* renamed from: e  reason: collision with root package name */
                private int f10709e;

                /* renamed from: f  reason: collision with root package name */
                private double f10710f;

                /* renamed from: g  reason: collision with root package name */
                private double f10711g;

                /* synthetic */ b(a aVar) {
                    this();
                }

                private void b0() {
                    boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e K() {
                    return v.f11489j.d(Exponential.class, b.class);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
                /* renamed from: W */
                public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (b) super.L(fieldDescriptor, obj);
                }

                @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                /* renamed from: X */
                public Exponential build() {
                    Exponential I = I();
                    if (I.isInitialized()) {
                        return I;
                    }
                    throw a.AbstractC0142a.A(I);
                }

                @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                /* renamed from: Y */
                public Exponential I() {
                    Exponential exponential = new Exponential(this, (a) null);
                    exponential.numFiniteBuckets_ = this.f10709e;
                    exponential.growthFactor_ = this.f10710f;
                    exponential.scale_ = this.f10711g;
                    Q();
                    return exponential;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
                /* renamed from: Z */
                public b n() {
                    return (b) super.n();
                }

                @Override // com.google.protobuf.p1, com.google.protobuf.r1
                /* renamed from: a0 */
                public Exponential getDefaultInstanceForType() {
                    return Exponential.getDefaultInstance();
                }

                public b d0(Exponential exponential) {
                    if (exponential == Exponential.getDefaultInstance()) {
                        return this;
                    }
                    if (exponential.getNumFiniteBuckets() != 0) {
                        k0(exponential.getNumFiniteBuckets());
                    }
                    if (exponential.getGrowthFactor() != 0.0d) {
                        j0(exponential.getGrowthFactor());
                    }
                    if (exponential.getScale() != 0.0d) {
                        l0(exponential.getScale());
                    }
                    z(((GeneratedMessageV3) exponential).unknownFields);
                    R();
                    return this;
                }

                /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: e0 */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public com.google.api.Distribution.BucketOptions.Exponential.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.google.protobuf.e2 r1 = com.google.api.Distribution.BucketOptions.Exponential.access$2700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        com.google.api.Distribution$BucketOptions$Exponential r3 = (com.google.api.Distribution.BucketOptions.Exponential) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        if (r3 == 0) goto L10
                        r2.d0(r3)
                    L10:
                        return r2
                    L11:
                        r3 = move-exception
                        goto L21
                    L13:
                        r3 = move-exception
                        com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                        com.google.api.Distribution$BucketOptions$Exponential r4 = (com.google.api.Distribution.BucketOptions.Exponential) r4     // Catch: java.lang.Throwable -> L11
                        java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                        throw r3     // Catch: java.lang.Throwable -> L1f
                    L1f:
                        r3 = move-exception
                        r0 = r4
                    L21:
                        if (r0 == 0) goto L26
                        r2.d0(r0)
                    L26:
                        throw r3
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.google.api.Distribution.BucketOptions.Exponential.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.api.Distribution$BucketOptions$Exponential$b");
                }

                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: g0 */
                public b v(com.google.protobuf.l1 l1Var) {
                    if (l1Var instanceof Exponential) {
                        return d0((Exponential) l1Var);
                    }
                    super.P0(l1Var);
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
                public Descriptors.b getDescriptorForType() {
                    return v.f11488i;
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

                public b j0(double d10) {
                    this.f10710f = d10;
                    R();
                    return this;
                }

                public b k0(int i9) {
                    this.f10709e = i9;
                    R();
                    return this;
                }

                public b l0(double d10) {
                    this.f10711g = d10;
                    R();
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
                /* renamed from: m0 */
                public final b f1(h3 h3Var) {
                    return (b) super.f1(h3Var);
                }

                /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                    this(cVar);
                }

                private b() {
                    b0();
                }

                private b(GeneratedMessageV3.c cVar) {
                    super(cVar);
                    b0();
                }
            }

            /* synthetic */ Exponential(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
                this(pVar, f0Var);
            }

            public static Exponential getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.b getDescriptor() {
                return v.f11488i;
            }

            public static b newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static Exponential parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (Exponential) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static Exponential parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.l(byteBuffer);
            }

            public static e2<Exponential> parser() {
                return PARSER;
            }

            @Override // com.google.protobuf.a
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof Exponential)) {
                    return super.equals(obj);
                }
                Exponential exponential = (Exponential) obj;
                return getNumFiniteBuckets() == exponential.getNumFiniteBuckets() && Double.doubleToLongBits(getGrowthFactor()) == Double.doubleToLongBits(exponential.getGrowthFactor()) && Double.doubleToLongBits(getScale()) == Double.doubleToLongBits(exponential.getScale()) && this.unknownFields.equals(exponential.unknownFields);
            }

            public double getGrowthFactor() {
                return this.growthFactor_;
            }

            public int getNumFiniteBuckets() {
                return this.numFiniteBuckets_;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public e2<Exponential> getParserForType() {
                return PARSER;
            }

            public double getScale() {
                return this.scale_;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
            public int getSerializedSize() {
                int i9 = this.memoizedSize;
                if (i9 != -1) {
                    return i9;
                }
                int i10 = this.numFiniteBuckets_;
                int x10 = i10 != 0 ? 0 + CodedOutputStream.x(1, i10) : 0;
                double d10 = this.growthFactor_;
                if (d10 != 0.0d) {
                    x10 += CodedOutputStream.j(2, d10);
                }
                double d11 = this.scale_;
                if (d11 != 0.0d) {
                    x10 += CodedOutputStream.j(3, d11);
                }
                int serializedSize = x10 + this.unknownFields.getSerializedSize();
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
                int hashCode = ((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getNumFiniteBuckets()) * 37) + 2) * 53) + com.google.protobuf.u0.i(Double.doubleToLongBits(getGrowthFactor()))) * 37) + 3) * 53) + com.google.protobuf.u0.i(Double.doubleToLongBits(getScale()))) * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode;
                return hashCode;
            }

            @Override // com.google.protobuf.GeneratedMessageV3
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return v.f11489j.d(Exponential.class, b.class);
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
                return new Exponential();
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
            public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                int i9 = this.numFiniteBuckets_;
                if (i9 != 0) {
                    codedOutputStream.H0(1, i9);
                }
                double d10 = this.growthFactor_;
                if (d10 != 0.0d) {
                    codedOutputStream.t0(2, d10);
                }
                double d11 = this.scale_;
                if (d11 != 0.0d) {
                    codedOutputStream.t0(3, d11);
                }
                this.unknownFields.writeTo(codedOutputStream);
            }

            /* synthetic */ Exponential(GeneratedMessageV3.b bVar, a aVar) {
                this(bVar);
            }

            public static b newBuilder(Exponential exponential) {
                return DEFAULT_INSTANCE.toBuilder().d0(exponential);
            }

            public static Exponential parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
                return (Exponential) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
            }

            public static Exponential parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.f(byteBuffer, f0Var);
            }

            private Exponential(GeneratedMessageV3.b<?> bVar) {
                super(bVar);
                this.memoizedIsInitialized = (byte) -1;
            }

            public static Exponential parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.c(byteString);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
            public Exponential getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public b toBuilder() {
                return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).d0(this);
            }

            public static Exponential parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.b(byteString, f0Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public b newBuilderForType() {
                return newBuilder();
            }

            private Exponential() {
                this.memoizedIsInitialized = (byte) -1;
            }

            public static Exponential parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.a(bArr);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.protobuf.GeneratedMessageV3
            public b newBuilderForType(GeneratedMessageV3.c cVar) {
                return new b(cVar, null);
            }

            public static Exponential parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.g(bArr, f0Var);
            }

            private Exponential(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                                    this.numFiniteBuckets_ = pVar.z();
                                } else if (L == 17) {
                                    this.growthFactor_ = pVar.t();
                                } else if (L != 25) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    this.scale_ = pVar.t();
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

            public static Exponential parseFrom(InputStream inputStream) throws IOException {
                return (Exponential) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            public static Exponential parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
                return (Exponential) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
            }

            public static Exponential parseFrom(com.google.protobuf.p pVar) throws IOException {
                return (Exponential) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
            }

            public static Exponential parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
                return (Exponential) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
            }
        }

        /* loaded from: classes2.dex */
        public static final class Linear extends GeneratedMessageV3 implements e {
            public static final int NUM_FINITE_BUCKETS_FIELD_NUMBER = 1;
            public static final int OFFSET_FIELD_NUMBER = 3;
            public static final int WIDTH_FIELD_NUMBER = 2;
            private static final long serialVersionUID = 0;
            private byte memoizedIsInitialized;
            private int numFiniteBuckets_;
            private double offset_;
            private double width_;
            private static final Linear DEFAULT_INSTANCE = new Linear();
            private static final e2<Linear> PARSER = new a();

            /* loaded from: classes2.dex */
            static class a extends com.google.protobuf.c<Linear> {
                a() {
                }

                @Override // com.google.protobuf.e2
                /* renamed from: G */
                public Linear m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
                    return new Linear(pVar, f0Var, null);
                }
            }

            /* loaded from: classes2.dex */
            public static final class b extends GeneratedMessageV3.b<b> implements e {

                /* renamed from: e  reason: collision with root package name */
                private int f10712e;

                /* renamed from: f  reason: collision with root package name */
                private double f10713f;

                /* renamed from: g  reason: collision with root package name */
                private double f10714g;

                /* synthetic */ b(a aVar) {
                    this();
                }

                private void b0() {
                    boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e K() {
                    return v.f11487h.d(Linear.class, b.class);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
                /* renamed from: W */
                public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (b) super.L(fieldDescriptor, obj);
                }

                @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                /* renamed from: X */
                public Linear build() {
                    Linear I = I();
                    if (I.isInitialized()) {
                        return I;
                    }
                    throw a.AbstractC0142a.A(I);
                }

                @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                /* renamed from: Y */
                public Linear I() {
                    Linear linear = new Linear(this, (a) null);
                    linear.numFiniteBuckets_ = this.f10712e;
                    linear.width_ = this.f10713f;
                    linear.offset_ = this.f10714g;
                    Q();
                    return linear;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
                /* renamed from: Z */
                public b n() {
                    return (b) super.n();
                }

                @Override // com.google.protobuf.p1, com.google.protobuf.r1
                /* renamed from: a0 */
                public Linear getDefaultInstanceForType() {
                    return Linear.getDefaultInstance();
                }

                public b d0(Linear linear) {
                    if (linear == Linear.getDefaultInstance()) {
                        return this;
                    }
                    if (linear.getNumFiniteBuckets() != 0) {
                        j0(linear.getNumFiniteBuckets());
                    }
                    if (linear.getWidth() != 0.0d) {
                        m0(linear.getWidth());
                    }
                    if (linear.getOffset() != 0.0d) {
                        k0(linear.getOffset());
                    }
                    z(((GeneratedMessageV3) linear).unknownFields);
                    R();
                    return this;
                }

                /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: e0 */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public com.google.api.Distribution.BucketOptions.Linear.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.google.protobuf.e2 r1 = com.google.api.Distribution.BucketOptions.Linear.access$1700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        com.google.api.Distribution$BucketOptions$Linear r3 = (com.google.api.Distribution.BucketOptions.Linear) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        if (r3 == 0) goto L10
                        r2.d0(r3)
                    L10:
                        return r2
                    L11:
                        r3 = move-exception
                        goto L21
                    L13:
                        r3 = move-exception
                        com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                        com.google.api.Distribution$BucketOptions$Linear r4 = (com.google.api.Distribution.BucketOptions.Linear) r4     // Catch: java.lang.Throwable -> L11
                        java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                        throw r3     // Catch: java.lang.Throwable -> L1f
                    L1f:
                        r3 = move-exception
                        r0 = r4
                    L21:
                        if (r0 == 0) goto L26
                        r2.d0(r0)
                    L26:
                        throw r3
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.google.api.Distribution.BucketOptions.Linear.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.api.Distribution$BucketOptions$Linear$b");
                }

                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: g0 */
                public b v(com.google.protobuf.l1 l1Var) {
                    if (l1Var instanceof Linear) {
                        return d0((Linear) l1Var);
                    }
                    super.P0(l1Var);
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
                public Descriptors.b getDescriptorForType() {
                    return v.f11486g;
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
                    this.f10712e = i9;
                    R();
                    return this;
                }

                public b k0(double d10) {
                    this.f10714g = d10;
                    R();
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
                /* renamed from: l0 */
                public final b f1(h3 h3Var) {
                    return (b) super.f1(h3Var);
                }

                public b m0(double d10) {
                    this.f10713f = d10;
                    R();
                    return this;
                }

                /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                    this(cVar);
                }

                private b() {
                    b0();
                }

                private b(GeneratedMessageV3.c cVar) {
                    super(cVar);
                    b0();
                }
            }

            /* synthetic */ Linear(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
                this(pVar, f0Var);
            }

            public static Linear getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.b getDescriptor() {
                return v.f11486g;
            }

            public static b newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static Linear parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (Linear) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static Linear parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.l(byteBuffer);
            }

            public static e2<Linear> parser() {
                return PARSER;
            }

            @Override // com.google.protobuf.a
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof Linear)) {
                    return super.equals(obj);
                }
                Linear linear = (Linear) obj;
                return getNumFiniteBuckets() == linear.getNumFiniteBuckets() && Double.doubleToLongBits(getWidth()) == Double.doubleToLongBits(linear.getWidth()) && Double.doubleToLongBits(getOffset()) == Double.doubleToLongBits(linear.getOffset()) && this.unknownFields.equals(linear.unknownFields);
            }

            public int getNumFiniteBuckets() {
                return this.numFiniteBuckets_;
            }

            public double getOffset() {
                return this.offset_;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public e2<Linear> getParserForType() {
                return PARSER;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
            public int getSerializedSize() {
                int i9 = this.memoizedSize;
                if (i9 != -1) {
                    return i9;
                }
                int i10 = this.numFiniteBuckets_;
                int x10 = i10 != 0 ? 0 + CodedOutputStream.x(1, i10) : 0;
                double d10 = this.width_;
                if (d10 != 0.0d) {
                    x10 += CodedOutputStream.j(2, d10);
                }
                double d11 = this.offset_;
                if (d11 != 0.0d) {
                    x10 += CodedOutputStream.j(3, d11);
                }
                int serializedSize = x10 + this.unknownFields.getSerializedSize();
                this.memoizedSize = serializedSize;
                return serializedSize;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
            public final h3 getUnknownFields() {
                return this.unknownFields;
            }

            public double getWidth() {
                return this.width_;
            }

            @Override // com.google.protobuf.a
            public int hashCode() {
                int i9 = this.memoizedHashCode;
                if (i9 != 0) {
                    return i9;
                }
                int hashCode = ((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getNumFiniteBuckets()) * 37) + 2) * 53) + com.google.protobuf.u0.i(Double.doubleToLongBits(getWidth()))) * 37) + 3) * 53) + com.google.protobuf.u0.i(Double.doubleToLongBits(getOffset()))) * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode;
                return hashCode;
            }

            @Override // com.google.protobuf.GeneratedMessageV3
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return v.f11487h.d(Linear.class, b.class);
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
                return new Linear();
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
            public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                int i9 = this.numFiniteBuckets_;
                if (i9 != 0) {
                    codedOutputStream.H0(1, i9);
                }
                double d10 = this.width_;
                if (d10 != 0.0d) {
                    codedOutputStream.t0(2, d10);
                }
                double d11 = this.offset_;
                if (d11 != 0.0d) {
                    codedOutputStream.t0(3, d11);
                }
                this.unknownFields.writeTo(codedOutputStream);
            }

            /* synthetic */ Linear(GeneratedMessageV3.b bVar, a aVar) {
                this(bVar);
            }

            public static b newBuilder(Linear linear) {
                return DEFAULT_INSTANCE.toBuilder().d0(linear);
            }

            public static Linear parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
                return (Linear) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
            }

            public static Linear parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.f(byteBuffer, f0Var);
            }

            private Linear(GeneratedMessageV3.b<?> bVar) {
                super(bVar);
                this.memoizedIsInitialized = (byte) -1;
            }

            public static Linear parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.c(byteString);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
            public Linear getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public b toBuilder() {
                return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).d0(this);
            }

            public static Linear parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.b(byteString, f0Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public b newBuilderForType() {
                return newBuilder();
            }

            private Linear() {
                this.memoizedIsInitialized = (byte) -1;
            }

            public static Linear parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.a(bArr);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.protobuf.GeneratedMessageV3
            public b newBuilderForType(GeneratedMessageV3.c cVar) {
                return new b(cVar, null);
            }

            public static Linear parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.g(bArr, f0Var);
            }

            private Linear(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                                    this.numFiniteBuckets_ = pVar.z();
                                } else if (L == 17) {
                                    this.width_ = pVar.t();
                                } else if (L != 25) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    this.offset_ = pVar.t();
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

            public static Linear parseFrom(InputStream inputStream) throws IOException {
                return (Linear) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            public static Linear parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
                return (Linear) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
            }

            public static Linear parseFrom(com.google.protobuf.p pVar) throws IOException {
                return (Linear) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
            }

            public static Linear parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
                return (Linear) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
            }
        }

        /* loaded from: classes2.dex */
        public enum OptionsCase implements u0.c {
            LINEAR_BUCKETS(1),
            EXPONENTIAL_BUCKETS(2),
            EXPLICIT_BUCKETS(3),
            OPTIONS_NOT_SET(0);
            
            private final int value;

            OptionsCase(int i9) {
                this.value = i9;
            }

            public static OptionsCase forNumber(int i9) {
                if (i9 != 0) {
                    if (i9 != 1) {
                        if (i9 != 2) {
                            if (i9 != 3) {
                                return null;
                            }
                            return EXPLICIT_BUCKETS;
                        }
                        return EXPONENTIAL_BUCKETS;
                    }
                    return LINEAR_BUCKETS;
                }
                return OPTIONS_NOT_SET;
            }

            @Override // com.google.protobuf.u0.c
            public int getNumber() {
                return this.value;
            }

            @Deprecated
            public static OptionsCase valueOf(int i9) {
                return forNumber(i9);
            }
        }

        /* loaded from: classes2.dex */
        static class a extends com.google.protobuf.c<BucketOptions> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public BucketOptions m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
                return new BucketOptions(pVar, f0Var, null);
            }
        }

        /* loaded from: classes2.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements c {

            /* renamed from: e  reason: collision with root package name */
            private int f10715e;

            /* renamed from: f  reason: collision with root package name */
            private Object f10716f;

            /* renamed from: g  reason: collision with root package name */
            private q2<Linear, Linear.b, e> f10717g;

            /* renamed from: h  reason: collision with root package name */
            private q2<Exponential, Exponential.b, d> f10718h;

            /* renamed from: i  reason: collision with root package name */
            private q2<Explicit, Explicit.b, c> f10719i;

            /* synthetic */ b(a aVar) {
                this();
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return v.f11485f.d(BucketOptions.class, b.class);
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
                if (this.f10715e == 1) {
                    q2<Linear, Linear.b, e> q2Var = this.f10717g;
                    if (q2Var == null) {
                        bucketOptions.options_ = this.f10716f;
                    } else {
                        bucketOptions.options_ = q2Var.b();
                    }
                }
                if (this.f10715e == 2) {
                    q2<Exponential, Exponential.b, d> q2Var2 = this.f10718h;
                    if (q2Var2 == null) {
                        bucketOptions.options_ = this.f10716f;
                    } else {
                        bucketOptions.options_ = q2Var2.b();
                    }
                }
                if (this.f10715e == 3) {
                    q2<Explicit, Explicit.b, c> q2Var3 = this.f10719i;
                    if (q2Var3 == null) {
                        bucketOptions.options_ = this.f10716f;
                    } else {
                        bucketOptions.options_ = q2Var3.b();
                    }
                }
                bucketOptions.optionsCase_ = this.f10715e;
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
                q2<Explicit, Explicit.b, c> q2Var = this.f10719i;
                if (q2Var == null) {
                    if (this.f10715e == 3 && this.f10716f != Explicit.getDefaultInstance()) {
                        this.f10716f = Explicit.newBuilder((Explicit) this.f10716f).e0(explicit).I();
                    } else {
                        this.f10716f = explicit;
                    }
                    R();
                } else {
                    if (this.f10715e == 3) {
                        q2Var.e(explicit);
                    }
                    this.f10719i.g(explicit);
                }
                this.f10715e = 3;
                return this;
            }

            public b e0(Exponential exponential) {
                q2<Exponential, Exponential.b, d> q2Var = this.f10718h;
                if (q2Var == null) {
                    if (this.f10715e == 2 && this.f10716f != Exponential.getDefaultInstance()) {
                        this.f10716f = Exponential.newBuilder((Exponential) this.f10716f).d0(exponential).I();
                    } else {
                        this.f10716f = exponential;
                    }
                    R();
                } else {
                    if (this.f10715e == 2) {
                        q2Var.e(exponential);
                    }
                    this.f10718h.g(exponential);
                }
                this.f10715e = 2;
                return this;
            }

            public b g0(BucketOptions bucketOptions) {
                if (bucketOptions == BucketOptions.getDefaultInstance()) {
                    return this;
                }
                int i9 = b.f10728a[bucketOptions.getOptionsCase().ordinal()];
                if (i9 == 1) {
                    j0(bucketOptions.getLinearBuckets());
                } else if (i9 == 2) {
                    e0(bucketOptions.getExponentialBuckets());
                } else if (i9 == 3) {
                    d0(bucketOptions.getExplicitBuckets());
                }
                z(((GeneratedMessageV3) bucketOptions).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return v.f11484e;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: h0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.google.api.Distribution.BucketOptions.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = com.google.api.Distribution.BucketOptions.access$4800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    com.google.api.Distribution$BucketOptions r3 = (com.google.api.Distribution.BucketOptions) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    com.google.api.Distribution$BucketOptions r4 = (com.google.api.Distribution.BucketOptions) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: com.google.api.Distribution.BucketOptions.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.api.Distribution$BucketOptions$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: i0 */
            public b v(com.google.protobuf.l1 l1Var) {
                if (l1Var instanceof BucketOptions) {
                    return g0((BucketOptions) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b j0(Linear linear) {
                q2<Linear, Linear.b, e> q2Var = this.f10717g;
                if (q2Var == null) {
                    if (this.f10715e == 1 && this.f10716f != Linear.getDefaultInstance()) {
                        this.f10716f = Linear.newBuilder((Linear) this.f10716f).d0(linear).I();
                    } else {
                        this.f10716f = linear;
                    }
                    R();
                } else {
                    if (this.f10715e == 1) {
                        q2Var.e(linear);
                    }
                    this.f10717g.g(linear);
                }
                this.f10715e = 1;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: k0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: l0 */
            public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.c(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: m0 */
            public final b f1(h3 h3Var) {
                return (b) super.f1(h3Var);
            }

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private b() {
                this.f10715e = 0;
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f10715e = 0;
                b0();
            }
        }

        /* loaded from: classes2.dex */
        public interface c extends r1 {
        }

        /* loaded from: classes2.dex */
        public interface d extends r1 {
        }

        /* loaded from: classes2.dex */
        public interface e extends r1 {
        }

        /* synthetic */ BucketOptions(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static BucketOptions getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return v.f11484e;
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
            if (getOptionsCase().equals(bucketOptions.getOptionsCase())) {
                int i9 = this.optionsCase_;
                if (i9 != 1) {
                    if (i9 != 2) {
                        if (i9 == 3 && !getExplicitBuckets().equals(bucketOptions.getExplicitBuckets())) {
                            return false;
                        }
                    } else if (!getExponentialBuckets().equals(bucketOptions.getExponentialBuckets())) {
                        return false;
                    }
                } else if (!getLinearBuckets().equals(bucketOptions.getLinearBuckets())) {
                    return false;
                }
                return this.unknownFields.equals(bucketOptions.unknownFields);
            }
            return false;
        }

        public Explicit getExplicitBuckets() {
            if (this.optionsCase_ == 3) {
                return (Explicit) this.options_;
            }
            return Explicit.getDefaultInstance();
        }

        public c getExplicitBucketsOrBuilder() {
            if (this.optionsCase_ == 3) {
                return (Explicit) this.options_;
            }
            return Explicit.getDefaultInstance();
        }

        public Exponential getExponentialBuckets() {
            if (this.optionsCase_ == 2) {
                return (Exponential) this.options_;
            }
            return Exponential.getDefaultInstance();
        }

        public d getExponentialBucketsOrBuilder() {
            if (this.optionsCase_ == 2) {
                return (Exponential) this.options_;
            }
            return Exponential.getDefaultInstance();
        }

        public Linear getLinearBuckets() {
            if (this.optionsCase_ == 1) {
                return (Linear) this.options_;
            }
            return Linear.getDefaultInstance();
        }

        public e getLinearBucketsOrBuilder() {
            if (this.optionsCase_ == 1) {
                return (Linear) this.options_;
            }
            return Linear.getDefaultInstance();
        }

        public OptionsCase getOptionsCase() {
            return OptionsCase.forNumber(this.optionsCase_);
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
            int G = this.optionsCase_ == 1 ? 0 + CodedOutputStream.G(1, (Linear) this.options_) : 0;
            if (this.optionsCase_ == 2) {
                G += CodedOutputStream.G(2, (Exponential) this.options_);
            }
            if (this.optionsCase_ == 3) {
                G += CodedOutputStream.G(3, (Explicit) this.options_);
            }
            int serializedSize = G + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasExplicitBuckets() {
            return this.optionsCase_ == 3;
        }

        public boolean hasExponentialBuckets() {
            return this.optionsCase_ == 2;
        }

        public boolean hasLinearBuckets() {
            return this.optionsCase_ == 1;
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
            int i11 = this.optionsCase_;
            if (i11 == 1) {
                i9 = ((hashCode2 * 37) + 1) * 53;
                hashCode = getLinearBuckets().hashCode();
            } else if (i11 == 2) {
                i9 = ((hashCode2 * 37) + 2) * 53;
                hashCode = getExponentialBuckets().hashCode();
            } else {
                if (i11 == 3) {
                    i9 = ((hashCode2 * 37) + 3) * 53;
                    hashCode = getExplicitBuckets().hashCode();
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
            return v.f11485f.d(BucketOptions.class, b.class);
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
            return new BucketOptions();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (this.optionsCase_ == 1) {
                codedOutputStream.L0(1, (Linear) this.options_);
            }
            if (this.optionsCase_ == 2) {
                codedOutputStream.L0(2, (Exponential) this.options_);
            }
            if (this.optionsCase_ == 3) {
                codedOutputStream.L0(3, (Explicit) this.options_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ BucketOptions(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(BucketOptions bucketOptions) {
            return DEFAULT_INSTANCE.toBuilder().g0(bucketOptions);
        }

        public static BucketOptions parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
            return (BucketOptions) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static BucketOptions parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private BucketOptions(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.optionsCase_ = 0;
            this.memoizedIsInitialized = (byte) -1;
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
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
        }

        public static BucketOptions parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
            this.optionsCase_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static BucketOptions parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static BucketOptions parseFrom(InputStream inputStream) throws IOException {
            return (BucketOptions) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static BucketOptions parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
            return (BucketOptions) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        private BucketOptions(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                                    Linear.b builder = this.optionsCase_ == 1 ? ((Linear) this.options_).toBuilder() : null;
                                    com.google.protobuf.o1 B = pVar.B(Linear.parser(), f0Var);
                                    this.options_ = B;
                                    if (builder != null) {
                                        builder.d0((Linear) B);
                                        this.options_ = builder.I();
                                    }
                                    this.optionsCase_ = 1;
                                } else if (L == 18) {
                                    Exponential.b builder2 = this.optionsCase_ == 2 ? ((Exponential) this.options_).toBuilder() : null;
                                    com.google.protobuf.o1 B2 = pVar.B(Exponential.parser(), f0Var);
                                    this.options_ = B2;
                                    if (builder2 != null) {
                                        builder2.d0((Exponential) B2);
                                        this.options_ = builder2.I();
                                    }
                                    this.optionsCase_ = 2;
                                } else if (L != 26) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    Explicit.b builder3 = this.optionsCase_ == 3 ? ((Explicit) this.options_).toBuilder() : null;
                                    com.google.protobuf.o1 B3 = pVar.B(Explicit.parser(), f0Var);
                                    this.options_ = B3;
                                    if (builder3 != null) {
                                        builder3.e0((Explicit) B3);
                                        this.options_ = builder3.I();
                                    }
                                    this.optionsCase_ = 3;
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

        public static BucketOptions parseFrom(com.google.protobuf.p pVar) throws IOException {
            return (BucketOptions) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static BucketOptions parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
            return (BucketOptions) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes2.dex */
    public static final class Exemplar extends GeneratedMessageV3 implements e {
        public static final int ATTACHMENTS_FIELD_NUMBER = 3;
        private static final Exemplar DEFAULT_INSTANCE = new Exemplar();
        private static final e2<Exemplar> PARSER = new a();
        public static final int TIMESTAMP_FIELD_NUMBER = 2;
        public static final int VALUE_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private List<Any> attachments_;
        private byte memoizedIsInitialized;
        private Timestamp timestamp_;
        private double value_;

        /* loaded from: classes2.dex */
        static class a extends com.google.protobuf.c<Exemplar> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public Exemplar m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
                return new Exemplar(pVar, f0Var, null);
            }
        }

        /* loaded from: classes2.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements e {

            /* renamed from: e  reason: collision with root package name */
            private int f10720e;

            /* renamed from: f  reason: collision with root package name */
            private double f10721f;

            /* renamed from: g  reason: collision with root package name */
            private Timestamp f10722g;

            /* renamed from: h  reason: collision with root package name */
            private q2<Timestamp, Timestamp.b, z2> f10723h;

            /* renamed from: i  reason: collision with root package name */
            private List<Any> f10724i;

            /* renamed from: j  reason: collision with root package name */
            private l2<Any, Any.b, com.google.protobuf.f> f10725j;

            /* synthetic */ b(a aVar) {
                this();
            }

            private void a0() {
                if ((this.f10720e & 1) == 0) {
                    this.f10724i = new ArrayList(this.f10724i);
                    this.f10720e |= 1;
                }
            }

            private l2<Any, Any.b, com.google.protobuf.f> b0() {
                if (this.f10725j == null) {
                    this.f10725j = new l2<>(this.f10724i, (this.f10720e & 1) != 0, H(), O());
                    this.f10724i = null;
                }
                return this.f10725j;
            }

            private void e0() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    b0();
                }
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return v.f11493n.d(Exemplar.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
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
                exemplar.value_ = this.f10721f;
                q2<Timestamp, Timestamp.b, z2> q2Var = this.f10723h;
                if (q2Var == null) {
                    exemplar.timestamp_ = this.f10722g;
                } else {
                    exemplar.timestamp_ = q2Var.b();
                }
                l2<Any, Any.b, com.google.protobuf.f> l2Var = this.f10725j;
                if (l2Var == null) {
                    if ((this.f10720e & 1) != 0) {
                        this.f10724i = Collections.unmodifiableList(this.f10724i);
                        this.f10720e &= -2;
                    }
                    exemplar.attachments_ = this.f10724i;
                } else {
                    exemplar.attachments_ = l2Var.e();
                }
                Q();
                return exemplar;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: d0 */
            public Exemplar getDefaultInstanceForType() {
                return Exemplar.getDefaultInstance();
            }

            public b g0(Exemplar exemplar) {
                if (exemplar == Exemplar.getDefaultInstance()) {
                    return this;
                }
                if (exemplar.getValue() != 0.0d) {
                    n0(exemplar.getValue());
                }
                if (exemplar.hasTimestamp()) {
                    j0(exemplar.getTimestamp());
                }
                if (this.f10725j == null) {
                    if (!exemplar.attachments_.isEmpty()) {
                        if (this.f10724i.isEmpty()) {
                            this.f10724i = exemplar.attachments_;
                            this.f10720e &= -2;
                        } else {
                            a0();
                            this.f10724i.addAll(exemplar.attachments_);
                        }
                        R();
                    }
                } else if (!exemplar.attachments_.isEmpty()) {
                    if (this.f10725j.k()) {
                        this.f10725j.f();
                        this.f10725j = null;
                        this.f10724i = exemplar.attachments_;
                        this.f10720e &= -2;
                        this.f10725j = GeneratedMessageV3.alwaysUseFieldBuilders ? b0() : null;
                    } else {
                        this.f10725j.b(exemplar.attachments_);
                    }
                }
                z(((GeneratedMessageV3) exemplar).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return v.f11492m;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: h0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.google.api.Distribution.Exemplar.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = com.google.api.Distribution.Exemplar.access$5900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    com.google.api.Distribution$Exemplar r3 = (com.google.api.Distribution.Exemplar) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    com.google.api.Distribution$Exemplar r4 = (com.google.api.Distribution.Exemplar) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: com.google.api.Distribution.Exemplar.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.api.Distribution$Exemplar$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: i0 */
            public b v(com.google.protobuf.l1 l1Var) {
                if (l1Var instanceof Exemplar) {
                    return g0((Exemplar) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b j0(Timestamp timestamp) {
                q2<Timestamp, Timestamp.b, z2> q2Var = this.f10723h;
                if (q2Var == null) {
                    Timestamp timestamp2 = this.f10722g;
                    if (timestamp2 != null) {
                        this.f10722g = Timestamp.newBuilder(timestamp2).g0(timestamp).I();
                    } else {
                        this.f10722g = timestamp;
                    }
                    R();
                } else {
                    q2Var.e(timestamp);
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: k0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: l0 */
            public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.c(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: m0 */
            public final b f1(h3 h3Var) {
                return (b) super.f1(h3Var);
            }

            public b n0(double d10) {
                this.f10721f = d10;
                R();
                return this;
            }

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private b() {
                this.f10724i = Collections.emptyList();
                e0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f10724i = Collections.emptyList();
                e0();
            }
        }

        /* synthetic */ Exemplar(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static Exemplar getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return v.f11492m;
        }

        public static b newBuilder() {
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

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Exemplar)) {
                return super.equals(obj);
            }
            Exemplar exemplar = (Exemplar) obj;
            if (Double.doubleToLongBits(getValue()) == Double.doubleToLongBits(exemplar.getValue()) && hasTimestamp() == exemplar.hasTimestamp()) {
                return (!hasTimestamp() || getTimestamp().equals(exemplar.getTimestamp())) && getAttachmentsList().equals(exemplar.getAttachmentsList()) && this.unknownFields.equals(exemplar.unknownFields);
            }
            return false;
        }

        public Any getAttachments(int i9) {
            return this.attachments_.get(i9);
        }

        public int getAttachmentsCount() {
            return this.attachments_.size();
        }

        public List<Any> getAttachmentsList() {
            return this.attachments_;
        }

        public com.google.protobuf.f getAttachmentsOrBuilder(int i9) {
            return this.attachments_.get(i9);
        }

        public List<? extends com.google.protobuf.f> getAttachmentsOrBuilderList() {
            return this.attachments_;
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
            int j10 = d10 != 0.0d ? CodedOutputStream.j(1, d10) + 0 : 0;
            if (this.timestamp_ != null) {
                j10 += CodedOutputStream.G(2, getTimestamp());
            }
            for (int i10 = 0; i10 < this.attachments_.size(); i10++) {
                j10 += CodedOutputStream.G(3, this.attachments_.get(i10));
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
            int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + com.google.protobuf.u0.i(Double.doubleToLongBits(getValue()));
            if (hasTimestamp()) {
                hashCode = (((hashCode * 37) + 2) * 53) + getTimestamp().hashCode();
            }
            if (getAttachmentsCount() > 0) {
                hashCode = (((hashCode * 37) + 3) * 53) + getAttachmentsList().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return v.f11493n.d(Exemplar.class, b.class);
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
            return new Exemplar();
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
            for (int i9 = 0; i9 < this.attachments_.size(); i9++) {
                codedOutputStream.L0(3, this.attachments_.get(i9));
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ Exemplar(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(Exemplar exemplar) {
            return DEFAULT_INSTANCE.toBuilder().g0(exemplar);
        }

        public static Exemplar parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
            return (Exemplar) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static Exemplar parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private Exemplar(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Exemplar parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public Exemplar getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
        }

        public static Exemplar parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private Exemplar() {
            this.memoizedIsInitialized = (byte) -1;
            this.attachments_ = Collections.emptyList();
        }

        public static Exemplar parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static Exemplar parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static Exemplar parseFrom(InputStream inputStream) throws IOException {
            return (Exemplar) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        /* JADX WARN: Multi-variable type inference failed */
        private Exemplar(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                if (!(z11 & true)) {
                                    this.attachments_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.attachments_.add(pVar.B(Any.parser(), f0Var));
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
                        this.attachments_ = Collections.unmodifiableList(this.attachments_);
                    }
                    this.unknownFields = h10.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static Exemplar parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
            return (Exemplar) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static Exemplar parseFrom(com.google.protobuf.p pVar) throws IOException {
            return (Exemplar) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static Exemplar parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
            return (Exemplar) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes2.dex */
    public static final class Range extends GeneratedMessageV3 implements f {
        public static final int MAX_FIELD_NUMBER = 2;
        public static final int MIN_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private double max_;
        private byte memoizedIsInitialized;
        private double min_;
        private static final Range DEFAULT_INSTANCE = new Range();
        private static final e2<Range> PARSER = new a();

        /* loaded from: classes2.dex */
        static class a extends com.google.protobuf.c<Range> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public Range m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
                return new Range(pVar, f0Var, null);
            }
        }

        /* loaded from: classes2.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements f {

            /* renamed from: e  reason: collision with root package name */
            private double f10726e;

            /* renamed from: f  reason: collision with root package name */
            private double f10727f;

            /* synthetic */ b(a aVar) {
                this();
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return v.f11483d.d(Range.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public Range build() {
                Range I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public Range I() {
                Range range = new Range(this, (a) null);
                range.min_ = this.f10726e;
                range.max_ = this.f10727f;
                Q();
                return range;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public Range getDefaultInstanceForType() {
                return Range.getDefaultInstance();
            }

            public b d0(Range range) {
                if (range == Range.getDefaultInstance()) {
                    return this;
                }
                if (range.getMin() != 0.0d) {
                    k0(range.getMin());
                }
                if (range.getMax() != 0.0d) {
                    j0(range.getMax());
                }
                z(((GeneratedMessageV3) range).unknownFields);
                R();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.google.api.Distribution.Range.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = com.google.api.Distribution.Range.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    com.google.api.Distribution$Range r3 = (com.google.api.Distribution.Range) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    if (r3 == 0) goto L10
                    r2.d0(r3)
                L10:
                    return r2
                L11:
                    r3 = move-exception
                    goto L21
                L13:
                    r3 = move-exception
                    com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                    com.google.api.Distribution$Range r4 = (com.google.api.Distribution.Range) r4     // Catch: java.lang.Throwable -> L11
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                    throw r3     // Catch: java.lang.Throwable -> L1f
                L1f:
                    r3 = move-exception
                    r0 = r4
                L21:
                    if (r0 == 0) goto L26
                    r2.d0(r0)
                L26:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.api.Distribution.Range.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.api.Distribution$Range$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: g0 */
            public b v(com.google.protobuf.l1 l1Var) {
                if (l1Var instanceof Range) {
                    return d0((Range) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return v.f11482c;
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

            public b j0(double d10) {
                this.f10727f = d10;
                R();
                return this;
            }

            public b k0(double d10) {
                this.f10726e = d10;
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: l0 */
            public final b f1(h3 h3Var) {
                return (b) super.f1(h3Var);
            }

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private b() {
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                b0();
            }
        }

        /* synthetic */ Range(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static Range getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return v.f11482c;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Range parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Range) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Range parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<Range> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Range)) {
                return super.equals(obj);
            }
            Range range = (Range) obj;
            return Double.doubleToLongBits(getMin()) == Double.doubleToLongBits(range.getMin()) && Double.doubleToLongBits(getMax()) == Double.doubleToLongBits(range.getMax()) && this.unknownFields.equals(range.unknownFields);
        }

        public double getMax() {
            return this.max_;
        }

        public double getMin() {
            return this.min_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<Range> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            double d10 = this.min_;
            int j10 = d10 != 0.0d ? 0 + CodedOutputStream.j(1, d10) : 0;
            double d11 = this.max_;
            if (d11 != 0.0d) {
                j10 += CodedOutputStream.j(2, d11);
            }
            int serializedSize = j10 + this.unknownFields.getSerializedSize();
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
            int hashCode = ((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + com.google.protobuf.u0.i(Double.doubleToLongBits(getMin()))) * 37) + 2) * 53) + com.google.protobuf.u0.i(Double.doubleToLongBits(getMax()))) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode;
            return hashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return v.f11483d.d(Range.class, b.class);
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
            return new Range();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            double d10 = this.min_;
            if (d10 != 0.0d) {
                codedOutputStream.t0(1, d10);
            }
            double d11 = this.max_;
            if (d11 != 0.0d) {
                codedOutputStream.t0(2, d11);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ Range(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(Range range) {
            return DEFAULT_INSTANCE.toBuilder().d0(range);
        }

        public static Range parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
            return (Range) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static Range parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private Range(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Range parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public Range getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).d0(this);
        }

        public static Range parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private Range() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Range parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static Range parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        private Range(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                                if (L == 9) {
                                    this.min_ = pVar.t();
                                } else if (L != 17) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    this.max_ = pVar.t();
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

        public static Range parseFrom(InputStream inputStream) throws IOException {
            return (Range) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static Range parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
            return (Range) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static Range parseFrom(com.google.protobuf.p pVar) throws IOException {
            return (Range) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static Range parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
            return (Range) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a extends com.google.protobuf.c<Distribution> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public Distribution m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return new Distribution(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f10728a;

        static {
            int[] iArr = new int[BucketOptions.OptionsCase.values().length];
            f10728a = iArr;
            try {
                iArr[BucketOptions.OptionsCase.LINEAR_BUCKETS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f10728a[BucketOptions.OptionsCase.EXPONENTIAL_BUCKETS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f10728a[BucketOptions.OptionsCase.EXPLICIT_BUCKETS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f10728a[BucketOptions.OptionsCase.OPTIONS_NOT_SET.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public interface c extends r1 {
    }

    /* loaded from: classes2.dex */
    public static final class d extends GeneratedMessageV3.b<d> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private int f10729e;

        /* renamed from: f  reason: collision with root package name */
        private long f10730f;

        /* renamed from: g  reason: collision with root package name */
        private double f10731g;

        /* renamed from: h  reason: collision with root package name */
        private double f10732h;

        /* renamed from: i  reason: collision with root package name */
        private Range f10733i;

        /* renamed from: j  reason: collision with root package name */
        private q2<Range, Range.b, f> f10734j;

        /* renamed from: k  reason: collision with root package name */
        private BucketOptions f10735k;

        /* renamed from: l  reason: collision with root package name */
        private q2<BucketOptions, BucketOptions.b, c> f10736l;

        /* renamed from: m  reason: collision with root package name */
        private u0.i f10737m;

        /* renamed from: n  reason: collision with root package name */
        private List<Exemplar> f10738n;

        /* renamed from: o  reason: collision with root package name */
        private l2<Exemplar, Exemplar.b, e> f10739o;

        /* synthetic */ d(a aVar) {
            this();
        }

        private void a0() {
            if ((this.f10729e & 1) == 0) {
                this.f10737m = GeneratedMessageV3.mutableCopy(this.f10737m);
                this.f10729e |= 1;
            }
        }

        private void b0() {
            if ((this.f10729e & 2) == 0) {
                this.f10738n = new ArrayList(this.f10738n);
                this.f10729e |= 2;
            }
        }

        private l2<Exemplar, Exemplar.b, e> e0() {
            if (this.f10739o == null) {
                this.f10739o = new l2<>(this.f10738n, (this.f10729e & 2) != 0, H(), O());
                this.f10738n = null;
            }
            return this.f10739o;
        }

        private void g0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                e0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return v.f11481b.d(Distribution.class, d.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public d L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (d) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public Distribution build() {
            Distribution I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public Distribution I() {
            Distribution distribution = new Distribution(this, (a) null);
            distribution.count_ = this.f10730f;
            distribution.mean_ = this.f10731g;
            distribution.sumOfSquaredDeviation_ = this.f10732h;
            q2<Range, Range.b, f> q2Var = this.f10734j;
            if (q2Var == null) {
                distribution.range_ = this.f10733i;
            } else {
                distribution.range_ = q2Var.b();
            }
            q2<BucketOptions, BucketOptions.b, c> q2Var2 = this.f10736l;
            if (q2Var2 == null) {
                distribution.bucketOptions_ = this.f10735k;
            } else {
                distribution.bucketOptions_ = q2Var2.b();
            }
            if ((this.f10729e & 1) != 0) {
                this.f10737m.C();
                this.f10729e &= -2;
            }
            distribution.bucketCounts_ = this.f10737m;
            l2<Exemplar, Exemplar.b, e> l2Var = this.f10739o;
            if (l2Var == null) {
                if ((this.f10729e & 2) != 0) {
                    this.f10738n = Collections.unmodifiableList(this.f10738n);
                    this.f10729e &= -3;
                }
                distribution.exemplars_ = this.f10738n;
            } else {
                distribution.exemplars_ = l2Var.e();
            }
            Q();
            return distribution;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public d n() {
            return (d) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: d0 */
        public Distribution getDefaultInstanceForType() {
            return Distribution.getDefaultInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return v.f11480a;
        }

        public d h0(BucketOptions bucketOptions) {
            q2<BucketOptions, BucketOptions.b, c> q2Var = this.f10736l;
            if (q2Var == null) {
                BucketOptions bucketOptions2 = this.f10735k;
                if (bucketOptions2 != null) {
                    this.f10735k = BucketOptions.newBuilder(bucketOptions2).g0(bucketOptions).I();
                } else {
                    this.f10735k = bucketOptions;
                }
                R();
            } else {
                q2Var.e(bucketOptions);
            }
            return this;
        }

        public d i0(Distribution distribution) {
            if (distribution == Distribution.getDefaultInstance()) {
                return this;
            }
            if (distribution.getCount() != 0) {
                n0(distribution.getCount());
            }
            if (distribution.getMean() != 0.0d) {
                q0(distribution.getMean());
            }
            if (distribution.getSumOfSquaredDeviation() != 0.0d) {
                r0(distribution.getSumOfSquaredDeviation());
            }
            if (distribution.hasRange()) {
                l0(distribution.getRange());
            }
            if (distribution.hasBucketOptions()) {
                h0(distribution.getBucketOptions());
            }
            if (!distribution.bucketCounts_.isEmpty()) {
                if (this.f10737m.isEmpty()) {
                    this.f10737m = distribution.bucketCounts_;
                    this.f10729e &= -2;
                } else {
                    a0();
                    this.f10737m.addAll(distribution.bucketCounts_);
                }
                R();
            }
            if (this.f10739o == null) {
                if (!distribution.exemplars_.isEmpty()) {
                    if (this.f10738n.isEmpty()) {
                        this.f10738n = distribution.exemplars_;
                        this.f10729e &= -3;
                    } else {
                        b0();
                        this.f10738n.addAll(distribution.exemplars_);
                    }
                    R();
                }
            } else if (!distribution.exemplars_.isEmpty()) {
                if (this.f10739o.k()) {
                    this.f10739o.f();
                    this.f10739o = null;
                    this.f10738n = distribution.exemplars_;
                    this.f10729e &= -3;
                    this.f10739o = GeneratedMessageV3.alwaysUseFieldBuilders ? e0() : null;
                } else {
                    this.f10739o.b(distribution.exemplars_);
                }
            }
            z(((GeneratedMessageV3) distribution).unknownFields);
            R();
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: j0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.api.Distribution.d u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.api.Distribution.access$7500()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.api.Distribution r3 = (com.google.api.Distribution) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                com.google.api.Distribution r4 = (com.google.api.Distribution) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.api.Distribution.d.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.api.Distribution$d");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: k0 */
        public d v(com.google.protobuf.l1 l1Var) {
            if (l1Var instanceof Distribution) {
                return i0((Distribution) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public d l0(Range range) {
            q2<Range, Range.b, f> q2Var = this.f10734j;
            if (q2Var == null) {
                Range range2 = this.f10733i;
                if (range2 != null) {
                    this.f10733i = Range.newBuilder(range2).d0(range).I();
                } else {
                    this.f10733i = range;
                }
                R();
            } else {
                q2Var.e(range);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: m0 */
        public final d z(h3 h3Var) {
            return (d) super.z(h3Var);
        }

        public d n0(long j10) {
            this.f10730f = j10;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: o0 */
        public d c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (d) super.c(fieldDescriptor, obj);
        }

        public d q0(double d10) {
            this.f10731g = d10;
            R();
            return this;
        }

        public d r0(double d10) {
            this.f10732h = d10;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: s0 */
        public final d f1(h3 h3Var) {
            return (d) super.f1(h3Var);
        }

        /* synthetic */ d(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private d() {
            this.f10737m = Distribution.access$7600();
            this.f10738n = Collections.emptyList();
            g0();
        }

        private d(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f10737m = Distribution.access$7600();
            this.f10738n = Collections.emptyList();
            g0();
        }
    }

    /* loaded from: classes2.dex */
    public interface e extends r1 {
    }

    /* loaded from: classes2.dex */
    public interface f extends r1 {
    }

    /* synthetic */ Distribution(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    static /* synthetic */ u0.i access$7600() {
        return GeneratedMessageV3.emptyLongList();
    }

    public static Distribution getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return v.f11480a;
    }

    public static d newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Distribution parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Distribution) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Distribution parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<Distribution> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Distribution)) {
            return super.equals(obj);
        }
        Distribution distribution = (Distribution) obj;
        if (getCount() == distribution.getCount() && Double.doubleToLongBits(getMean()) == Double.doubleToLongBits(distribution.getMean()) && Double.doubleToLongBits(getSumOfSquaredDeviation()) == Double.doubleToLongBits(distribution.getSumOfSquaredDeviation()) && hasRange() == distribution.hasRange()) {
            if ((!hasRange() || getRange().equals(distribution.getRange())) && hasBucketOptions() == distribution.hasBucketOptions()) {
                return (!hasBucketOptions() || getBucketOptions().equals(distribution.getBucketOptions())) && getBucketCountsList().equals(distribution.getBucketCountsList()) && getExemplarsList().equals(distribution.getExemplarsList()) && this.unknownFields.equals(distribution.unknownFields);
            }
            return false;
        }
        return false;
    }

    public long getBucketCounts(int i9) {
        return this.bucketCounts_.getLong(i9);
    }

    public int getBucketCountsCount() {
        return this.bucketCounts_.size();
    }

    public List<Long> getBucketCountsList() {
        return this.bucketCounts_;
    }

    public BucketOptions getBucketOptions() {
        BucketOptions bucketOptions = this.bucketOptions_;
        return bucketOptions == null ? BucketOptions.getDefaultInstance() : bucketOptions;
    }

    public c getBucketOptionsOrBuilder() {
        return getBucketOptions();
    }

    public long getCount() {
        return this.count_;
    }

    public Exemplar getExemplars(int i9) {
        return this.exemplars_.get(i9);
    }

    public int getExemplarsCount() {
        return this.exemplars_.size();
    }

    public List<Exemplar> getExemplarsList() {
        return this.exemplars_;
    }

    public e getExemplarsOrBuilder(int i9) {
        return this.exemplars_.get(i9);
    }

    public List<? extends e> getExemplarsOrBuilderList() {
        return this.exemplars_;
    }

    public double getMean() {
        return this.mean_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<Distribution> getParserForType() {
        return PARSER;
    }

    public Range getRange() {
        Range range = this.range_;
        return range == null ? Range.getDefaultInstance() : range;
    }

    public f getRangeOrBuilder() {
        return getRange();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        long j10 = this.count_;
        int z10 = j10 != 0 ? CodedOutputStream.z(1, j10) + 0 : 0;
        double d10 = this.mean_;
        if (d10 != 0.0d) {
            z10 += CodedOutputStream.j(2, d10);
        }
        double d11 = this.sumOfSquaredDeviation_;
        if (d11 != 0.0d) {
            z10 += CodedOutputStream.j(3, d11);
        }
        if (this.range_ != null) {
            z10 += CodedOutputStream.G(4, getRange());
        }
        if (this.bucketOptions_ != null) {
            z10 += CodedOutputStream.G(6, getBucketOptions());
        }
        int i10 = 0;
        for (int i11 = 0; i11 < this.bucketCounts_.size(); i11++) {
            i10 += CodedOutputStream.A(this.bucketCounts_.getLong(i11));
        }
        int i12 = z10 + i10;
        if (!getBucketCountsList().isEmpty()) {
            i12 = i12 + 1 + CodedOutputStream.y(i10);
        }
        this.bucketCountsMemoizedSerializedSize = i10;
        for (int i13 = 0; i13 < this.exemplars_.size(); i13++) {
            i12 += CodedOutputStream.G(10, this.exemplars_.get(i13));
        }
        int serializedSize = i12 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
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

    public boolean hasRange() {
        return this.range_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = ((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + com.google.protobuf.u0.i(getCount())) * 37) + 2) * 53) + com.google.protobuf.u0.i(Double.doubleToLongBits(getMean()))) * 37) + 3) * 53) + com.google.protobuf.u0.i(Double.doubleToLongBits(getSumOfSquaredDeviation()));
        if (hasRange()) {
            hashCode = (((hashCode * 37) + 4) * 53) + getRange().hashCode();
        }
        if (hasBucketOptions()) {
            hashCode = (((hashCode * 37) + 6) * 53) + getBucketOptions().hashCode();
        }
        if (getBucketCountsCount() > 0) {
            hashCode = (((hashCode * 37) + 7) * 53) + getBucketCountsList().hashCode();
        }
        if (getExemplarsCount() > 0) {
            hashCode = (((hashCode * 37) + 10) * 53) + getExemplarsList().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return v.f11481b.d(Distribution.class, d.class);
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
        return new Distribution();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        getSerializedSize();
        long j10 = this.count_;
        if (j10 != 0) {
            codedOutputStream.J0(1, j10);
        }
        double d10 = this.mean_;
        if (d10 != 0.0d) {
            codedOutputStream.t0(2, d10);
        }
        double d11 = this.sumOfSquaredDeviation_;
        if (d11 != 0.0d) {
            codedOutputStream.t0(3, d11);
        }
        if (this.range_ != null) {
            codedOutputStream.L0(4, getRange());
        }
        if (this.bucketOptions_ != null) {
            codedOutputStream.L0(6, getBucketOptions());
        }
        if (getBucketCountsList().size() > 0) {
            codedOutputStream.d1(58);
            codedOutputStream.d1(this.bucketCountsMemoizedSerializedSize);
        }
        for (int i9 = 0; i9 < this.bucketCounts_.size(); i9++) {
            codedOutputStream.K0(this.bucketCounts_.getLong(i9));
        }
        for (int i10 = 0; i10 < this.exemplars_.size(); i10++) {
            codedOutputStream.L0(10, this.exemplars_.get(i10));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ Distribution(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static d newBuilder(Distribution distribution) {
        return DEFAULT_INSTANCE.toBuilder().i0(distribution);
    }

    public static Distribution parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (Distribution) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static Distribution parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private Distribution(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.bucketCountsMemoizedSerializedSize = -1;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Distribution parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public Distribution getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public d toBuilder() {
        return this == DEFAULT_INSTANCE ? new d((a) null) : new d((a) null).i0(this);
    }

    public static Distribution parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public d newBuilderForType() {
        return newBuilder();
    }

    public static Distribution parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public d newBuilderForType(GeneratedMessageV3.c cVar) {
        return new d(cVar, null);
    }

    private Distribution() {
        this.bucketCountsMemoizedSerializedSize = -1;
        this.memoizedIsInitialized = (byte) -1;
        this.bucketCounts_ = GeneratedMessageV3.emptyLongList();
        this.exemplars_ = Collections.emptyList();
    }

    public static Distribution parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static Distribution parseFrom(InputStream inputStream) throws IOException {
        return (Distribution) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static Distribution parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (Distribution) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static Distribution parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (Distribution) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static Distribution parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
        return (Distribution) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Distribution(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                            this.count_ = pVar.A();
                        } else if (L == 17) {
                            this.mean_ = pVar.t();
                        } else if (L != 25) {
                            if (L == 34) {
                                Range range = this.range_;
                                Range.b builder = range != null ? range.toBuilder() : null;
                                Range range2 = (Range) pVar.B(Range.parser(), f0Var);
                                this.range_ = range2;
                                if (builder != null) {
                                    builder.d0(range2);
                                    this.range_ = builder.I();
                                }
                            } else if (L == 50) {
                                BucketOptions bucketOptions = this.bucketOptions_;
                                BucketOptions.b builder2 = bucketOptions != null ? bucketOptions.toBuilder() : null;
                                BucketOptions bucketOptions2 = (BucketOptions) pVar.B(BucketOptions.parser(), f0Var);
                                this.bucketOptions_ = bucketOptions2;
                                if (builder2 != null) {
                                    builder2.g0(bucketOptions2);
                                    this.bucketOptions_ = builder2.I();
                                }
                            } else if (L == 56) {
                                if (!(z11 & true)) {
                                    this.bucketCounts_ = GeneratedMessageV3.newLongList();
                                    z11 |= true;
                                }
                                this.bucketCounts_.I0(pVar.A());
                            } else if (L == 58) {
                                int q10 = pVar.q(pVar.D());
                                if (!(z11 & true) && pVar.e() > 0) {
                                    this.bucketCounts_ = GeneratedMessageV3.newLongList();
                                    z11 |= true;
                                }
                                while (pVar.e() > 0) {
                                    this.bucketCounts_.I0(pVar.A());
                                }
                                pVar.p(q10);
                            } else if (L != 82) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                if (!(z11 & true)) {
                                    this.exemplars_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.exemplars_.add(pVar.B(Exemplar.parser(), f0Var));
                            }
                        } else {
                            this.sumOfSquaredDeviation_ = pVar.t();
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
                    this.bucketCounts_.C();
                }
                if (z11 & true) {
                    this.exemplars_ = Collections.unmodifiableList(this.exemplars_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }
}
