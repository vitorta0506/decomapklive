package com.google.api;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.WireFormat;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.h3;
import com.google.protobuf.r1;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class Metric extends GeneratedMessageV3 implements r1 {
    public static final int LABELS_FIELD_NUMBER = 2;
    public static final int TYPE_FIELD_NUMBER = 3;
    private static final long serialVersionUID = 0;
    private com.google.protobuf.g1<String, String> labels_;
    private byte memoizedIsInitialized;
    private volatile Object type_;
    private static final Metric DEFAULT_INSTANCE = new Metric();
    private static final e2<Metric> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a extends com.google.protobuf.c<Metric> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public Metric m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return new Metric(pVar, f0Var, null);
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private Object f10797e;

        /* renamed from: f  reason: collision with root package name */
        private com.google.protobuf.g1<String, String> f10798f;

        /* synthetic */ b(a aVar) {
            this();
        }

        private com.google.protobuf.g1<String, String> b0() {
            com.google.protobuf.g1<String, String> g1Var = this.f10798f;
            return g1Var == null ? com.google.protobuf.g1.g(c.f10799a) : g1Var;
        }

        private com.google.protobuf.g1<String, String> d0() {
            R();
            if (this.f10798f == null) {
                this.f10798f = com.google.protobuf.g1.p(c.f10799a);
            }
            if (!this.f10798f.m()) {
                this.f10798f = this.f10798f.f();
            }
            return this.f10798f;
        }

        private void e0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return q0.f11462f.d(Metric.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected com.google.protobuf.g1 M(int i9) {
            if (i9 == 2) {
                return b0();
            }
            throw new RuntimeException("Invalid map field number: " + i9);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected com.google.protobuf.g1 N(int i9) {
            if (i9 == 2) {
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
        public Metric build() {
            Metric I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public Metric I() {
            Metric metric = new Metric(this, (a) null);
            metric.type_ = this.f10797e;
            metric.labels_ = b0();
            metric.labels_.n();
            Q();
            return metric;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public Metric getDefaultInstanceForType() {
            return Metric.getDefaultInstance();
        }

        public b g0(Metric metric) {
            if (metric == Metric.getDefaultInstance()) {
                return this;
            }
            if (!metric.getType().isEmpty()) {
                this.f10797e = metric.type_;
                R();
            }
            d0().o(metric.internalGetLabels());
            z(((GeneratedMessageV3) metric).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return q0.f11461e;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.api.Metric.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.api.Metric.access$800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.api.Metric r3 = (com.google.api.Metric) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                com.google.api.Metric r4 = (com.google.api.Metric) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.api.Metric.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.api.Metric$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public b v(com.google.protobuf.l1 l1Var) {
            if (l1Var instanceof Metric) {
                return g0((Metric) l1Var);
            }
            super.P0(l1Var);
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
            this.f10797e = "";
            e0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f10797e = "";
            e0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        static final com.google.protobuf.e1<String, String> f10799a;

        static {
            Descriptors.b bVar = q0.f11463g;
            WireFormat.FieldType fieldType = WireFormat.FieldType.STRING;
            f10799a = com.google.protobuf.e1.k(bVar, fieldType, "", fieldType, "");
        }
    }

    /* synthetic */ Metric(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static Metric getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return q0.f11461e;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.google.protobuf.g1<String, String> internalGetLabels() {
        com.google.protobuf.g1<String, String> g1Var = this.labels_;
        return g1Var == null ? com.google.protobuf.g1.g(c.f10799a) : g1Var;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Metric parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Metric) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Metric parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<Metric> parser() {
        return PARSER;
    }

    public boolean containsLabels(String str) {
        Objects.requireNonNull(str);
        return internalGetLabels().i().containsKey(str);
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Metric)) {
            return super.equals(obj);
        }
        Metric metric = (Metric) obj;
        return getType().equals(metric.getType()) && internalGetLabels().equals(metric.internalGetLabels()) && this.unknownFields.equals(metric.unknownFields);
    }

    @Deprecated
    public Map<String, String> getLabels() {
        return getLabelsMap();
    }

    public int getLabelsCount() {
        return internalGetLabels().i().size();
    }

    public Map<String, String> getLabelsMap() {
        return internalGetLabels().i();
    }

    public String getLabelsOrDefault(String str, String str2) {
        Objects.requireNonNull(str);
        Map<String, String> i9 = internalGetLabels().i();
        return i9.containsKey(str) ? i9.get(str) : str2;
    }

    public String getLabelsOrThrow(String str) {
        Objects.requireNonNull(str);
        Map<String, String> i9 = internalGetLabels().i();
        if (i9.containsKey(str)) {
            return i9.get(str);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<Metric> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int i10 = 0;
        for (Map.Entry<String, String> entry : internalGetLabels().i().entrySet()) {
            i10 += CodedOutputStream.G(2, c.f10799a.newBuilderForType().N(entry.getKey()).P(entry.getValue()).build());
        }
        if (!GeneratedMessageV3.isStringEmpty(this.type_)) {
            i10 += GeneratedMessageV3.computeStringSize(3, this.type_);
        }
        int serializedSize = i10 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public String getType() {
        Object obj = this.type_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.type_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getTypeBytes() {
        Object obj = this.type_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.type_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
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
        int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 3) * 53) + getType().hashCode();
        if (!internalGetLabels().i().isEmpty()) {
            hashCode = (((hashCode * 37) + 2) * 53) + internalGetLabels().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return q0.f11462f.d(Metric.class, b.class);
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected com.google.protobuf.g1 internalGetMapField(int i9) {
        if (i9 == 2) {
            return internalGetLabels();
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
        return new Metric();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        GeneratedMessageV3.serializeStringMapTo(codedOutputStream, internalGetLabels(), c.f10799a, 2);
        if (!GeneratedMessageV3.isStringEmpty(this.type_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 3, this.type_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ Metric(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(Metric metric) {
        return DEFAULT_INSTANCE.toBuilder().g0(metric);
    }

    public static Metric parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (Metric) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static Metric parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private Metric(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Metric parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public Metric getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static Metric parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private Metric() {
        this.memoizedIsInitialized = (byte) -1;
        this.type_ = "";
    }

    public static Metric parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static Metric parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static Metric parseFrom(InputStream inputStream) throws IOException {
        return (Metric) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    /* JADX WARN: Type inference failed for: r3v8, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.lang.Object] */
    private Metric(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                        if (L == 18) {
                            if (!(z11 & true)) {
                                this.labels_ = com.google.protobuf.g1.p(c.f10799a);
                                z11 |= true;
                            }
                            com.google.protobuf.e1 e1Var = (com.google.protobuf.e1) pVar.B(c.f10799a.getParserForType(), f0Var);
                            this.labels_.l().put(e1Var.f(), e1Var.h());
                        } else if (L != 26) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            this.type_ = pVar.K();
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

    public static Metric parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (Metric) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static Metric parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (Metric) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static Metric parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
        return (Metric) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
