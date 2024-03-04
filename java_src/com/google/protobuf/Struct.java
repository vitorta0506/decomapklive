package com.google.protobuf;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.WireFormat;
import com.google.protobuf.a;
import com.google.protobuf.h3;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes3.dex */
public final class Struct extends GeneratedMessageV3 implements u2 {
    public static final int FIELDS_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private g1<String, Value> fields_;
    private byte memoizedIsInitialized;
    private static final Struct DEFAULT_INSTANCE = new Struct();
    private static final e2<Struct> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class a extends com.google.protobuf.c<Struct> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public Struct m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new Struct(pVar, f0Var, null);
        }
    }

    /* loaded from: classes3.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements u2 {

        /* renamed from: e  reason: collision with root package name */
        private g1<String, Value> f14797e;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private g1<String, Value> b0() {
            g1<String, Value> g1Var = this.f14797e;
            return g1Var == null ? g1.g(c.f14798a) : g1Var;
        }

        private g1<String, Value> d0() {
            R();
            if (this.f14797e == null) {
                this.f14797e = g1.p(c.f14798a);
            }
            if (!this.f14797e.m()) {
                this.f14797e = this.f14797e.f();
            }
            return this.f14797e;
        }

        private void e0() {
            boolean z10 = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return v2.f15301b.d(Struct.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected g1 M(int i9) {
            if (i9 == 1) {
                return b0();
            }
            throw new RuntimeException("Invalid map field number: " + i9);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected g1 N(int i9) {
            if (i9 == 1) {
                return d0();
            }
            throw new RuntimeException("Invalid map field number: " + i9);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public Struct build() {
            Struct I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public Struct I() {
            Struct struct = new Struct(this, (a) null);
            struct.fields_ = b0();
            struct.fields_.n();
            Q();
            return struct;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public Struct getDefaultInstanceForType() {
            return Struct.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.protobuf.Struct.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.protobuf.Struct.access$500()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.protobuf.Struct r3 = (com.google.protobuf.Struct) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                com.google.protobuf.Struct r4 = (com.google.protobuf.Struct) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.Struct.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.protobuf.Struct$b");
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return v2.f15300a;
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof Struct) {
                return i0((Struct) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b i0(Struct struct) {
            if (struct == Struct.getDefaultInstance()) {
                return this;
            }
            d0().o(struct.internalGetFields());
            z(struct.unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: j0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        public b k0(String str, Value value) {
            Objects.requireNonNull(str, "map key");
            Objects.requireNonNull(value, "map value");
            d0().l().put(str, value);
            return this;
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

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            e0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            e0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        static final e1<String, Value> f14798a = e1.k(v2.f15302c, WireFormat.FieldType.STRING, "", WireFormat.FieldType.MESSAGE, Value.getDefaultInstance());
    }

    /* synthetic */ Struct(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static Struct getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return v2.f15300a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public g1<String, Value> internalGetFields() {
        g1<String, Value> g1Var = this.fields_;
        return g1Var == null ? g1.g(c.f14798a) : g1Var;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Struct parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Struct) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Struct parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<Struct> parser() {
        return PARSER;
    }

    public boolean containsFields(String str) {
        Objects.requireNonNull(str, "map key");
        return internalGetFields().i().containsKey(str);
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Struct)) {
            return super.equals(obj);
        }
        Struct struct = (Struct) obj;
        return internalGetFields().equals(struct.internalGetFields()) && this.unknownFields.equals(struct.unknownFields);
    }

    @Deprecated
    public Map<String, Value> getFields() {
        return getFieldsMap();
    }

    public int getFieldsCount() {
        return internalGetFields().i().size();
    }

    public Map<String, Value> getFieldsMap() {
        return internalGetFields().i();
    }

    public Value getFieldsOrDefault(String str, Value value) {
        Objects.requireNonNull(str, "map key");
        Map<String, Value> i9 = internalGetFields().i();
        return i9.containsKey(str) ? i9.get(str) : value;
    }

    public Value getFieldsOrThrow(String str) {
        Objects.requireNonNull(str, "map key");
        Map<String, Value> i9 = internalGetFields().i();
        if (i9.containsKey(str)) {
            return i9.get(str);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<Struct> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int i10 = 0;
        for (Map.Entry<String, Value> entry : internalGetFields().i().entrySet()) {
            i10 += CodedOutputStream.G(1, c.f14798a.newBuilderForType().N(entry.getKey()).P(entry.getValue()).build());
        }
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
        if (!internalGetFields().i().isEmpty()) {
            hashCode = (((hashCode * 37) + 1) * 53) + internalGetFields().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return v2.f15301b.d(Struct.class, b.class);
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected g1 internalGetMapField(int i9) {
        if (i9 == 1) {
            return internalGetFields();
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

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public Object newInstance(GeneratedMessageV3.f fVar) {
        return new Struct();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        GeneratedMessageV3.serializeStringMapTo(codedOutputStream, internalGetFields(), c.f14798a, 1);
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ Struct(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(Struct struct) {
        return DEFAULT_INSTANCE.toBuilder().i0(struct);
    }

    public static Struct parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private Struct(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Struct parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Struct) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static Struct parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public Struct getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).i0(this);
    }

    public static Struct parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private Struct() {
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Struct parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static Struct parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    /* JADX WARN: Type inference failed for: r3v7, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.Object] */
    private Struct(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            if (!(z11 & true)) {
                                this.fields_ = g1.p(c.f14798a);
                                z11 |= true;
                            }
                            e1 e1Var = (e1) pVar.B(c.f14798a.getParserForType(), f0Var);
                            this.fields_.l().put(e1Var.f(), e1Var.h());
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

    public static Struct parseFrom(InputStream inputStream) throws IOException {
        return (Struct) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static Struct parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Struct) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static Struct parseFrom(p pVar) throws IOException {
        return (Struct) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static Struct parseFrom(p pVar, f0 f0Var) throws IOException {
        return (Struct) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
