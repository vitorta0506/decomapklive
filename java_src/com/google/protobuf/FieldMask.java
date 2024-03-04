package com.google.protobuf;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.a;
import com.google.protobuf.h3;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes3.dex */
public final class FieldMask extends GeneratedMessageV3 implements l0 {
    private static final FieldMask DEFAULT_INSTANCE = new FieldMask();
    private static final e2<FieldMask> PARSER = new a();
    public static final int PATHS_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private z0 paths_;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class a extends c<FieldMask> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public FieldMask m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new FieldMask(pVar, f0Var, null);
        }
    }

    /* loaded from: classes3.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements l0 {

        /* renamed from: e  reason: collision with root package name */
        private int f14653e;

        /* renamed from: f  reason: collision with root package name */
        private z0 f14654f;

        /* synthetic */ b(a aVar) {
            this();
        }

        private void a0() {
            if ((this.f14653e & 1) == 0) {
                this.f14654f = new y0(this.f14654f);
                this.f14653e |= 1;
            }
        }

        private void d0() {
            boolean z10 = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return m0.f15063b.d(FieldMask.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public FieldMask build() {
            FieldMask I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public FieldMask I() {
            FieldMask fieldMask = new FieldMask(this, (a) null);
            if ((this.f14653e & 1) != 0) {
                this.f14654f = this.f14654f.V0();
                this.f14653e &= -2;
            }
            fieldMask.paths_ = this.f14654f;
            Q();
            return fieldMask;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: b0 */
        public FieldMask getDefaultInstanceForType() {
            return FieldMask.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.protobuf.FieldMask.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.protobuf.FieldMask.access$400()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.protobuf.FieldMask r3 = (com.google.protobuf.FieldMask) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                com.google.protobuf.FieldMask r4 = (com.google.protobuf.FieldMask) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.FieldMask.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.protobuf.FieldMask$b");
        }

        public b g0(FieldMask fieldMask) {
            if (fieldMask == FieldMask.getDefaultInstance()) {
                return this;
            }
            if (!fieldMask.paths_.isEmpty()) {
                if (this.f14654f.isEmpty()) {
                    this.f14654f = fieldMask.paths_;
                    this.f14653e &= -2;
                } else {
                    a0();
                    this.f14654f.addAll(fieldMask.paths_);
                }
                R();
            }
            z(fieldMask.unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return m0.f15062a;
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof FieldMask) {
                return g0((FieldMask) l1Var);
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
            this.f14654f = y0.f15344d;
            d0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f14654f = y0.f15344d;
            d0();
        }
    }

    /* synthetic */ FieldMask(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static FieldMask getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return m0.f15062a;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static FieldMask parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (FieldMask) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static FieldMask parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<FieldMask> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof FieldMask)) {
            return super.equals(obj);
        }
        FieldMask fieldMask = (FieldMask) obj;
        return m218getPathsList().equals(fieldMask.m218getPathsList()) && this.unknownFields.equals(fieldMask.unknownFields);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<FieldMask> getParserForType() {
        return PARSER;
    }

    public String getPaths(int i9) {
        return this.paths_.get(i9);
    }

    public ByteString getPathsBytes(int i9) {
        return this.paths_.j0(i9);
    }

    public int getPathsCount() {
        return this.paths_.size();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < this.paths_.size(); i11++) {
            i10 += GeneratedMessageV3.computeStringSizeNoTag(this.paths_.c1(i11));
        }
        int size = 0 + i10 + (m218getPathsList().size() * 1) + this.unknownFields.getSerializedSize();
        this.memoizedSize = size;
        return size;
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
        if (getPathsCount() > 0) {
            hashCode = (((hashCode * 37) + 1) * 53) + m218getPathsList().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return m0.f15063b.d(FieldMask.class, b.class);
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
        return new FieldMask();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        for (int i9 = 0; i9 < this.paths_.size(); i9++) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.paths_.c1(i9));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ FieldMask(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(FieldMask fieldMask) {
        return DEFAULT_INSTANCE.toBuilder().g0(fieldMask);
    }

    public static FieldMask parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    /* renamed from: getPathsList */
    public i2 m218getPathsList() {
        return this.paths_;
    }

    private FieldMask(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static FieldMask parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (FieldMask) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static FieldMask parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public FieldMask getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static FieldMask parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private FieldMask() {
        this.memoizedIsInitialized = (byte) -1;
        this.paths_ = y0.f15344d;
    }

    public static FieldMask parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static FieldMask parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static FieldMask parseFrom(InputStream inputStream) throws IOException {
        return (FieldMask) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private FieldMask(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                        if (L != 10) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            String K = pVar.K();
                            if (!(z11 & true)) {
                                this.paths_ = new y0();
                                z11 |= true;
                            }
                            this.paths_.add(K);
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
                    this.paths_ = this.paths_.V0();
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static FieldMask parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (FieldMask) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static FieldMask parseFrom(p pVar) throws IOException {
        return (FieldMask) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static FieldMask parseFrom(p pVar, f0 f0Var) throws IOException {
        return (FieldMask) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
