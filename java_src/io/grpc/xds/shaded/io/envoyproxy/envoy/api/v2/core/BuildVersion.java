package io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Struct;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.q2;
import com.google.protobuf.u2;
import io.grpc.xds.shaded.io.envoyproxy.envoy.type.SemanticVersion;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class BuildVersion extends GeneratedMessageV3 implements i {
    public static final int METADATA_FIELD_NUMBER = 2;
    public static final int VERSION_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private Struct metadata_;
    private SemanticVersion version_;
    private static final BuildVersion DEFAULT_INSTANCE = new BuildVersion();
    private static final e2<BuildVersion> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<BuildVersion> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public BuildVersion m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return new BuildVersion(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements i {

        /* renamed from: e  reason: collision with root package name */
        private SemanticVersion f46384e;

        /* renamed from: f  reason: collision with root package name */
        private q2<SemanticVersion, SemanticVersion.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.i> f46385f;

        /* renamed from: g  reason: collision with root package name */
        private Struct f46386g;

        /* renamed from: h  reason: collision with root package name */
        private q2<Struct, Struct.b, u2> f46387h;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return g.f46695d.d(BuildVersion.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public BuildVersion build() {
            BuildVersion I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public BuildVersion I() {
            BuildVersion buildVersion = new BuildVersion(this, (a) null);
            q2<SemanticVersion, SemanticVersion.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.i> q2Var = this.f46385f;
            if (q2Var == null) {
                buildVersion.version_ = this.f46384e;
            } else {
                buildVersion.version_ = q2Var.b();
            }
            q2<Struct, Struct.b, u2> q2Var2 = this.f46387h;
            if (q2Var2 == null) {
                buildVersion.metadata_ = this.f46386g;
            } else {
                buildVersion.metadata_ = q2Var2.b();
            }
            Q();
            return buildVersion;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public BuildVersion getDefaultInstanceForType() {
            return BuildVersion.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.BuildVersion.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.BuildVersion.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.BuildVersion r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.BuildVersion) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.BuildVersion r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.BuildVersion) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.BuildVersion.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.BuildVersion$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof BuildVersion) {
                return g0((BuildVersion) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b g0(BuildVersion buildVersion) {
            if (buildVersion == BuildVersion.getDefaultInstance()) {
                return this;
            }
            if (buildVersion.hasVersion()) {
                j0(buildVersion.getVersion());
            }
            if (buildVersion.hasMetadata()) {
                h0(buildVersion.getMetadata());
            }
            z(((GeneratedMessageV3) buildVersion).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return g.f46694c;
        }

        public b h0(Struct struct) {
            q2<Struct, Struct.b, u2> q2Var = this.f46387h;
            if (q2Var == null) {
                Struct struct2 = this.f46386g;
                if (struct2 != null) {
                    this.f46386g = Struct.newBuilder(struct2).i0(struct).I();
                } else {
                    this.f46386g = struct;
                }
                R();
            } else {
                q2Var.e(struct);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        public b j0(SemanticVersion semanticVersion) {
            q2<SemanticVersion, SemanticVersion.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.i> q2Var = this.f46385f;
            if (q2Var == null) {
                SemanticVersion semanticVersion2 = this.f46384e;
                if (semanticVersion2 != null) {
                    this.f46384e = SemanticVersion.newBuilder(semanticVersion2).g0(semanticVersion).I();
                } else {
                    this.f46384e = semanticVersion;
                }
                R();
            } else {
                q2Var.e(semanticVersion);
            }
            return this;
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

    /* synthetic */ BuildVersion(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static BuildVersion getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return g.f46694c;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static BuildVersion parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (BuildVersion) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static BuildVersion parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<BuildVersion> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof BuildVersion)) {
            return super.equals(obj);
        }
        BuildVersion buildVersion = (BuildVersion) obj;
        if (hasVersion() != buildVersion.hasVersion()) {
            return false;
        }
        if ((!hasVersion() || getVersion().equals(buildVersion.getVersion())) && hasMetadata() == buildVersion.hasMetadata()) {
            return (!hasMetadata() || getMetadata().equals(buildVersion.getMetadata())) && this.unknownFields.equals(buildVersion.unknownFields);
        }
        return false;
    }

    public Struct getMetadata() {
        Struct struct = this.metadata_;
        return struct == null ? Struct.getDefaultInstance() : struct;
    }

    public u2 getMetadataOrBuilder() {
        return getMetadata();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<BuildVersion> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.version_ != null ? 0 + CodedOutputStream.G(1, getVersion()) : 0;
        if (this.metadata_ != null) {
            G += CodedOutputStream.G(2, getMetadata());
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public SemanticVersion getVersion() {
        SemanticVersion semanticVersion = this.version_;
        return semanticVersion == null ? SemanticVersion.getDefaultInstance() : semanticVersion;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.type.i getVersionOrBuilder() {
        return getVersion();
    }

    public boolean hasMetadata() {
        return this.metadata_ != null;
    }

    public boolean hasVersion() {
        return this.version_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasVersion()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getVersion().hashCode();
        }
        if (hasMetadata()) {
            hashCode = (((hashCode * 37) + 2) * 53) + getMetadata().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return g.f46695d.d(BuildVersion.class, b.class);
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
        return new BuildVersion();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.version_ != null) {
            codedOutputStream.L0(1, getVersion());
        }
        if (this.metadata_ != null) {
            codedOutputStream.L0(2, getMetadata());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ BuildVersion(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(BuildVersion buildVersion) {
        return DEFAULT_INSTANCE.toBuilder().g0(buildVersion);
    }

    public static BuildVersion parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private BuildVersion(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static BuildVersion parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (BuildVersion) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static BuildVersion parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public BuildVersion getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static BuildVersion parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private BuildVersion() {
        this.memoizedIsInitialized = (byte) -1;
    }

    public static BuildVersion parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static BuildVersion parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    private BuildVersion(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                            SemanticVersion semanticVersion = this.version_;
                            SemanticVersion.b builder = semanticVersion != null ? semanticVersion.toBuilder() : null;
                            SemanticVersion semanticVersion2 = (SemanticVersion) pVar.B(SemanticVersion.parser(), f0Var);
                            this.version_ = semanticVersion2;
                            if (builder != null) {
                                builder.g0(semanticVersion2);
                                this.version_ = builder.I();
                            }
                        } else if (L != 18) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            Struct struct = this.metadata_;
                            Struct.b builder2 = struct != null ? struct.toBuilder() : null;
                            Struct struct2 = (Struct) pVar.B(Struct.parser(), f0Var);
                            this.metadata_ = struct2;
                            if (builder2 != null) {
                                builder2.i0(struct2);
                                this.metadata_ = builder2.I();
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

    public static BuildVersion parseFrom(InputStream inputStream) throws IOException {
        return (BuildVersion) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static BuildVersion parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (BuildVersion) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static BuildVersion parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (BuildVersion) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static BuildVersion parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
        return (BuildVersion) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
