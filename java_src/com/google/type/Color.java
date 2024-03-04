package com.google.type;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.FloatValue;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.q0;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes3.dex */
public final class Color extends GeneratedMessageV3 implements r1 {
    public static final int ALPHA_FIELD_NUMBER = 4;
    public static final int BLUE_FIELD_NUMBER = 3;
    public static final int GREEN_FIELD_NUMBER = 2;
    public static final int RED_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private FloatValue alpha_;
    private float blue_;
    private float green_;
    private byte memoizedIsInitialized;
    private float red_;
    private static final Color DEFAULT_INSTANCE = new Color();
    private static final e2<Color> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class a extends com.google.protobuf.c<Color> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public Color m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new Color(pVar, f0Var, null);
        }
    }

    /* loaded from: classes3.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private float f15722e;

        /* renamed from: f  reason: collision with root package name */
        private float f15723f;

        /* renamed from: g  reason: collision with root package name */
        private float f15724g;

        /* renamed from: h  reason: collision with root package name */
        private FloatValue f15725h;

        /* renamed from: i  reason: collision with root package name */
        private q2<FloatValue, FloatValue.b, q0> f15726i;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return com.google.type.b.f15791b.d(Color.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public Color build() {
            Color I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public Color I() {
            Color color = new Color(this, (a) null);
            color.red_ = this.f15722e;
            color.green_ = this.f15723f;
            color.blue_ = this.f15724g;
            q2<FloatValue, FloatValue.b, q0> q2Var = this.f15726i;
            if (q2Var == null) {
                color.alpha_ = this.f15725h;
            } else {
                color.alpha_ = q2Var.b();
            }
            Q();
            return color;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public Color getDefaultInstanceForType() {
            return Color.getDefaultInstance();
        }

        public b d0(FloatValue floatValue) {
            q2<FloatValue, FloatValue.b, q0> q2Var = this.f15726i;
            if (q2Var == null) {
                FloatValue floatValue2 = this.f15725h;
                if (floatValue2 != null) {
                    this.f15725h = FloatValue.newBuilder(floatValue2).e0(floatValue).I();
                } else {
                    this.f15725h = floatValue;
                }
                R();
            } else {
                q2Var.e(floatValue);
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
        public com.google.type.Color.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.type.Color.access$900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.type.Color r3 = (com.google.type.Color) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                com.google.type.Color r4 = (com.google.type.Color) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.type.Color.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.type.Color$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof Color) {
                return h0((Color) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return com.google.type.b.f15790a;
        }

        public b h0(Color color) {
            if (color == Color.getDefaultInstance()) {
                return this;
            }
            if (color.getRed() != 0.0f) {
                m0(color.getRed());
            }
            if (color.getGreen() != 0.0f) {
                l0(color.getGreen());
            }
            if (color.getBlue() != 0.0f) {
                j0(color.getBlue());
            }
            if (color.hasAlpha()) {
                d0(color.getAlpha());
            }
            z(((GeneratedMessageV3) color).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        public b j0(float f10) {
            this.f15724g = f10;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: k0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
        }

        public b l0(float f10) {
            this.f15723f = f10;
            R();
            return this;
        }

        public b m0(float f10) {
            this.f15722e = f10;
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
            b0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            b0();
        }
    }

    /* synthetic */ Color(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static Color getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return com.google.type.b.f15790a;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Color parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Color) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Color parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<Color> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Color)) {
            return super.equals(obj);
        }
        Color color = (Color) obj;
        if (Float.floatToIntBits(getRed()) == Float.floatToIntBits(color.getRed()) && Float.floatToIntBits(getGreen()) == Float.floatToIntBits(color.getGreen()) && Float.floatToIntBits(getBlue()) == Float.floatToIntBits(color.getBlue()) && hasAlpha() == color.hasAlpha()) {
            return (!hasAlpha() || getAlpha().equals(color.getAlpha())) && this.unknownFields.equals(color.unknownFields);
        }
        return false;
    }

    public FloatValue getAlpha() {
        FloatValue floatValue = this.alpha_;
        return floatValue == null ? FloatValue.getDefaultInstance() : floatValue;
    }

    public q0 getAlphaOrBuilder() {
        return getAlpha();
    }

    public float getBlue() {
        return this.blue_;
    }

    public float getGreen() {
        return this.green_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<Color> getParserForType() {
        return PARSER;
    }

    public float getRed() {
        return this.red_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        float f10 = this.red_;
        int r10 = f10 != 0.0f ? 0 + CodedOutputStream.r(1, f10) : 0;
        float f11 = this.green_;
        if (f11 != 0.0f) {
            r10 += CodedOutputStream.r(2, f11);
        }
        float f12 = this.blue_;
        if (f12 != 0.0f) {
            r10 += CodedOutputStream.r(3, f12);
        }
        if (this.alpha_ != null) {
            r10 += CodedOutputStream.G(4, getAlpha());
        }
        int serializedSize = r10 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasAlpha() {
        return this.alpha_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = ((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + Float.floatToIntBits(getRed())) * 37) + 2) * 53) + Float.floatToIntBits(getGreen())) * 37) + 3) * 53) + Float.floatToIntBits(getBlue());
        if (hasAlpha()) {
            hashCode = (((hashCode * 37) + 4) * 53) + getAlpha().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return com.google.type.b.f15791b.d(Color.class, b.class);
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
        return new Color();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        float f10 = this.red_;
        if (f10 != 0.0f) {
            codedOutputStream.B0(1, f10);
        }
        float f11 = this.green_;
        if (f11 != 0.0f) {
            codedOutputStream.B0(2, f11);
        }
        float f12 = this.blue_;
        if (f12 != 0.0f) {
            codedOutputStream.B0(3, f12);
        }
        if (this.alpha_ != null) {
            codedOutputStream.L0(4, getAlpha());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ Color(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(Color color) {
        return DEFAULT_INSTANCE.toBuilder().h0(color);
    }

    public static Color parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Color) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static Color parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private Color(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Color parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public Color getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).h0(this);
    }

    public static Color parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private Color() {
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Color parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static Color parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    private Color(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            if (L == 13) {
                                this.red_ = pVar.x();
                            } else if (L == 21) {
                                this.green_ = pVar.x();
                            } else if (L == 29) {
                                this.blue_ = pVar.x();
                            } else if (L != 34) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                FloatValue floatValue = this.alpha_;
                                FloatValue.b builder = floatValue != null ? floatValue.toBuilder() : null;
                                FloatValue floatValue2 = (FloatValue) pVar.B(FloatValue.parser(), f0Var);
                                this.alpha_ = floatValue2;
                                if (builder != null) {
                                    builder.e0(floatValue2);
                                    this.alpha_ = builder.I();
                                }
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

    public static Color parseFrom(InputStream inputStream) throws IOException {
        return (Color) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static Color parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Color) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static Color parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (Color) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static Color parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
        return (Color) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
