package io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3;

import com.google.protobuf.Any;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Struct;
import com.google.protobuf.WireFormat;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.h3;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class Metadata extends GeneratedMessageV3 implements k0 {
    public static final int FILTER_METADATA_FIELD_NUMBER = 1;
    public static final int TYPED_FILTER_METADATA_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private com.google.protobuf.g1<String, Struct> filterMetadata_;
    private byte memoizedIsInitialized;
    private com.google.protobuf.g1<String, Any> typedFilterMetadata_;
    private static final Metadata DEFAULT_INSTANCE = new Metadata();
    private static final e2<Metadata> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<Metadata> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public Metadata m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return new Metadata(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements k0 {

        /* renamed from: e  reason: collision with root package name */
        private com.google.protobuf.g1<String, Struct> f48062e;

        /* renamed from: f  reason: collision with root package name */
        private com.google.protobuf.g1<String, Any> f48063f;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private com.google.protobuf.g1<String, Struct> b0() {
            com.google.protobuf.g1<String, Struct> g1Var = this.f48062e;
            return g1Var == null ? com.google.protobuf.g1.g(c.f48064a) : g1Var;
        }

        private com.google.protobuf.g1<String, Struct> d0() {
            R();
            if (this.f48062e == null) {
                this.f48062e = com.google.protobuf.g1.p(c.f48064a);
            }
            if (!this.f48062e.m()) {
                this.f48062e = this.f48062e.f();
            }
            return this.f48062e;
        }

        private com.google.protobuf.g1<String, Any> e0() {
            R();
            if (this.f48063f == null) {
                this.f48063f = com.google.protobuf.g1.p(d.f48065a);
            }
            if (!this.f48063f.m()) {
                this.f48063f = this.f48063f.f();
            }
            return this.f48063f;
        }

        private com.google.protobuf.g1<String, Any> g0() {
            com.google.protobuf.g1<String, Any> g1Var = this.f48063f;
            return g1Var == null ? com.google.protobuf.g1.g(d.f48065a) : g1Var;
        }

        private void h0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return g.f48221l.d(Metadata.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected com.google.protobuf.g1 M(int i9) {
            if (i9 != 1) {
                if (i9 == 2) {
                    return g0();
                }
                throw new RuntimeException("Invalid map field number: " + i9);
            }
            return b0();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected com.google.protobuf.g1 N(int i9) {
            if (i9 != 1) {
                if (i9 == 2) {
                    return e0();
                }
                throw new RuntimeException("Invalid map field number: " + i9);
            }
            return d0();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public Metadata build() {
            Metadata I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public Metadata I() {
            Metadata metadata = new Metadata(this, (a) null);
            metadata.filterMetadata_ = b0();
            metadata.filterMetadata_.n();
            metadata.typedFilterMetadata_ = g0();
            metadata.typedFilterMetadata_.n();
            Q();
            return metadata;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public Metadata getDefaultInstanceForType() {
            return Metadata.getDefaultInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return g.f48220k;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Metadata.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Metadata.access$900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Metadata r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Metadata) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.k0(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Metadata r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Metadata) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.k0(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Metadata.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Metadata$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: j0 */
        public b v(com.google.protobuf.l1 l1Var) {
            if (l1Var instanceof Metadata) {
                return k0((Metadata) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b k0(Metadata metadata) {
            if (metadata == Metadata.getDefaultInstance()) {
                return this;
            }
            d0().o(metadata.internalGetFilterMetadata());
            e0().o(metadata.internalGetTypedFilterMetadata());
            z(((GeneratedMessageV3) metadata).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: l0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: m0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
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
            h0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            h0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        static final com.google.protobuf.e1<String, Struct> f48064a = com.google.protobuf.e1.k(g.f48222m, WireFormat.FieldType.STRING, "", WireFormat.FieldType.MESSAGE, Struct.getDefaultInstance());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        static final com.google.protobuf.e1<String, Any> f48065a = com.google.protobuf.e1.k(g.f48224o, WireFormat.FieldType.STRING, "", WireFormat.FieldType.MESSAGE, Any.getDefaultInstance());
    }

    /* synthetic */ Metadata(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static Metadata getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return g.f48220k;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.google.protobuf.g1<String, Struct> internalGetFilterMetadata() {
        com.google.protobuf.g1<String, Struct> g1Var = this.filterMetadata_;
        return g1Var == null ? com.google.protobuf.g1.g(c.f48064a) : g1Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.google.protobuf.g1<String, Any> internalGetTypedFilterMetadata() {
        com.google.protobuf.g1<String, Any> g1Var = this.typedFilterMetadata_;
        return g1Var == null ? com.google.protobuf.g1.g(d.f48065a) : g1Var;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Metadata parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Metadata) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Metadata parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<Metadata> parser() {
        return PARSER;
    }

    public boolean containsFilterMetadata(String str) {
        Objects.requireNonNull(str, "map key");
        return internalGetFilterMetadata().i().containsKey(str);
    }

    public boolean containsTypedFilterMetadata(String str) {
        Objects.requireNonNull(str, "map key");
        return internalGetTypedFilterMetadata().i().containsKey(str);
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Metadata)) {
            return super.equals(obj);
        }
        Metadata metadata = (Metadata) obj;
        return internalGetFilterMetadata().equals(metadata.internalGetFilterMetadata()) && internalGetTypedFilterMetadata().equals(metadata.internalGetTypedFilterMetadata()) && this.unknownFields.equals(metadata.unknownFields);
    }

    @Deprecated
    public Map<String, Struct> getFilterMetadata() {
        return getFilterMetadataMap();
    }

    public int getFilterMetadataCount() {
        return internalGetFilterMetadata().i().size();
    }

    public Map<String, Struct> getFilterMetadataMap() {
        return internalGetFilterMetadata().i();
    }

    public Struct getFilterMetadataOrDefault(String str, Struct struct) {
        Objects.requireNonNull(str, "map key");
        Map<String, Struct> i9 = internalGetFilterMetadata().i();
        return i9.containsKey(str) ? i9.get(str) : struct;
    }

    public Struct getFilterMetadataOrThrow(String str) {
        Objects.requireNonNull(str, "map key");
        Map<String, Struct> i9 = internalGetFilterMetadata().i();
        if (i9.containsKey(str)) {
            return i9.get(str);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<Metadata> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int i10 = 0;
        for (Map.Entry<String, Struct> entry : internalGetFilterMetadata().i().entrySet()) {
            i10 += CodedOutputStream.G(1, c.f48064a.newBuilderForType().N(entry.getKey()).P(entry.getValue()).build());
        }
        for (Map.Entry<String, Any> entry2 : internalGetTypedFilterMetadata().i().entrySet()) {
            i10 += CodedOutputStream.G(2, d.f48065a.newBuilderForType().N(entry2.getKey()).P(entry2.getValue()).build());
        }
        int serializedSize = i10 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Deprecated
    public Map<String, Any> getTypedFilterMetadata() {
        return getTypedFilterMetadataMap();
    }

    public int getTypedFilterMetadataCount() {
        return internalGetTypedFilterMetadata().i().size();
    }

    public Map<String, Any> getTypedFilterMetadataMap() {
        return internalGetTypedFilterMetadata().i();
    }

    public Any getTypedFilterMetadataOrDefault(String str, Any any) {
        Objects.requireNonNull(str, "map key");
        Map<String, Any> i9 = internalGetTypedFilterMetadata().i();
        return i9.containsKey(str) ? i9.get(str) : any;
    }

    public Any getTypedFilterMetadataOrThrow(String str) {
        Objects.requireNonNull(str, "map key");
        Map<String, Any> i9 = internalGetTypedFilterMetadata().i();
        if (i9.containsKey(str)) {
            return i9.get(str);
        }
        throw new IllegalArgumentException();
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
        if (!internalGetFilterMetadata().i().isEmpty()) {
            hashCode = (((hashCode * 37) + 1) * 53) + internalGetFilterMetadata().hashCode();
        }
        if (!internalGetTypedFilterMetadata().i().isEmpty()) {
            hashCode = (((hashCode * 37) + 2) * 53) + internalGetTypedFilterMetadata().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return g.f48221l.d(Metadata.class, b.class);
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected com.google.protobuf.g1 internalGetMapField(int i9) {
        if (i9 != 1) {
            if (i9 == 2) {
                return internalGetTypedFilterMetadata();
            }
            throw new RuntimeException("Invalid map field number: " + i9);
        }
        return internalGetFilterMetadata();
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
        return new Metadata();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        GeneratedMessageV3.serializeStringMapTo(codedOutputStream, internalGetFilterMetadata(), c.f48064a, 1);
        GeneratedMessageV3.serializeStringMapTo(codedOutputStream, internalGetTypedFilterMetadata(), d.f48065a, 2);
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ Metadata(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(Metadata metadata) {
        return DEFAULT_INSTANCE.toBuilder().k0(metadata);
    }

    public static Metadata parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private Metadata(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Metadata parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (Metadata) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static Metadata parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public Metadata getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).k0(this);
    }

    public static Metadata parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private Metadata() {
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Metadata parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static Metadata parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    private Metadata(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                            if (!(z11 & true)) {
                                this.filterMetadata_ = com.google.protobuf.g1.p(c.f48064a);
                                z11 |= true;
                            }
                            com.google.protobuf.e1 e1Var = (com.google.protobuf.e1) pVar.B(c.f48064a.getParserForType(), f0Var);
                            this.filterMetadata_.l().put((String) e1Var.f(), (Struct) e1Var.h());
                        } else if (L != 18) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            if (!(z11 & true)) {
                                this.typedFilterMetadata_ = com.google.protobuf.g1.p(d.f48065a);
                                z11 |= true;
                            }
                            com.google.protobuf.e1 e1Var2 = (com.google.protobuf.e1) pVar.B(d.f48065a.getParserForType(), f0Var);
                            this.typedFilterMetadata_.l().put((String) e1Var2.f(), (Any) e1Var2.h());
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

    public static Metadata parseFrom(InputStream inputStream) throws IOException {
        return (Metadata) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static Metadata parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (Metadata) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static Metadata parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (Metadata) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static Metadata parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
        return (Metadata) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
