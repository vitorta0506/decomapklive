package io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3;

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
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import io.grpc.xds.shaded.com.github.xds.core.v3.CollectionEntry;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class ClusterCollection extends GeneratedMessageV3 implements r1 {
    public static final int ENTRIES_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private CollectionEntry entries_;
    private byte memoizedIsInitialized;
    private static final ClusterCollection DEFAULT_INSTANCE = new ClusterCollection();
    private static final e2<ClusterCollection> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<ClusterCollection> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public ClusterCollection m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new ClusterCollection(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private CollectionEntry f47686e;

        /* renamed from: f  reason: collision with root package name */
        private q2<CollectionEntry, CollectionEntry.c, io.grpc.xds.shaded.com.github.xds.core.v3.c> f47687f;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return d.f47733b.d(ClusterCollection.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public ClusterCollection build() {
            ClusterCollection I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public ClusterCollection I() {
            ClusterCollection clusterCollection = new ClusterCollection(this, (a) null);
            q2<CollectionEntry, CollectionEntry.c, io.grpc.xds.shaded.com.github.xds.core.v3.c> q2Var = this.f47687f;
            if (q2Var == null) {
                clusterCollection.entries_ = this.f47686e;
            } else {
                clusterCollection.entries_ = q2Var.b();
            }
            Q();
            return clusterCollection;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public ClusterCollection getDefaultInstanceForType() {
            return ClusterCollection.getDefaultInstance();
        }

        public b d0(CollectionEntry collectionEntry) {
            q2<CollectionEntry, CollectionEntry.c, io.grpc.xds.shaded.com.github.xds.core.v3.c> q2Var = this.f47687f;
            if (q2Var == null) {
                CollectionEntry collectionEntry2 = this.f47686e;
                if (collectionEntry2 != null) {
                    this.f47686e = CollectionEntry.newBuilder(collectionEntry2).g0(collectionEntry).I();
                } else {
                    this.f47686e = collectionEntry;
                }
                R();
            } else {
                q2Var.e(collectionEntry);
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
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.ClusterCollection.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.ClusterCollection.access$600()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.ClusterCollection r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.ClusterCollection) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.ClusterCollection r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.ClusterCollection) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.ClusterCollection.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.ClusterCollection$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof ClusterCollection) {
                return h0((ClusterCollection) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return d.f47732a;
        }

        public b h0(ClusterCollection clusterCollection) {
            if (clusterCollection == ClusterCollection.getDefaultInstance()) {
                return this;
            }
            if (clusterCollection.hasEntries()) {
                d0(clusterCollection.getEntries());
            }
            z(((GeneratedMessageV3) clusterCollection).unknownFields);
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

    /* synthetic */ ClusterCollection(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static ClusterCollection getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return d.f47732a;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static ClusterCollection parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (ClusterCollection) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static ClusterCollection parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<ClusterCollection> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ClusterCollection)) {
            return super.equals(obj);
        }
        ClusterCollection clusterCollection = (ClusterCollection) obj;
        if (hasEntries() != clusterCollection.hasEntries()) {
            return false;
        }
        return (!hasEntries() || getEntries().equals(clusterCollection.getEntries())) && this.unknownFields.equals(clusterCollection.unknownFields);
    }

    public CollectionEntry getEntries() {
        CollectionEntry collectionEntry = this.entries_;
        return collectionEntry == null ? CollectionEntry.getDefaultInstance() : collectionEntry;
    }

    public io.grpc.xds.shaded.com.github.xds.core.v3.c getEntriesOrBuilder() {
        return getEntries();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<ClusterCollection> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = (this.entries_ != null ? 0 + CodedOutputStream.G(1, getEntries()) : 0) + this.unknownFields.getSerializedSize();
        this.memoizedSize = G;
        return G;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasEntries() {
        return this.entries_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasEntries()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getEntries().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return d.f47733b.d(ClusterCollection.class, b.class);
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
        return new ClusterCollection();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.entries_ != null) {
            codedOutputStream.L0(1, getEntries());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ ClusterCollection(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(ClusterCollection clusterCollection) {
        return DEFAULT_INSTANCE.toBuilder().h0(clusterCollection);
    }

    public static ClusterCollection parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private ClusterCollection(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static ClusterCollection parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ClusterCollection) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static ClusterCollection parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public ClusterCollection getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).h0(this);
    }

    public static ClusterCollection parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private ClusterCollection() {
        this.memoizedIsInitialized = (byte) -1;
    }

    public static ClusterCollection parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static ClusterCollection parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    private ClusterCollection(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            if (L != 10) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                CollectionEntry collectionEntry = this.entries_;
                                CollectionEntry.c builder = collectionEntry != null ? collectionEntry.toBuilder() : null;
                                CollectionEntry collectionEntry2 = (CollectionEntry) pVar.B(CollectionEntry.parser(), f0Var);
                                this.entries_ = collectionEntry2;
                                if (builder != null) {
                                    builder.g0(collectionEntry2);
                                    this.entries_ = builder.I();
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

    public static ClusterCollection parseFrom(InputStream inputStream) throws IOException {
        return (ClusterCollection) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static ClusterCollection parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ClusterCollection) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static ClusterCollection parseFrom(p pVar) throws IOException {
        return (ClusterCollection) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static ClusterCollection parseFrom(p pVar, f0 f0Var) throws IOException {
        return (ClusterCollection) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
