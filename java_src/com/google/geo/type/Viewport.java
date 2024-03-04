package com.google.geo.type;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.c;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import com.google.type.LatLng;
import com.google.type.j;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class Viewport extends GeneratedMessageV3 implements r1 {
    public static final int HIGH_FIELD_NUMBER = 2;
    public static final int LOW_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private LatLng high_;
    private LatLng low_;
    private byte memoizedIsInitialized;
    private static final Viewport DEFAULT_INSTANCE = new Viewport();
    private static final e2<Viewport> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a extends c<Viewport> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public Viewport m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new Viewport(pVar, f0Var, null);
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private LatLng f14202e;

        /* renamed from: f  reason: collision with root package name */
        private q2<LatLng, LatLng.b, j> f14203f;

        /* renamed from: g  reason: collision with root package name */
        private LatLng f14204g;

        /* renamed from: h  reason: collision with root package name */
        private q2<LatLng, LatLng.b, j> f14205h;

        /* synthetic */ b(a aVar) {
            this();
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return com.google.geo.type.a.f14207b.d(Viewport.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public Viewport build() {
            Viewport I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public Viewport I() {
            Viewport viewport = new Viewport(this, (a) null);
            q2<LatLng, LatLng.b, j> q2Var = this.f14203f;
            if (q2Var == null) {
                viewport.low_ = this.f14202e;
            } else {
                viewport.low_ = q2Var.b();
            }
            q2<LatLng, LatLng.b, j> q2Var2 = this.f14205h;
            if (q2Var2 == null) {
                viewport.high_ = this.f14204g;
            } else {
                viewport.high_ = q2Var2.b();
            }
            Q();
            return viewport;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public Viewport getDefaultInstanceForType() {
            return Viewport.getDefaultInstance();
        }

        public b d0(Viewport viewport) {
            if (viewport == Viewport.getDefaultInstance()) {
                return this;
            }
            if (viewport.hasLow()) {
                i0(viewport.getLow());
            }
            if (viewport.hasHigh()) {
                h0(viewport.getHigh());
            }
            z(((GeneratedMessageV3) viewport).unknownFields);
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
        public com.google.geo.type.Viewport.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.geo.type.Viewport.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.geo.type.Viewport r3 = (com.google.geo.type.Viewport) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                com.google.geo.type.Viewport r4 = (com.google.geo.type.Viewport) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.geo.type.Viewport.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.geo.type.Viewport$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof Viewport) {
                return d0((Viewport) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return com.google.geo.type.a.f14206a;
        }

        public b h0(LatLng latLng) {
            q2<LatLng, LatLng.b, j> q2Var = this.f14205h;
            if (q2Var == null) {
                LatLng latLng2 = this.f14204g;
                if (latLng2 != null) {
                    this.f14204g = LatLng.newBuilder(latLng2).g0(latLng).I();
                } else {
                    this.f14204g = latLng;
                }
                R();
            } else {
                q2Var.e(latLng);
            }
            return this;
        }

        public b i0(LatLng latLng) {
            q2<LatLng, LatLng.b, j> q2Var = this.f14203f;
            if (q2Var == null) {
                LatLng latLng2 = this.f14202e;
                if (latLng2 != null) {
                    this.f14202e = LatLng.newBuilder(latLng2).g0(latLng).I();
                } else {
                    this.f14202e = latLng;
                }
                R();
            } else {
                q2Var.e(latLng);
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

    /* synthetic */ Viewport(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static Viewport getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return com.google.geo.type.a.f14206a;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Viewport parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Viewport) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Viewport parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<Viewport> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Viewport)) {
            return super.equals(obj);
        }
        Viewport viewport = (Viewport) obj;
        if (hasLow() != viewport.hasLow()) {
            return false;
        }
        if ((!hasLow() || getLow().equals(viewport.getLow())) && hasHigh() == viewport.hasHigh()) {
            return (!hasHigh() || getHigh().equals(viewport.getHigh())) && this.unknownFields.equals(viewport.unknownFields);
        }
        return false;
    }

    public LatLng getHigh() {
        LatLng latLng = this.high_;
        return latLng == null ? LatLng.getDefaultInstance() : latLng;
    }

    public j getHighOrBuilder() {
        return getHigh();
    }

    public LatLng getLow() {
        LatLng latLng = this.low_;
        return latLng == null ? LatLng.getDefaultInstance() : latLng;
    }

    public j getLowOrBuilder() {
        return getLow();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<Viewport> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.low_ != null ? 0 + CodedOutputStream.G(1, getLow()) : 0;
        if (this.high_ != null) {
            G += CodedOutputStream.G(2, getHigh());
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasHigh() {
        return this.high_ != null;
    }

    public boolean hasLow() {
        return this.low_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasLow()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getLow().hashCode();
        }
        if (hasHigh()) {
            hashCode = (((hashCode * 37) + 2) * 53) + getHigh().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return com.google.geo.type.a.f14207b.d(Viewport.class, b.class);
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
        return new Viewport();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.low_ != null) {
            codedOutputStream.L0(1, getLow());
        }
        if (this.high_ != null) {
            codedOutputStream.L0(2, getHigh());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ Viewport(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(Viewport viewport) {
        return DEFAULT_INSTANCE.toBuilder().d0(viewport);
    }

    public static Viewport parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Viewport) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static Viewport parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private Viewport(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Viewport parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public Viewport getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).d0(this);
    }

    public static Viewport parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private Viewport() {
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Viewport parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static Viewport parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    private Viewport(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
        this();
        LatLng.b builder;
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    int L = pVar.L();
                    if (L != 0) {
                        if (L == 10) {
                            LatLng latLng = this.low_;
                            builder = latLng != null ? latLng.toBuilder() : null;
                            LatLng latLng2 = (LatLng) pVar.B(LatLng.parser(), f0Var);
                            this.low_ = latLng2;
                            if (builder != null) {
                                builder.g0(latLng2);
                                this.low_ = builder.I();
                            }
                        } else if (L != 18) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            LatLng latLng3 = this.high_;
                            builder = latLng3 != null ? latLng3.toBuilder() : null;
                            LatLng latLng4 = (LatLng) pVar.B(LatLng.parser(), f0Var);
                            this.high_ = latLng4;
                            if (builder != null) {
                                builder.g0(latLng4);
                                this.high_ = builder.I();
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

    public static Viewport parseFrom(InputStream inputStream) throws IOException {
        return (Viewport) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static Viewport parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Viewport) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static Viewport parseFrom(p pVar) throws IOException {
        return (Viewport) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static Viewport parseFrom(p pVar, f0 f0Var) throws IOException {
        return (Viewport) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
