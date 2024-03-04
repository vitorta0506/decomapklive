package io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.h3;
import com.google.protobuf.q2;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.BuildVersion;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class Extension extends GeneratedMessageV3 implements u {
    public static final int CATEGORY_FIELD_NUMBER = 2;
    public static final int DISABLED_FIELD_NUMBER = 5;
    public static final int NAME_FIELD_NUMBER = 1;
    public static final int TYPE_DESCRIPTOR_FIELD_NUMBER = 3;
    public static final int VERSION_FIELD_NUMBER = 4;
    private static final long serialVersionUID = 0;
    private volatile Object category_;
    private boolean disabled_;
    private byte memoizedIsInitialized;
    private volatile Object name_;
    private volatile Object typeDescriptor_;
    private BuildVersion version_;
    private static final Extension DEFAULT_INSTANCE = new Extension();
    private static final e2<Extension> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<Extension> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public Extension m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return new Extension(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements u {

        /* renamed from: e  reason: collision with root package name */
        private Object f47839e;

        /* renamed from: f  reason: collision with root package name */
        private Object f47840f;

        /* renamed from: g  reason: collision with root package name */
        private Object f47841g;

        /* renamed from: h  reason: collision with root package name */
        private BuildVersion f47842h;

        /* renamed from: i  reason: collision with root package name */
        private q2<BuildVersion, BuildVersion.b, i> f47843i;

        /* renamed from: j  reason: collision with root package name */
        private boolean f47844j;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return g.f48215f.d(Extension.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public Extension build() {
            Extension I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public Extension I() {
            Extension extension = new Extension(this, (a) null);
            extension.name_ = this.f47839e;
            extension.category_ = this.f47840f;
            extension.typeDescriptor_ = this.f47841g;
            q2<BuildVersion, BuildVersion.b, i> q2Var = this.f47843i;
            if (q2Var == null) {
                extension.version_ = this.f47842h;
            } else {
                extension.version_ = q2Var.b();
            }
            extension.disabled_ = this.f47844j;
            Q();
            return extension;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public Extension getDefaultInstanceForType() {
            return Extension.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Extension.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Extension.access$1000()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Extension r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Extension) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Extension r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Extension) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Extension.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Extension$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public b v(com.google.protobuf.l1 l1Var) {
            if (l1Var instanceof Extension) {
                return g0((Extension) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b g0(Extension extension) {
            if (extension == Extension.getDefaultInstance()) {
                return this;
            }
            if (!extension.getName().isEmpty()) {
                this.f47839e = extension.name_;
                R();
            }
            if (!extension.getCategory().isEmpty()) {
                this.f47840f = extension.category_;
                R();
            }
            if (!extension.getTypeDescriptor().isEmpty()) {
                this.f47841g = extension.typeDescriptor_;
                R();
            }
            if (extension.hasVersion()) {
                i0(extension.getVersion());
            }
            if (extension.getDisabled()) {
                j0(extension.getDisabled());
            }
            z(((GeneratedMessageV3) extension).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return g.f48214e;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        public b i0(BuildVersion buildVersion) {
            q2<BuildVersion, BuildVersion.b, i> q2Var = this.f47843i;
            if (q2Var == null) {
                BuildVersion buildVersion2 = this.f47842h;
                if (buildVersion2 != null) {
                    this.f47842h = BuildVersion.newBuilder(buildVersion2).g0(buildVersion).I();
                } else {
                    this.f47842h = buildVersion;
                }
                R();
            } else {
                q2Var.e(buildVersion);
            }
            return this;
        }

        public b j0(boolean z10) {
            this.f47844j = z10;
            R();
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
            this.f47839e = "";
            this.f47840f = "";
            this.f47841g = "";
            b0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f47839e = "";
            this.f47840f = "";
            this.f47841g = "";
            b0();
        }
    }

    /* synthetic */ Extension(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static Extension getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return g.f48214e;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Extension parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Extension) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Extension parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<Extension> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Extension)) {
            return super.equals(obj);
        }
        Extension extension = (Extension) obj;
        if (getName().equals(extension.getName()) && getCategory().equals(extension.getCategory()) && getTypeDescriptor().equals(extension.getTypeDescriptor()) && hasVersion() == extension.hasVersion()) {
            return (!hasVersion() || getVersion().equals(extension.getVersion())) && getDisabled() == extension.getDisabled() && this.unknownFields.equals(extension.unknownFields);
        }
        return false;
    }

    public String getCategory() {
        Object obj = this.category_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.category_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getCategoryBytes() {
        Object obj = this.category_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.category_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public boolean getDisabled() {
        return this.disabled_;
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
    public e2<Extension> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = GeneratedMessageV3.isStringEmpty(this.name_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.name_);
        if (!GeneratedMessageV3.isStringEmpty(this.category_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(2, this.category_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.typeDescriptor_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(3, this.typeDescriptor_);
        }
        if (this.version_ != null) {
            computeStringSize += CodedOutputStream.G(4, getVersion());
        }
        boolean z10 = this.disabled_;
        if (z10) {
            computeStringSize += CodedOutputStream.e(5, z10);
        }
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public String getTypeDescriptor() {
        Object obj = this.typeDescriptor_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.typeDescriptor_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getTypeDescriptorBytes() {
        Object obj = this.typeDescriptor_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.typeDescriptor_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public BuildVersion getVersion() {
        BuildVersion buildVersion = this.version_;
        return buildVersion == null ? BuildVersion.getDefaultInstance() : buildVersion;
    }

    public i getVersionOrBuilder() {
        return getVersion();
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
        int hashCode = ((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode()) * 37) + 2) * 53) + getCategory().hashCode()) * 37) + 3) * 53) + getTypeDescriptor().hashCode();
        if (hasVersion()) {
            hashCode = (((hashCode * 37) + 4) * 53) + getVersion().hashCode();
        }
        int d10 = (((((hashCode * 37) + 5) * 53) + com.google.protobuf.u0.d(getDisabled())) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = d10;
        return d10;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return g.f48215f.d(Extension.class, b.class);
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
        return new Extension();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.name_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.name_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.category_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.category_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.typeDescriptor_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 3, this.typeDescriptor_);
        }
        if (this.version_ != null) {
            codedOutputStream.L0(4, getVersion());
        }
        boolean z10 = this.disabled_;
        if (z10) {
            codedOutputStream.n0(5, z10);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ Extension(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(Extension extension) {
        return DEFAULT_INSTANCE.toBuilder().g0(extension);
    }

    public static Extension parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private Extension(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Extension parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (Extension) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static Extension parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public Extension getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static Extension parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private Extension() {
        this.memoizedIsInitialized = (byte) -1;
        this.name_ = "";
        this.category_ = "";
        this.typeDescriptor_ = "";
    }

    public static Extension parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static Extension parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static Extension parseFrom(InputStream inputStream) throws IOException {
        return (Extension) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static Extension parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (Extension) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    private Extension(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                        } else if (L == 18) {
                            this.category_ = pVar.K();
                        } else if (L == 26) {
                            this.typeDescriptor_ = pVar.K();
                        } else if (L == 34) {
                            BuildVersion buildVersion = this.version_;
                            BuildVersion.b builder = buildVersion != null ? buildVersion.toBuilder() : null;
                            BuildVersion buildVersion2 = (BuildVersion) pVar.B(BuildVersion.parser(), f0Var);
                            this.version_ = buildVersion2;
                            if (builder != null) {
                                builder.g0(buildVersion2);
                                this.version_ = builder.I();
                            }
                        } else if (L != 40) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            this.disabled_ = pVar.r();
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

    public static Extension parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (Extension) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static Extension parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
        return (Extension) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
