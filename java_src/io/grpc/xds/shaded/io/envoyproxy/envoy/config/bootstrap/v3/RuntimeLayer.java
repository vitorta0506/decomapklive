package io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Struct;
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
import com.google.protobuf.u2;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.ConfigSource;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.k;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class RuntimeLayer extends GeneratedMessageV3 implements h {
    public static final int ADMIN_LAYER_FIELD_NUMBER = 4;
    public static final int DISK_LAYER_FIELD_NUMBER = 3;
    public static final int NAME_FIELD_NUMBER = 1;
    public static final int RTDS_LAYER_FIELD_NUMBER = 5;
    public static final int STATIC_LAYER_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private int layerSpecifierCase_;
    private Object layerSpecifier_;
    private byte memoizedIsInitialized;
    private volatile Object name_;
    private static final RuntimeLayer DEFAULT_INSTANCE = new RuntimeLayer();
    private static final e2<RuntimeLayer> PARSER = new a();

    /* loaded from: classes6.dex */
    public static final class AdminLayer extends GeneratedMessageV3 implements c {
        private static final AdminLayer DEFAULT_INSTANCE = new AdminLayer();
        private static final e2<AdminLayer> PARSER = new a();
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;

        /* loaded from: classes6.dex */
        class a extends com.google.protobuf.c<AdminLayer> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public AdminLayer m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new AdminLayer(pVar, f0Var, null);
            }
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements c {
            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.c.D.d(AdminLayer.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public AdminLayer build() {
                AdminLayer I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public AdminLayer I() {
                AdminLayer adminLayer = new AdminLayer(this, (a) null);
                Q();
                return adminLayer;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public AdminLayer getDefaultInstanceForType() {
                return AdminLayer.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: d0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.RuntimeLayer.AdminLayer.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.RuntimeLayer.AdminLayer.access$1700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.RuntimeLayer$AdminLayer r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.RuntimeLayer.AdminLayer) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.RuntimeLayer$AdminLayer r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.RuntimeLayer.AdminLayer) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.RuntimeLayer.AdminLayer.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.RuntimeLayer$AdminLayer$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof AdminLayer) {
                    return g0((AdminLayer) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b g0(AdminLayer adminLayer) {
                if (adminLayer == AdminLayer.getDefaultInstance()) {
                    return this;
                }
                z(((GeneratedMessageV3) adminLayer).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.c.C;
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

        /* synthetic */ AdminLayer(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static AdminLayer getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.c.C;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static AdminLayer parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (AdminLayer) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static AdminLayer parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<AdminLayer> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj instanceof AdminLayer) {
                return this.unknownFields.equals(((AdminLayer) obj).unknownFields);
            }
            return super.equals(obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<AdminLayer> getParserForType() {
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
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.c.D.d(AdminLayer.class, b.class);
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
            return new AdminLayer();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ AdminLayer(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(AdminLayer adminLayer) {
            return DEFAULT_INSTANCE.toBuilder().g0(adminLayer);
        }

        public static AdminLayer parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private AdminLayer(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static AdminLayer parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (AdminLayer) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static AdminLayer parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public AdminLayer getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
        }

        public static AdminLayer parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private AdminLayer() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static AdminLayer parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static AdminLayer parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        private AdminLayer(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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

        public static AdminLayer parseFrom(InputStream inputStream) throws IOException {
            return (AdminLayer) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static AdminLayer parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (AdminLayer) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static AdminLayer parseFrom(p pVar) throws IOException {
            return (AdminLayer) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static AdminLayer parseFrom(p pVar, f0 f0Var) throws IOException {
            return (AdminLayer) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes6.dex */
    public static final class DiskLayer extends GeneratedMessageV3 implements e {
        public static final int APPEND_SERVICE_CLUSTER_FIELD_NUMBER = 2;
        private static final DiskLayer DEFAULT_INSTANCE = new DiskLayer();
        private static final e2<DiskLayer> PARSER = new a();
        public static final int SUBDIRECTORY_FIELD_NUMBER = 3;
        public static final int SYMLINK_ROOT_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private boolean appendServiceCluster_;
        private byte memoizedIsInitialized;
        private volatile Object subdirectory_;
        private volatile Object symlinkRoot_;

        /* loaded from: classes6.dex */
        class a extends com.google.protobuf.c<DiskLayer> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public DiskLayer m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new DiskLayer(pVar, f0Var, null);
            }
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements e {

            /* renamed from: e  reason: collision with root package name */
            private Object f47488e;

            /* renamed from: f  reason: collision with root package name */
            private Object f47489f;

            /* renamed from: g  reason: collision with root package name */
            private boolean f47490g;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.c.B.d(DiskLayer.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public DiskLayer build() {
                DiskLayer I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public DiskLayer I() {
                DiskLayer diskLayer = new DiskLayer(this, (a) null);
                diskLayer.symlinkRoot_ = this.f47488e;
                diskLayer.subdirectory_ = this.f47489f;
                diskLayer.appendServiceCluster_ = this.f47490g;
                Q();
                return diskLayer;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public DiskLayer getDefaultInstanceForType() {
                return DiskLayer.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: d0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.RuntimeLayer.DiskLayer.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.RuntimeLayer.DiskLayer.access$800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.RuntimeLayer$DiskLayer r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.RuntimeLayer.DiskLayer) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.RuntimeLayer$DiskLayer r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.RuntimeLayer.DiskLayer) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.RuntimeLayer.DiskLayer.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.RuntimeLayer$DiskLayer$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof DiskLayer) {
                    return g0((DiskLayer) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b g0(DiskLayer diskLayer) {
                if (diskLayer == DiskLayer.getDefaultInstance()) {
                    return this;
                }
                if (!diskLayer.getSymlinkRoot().isEmpty()) {
                    this.f47488e = diskLayer.symlinkRoot_;
                    R();
                }
                if (!diskLayer.getSubdirectory().isEmpty()) {
                    this.f47489f = diskLayer.subdirectory_;
                    R();
                }
                if (diskLayer.getAppendServiceCluster()) {
                    i0(diskLayer.getAppendServiceCluster());
                }
                z(((GeneratedMessageV3) diskLayer).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.c.A;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: h0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            public b i0(boolean z10) {
                this.f47490g = z10;
                R();
                return this;
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
                this.f47488e = "";
                this.f47489f = "";
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f47488e = "";
                this.f47489f = "";
                b0();
            }
        }

        /* synthetic */ DiskLayer(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static DiskLayer getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.c.A;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static DiskLayer parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (DiskLayer) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static DiskLayer parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<DiskLayer> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof DiskLayer)) {
                return super.equals(obj);
            }
            DiskLayer diskLayer = (DiskLayer) obj;
            return getSymlinkRoot().equals(diskLayer.getSymlinkRoot()) && getSubdirectory().equals(diskLayer.getSubdirectory()) && getAppendServiceCluster() == diskLayer.getAppendServiceCluster() && this.unknownFields.equals(diskLayer.unknownFields);
        }

        public boolean getAppendServiceCluster() {
            return this.appendServiceCluster_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<DiskLayer> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int computeStringSize = GeneratedMessageV3.isStringEmpty(this.symlinkRoot_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.symlinkRoot_);
            boolean z10 = this.appendServiceCluster_;
            if (z10) {
                computeStringSize += CodedOutputStream.e(2, z10);
            }
            if (!GeneratedMessageV3.isStringEmpty(this.subdirectory_)) {
                computeStringSize += GeneratedMessageV3.computeStringSize(3, this.subdirectory_);
            }
            int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        public String getSubdirectory() {
            Object obj = this.subdirectory_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.subdirectory_ = stringUtf8;
            return stringUtf8;
        }

        public ByteString getSubdirectoryBytes() {
            Object obj = this.subdirectory_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.subdirectory_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        public String getSymlinkRoot() {
            Object obj = this.symlinkRoot_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.symlinkRoot_ = stringUtf8;
            return stringUtf8;
        }

        public ByteString getSymlinkRootBytes() {
            Object obj = this.symlinkRoot_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.symlinkRoot_ = copyFromUtf8;
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
            int hashCode = ((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getSymlinkRoot().hashCode()) * 37) + 3) * 53) + getSubdirectory().hashCode()) * 37) + 2) * 53) + u0.d(getAppendServiceCluster())) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode;
            return hashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.c.B.d(DiskLayer.class, b.class);
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
            return new DiskLayer();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (!GeneratedMessageV3.isStringEmpty(this.symlinkRoot_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.symlinkRoot_);
            }
            boolean z10 = this.appendServiceCluster_;
            if (z10) {
                codedOutputStream.n0(2, z10);
            }
            if (!GeneratedMessageV3.isStringEmpty(this.subdirectory_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 3, this.subdirectory_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ DiskLayer(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(DiskLayer diskLayer) {
            return DEFAULT_INSTANCE.toBuilder().g0(diskLayer);
        }

        public static DiskLayer parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private DiskLayer(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static DiskLayer parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (DiskLayer) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static DiskLayer parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public DiskLayer getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
        }

        public static DiskLayer parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private DiskLayer() {
            this.memoizedIsInitialized = (byte) -1;
            this.symlinkRoot_ = "";
            this.subdirectory_ = "";
        }

        public static DiskLayer parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static DiskLayer parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static DiskLayer parseFrom(InputStream inputStream) throws IOException {
            return (DiskLayer) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private DiskLayer(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                this.symlinkRoot_ = pVar.K();
                            } else if (L == 16) {
                                this.appendServiceCluster_ = pVar.r();
                            } else if (L != 26) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                this.subdirectory_ = pVar.K();
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

        public static DiskLayer parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (DiskLayer) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static DiskLayer parseFrom(p pVar) throws IOException {
            return (DiskLayer) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static DiskLayer parseFrom(p pVar, f0 f0Var) throws IOException {
            return (DiskLayer) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes6.dex */
    public enum LayerSpecifierCase implements u0.c {
        STATIC_LAYER(2),
        DISK_LAYER(3),
        ADMIN_LAYER(4),
        RTDS_LAYER(5),
        LAYERSPECIFIER_NOT_SET(0);
        
        private final int value;

        LayerSpecifierCase(int i9) {
            this.value = i9;
        }

        public static LayerSpecifierCase forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 2) {
                    if (i9 != 3) {
                        if (i9 != 4) {
                            if (i9 != 5) {
                                return null;
                            }
                            return RTDS_LAYER;
                        }
                        return ADMIN_LAYER;
                    }
                    return DISK_LAYER;
                }
                return STATIC_LAYER;
            }
            return LAYERSPECIFIER_NOT_SET;
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static LayerSpecifierCase valueOf(int i9) {
            return forNumber(i9);
        }
    }

    /* loaded from: classes6.dex */
    public static final class RtdsLayer extends GeneratedMessageV3 implements f {
        public static final int NAME_FIELD_NUMBER = 1;
        public static final int RTDS_CONFIG_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private volatile Object name_;
        private ConfigSource rtdsConfig_;
        private static final RtdsLayer DEFAULT_INSTANCE = new RtdsLayer();
        private static final e2<RtdsLayer> PARSER = new a();

        /* loaded from: classes6.dex */
        class a extends com.google.protobuf.c<RtdsLayer> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public RtdsLayer m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new RtdsLayer(pVar, f0Var, null);
            }
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements f {

            /* renamed from: e  reason: collision with root package name */
            private Object f47491e;

            /* renamed from: f  reason: collision with root package name */
            private ConfigSource f47492f;

            /* renamed from: g  reason: collision with root package name */
            private q2<ConfigSource, ConfigSource.c, k> f47493g;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.c.F.d(RtdsLayer.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public RtdsLayer build() {
                RtdsLayer I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public RtdsLayer I() {
                RtdsLayer rtdsLayer = new RtdsLayer(this, (a) null);
                rtdsLayer.name_ = this.f47491e;
                q2<ConfigSource, ConfigSource.c, k> q2Var = this.f47493g;
                if (q2Var == null) {
                    rtdsLayer.rtdsConfig_ = this.f47492f;
                } else {
                    rtdsLayer.rtdsConfig_ = q2Var.b();
                }
                Q();
                return rtdsLayer;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public RtdsLayer getDefaultInstanceForType() {
                return RtdsLayer.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: d0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.RuntimeLayer.RtdsLayer.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.RuntimeLayer.RtdsLayer.access$2600()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.RuntimeLayer$RtdsLayer r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.RuntimeLayer.RtdsLayer) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.RuntimeLayer$RtdsLayer r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.RuntimeLayer.RtdsLayer) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.RuntimeLayer.RtdsLayer.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.RuntimeLayer$RtdsLayer$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof RtdsLayer) {
                    return g0((RtdsLayer) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b g0(RtdsLayer rtdsLayer) {
                if (rtdsLayer == RtdsLayer.getDefaultInstance()) {
                    return this;
                }
                if (!rtdsLayer.getName().isEmpty()) {
                    this.f47491e = rtdsLayer.name_;
                    R();
                }
                if (rtdsLayer.hasRtdsConfig()) {
                    h0(rtdsLayer.getRtdsConfig());
                }
                z(((GeneratedMessageV3) rtdsLayer).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.c.E;
            }

            public b h0(ConfigSource configSource) {
                q2<ConfigSource, ConfigSource.c, k> q2Var = this.f47493g;
                if (q2Var == null) {
                    ConfigSource configSource2 = this.f47492f;
                    if (configSource2 != null) {
                        this.f47492f = ConfigSource.newBuilder(configSource2).k0(configSource).I();
                    } else {
                        this.f47492f = configSource;
                    }
                    R();
                } else {
                    q2Var.e(configSource);
                }
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
                this.f47491e = "";
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f47491e = "";
                b0();
            }
        }

        /* synthetic */ RtdsLayer(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static RtdsLayer getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.c.E;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static RtdsLayer parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (RtdsLayer) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static RtdsLayer parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<RtdsLayer> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof RtdsLayer)) {
                return super.equals(obj);
            }
            RtdsLayer rtdsLayer = (RtdsLayer) obj;
            if (getName().equals(rtdsLayer.getName()) && hasRtdsConfig() == rtdsLayer.hasRtdsConfig()) {
                return (!hasRtdsConfig() || getRtdsConfig().equals(rtdsLayer.getRtdsConfig())) && this.unknownFields.equals(rtdsLayer.unknownFields);
            }
            return false;
        }

        public String getName() {
            Object obj = this.name_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.name_ = stringUtf8;
            return stringUtf8;
        }

        public ByteString getNameBytes() {
            Object obj = this.name_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.name_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<RtdsLayer> getParserForType() {
            return PARSER;
        }

        public ConfigSource getRtdsConfig() {
            ConfigSource configSource = this.rtdsConfig_;
            return configSource == null ? ConfigSource.getDefaultInstance() : configSource;
        }

        public k getRtdsConfigOrBuilder() {
            return getRtdsConfig();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int computeStringSize = GeneratedMessageV3.isStringEmpty(this.name_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.name_);
            if (this.rtdsConfig_ != null) {
                computeStringSize += CodedOutputStream.G(2, getRtdsConfig());
            }
            int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasRtdsConfig() {
            return this.rtdsConfig_ != null;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode();
            if (hasRtdsConfig()) {
                hashCode = (((hashCode * 37) + 2) * 53) + getRtdsConfig().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.c.F.d(RtdsLayer.class, b.class);
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
            return new RtdsLayer();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (!GeneratedMessageV3.isStringEmpty(this.name_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.name_);
            }
            if (this.rtdsConfig_ != null) {
                codedOutputStream.L0(2, getRtdsConfig());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ RtdsLayer(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(RtdsLayer rtdsLayer) {
            return DEFAULT_INSTANCE.toBuilder().g0(rtdsLayer);
        }

        public static RtdsLayer parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private RtdsLayer(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static RtdsLayer parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (RtdsLayer) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static RtdsLayer parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public RtdsLayer getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
        }

        public static RtdsLayer parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private RtdsLayer() {
            this.memoizedIsInitialized = (byte) -1;
            this.name_ = "";
        }

        public static RtdsLayer parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static RtdsLayer parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static RtdsLayer parseFrom(InputStream inputStream) throws IOException {
            return (RtdsLayer) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private RtdsLayer(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                this.name_ = pVar.K();
                            } else if (L != 18) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                ConfigSource configSource = this.rtdsConfig_;
                                ConfigSource.c builder = configSource != null ? configSource.toBuilder() : null;
                                ConfigSource configSource2 = (ConfigSource) pVar.B(ConfigSource.parser(), f0Var);
                                this.rtdsConfig_ = configSource2;
                                if (builder != null) {
                                    builder.k0(configSource2);
                                    this.rtdsConfig_ = builder.I();
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

        public static RtdsLayer parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (RtdsLayer) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static RtdsLayer parseFrom(p pVar) throws IOException {
            return (RtdsLayer) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static RtdsLayer parseFrom(p pVar, f0 f0Var) throws IOException {
            return (RtdsLayer) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<RuntimeLayer> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public RuntimeLayer m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new RuntimeLayer(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f47494a;

        static {
            int[] iArr = new int[LayerSpecifierCase.values().length];
            f47494a = iArr;
            try {
                iArr[LayerSpecifierCase.STATIC_LAYER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f47494a[LayerSpecifierCase.DISK_LAYER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f47494a[LayerSpecifierCase.ADMIN_LAYER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f47494a[LayerSpecifierCase.RTDS_LAYER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f47494a[LayerSpecifierCase.LAYERSPECIFIER_NOT_SET.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public interface c extends r1 {
    }

    /* loaded from: classes6.dex */
    public static final class d extends GeneratedMessageV3.b<d> implements h {

        /* renamed from: e  reason: collision with root package name */
        private int f47495e;

        /* renamed from: f  reason: collision with root package name */
        private Object f47496f;

        /* renamed from: g  reason: collision with root package name */
        private Object f47497g;

        /* renamed from: h  reason: collision with root package name */
        private q2<Struct, Struct.b, u2> f47498h;

        /* renamed from: i  reason: collision with root package name */
        private q2<DiskLayer, DiskLayer.b, e> f47499i;

        /* renamed from: j  reason: collision with root package name */
        private q2<AdminLayer, AdminLayer.b, c> f47500j;

        /* renamed from: k  reason: collision with root package name */
        private q2<RtdsLayer, RtdsLayer.b, f> f47501k;

        /* synthetic */ d(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.c.f47549z.d(RuntimeLayer.class, d.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public d L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (d) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public RuntimeLayer build() {
            RuntimeLayer I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public RuntimeLayer I() {
            RuntimeLayer runtimeLayer = new RuntimeLayer(this, (a) null);
            runtimeLayer.name_ = this.f47497g;
            if (this.f47495e == 2) {
                q2<Struct, Struct.b, u2> q2Var = this.f47498h;
                if (q2Var == null) {
                    runtimeLayer.layerSpecifier_ = this.f47496f;
                } else {
                    runtimeLayer.layerSpecifier_ = q2Var.b();
                }
            }
            if (this.f47495e == 3) {
                q2<DiskLayer, DiskLayer.b, e> q2Var2 = this.f47499i;
                if (q2Var2 == null) {
                    runtimeLayer.layerSpecifier_ = this.f47496f;
                } else {
                    runtimeLayer.layerSpecifier_ = q2Var2.b();
                }
            }
            if (this.f47495e == 4) {
                q2<AdminLayer, AdminLayer.b, c> q2Var3 = this.f47500j;
                if (q2Var3 == null) {
                    runtimeLayer.layerSpecifier_ = this.f47496f;
                } else {
                    runtimeLayer.layerSpecifier_ = q2Var3.b();
                }
            }
            if (this.f47495e == 5) {
                q2<RtdsLayer, RtdsLayer.b, f> q2Var4 = this.f47501k;
                if (q2Var4 == null) {
                    runtimeLayer.layerSpecifier_ = this.f47496f;
                } else {
                    runtimeLayer.layerSpecifier_ = q2Var4.b();
                }
            }
            runtimeLayer.layerSpecifierCase_ = this.f47495e;
            Q();
            return runtimeLayer;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public d n() {
            return (d) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public RuntimeLayer getDefaultInstanceForType() {
            return RuntimeLayer.getDefaultInstance();
        }

        public d d0(AdminLayer adminLayer) {
            q2<AdminLayer, AdminLayer.b, c> q2Var = this.f47500j;
            if (q2Var == null) {
                if (this.f47495e == 4 && this.f47496f != AdminLayer.getDefaultInstance()) {
                    this.f47496f = AdminLayer.newBuilder((AdminLayer) this.f47496f).g0(adminLayer).I();
                } else {
                    this.f47496f = adminLayer;
                }
                R();
            } else {
                if (this.f47495e == 4) {
                    q2Var.e(adminLayer);
                }
                this.f47500j.g(adminLayer);
            }
            this.f47495e = 4;
            return this;
        }

        public d e0(DiskLayer diskLayer) {
            q2<DiskLayer, DiskLayer.b, e> q2Var = this.f47499i;
            if (q2Var == null) {
                if (this.f47495e == 3 && this.f47496f != DiskLayer.getDefaultInstance()) {
                    this.f47496f = DiskLayer.newBuilder((DiskLayer) this.f47496f).g0(diskLayer).I();
                } else {
                    this.f47496f = diskLayer;
                }
                R();
            } else {
                if (this.f47495e == 3) {
                    q2Var.e(diskLayer);
                }
                this.f47499i.g(diskLayer);
            }
            this.f47495e = 3;
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.RuntimeLayer.d u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.RuntimeLayer.access$3700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.RuntimeLayer r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.RuntimeLayer) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.RuntimeLayer r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.RuntimeLayer) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.RuntimeLayer.d.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.RuntimeLayer$d");
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.c.f47548y;
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public d v(l1 l1Var) {
            if (l1Var instanceof RuntimeLayer) {
                return i0((RuntimeLayer) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public d i0(RuntimeLayer runtimeLayer) {
            if (runtimeLayer == RuntimeLayer.getDefaultInstance()) {
                return this;
            }
            if (!runtimeLayer.getName().isEmpty()) {
                this.f47497g = runtimeLayer.name_;
                R();
            }
            int i9 = b.f47494a[runtimeLayer.getLayerSpecifierCase().ordinal()];
            if (i9 == 1) {
                k0(runtimeLayer.getStaticLayer());
            } else if (i9 == 2) {
                e0(runtimeLayer.getDiskLayer());
            } else if (i9 == 3) {
                d0(runtimeLayer.getAdminLayer());
            } else if (i9 == 4) {
                j0(runtimeLayer.getRtdsLayer());
            }
            z(((GeneratedMessageV3) runtimeLayer).unknownFields);
            R();
            return this;
        }

        public d j0(RtdsLayer rtdsLayer) {
            q2<RtdsLayer, RtdsLayer.b, f> q2Var = this.f47501k;
            if (q2Var == null) {
                if (this.f47495e == 5 && this.f47496f != RtdsLayer.getDefaultInstance()) {
                    this.f47496f = RtdsLayer.newBuilder((RtdsLayer) this.f47496f).g0(rtdsLayer).I();
                } else {
                    this.f47496f = rtdsLayer;
                }
                R();
            } else {
                if (this.f47495e == 5) {
                    q2Var.e(rtdsLayer);
                }
                this.f47501k.g(rtdsLayer);
            }
            this.f47495e = 5;
            return this;
        }

        public d k0(Struct struct) {
            q2<Struct, Struct.b, u2> q2Var = this.f47498h;
            if (q2Var == null) {
                if (this.f47495e == 2 && this.f47496f != Struct.getDefaultInstance()) {
                    this.f47496f = Struct.newBuilder((Struct) this.f47496f).i0(struct).I();
                } else {
                    this.f47496f = struct;
                }
                R();
            } else {
                if (this.f47495e == 2) {
                    q2Var.e(struct);
                }
                this.f47498h.g(struct);
            }
            this.f47495e = 2;
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: l0 */
        public final d z(h3 h3Var) {
            return (d) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: m0 */
        public d c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (d) super.c(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: n0 */
        public final d f1(h3 h3Var) {
            return (d) super.f1(h3Var);
        }

        /* synthetic */ d(a aVar) {
            this();
        }

        private d() {
            this.f47495e = 0;
            this.f47497g = "";
            b0();
        }

        private d(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f47495e = 0;
            this.f47497g = "";
            b0();
        }
    }

    /* loaded from: classes6.dex */
    public interface e extends r1 {
    }

    /* loaded from: classes6.dex */
    public interface f extends r1 {
    }

    /* synthetic */ RuntimeLayer(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static RuntimeLayer getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.c.f47548y;
    }

    public static d newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static RuntimeLayer parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (RuntimeLayer) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static RuntimeLayer parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<RuntimeLayer> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof RuntimeLayer)) {
            return super.equals(obj);
        }
        RuntimeLayer runtimeLayer = (RuntimeLayer) obj;
        if (getName().equals(runtimeLayer.getName()) && getLayerSpecifierCase().equals(runtimeLayer.getLayerSpecifierCase())) {
            int i9 = this.layerSpecifierCase_;
            if (i9 != 2) {
                if (i9 != 3) {
                    if (i9 != 4) {
                        if (i9 == 5 && !getRtdsLayer().equals(runtimeLayer.getRtdsLayer())) {
                            return false;
                        }
                    } else if (!getAdminLayer().equals(runtimeLayer.getAdminLayer())) {
                        return false;
                    }
                } else if (!getDiskLayer().equals(runtimeLayer.getDiskLayer())) {
                    return false;
                }
            } else if (!getStaticLayer().equals(runtimeLayer.getStaticLayer())) {
                return false;
            }
            return this.unknownFields.equals(runtimeLayer.unknownFields);
        }
        return false;
    }

    public AdminLayer getAdminLayer() {
        if (this.layerSpecifierCase_ == 4) {
            return (AdminLayer) this.layerSpecifier_;
        }
        return AdminLayer.getDefaultInstance();
    }

    public c getAdminLayerOrBuilder() {
        if (this.layerSpecifierCase_ == 4) {
            return (AdminLayer) this.layerSpecifier_;
        }
        return AdminLayer.getDefaultInstance();
    }

    public DiskLayer getDiskLayer() {
        if (this.layerSpecifierCase_ == 3) {
            return (DiskLayer) this.layerSpecifier_;
        }
        return DiskLayer.getDefaultInstance();
    }

    public e getDiskLayerOrBuilder() {
        if (this.layerSpecifierCase_ == 3) {
            return (DiskLayer) this.layerSpecifier_;
        }
        return DiskLayer.getDefaultInstance();
    }

    public LayerSpecifierCase getLayerSpecifierCase() {
        return LayerSpecifierCase.forNumber(this.layerSpecifierCase_);
    }

    public String getName() {
        Object obj = this.name_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.name_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getNameBytes() {
        Object obj = this.name_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.name_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<RuntimeLayer> getParserForType() {
        return PARSER;
    }

    public RtdsLayer getRtdsLayer() {
        if (this.layerSpecifierCase_ == 5) {
            return (RtdsLayer) this.layerSpecifier_;
        }
        return RtdsLayer.getDefaultInstance();
    }

    public f getRtdsLayerOrBuilder() {
        if (this.layerSpecifierCase_ == 5) {
            return (RtdsLayer) this.layerSpecifier_;
        }
        return RtdsLayer.getDefaultInstance();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = GeneratedMessageV3.isStringEmpty(this.name_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.name_);
        if (this.layerSpecifierCase_ == 2) {
            computeStringSize += CodedOutputStream.G(2, (Struct) this.layerSpecifier_);
        }
        if (this.layerSpecifierCase_ == 3) {
            computeStringSize += CodedOutputStream.G(3, (DiskLayer) this.layerSpecifier_);
        }
        if (this.layerSpecifierCase_ == 4) {
            computeStringSize += CodedOutputStream.G(4, (AdminLayer) this.layerSpecifier_);
        }
        if (this.layerSpecifierCase_ == 5) {
            computeStringSize += CodedOutputStream.G(5, (RtdsLayer) this.layerSpecifier_);
        }
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public Struct getStaticLayer() {
        if (this.layerSpecifierCase_ == 2) {
            return (Struct) this.layerSpecifier_;
        }
        return Struct.getDefaultInstance();
    }

    public u2 getStaticLayerOrBuilder() {
        if (this.layerSpecifierCase_ == 2) {
            return (Struct) this.layerSpecifier_;
        }
        return Struct.getDefaultInstance();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasAdminLayer() {
        return this.layerSpecifierCase_ == 4;
    }

    public boolean hasDiskLayer() {
        return this.layerSpecifierCase_ == 3;
    }

    public boolean hasRtdsLayer() {
        return this.layerSpecifierCase_ == 5;
    }

    public boolean hasStaticLayer() {
        return this.layerSpecifierCase_ == 2;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9;
        int hashCode;
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int hashCode2 = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode();
        int i11 = this.layerSpecifierCase_;
        if (i11 == 2) {
            i9 = ((hashCode2 * 37) + 2) * 53;
            hashCode = getStaticLayer().hashCode();
        } else if (i11 == 3) {
            i9 = ((hashCode2 * 37) + 3) * 53;
            hashCode = getDiskLayer().hashCode();
        } else if (i11 == 4) {
            i9 = ((hashCode2 * 37) + 4) * 53;
            hashCode = getAdminLayer().hashCode();
        } else {
            if (i11 == 5) {
                i9 = ((hashCode2 * 37) + 5) * 53;
                hashCode = getRtdsLayer().hashCode();
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
        return io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.c.f47549z.d(RuntimeLayer.class, d.class);
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
        return new RuntimeLayer();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.name_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.name_);
        }
        if (this.layerSpecifierCase_ == 2) {
            codedOutputStream.L0(2, (Struct) this.layerSpecifier_);
        }
        if (this.layerSpecifierCase_ == 3) {
            codedOutputStream.L0(3, (DiskLayer) this.layerSpecifier_);
        }
        if (this.layerSpecifierCase_ == 4) {
            codedOutputStream.L0(4, (AdminLayer) this.layerSpecifier_);
        }
        if (this.layerSpecifierCase_ == 5) {
            codedOutputStream.L0(5, (RtdsLayer) this.layerSpecifier_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ RuntimeLayer(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static d newBuilder(RuntimeLayer runtimeLayer) {
        return DEFAULT_INSTANCE.toBuilder().i0(runtimeLayer);
    }

    public static RuntimeLayer parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private RuntimeLayer(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.layerSpecifierCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static RuntimeLayer parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (RuntimeLayer) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static RuntimeLayer parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public RuntimeLayer getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public d toBuilder() {
        return this == DEFAULT_INSTANCE ? new d((a) null) : new d((a) null).i0(this);
    }

    public static RuntimeLayer parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public d newBuilderForType() {
        return newBuilder();
    }

    public static RuntimeLayer parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public d newBuilderForType(GeneratedMessageV3.c cVar) {
        return new d(cVar, null);
    }

    private RuntimeLayer() {
        this.layerSpecifierCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
        this.name_ = "";
    }

    public static RuntimeLayer parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static RuntimeLayer parseFrom(InputStream inputStream) throws IOException {
        return (RuntimeLayer) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static RuntimeLayer parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (RuntimeLayer) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    private RuntimeLayer(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    int L = pVar.L();
                    if (L != 0) {
                        if (L != 10) {
                            if (L == 18) {
                                Struct.b builder = this.layerSpecifierCase_ == 2 ? ((Struct) this.layerSpecifier_).toBuilder() : null;
                                o1 B = pVar.B(Struct.parser(), f0Var);
                                this.layerSpecifier_ = B;
                                if (builder != null) {
                                    builder.i0((Struct) B);
                                    this.layerSpecifier_ = builder.I();
                                }
                                this.layerSpecifierCase_ = 2;
                            } else if (L == 26) {
                                DiskLayer.b builder2 = this.layerSpecifierCase_ == 3 ? ((DiskLayer) this.layerSpecifier_).toBuilder() : null;
                                o1 B2 = pVar.B(DiskLayer.parser(), f0Var);
                                this.layerSpecifier_ = B2;
                                if (builder2 != null) {
                                    builder2.g0((DiskLayer) B2);
                                    this.layerSpecifier_ = builder2.I();
                                }
                                this.layerSpecifierCase_ = 3;
                            } else if (L == 34) {
                                AdminLayer.b builder3 = this.layerSpecifierCase_ == 4 ? ((AdminLayer) this.layerSpecifier_).toBuilder() : null;
                                o1 B3 = pVar.B(AdminLayer.parser(), f0Var);
                                this.layerSpecifier_ = B3;
                                if (builder3 != null) {
                                    builder3.g0((AdminLayer) B3);
                                    this.layerSpecifier_ = builder3.I();
                                }
                                this.layerSpecifierCase_ = 4;
                            } else if (L != 42) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                RtdsLayer.b builder4 = this.layerSpecifierCase_ == 5 ? ((RtdsLayer) this.layerSpecifier_).toBuilder() : null;
                                o1 B4 = pVar.B(RtdsLayer.parser(), f0Var);
                                this.layerSpecifier_ = B4;
                                if (builder4 != null) {
                                    builder4.g0((RtdsLayer) B4);
                                    this.layerSpecifier_ = builder4.I();
                                }
                                this.layerSpecifierCase_ = 5;
                            }
                        } else {
                            this.name_ = pVar.K();
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

    public static RuntimeLayer parseFrom(p pVar) throws IOException {
        return (RuntimeLayer) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static RuntimeLayer parseFrom(p pVar, f0 f0Var) throws IOException {
        return (RuntimeLayer) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
