package io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v2;

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
import com.google.protobuf.o1;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import com.google.protobuf.u0;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class MetadataKind extends GeneratedMessageV3 implements io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v2.b {
    public static final int CLUSTER_FIELD_NUMBER = 3;
    public static final int HOST_FIELD_NUMBER = 4;
    public static final int REQUEST_FIELD_NUMBER = 1;
    public static final int ROUTE_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private int kindCase_;
    private Object kind_;
    private byte memoizedIsInitialized;
    private static final MetadataKind DEFAULT_INSTANCE = new MetadataKind();
    private static final e2<MetadataKind> PARSER = new a();

    /* loaded from: classes6.dex */
    public static final class Cluster extends GeneratedMessageV3 implements d {
        private static final Cluster DEFAULT_INSTANCE = new Cluster();
        private static final e2<Cluster> PARSER = new a();
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;

        /* loaded from: classes6.dex */
        class a extends com.google.protobuf.c<Cluster> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public Cluster m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new Cluster(pVar, f0Var, null);
            }
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements d {
            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v2.c.f50460l.d(Cluster.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public Cluster build() {
                Cluster I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public Cluster I() {
                Cluster cluster = new Cluster(this, (a) null);
                Q();
                return cluster;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public Cluster getDefaultInstanceForType() {
                return Cluster.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: d0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v2.MetadataKind.Cluster.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v2.MetadataKind.Cluster.access$1900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v2.MetadataKind$Cluster r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v2.MetadataKind.Cluster) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v2.MetadataKind$Cluster r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v2.MetadataKind.Cluster) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v2.MetadataKind.Cluster.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v2.MetadataKind$Cluster$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof Cluster) {
                    return g0((Cluster) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b g0(Cluster cluster) {
                if (cluster == Cluster.getDefaultInstance()) {
                    return this;
                }
                z(((GeneratedMessageV3) cluster).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v2.c.f50459k;
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

        /* synthetic */ Cluster(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static Cluster getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v2.c.f50459k;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Cluster parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Cluster) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Cluster parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<Cluster> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj instanceof Cluster) {
                return this.unknownFields.equals(((Cluster) obj).unknownFields);
            }
            return super.equals(obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<Cluster> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int serializedSize = this.unknownFields.getSerializedSize() + 0;
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
            int hashCode = ((779 + getDescriptor().hashCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode;
            return hashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v2.c.f50460l.d(Cluster.class, b.class);
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
            return new Cluster();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ Cluster(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(Cluster cluster) {
            return DEFAULT_INSTANCE.toBuilder().g0(cluster);
        }

        public static Cluster parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private Cluster(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Cluster parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Cluster) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static Cluster parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public Cluster getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
        }

        public static Cluster parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private Cluster() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Cluster parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static Cluster parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        private Cluster(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            this();
            Objects.requireNonNull(f0Var);
            h3.b h10 = h3.h();
            boolean z10 = false;
            while (!z10) {
                try {
                    try {
                        try {
                            int L = pVar.L();
                            if (L == 0 || !parseUnknownField(pVar, h10, f0Var, L)) {
                                z10 = true;
                            }
                        } catch (InvalidProtocolBufferException e10) {
                            throw e10.setUnfinishedMessage(this);
                        }
                    } catch (IOException e11) {
                        throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                    }
                } finally {
                    this.unknownFields = h10.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static Cluster parseFrom(InputStream inputStream) throws IOException {
            return (Cluster) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static Cluster parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Cluster) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static Cluster parseFrom(p pVar) throws IOException {
            return (Cluster) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static Cluster parseFrom(p pVar, f0 f0Var) throws IOException {
            return (Cluster) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes6.dex */
    public static final class Host extends GeneratedMessageV3 implements e {
        private static final Host DEFAULT_INSTANCE = new Host();
        private static final e2<Host> PARSER = new a();
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;

        /* loaded from: classes6.dex */
        class a extends com.google.protobuf.c<Host> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public Host m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new Host(pVar, f0Var, null);
            }
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements e {
            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v2.c.f50462n.d(Host.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public Host build() {
                Host I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public Host I() {
                Host host = new Host(this, (a) null);
                Q();
                return host;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public Host getDefaultInstanceForType() {
                return Host.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: d0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v2.MetadataKind.Host.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v2.MetadataKind.Host.access$2600()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v2.MetadataKind$Host r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v2.MetadataKind.Host) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v2.MetadataKind$Host r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v2.MetadataKind.Host) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v2.MetadataKind.Host.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v2.MetadataKind$Host$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof Host) {
                    return g0((Host) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b g0(Host host) {
                if (host == Host.getDefaultInstance()) {
                    return this;
                }
                z(((GeneratedMessageV3) host).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v2.c.f50461m;
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

        /* synthetic */ Host(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static Host getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v2.c.f50461m;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Host parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Host) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Host parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<Host> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj instanceof Host) {
                return this.unknownFields.equals(((Host) obj).unknownFields);
            }
            return super.equals(obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<Host> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int serializedSize = this.unknownFields.getSerializedSize() + 0;
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
            int hashCode = ((779 + getDescriptor().hashCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode;
            return hashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v2.c.f50462n.d(Host.class, b.class);
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
            return new Host();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ Host(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(Host host) {
            return DEFAULT_INSTANCE.toBuilder().g0(host);
        }

        public static Host parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private Host(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Host parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Host) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static Host parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public Host getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
        }

        public static Host parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private Host() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Host parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static Host parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        private Host(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            this();
            Objects.requireNonNull(f0Var);
            h3.b h10 = h3.h();
            boolean z10 = false;
            while (!z10) {
                try {
                    try {
                        try {
                            int L = pVar.L();
                            if (L == 0 || !parseUnknownField(pVar, h10, f0Var, L)) {
                                z10 = true;
                            }
                        } catch (InvalidProtocolBufferException e10) {
                            throw e10.setUnfinishedMessage(this);
                        }
                    } catch (IOException e11) {
                        throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                    }
                } finally {
                    this.unknownFields = h10.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static Host parseFrom(InputStream inputStream) throws IOException {
            return (Host) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static Host parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Host) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static Host parseFrom(p pVar) throws IOException {
            return (Host) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static Host parseFrom(p pVar, f0 f0Var) throws IOException {
            return (Host) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes6.dex */
    public enum KindCase implements u0.c {
        REQUEST(1),
        ROUTE(2),
        CLUSTER(3),
        HOST(4),
        KIND_NOT_SET(0);
        
        private final int value;

        KindCase(int i9) {
            this.value = i9;
        }

        public static KindCase forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 != 2) {
                        if (i9 != 3) {
                            if (i9 != 4) {
                                return null;
                            }
                            return HOST;
                        }
                        return CLUSTER;
                    }
                    return ROUTE;
                }
                return REQUEST;
            }
            return KIND_NOT_SET;
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static KindCase valueOf(int i9) {
            return forNumber(i9);
        }
    }

    /* loaded from: classes6.dex */
    public static final class Request extends GeneratedMessageV3 implements f {
        private static final Request DEFAULT_INSTANCE = new Request();
        private static final e2<Request> PARSER = new a();
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;

        /* loaded from: classes6.dex */
        class a extends com.google.protobuf.c<Request> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public Request m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new Request(pVar, f0Var, null);
            }
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements f {
            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v2.c.f50456h.d(Request.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public Request build() {
                Request I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public Request I() {
                Request request = new Request(this, (a) null);
                Q();
                return request;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public Request getDefaultInstanceForType() {
                return Request.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: d0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v2.MetadataKind.Request.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v2.MetadataKind.Request.access$500()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v2.MetadataKind$Request r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v2.MetadataKind.Request) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v2.MetadataKind$Request r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v2.MetadataKind.Request) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v2.MetadataKind.Request.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v2.MetadataKind$Request$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof Request) {
                    return g0((Request) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b g0(Request request) {
                if (request == Request.getDefaultInstance()) {
                    return this;
                }
                z(((GeneratedMessageV3) request).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v2.c.f50455g;
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

        /* synthetic */ Request(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v2.c.f50455g;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Request) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<Request> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj instanceof Request) {
                return this.unknownFields.equals(((Request) obj).unknownFields);
            }
            return super.equals(obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<Request> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int serializedSize = this.unknownFields.getSerializedSize() + 0;
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
            int hashCode = ((779 + getDescriptor().hashCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode;
            return hashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v2.c.f50456h.d(Request.class, b.class);
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
            return new Request();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ Request(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(Request request) {
            return DEFAULT_INSTANCE.toBuilder().g0(request);
        }

        public static Request parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private Request(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Request parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Request) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
        }

        public static Request parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private Request() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static Request parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        private Request(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            this();
            Objects.requireNonNull(f0Var);
            h3.b h10 = h3.h();
            boolean z10 = false;
            while (!z10) {
                try {
                    try {
                        try {
                            int L = pVar.L();
                            if (L == 0 || !parseUnknownField(pVar, h10, f0Var, L)) {
                                z10 = true;
                            }
                        } catch (InvalidProtocolBufferException e10) {
                            throw e10.setUnfinishedMessage(this);
                        }
                    } catch (IOException e11) {
                        throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                    }
                } finally {
                    this.unknownFields = h10.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static Request parseFrom(InputStream inputStream) throws IOException {
            return (Request) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static Request parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Request) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static Request parseFrom(p pVar) throws IOException {
            return (Request) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static Request parseFrom(p pVar, f0 f0Var) throws IOException {
            return (Request) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes6.dex */
    public static final class Route extends GeneratedMessageV3 implements g {
        private static final Route DEFAULT_INSTANCE = new Route();
        private static final e2<Route> PARSER = new a();
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;

        /* loaded from: classes6.dex */
        class a extends com.google.protobuf.c<Route> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public Route m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new Route(pVar, f0Var, null);
            }
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements g {
            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v2.c.f50458j.d(Route.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public Route build() {
                Route I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public Route I() {
                Route route = new Route(this, (a) null);
                Q();
                return route;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public Route getDefaultInstanceForType() {
                return Route.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: d0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v2.MetadataKind.Route.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v2.MetadataKind.Route.access$1200()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v2.MetadataKind$Route r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v2.MetadataKind.Route) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v2.MetadataKind$Route r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v2.MetadataKind.Route) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v2.MetadataKind.Route.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v2.MetadataKind$Route$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof Route) {
                    return g0((Route) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b g0(Route route) {
                if (route == Route.getDefaultInstance()) {
                    return this;
                }
                z(((GeneratedMessageV3) route).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v2.c.f50457i;
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

        /* synthetic */ Route(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static Route getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v2.c.f50457i;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Route parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Route) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Route parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<Route> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj instanceof Route) {
                return this.unknownFields.equals(((Route) obj).unknownFields);
            }
            return super.equals(obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<Route> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int serializedSize = this.unknownFields.getSerializedSize() + 0;
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
            int hashCode = ((779 + getDescriptor().hashCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode;
            return hashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v2.c.f50458j.d(Route.class, b.class);
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
            return new Route();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ Route(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(Route route) {
            return DEFAULT_INSTANCE.toBuilder().g0(route);
        }

        public static Route parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private Route(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Route parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Route) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static Route parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public Route getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
        }

        public static Route parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private Route() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Route parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static Route parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        private Route(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            this();
            Objects.requireNonNull(f0Var);
            h3.b h10 = h3.h();
            boolean z10 = false;
            while (!z10) {
                try {
                    try {
                        try {
                            int L = pVar.L();
                            if (L == 0 || !parseUnknownField(pVar, h10, f0Var, L)) {
                                z10 = true;
                            }
                        } catch (InvalidProtocolBufferException e10) {
                            throw e10.setUnfinishedMessage(this);
                        }
                    } catch (IOException e11) {
                        throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                    }
                } finally {
                    this.unknownFields = h10.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static Route parseFrom(InputStream inputStream) throws IOException {
            return (Route) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static Route parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Route) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static Route parseFrom(p pVar) throws IOException {
            return (Route) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static Route parseFrom(p pVar, f0 f0Var) throws IOException {
            return (Route) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<MetadataKind> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public MetadataKind m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new MetadataKind(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f50442a;

        static {
            int[] iArr = new int[KindCase.values().length];
            f50442a = iArr;
            try {
                iArr[KindCase.REQUEST.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f50442a[KindCase.ROUTE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f50442a[KindCase.CLUSTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f50442a[KindCase.HOST.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f50442a[KindCase.KIND_NOT_SET.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v2.b {

        /* renamed from: e  reason: collision with root package name */
        private int f50443e;

        /* renamed from: f  reason: collision with root package name */
        private Object f50444f;

        /* renamed from: g  reason: collision with root package name */
        private q2<Request, Request.b, f> f50445g;

        /* renamed from: h  reason: collision with root package name */
        private q2<Route, Route.b, g> f50446h;

        /* renamed from: i  reason: collision with root package name */
        private q2<Cluster, Cluster.b, d> f50447i;

        /* renamed from: j  reason: collision with root package name */
        private q2<Host, Host.b, e> f50448j;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v2.c.f50454f.d(MetadataKind.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public MetadataKind build() {
            MetadataKind I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public MetadataKind I() {
            MetadataKind metadataKind = new MetadataKind(this, (a) null);
            if (this.f50443e == 1) {
                q2<Request, Request.b, f> q2Var = this.f50445g;
                if (q2Var == null) {
                    metadataKind.kind_ = this.f50444f;
                } else {
                    metadataKind.kind_ = q2Var.b();
                }
            }
            if (this.f50443e == 2) {
                q2<Route, Route.b, g> q2Var2 = this.f50446h;
                if (q2Var2 == null) {
                    metadataKind.kind_ = this.f50444f;
                } else {
                    metadataKind.kind_ = q2Var2.b();
                }
            }
            if (this.f50443e == 3) {
                q2<Cluster, Cluster.b, d> q2Var3 = this.f50447i;
                if (q2Var3 == null) {
                    metadataKind.kind_ = this.f50444f;
                } else {
                    metadataKind.kind_ = q2Var3.b();
                }
            }
            if (this.f50443e == 4) {
                q2<Host, Host.b, e> q2Var4 = this.f50448j;
                if (q2Var4 == null) {
                    metadataKind.kind_ = this.f50444f;
                } else {
                    metadataKind.kind_ = q2Var4.b();
                }
            }
            metadataKind.kindCase_ = this.f50443e;
            Q();
            return metadataKind;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public MetadataKind getDefaultInstanceForType() {
            return MetadataKind.getDefaultInstance();
        }

        public c d0(Cluster cluster) {
            q2<Cluster, Cluster.b, d> q2Var = this.f50447i;
            if (q2Var == null) {
                if (this.f50443e == 3 && this.f50444f != Cluster.getDefaultInstance()) {
                    this.f50444f = Cluster.newBuilder((Cluster) this.f50444f).g0(cluster).I();
                } else {
                    this.f50444f = cluster;
                }
                R();
            } else {
                if (this.f50443e == 3) {
                    q2Var.e(cluster);
                }
                this.f50447i.g(cluster);
            }
            this.f50443e = 3;
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v2.MetadataKind.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v2.MetadataKind.access$3500()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v2.MetadataKind r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v2.MetadataKind) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v2.MetadataKind r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v2.MetadataKind) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v2.MetadataKind.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v2.MetadataKind$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        public c v(l1 l1Var) {
            if (l1Var instanceof MetadataKind) {
                return h0((MetadataKind) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v2.c.f50453e;
        }

        public c h0(MetadataKind metadataKind) {
            if (metadataKind == MetadataKind.getDefaultInstance()) {
                return this;
            }
            int i9 = b.f50442a[metadataKind.getKindCase().ordinal()];
            if (i9 == 1) {
                j0(metadataKind.getRequest());
            } else if (i9 == 2) {
                k0(metadataKind.getRoute());
            } else if (i9 == 3) {
                d0(metadataKind.getCluster());
            } else if (i9 == 4) {
                i0(metadataKind.getHost());
            }
            z(((GeneratedMessageV3) metadataKind).unknownFields);
            R();
            return this;
        }

        public c i0(Host host) {
            q2<Host, Host.b, e> q2Var = this.f50448j;
            if (q2Var == null) {
                if (this.f50443e == 4 && this.f50444f != Host.getDefaultInstance()) {
                    this.f50444f = Host.newBuilder((Host) this.f50444f).g0(host).I();
                } else {
                    this.f50444f = host;
                }
                R();
            } else {
                if (this.f50443e == 4) {
                    q2Var.e(host);
                }
                this.f50448j.g(host);
            }
            this.f50443e = 4;
            return this;
        }

        public c j0(Request request) {
            q2<Request, Request.b, f> q2Var = this.f50445g;
            if (q2Var == null) {
                if (this.f50443e == 1 && this.f50444f != Request.getDefaultInstance()) {
                    this.f50444f = Request.newBuilder((Request) this.f50444f).g0(request).I();
                } else {
                    this.f50444f = request;
                }
                R();
            } else {
                if (this.f50443e == 1) {
                    q2Var.e(request);
                }
                this.f50445g.g(request);
            }
            this.f50443e = 1;
            return this;
        }

        public c k0(Route route) {
            q2<Route, Route.b, g> q2Var = this.f50446h;
            if (q2Var == null) {
                if (this.f50443e == 2 && this.f50444f != Route.getDefaultInstance()) {
                    this.f50444f = Route.newBuilder((Route) this.f50444f).g0(route).I();
                } else {
                    this.f50444f = route;
                }
                R();
            } else {
                if (this.f50443e == 2) {
                    q2Var.e(route);
                }
                this.f50446h.g(route);
            }
            this.f50443e = 2;
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: l0 */
        public final c z(h3 h3Var) {
            return (c) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: m0 */
        public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.c(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: n0 */
        public final c f1(h3 h3Var) {
            return (c) super.f1(h3Var);
        }

        /* synthetic */ c(a aVar) {
            this();
        }

        private c() {
            this.f50443e = 0;
            b0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f50443e = 0;
            b0();
        }
    }

    /* loaded from: classes6.dex */
    public interface d extends r1 {
    }

    /* loaded from: classes6.dex */
    public interface e extends r1 {
    }

    /* loaded from: classes6.dex */
    public interface f extends r1 {
    }

    /* loaded from: classes6.dex */
    public interface g extends r1 {
    }

    /* synthetic */ MetadataKind(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static MetadataKind getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v2.c.f50453e;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static MetadataKind parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (MetadataKind) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static MetadataKind parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<MetadataKind> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof MetadataKind)) {
            return super.equals(obj);
        }
        MetadataKind metadataKind = (MetadataKind) obj;
        if (getKindCase().equals(metadataKind.getKindCase())) {
            int i9 = this.kindCase_;
            if (i9 != 1) {
                if (i9 != 2) {
                    if (i9 != 3) {
                        if (i9 == 4 && !getHost().equals(metadataKind.getHost())) {
                            return false;
                        }
                    } else if (!getCluster().equals(metadataKind.getCluster())) {
                        return false;
                    }
                } else if (!getRoute().equals(metadataKind.getRoute())) {
                    return false;
                }
            } else if (!getRequest().equals(metadataKind.getRequest())) {
                return false;
            }
            return this.unknownFields.equals(metadataKind.unknownFields);
        }
        return false;
    }

    public Cluster getCluster() {
        if (this.kindCase_ == 3) {
            return (Cluster) this.kind_;
        }
        return Cluster.getDefaultInstance();
    }

    public d getClusterOrBuilder() {
        if (this.kindCase_ == 3) {
            return (Cluster) this.kind_;
        }
        return Cluster.getDefaultInstance();
    }

    public Host getHost() {
        if (this.kindCase_ == 4) {
            return (Host) this.kind_;
        }
        return Host.getDefaultInstance();
    }

    public e getHostOrBuilder() {
        if (this.kindCase_ == 4) {
            return (Host) this.kind_;
        }
        return Host.getDefaultInstance();
    }

    public KindCase getKindCase() {
        return KindCase.forNumber(this.kindCase_);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<MetadataKind> getParserForType() {
        return PARSER;
    }

    public Request getRequest() {
        if (this.kindCase_ == 1) {
            return (Request) this.kind_;
        }
        return Request.getDefaultInstance();
    }

    public f getRequestOrBuilder() {
        if (this.kindCase_ == 1) {
            return (Request) this.kind_;
        }
        return Request.getDefaultInstance();
    }

    public Route getRoute() {
        if (this.kindCase_ == 2) {
            return (Route) this.kind_;
        }
        return Route.getDefaultInstance();
    }

    public g getRouteOrBuilder() {
        if (this.kindCase_ == 2) {
            return (Route) this.kind_;
        }
        return Route.getDefaultInstance();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.kindCase_ == 1 ? 0 + CodedOutputStream.G(1, (Request) this.kind_) : 0;
        if (this.kindCase_ == 2) {
            G += CodedOutputStream.G(2, (Route) this.kind_);
        }
        if (this.kindCase_ == 3) {
            G += CodedOutputStream.G(3, (Cluster) this.kind_);
        }
        if (this.kindCase_ == 4) {
            G += CodedOutputStream.G(4, (Host) this.kind_);
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasCluster() {
        return this.kindCase_ == 3;
    }

    public boolean hasHost() {
        return this.kindCase_ == 4;
    }

    public boolean hasRequest() {
        return this.kindCase_ == 1;
    }

    public boolean hasRoute() {
        return this.kindCase_ == 2;
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
        int i11 = this.kindCase_;
        if (i11 == 1) {
            i9 = ((hashCode2 * 37) + 1) * 53;
            hashCode = getRequest().hashCode();
        } else if (i11 == 2) {
            i9 = ((hashCode2 * 37) + 2) * 53;
            hashCode = getRoute().hashCode();
        } else if (i11 == 3) {
            i9 = ((hashCode2 * 37) + 3) * 53;
            hashCode = getCluster().hashCode();
        } else {
            if (i11 == 4) {
                i9 = ((hashCode2 * 37) + 4) * 53;
                hashCode = getHost().hashCode();
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
        return io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v2.c.f50454f.d(MetadataKind.class, c.class);
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
        return new MetadataKind();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.kindCase_ == 1) {
            codedOutputStream.L0(1, (Request) this.kind_);
        }
        if (this.kindCase_ == 2) {
            codedOutputStream.L0(2, (Route) this.kind_);
        }
        if (this.kindCase_ == 3) {
            codedOutputStream.L0(3, (Cluster) this.kind_);
        }
        if (this.kindCase_ == 4) {
            codedOutputStream.L0(4, (Host) this.kind_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ MetadataKind(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(MetadataKind metadataKind) {
        return DEFAULT_INSTANCE.toBuilder().h0(metadataKind);
    }

    public static MetadataKind parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private MetadataKind(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.kindCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static MetadataKind parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (MetadataKind) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static MetadataKind parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public MetadataKind getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).h0(this);
    }

    public static MetadataKind parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    public static MetadataKind parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    private MetadataKind() {
        this.kindCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static MetadataKind parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static MetadataKind parseFrom(InputStream inputStream) throws IOException {
        return (MetadataKind) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private MetadataKind(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    int L = pVar.L();
                    if (L != 0) {
                        if (L == 10) {
                            Request.b builder = this.kindCase_ == 1 ? ((Request) this.kind_).toBuilder() : null;
                            o1 B = pVar.B(Request.parser(), f0Var);
                            this.kind_ = B;
                            if (builder != null) {
                                builder.g0((Request) B);
                                this.kind_ = builder.I();
                            }
                            this.kindCase_ = 1;
                        } else if (L == 18) {
                            Route.b builder2 = this.kindCase_ == 2 ? ((Route) this.kind_).toBuilder() : null;
                            o1 B2 = pVar.B(Route.parser(), f0Var);
                            this.kind_ = B2;
                            if (builder2 != null) {
                                builder2.g0((Route) B2);
                                this.kind_ = builder2.I();
                            }
                            this.kindCase_ = 2;
                        } else if (L == 26) {
                            Cluster.b builder3 = this.kindCase_ == 3 ? ((Cluster) this.kind_).toBuilder() : null;
                            o1 B3 = pVar.B(Cluster.parser(), f0Var);
                            this.kind_ = B3;
                            if (builder3 != null) {
                                builder3.g0((Cluster) B3);
                                this.kind_ = builder3.I();
                            }
                            this.kindCase_ = 3;
                        } else if (L != 34) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            Host.b builder4 = this.kindCase_ == 4 ? ((Host) this.kind_).toBuilder() : null;
                            o1 B4 = pVar.B(Host.parser(), f0Var);
                            this.kind_ = B4;
                            if (builder4 != null) {
                                builder4.g0((Host) B4);
                                this.kind_ = builder4.I();
                            }
                            this.kindCase_ = 4;
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

    public static MetadataKind parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (MetadataKind) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static MetadataKind parseFrom(p pVar) throws IOException {
        return (MetadataKind) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static MetadataKind parseFrom(p pVar, f0 f0Var) throws IOException {
        return (MetadataKind) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
