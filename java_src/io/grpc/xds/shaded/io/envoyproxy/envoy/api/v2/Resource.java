package io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2;

import com.google.protobuf.Any;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.h3;
import com.google.protobuf.i2;
import com.google.protobuf.l1;
import com.google.protobuf.q2;
import com.google.protobuf.y0;
import com.google.protobuf.z0;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class Resource extends GeneratedMessageV3 implements k {
    public static final int ALIASES_FIELD_NUMBER = 4;
    public static final int NAME_FIELD_NUMBER = 3;
    public static final int RESOURCE_FIELD_NUMBER = 2;
    public static final int VERSION_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private z0 aliases_;
    private byte memoizedIsInitialized;
    private volatile Object name_;
    private Any resource_;
    private volatile Object version_;
    private static final Resource DEFAULT_INSTANCE = new Resource();
    private static final e2<Resource> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends com.google.protobuf.c<Resource> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public Resource m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new Resource(pVar, f0Var, null);
        }
    }

    /* loaded from: classes5.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements k {

        /* renamed from: e  reason: collision with root package name */
        private int f46104e;

        /* renamed from: f  reason: collision with root package name */
        private Object f46105f;

        /* renamed from: g  reason: collision with root package name */
        private z0 f46106g;

        /* renamed from: h  reason: collision with root package name */
        private Object f46107h;

        /* renamed from: i  reason: collision with root package name */
        private Any f46108i;

        /* renamed from: j  reason: collision with root package name */
        private q2<Any, Any.b, com.google.protobuf.f> f46109j;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f46104e & 1) == 0) {
                this.f46106g = new y0(this.f46106g);
                this.f46104e |= 1;
            }
        }

        private void d0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return d.f46805l.d(Resource.class, b.class);
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
            resource.name_ = this.f46105f;
            if ((this.f46104e & 1) != 0) {
                this.f46106g = this.f46106g.V0();
                this.f46104e &= -2;
            }
            resource.aliases_ = this.f46106g;
            resource.version_ = this.f46107h;
            q2<Any, Any.b, com.google.protobuf.f> q2Var = this.f46109j;
            if (q2Var == null) {
                resource.resource_ = this.f46108i;
            } else {
                resource.resource_ = q2Var.b();
            }
            Q();
            return resource;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: b0 */
        public Resource getDefaultInstanceForType() {
            return Resource.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Resource.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Resource.access$900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Resource r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Resource) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Resource r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Resource) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Resource.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Resource$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof Resource) {
                return h0((Resource) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return d.f46804k;
        }

        public b h0(Resource resource) {
            if (resource == Resource.getDefaultInstance()) {
                return this;
            }
            if (!resource.getName().isEmpty()) {
                this.f46105f = resource.name_;
                R();
            }
            if (!resource.aliases_.isEmpty()) {
                if (this.f46106g.isEmpty()) {
                    this.f46106g = resource.aliases_;
                    this.f46104e &= -2;
                } else {
                    a0();
                    this.f46106g.addAll(resource.aliases_);
                }
                R();
            }
            if (!resource.getVersion().isEmpty()) {
                this.f46107h = resource.version_;
                R();
            }
            if (resource.hasResource()) {
                i0(resource.getResource());
            }
            z(((GeneratedMessageV3) resource).unknownFields);
            R();
            return this;
        }

        public b i0(Any any) {
            q2<Any, Any.b, com.google.protobuf.f> q2Var = this.f46109j;
            if (q2Var == null) {
                Any any2 = this.f46108i;
                if (any2 != null) {
                    this.f46108i = Any.newBuilder(any2).d0(any).I();
                } else {
                    this.f46108i = any;
                }
                R();
            } else {
                q2Var.e(any);
            }
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

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            this.f46105f = "";
            this.f46106g = y0.f15344d;
            this.f46107h = "";
            d0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f46105f = "";
            this.f46106g = y0.f15344d;
            this.f46107h = "";
            d0();
        }
    }

    /* synthetic */ Resource(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static Resource getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return d.f46804k;
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

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Resource)) {
            return super.equals(obj);
        }
        Resource resource = (Resource) obj;
        if (getName().equals(resource.getName()) && m1582getAliasesList().equals(resource.m1582getAliasesList()) && getVersion().equals(resource.getVersion()) && hasResource() == resource.hasResource()) {
            return (!hasResource() || getResource().equals(resource.getResource())) && this.unknownFields.equals(resource.unknownFields);
        }
        return false;
    }

    public String getAliases(int i9) {
        return this.aliases_.get(i9);
    }

    public ByteString getAliasesBytes(int i9) {
        return this.aliases_.j0(i9);
    }

    public int getAliasesCount() {
        return this.aliases_.size();
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
    public e2<Resource> getParserForType() {
        return PARSER;
    }

    public Any getResource() {
        Any any = this.resource_;
        return any == null ? Any.getDefaultInstance() : any;
    }

    public com.google.protobuf.f getResourceOrBuilder() {
        return getResource();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = !GeneratedMessageV3.isStringEmpty(this.version_) ? GeneratedMessageV3.computeStringSize(1, this.version_) + 0 : 0;
        if (this.resource_ != null) {
            computeStringSize += CodedOutputStream.G(2, getResource());
        }
        if (!GeneratedMessageV3.isStringEmpty(this.name_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(3, this.name_);
        }
        int i10 = 0;
        for (int i11 = 0; i11 < this.aliases_.size(); i11++) {
            i10 += GeneratedMessageV3.computeStringSizeNoTag(this.aliases_.c1(i11));
        }
        int size = computeStringSize + i10 + (m1582getAliasesList().size() * 1) + this.unknownFields.getSerializedSize();
        this.memoizedSize = size;
        return size;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public String getVersion() {
        Object obj = this.version_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.version_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getVersionBytes() {
        Object obj = this.version_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.version_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public boolean hasResource() {
        return this.resource_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 3) * 53) + getName().hashCode();
        if (getAliasesCount() > 0) {
            hashCode = (((hashCode * 37) + 4) * 53) + m1582getAliasesList().hashCode();
        }
        int hashCode2 = (((hashCode * 37) + 1) * 53) + getVersion().hashCode();
        if (hasResource()) {
            hashCode2 = (((hashCode2 * 37) + 2) * 53) + getResource().hashCode();
        }
        int hashCode3 = (hashCode2 * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode3;
        return hashCode3;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return d.f46805l.d(Resource.class, b.class);
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
        return new Resource();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.version_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.version_);
        }
        if (this.resource_ != null) {
            codedOutputStream.L0(2, getResource());
        }
        if (!GeneratedMessageV3.isStringEmpty(this.name_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 3, this.name_);
        }
        for (int i9 = 0; i9 < this.aliases_.size(); i9++) {
            GeneratedMessageV3.writeString(codedOutputStream, 4, this.aliases_.c1(i9));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ Resource(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(Resource resource) {
        return DEFAULT_INSTANCE.toBuilder().h0(resource);
    }

    public static Resource parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    /* renamed from: getAliasesList */
    public i2 m1582getAliasesList() {
        return this.aliases_;
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
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).h0(this);
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
        this.name_ = "";
        this.aliases_ = y0.f15344d;
        this.version_ = "";
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

    public static Resource parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Resource) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    private Resource(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        boolean z11 = false;
        while (!z10) {
            try {
                try {
                    try {
                        int L = pVar.L();
                        if (L != 0) {
                            if (L == 10) {
                                this.version_ = pVar.K();
                            } else if (L == 18) {
                                Any any = this.resource_;
                                Any.b builder = any != null ? any.toBuilder() : null;
                                Any any2 = (Any) pVar.B(Any.parser(), f0Var);
                                this.resource_ = any2;
                                if (builder != null) {
                                    builder.d0(any2);
                                    this.resource_ = builder.I();
                                }
                            } else if (L == 26) {
                                this.name_ = pVar.K();
                            } else if (L != 34) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                String K = pVar.K();
                                if (!(z11 & true)) {
                                    this.aliases_ = new y0();
                                    z11 |= true;
                                }
                                this.aliases_.add(K);
                            }
                        }
                        z10 = true;
                    } catch (InvalidProtocolBufferException e10) {
                        throw e10.setUnfinishedMessage(this);
                    }
                } catch (IOException e11) {
                    throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                }
            } finally {
                if (z11 & true) {
                    this.aliases_ = this.aliases_.V0();
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static Resource parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (Resource) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static Resource parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
        return (Resource) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
