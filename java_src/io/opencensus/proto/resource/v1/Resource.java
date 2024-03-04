package io.opencensus.proto.resource.v1;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.WireFormat;
import com.google.protobuf.a;
import com.google.protobuf.e1;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.g1;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.p;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes7.dex */
public final class Resource extends GeneratedMessageV3 implements io.opencensus.proto.resource.v1.a {
    public static final int LABELS_FIELD_NUMBER = 2;
    public static final int TYPE_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private int bitField0_;
    private g1<String, String> labels_;
    private byte memoizedIsInitialized;
    private volatile Object type_;
    private static final Resource DEFAULT_INSTANCE = new Resource();
    private static final e2<Resource> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static class a extends com.google.protobuf.c<Resource> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public Resource m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new Resource(pVar, f0Var, null);
        }
    }

    /* loaded from: classes7.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements io.opencensus.proto.resource.v1.a {

        /* renamed from: e  reason: collision with root package name */
        private Object f51063e;

        /* renamed from: f  reason: collision with root package name */
        private g1<String, String> f51064f;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private g1<String, String> b0() {
            g1<String, String> g1Var = this.f51064f;
            return g1Var == null ? g1.g(c.f51065a) : g1Var;
        }

        private g1<String, String> d0() {
            R();
            if (this.f51064f == null) {
                this.f51064f = g1.p(c.f51065a);
            }
            if (!this.f51064f.m()) {
                this.f51064f = this.f51064f.f();
            }
            return this.f51064f;
        }

        private void e0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return io.opencensus.proto.resource.v1.b.f51067b.d(Resource.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected g1 M(int i9) {
            if (i9 == 2) {
                return b0();
            }
            throw new RuntimeException("Invalid map field number: " + i9);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected g1 N(int i9) {
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
        public Resource build() {
            Resource I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public Resource I() {
            Resource resource = new Resource(this, (a) null);
            resource.type_ = this.f51063e;
            resource.labels_ = b0();
            resource.labels_.n();
            resource.bitField0_ = 0;
            Q();
            return resource;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public Resource getDefaultInstanceForType() {
            return Resource.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.opencensus.proto.resource.v1.Resource.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.opencensus.proto.resource.v1.Resource.access$900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.opencensus.proto.resource.v1.Resource r3 = (io.opencensus.proto.resource.v1.Resource) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.opencensus.proto.resource.v1.Resource r4 = (io.opencensus.proto.resource.v1.Resource) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.opencensus.proto.resource.v1.Resource.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.opencensus.proto.resource.v1.Resource$b");
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return io.opencensus.proto.resource.v1.b.f51066a;
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof Resource) {
                return i0((Resource) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b i0(Resource resource) {
            if (resource == Resource.getDefaultInstance()) {
                return this;
            }
            if (!resource.getType().isEmpty()) {
                this.f51063e = resource.type_;
                R();
            }
            d0().o(resource.internalGetLabels());
            z(((GeneratedMessageV3) resource).unknownFields);
            R();
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
            return (b) super.V(h3Var);
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            this.f51063e = "";
            e0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f51063e = "";
            e0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes7.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        static final e1<String, String> f51065a;

        static {
            Descriptors.b bVar = io.opencensus.proto.resource.v1.b.f51068c;
            WireFormat.FieldType fieldType = WireFormat.FieldType.STRING;
            f51065a = e1.k(bVar, fieldType, "", fieldType, "");
        }
    }

    /* synthetic */ Resource(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static Resource getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return io.opencensus.proto.resource.v1.b.f51066a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public g1<String, String> internalGetLabels() {
        g1<String, String> g1Var = this.labels_;
        return g1Var == null ? g1.g(c.f51065a) : g1Var;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Resource parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Resource) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Resource parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<Resource> parser() {
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
        if (!(obj instanceof Resource)) {
            return super.equals(obj);
        }
        Resource resource = (Resource) obj;
        return ((getType().equals(resource.getType())) && internalGetLabels().equals(resource.internalGetLabels())) && this.unknownFields.equals(resource.unknownFields);
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
    public e2<Resource> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = getTypeBytes().isEmpty() ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.type_);
        for (Map.Entry<String, String> entry : internalGetLabels().i().entrySet()) {
            computeStringSize += CodedOutputStream.G(2, c.f51065a.newBuilderForType().N(entry.getKey()).P(entry.getValue()).build());
        }
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
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
        int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getType().hashCode();
        if (!internalGetLabels().i().isEmpty()) {
            hashCode = (((hashCode * 37) + 2) * 53) + internalGetLabels().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return io.opencensus.proto.resource.v1.b.f51067b.d(Resource.class, b.class);
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected g1 internalGetMapField(int i9) {
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

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!getTypeBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.type_);
        }
        GeneratedMessageV3.serializeStringMapTo(codedOutputStream, internalGetLabels(), c.f51065a, 2);
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ Resource(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(Resource resource) {
        return DEFAULT_INSTANCE.toBuilder().i0(resource);
    }

    public static Resource parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private Resource(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Resource parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Resource) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static Resource parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public Resource getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).i0(this);
    }

    public static Resource parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private Resource() {
        this.memoizedIsInitialized = (byte) -1;
        this.type_ = "";
    }

    public static Resource parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static Resource parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static Resource parseFrom(InputStream inputStream) throws IOException {
        return (Resource) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    /* JADX WARN: Type inference failed for: r3v7, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.lang.Object] */
    private Resource(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                        if (L == 10) {
                            this.type_ = pVar.K();
                        } else if (L != 18) {
                            if (!parseUnknownFieldProto3(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            if (!(z11 & true)) {
                                this.labels_ = g1.p(c.f51065a);
                                z11 |= true;
                            }
                            e1 e1Var = (e1) pVar.B(c.f51065a.getParserForType(), f0Var);
                            this.labels_.l().put(e1Var.f(), e1Var.h());
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

    public static Resource parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Resource) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static Resource parseFrom(p pVar) throws IOException {
        return (Resource) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static Resource parseFrom(p pVar, f0 f0Var) throws IOException {
        return (Resource) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
