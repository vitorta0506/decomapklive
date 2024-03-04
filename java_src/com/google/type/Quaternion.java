package com.google.type;

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
import com.google.protobuf.r1;
import com.google.protobuf.u0;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes3.dex */
public final class Quaternion extends GeneratedMessageV3 implements r1 {
    private static final Quaternion DEFAULT_INSTANCE = new Quaternion();
    private static final e2<Quaternion> PARSER = new a();
    public static final int W_FIELD_NUMBER = 4;
    public static final int X_FIELD_NUMBER = 1;
    public static final int Y_FIELD_NUMBER = 2;
    public static final int Z_FIELD_NUMBER = 3;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private double w_;
    private double x_;
    private double y_;
    private double z_;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class a extends com.google.protobuf.c<Quaternion> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public Quaternion m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new Quaternion(pVar, f0Var, null);
        }
    }

    /* loaded from: classes3.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private double f15779e;

        /* renamed from: f  reason: collision with root package name */
        private double f15780f;

        /* renamed from: g  reason: collision with root package name */
        private double f15781g;

        /* renamed from: h  reason: collision with root package name */
        private double f15782h;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return q.f15833b.d(Quaternion.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public Quaternion build() {
            Quaternion I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public Quaternion I() {
            Quaternion quaternion = new Quaternion(this, (a) null);
            quaternion.x_ = this.f15779e;
            quaternion.y_ = this.f15780f;
            quaternion.z_ = this.f15781g;
            quaternion.w_ = this.f15782h;
            Q();
            return quaternion;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public Quaternion getDefaultInstanceForType() {
            return Quaternion.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.type.Quaternion.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.type.Quaternion.access$900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.type.Quaternion r3 = (com.google.type.Quaternion) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                com.google.type.Quaternion r4 = (com.google.type.Quaternion) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.type.Quaternion.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.type.Quaternion$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof Quaternion) {
                return g0((Quaternion) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b g0(Quaternion quaternion) {
            if (quaternion == Quaternion.getDefaultInstance()) {
                return this;
            }
            if (quaternion.getX() != 0.0d) {
                l0(quaternion.getX());
            }
            if (quaternion.getY() != 0.0d) {
                m0(quaternion.getY());
            }
            if (quaternion.getZ() != 0.0d) {
                n0(quaternion.getZ());
            }
            if (quaternion.getW() != 0.0d) {
                k0(quaternion.getW());
            }
            z(((GeneratedMessageV3) quaternion).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return q.f15832a;
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

        public b k0(double d10) {
            this.f15782h = d10;
            R();
            return this;
        }

        public b l0(double d10) {
            this.f15779e = d10;
            R();
            return this;
        }

        public b m0(double d10) {
            this.f15780f = d10;
            R();
            return this;
        }

        public b n0(double d10) {
            this.f15781g = d10;
            R();
            return this;
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

    /* synthetic */ Quaternion(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static Quaternion getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return q.f15832a;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Quaternion parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Quaternion) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Quaternion parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<Quaternion> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Quaternion)) {
            return super.equals(obj);
        }
        Quaternion quaternion = (Quaternion) obj;
        return Double.doubleToLongBits(getX()) == Double.doubleToLongBits(quaternion.getX()) && Double.doubleToLongBits(getY()) == Double.doubleToLongBits(quaternion.getY()) && Double.doubleToLongBits(getZ()) == Double.doubleToLongBits(quaternion.getZ()) && Double.doubleToLongBits(getW()) == Double.doubleToLongBits(quaternion.getW()) && this.unknownFields.equals(quaternion.unknownFields);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<Quaternion> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        double d10 = this.x_;
        int j10 = d10 != 0.0d ? 0 + CodedOutputStream.j(1, d10) : 0;
        double d11 = this.y_;
        if (d11 != 0.0d) {
            j10 += CodedOutputStream.j(2, d11);
        }
        double d12 = this.z_;
        if (d12 != 0.0d) {
            j10 += CodedOutputStream.j(3, d12);
        }
        double d13 = this.w_;
        if (d13 != 0.0d) {
            j10 += CodedOutputStream.j(4, d13);
        }
        int serializedSize = j10 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public double getW() {
        return this.w_;
    }

    public double getX() {
        return this.x_;
    }

    public double getY() {
        return this.y_;
    }

    public double getZ() {
        return this.z_;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = ((((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + u0.i(Double.doubleToLongBits(getX()))) * 37) + 2) * 53) + u0.i(Double.doubleToLongBits(getY()))) * 37) + 3) * 53) + u0.i(Double.doubleToLongBits(getZ()))) * 37) + 4) * 53) + u0.i(Double.doubleToLongBits(getW()))) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode;
        return hashCode;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return q.f15833b.d(Quaternion.class, b.class);
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
        return new Quaternion();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        double d10 = this.x_;
        if (d10 != 0.0d) {
            codedOutputStream.t0(1, d10);
        }
        double d11 = this.y_;
        if (d11 != 0.0d) {
            codedOutputStream.t0(2, d11);
        }
        double d12 = this.z_;
        if (d12 != 0.0d) {
            codedOutputStream.t0(3, d12);
        }
        double d13 = this.w_;
        if (d13 != 0.0d) {
            codedOutputStream.t0(4, d13);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ Quaternion(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(Quaternion quaternion) {
        return DEFAULT_INSTANCE.toBuilder().g0(quaternion);
    }

    public static Quaternion parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Quaternion) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static Quaternion parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private Quaternion(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Quaternion parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public Quaternion getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static Quaternion parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private Quaternion() {
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Quaternion parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static Quaternion parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    private Quaternion(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    int L = pVar.L();
                    if (L != 0) {
                        if (L == 9) {
                            this.x_ = pVar.t();
                        } else if (L == 17) {
                            this.y_ = pVar.t();
                        } else if (L == 25) {
                            this.z_ = pVar.t();
                        } else if (L != 33) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            this.w_ = pVar.t();
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

    public static Quaternion parseFrom(InputStream inputStream) throws IOException {
        return (Quaternion) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static Quaternion parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Quaternion) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static Quaternion parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (Quaternion) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static Quaternion parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
        return (Quaternion) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
