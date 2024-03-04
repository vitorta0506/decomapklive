package io.grpc.xds.shaded.com.github.xds.core.v3;

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
import io.grpc.xds.shaded.com.github.xds.core.v3.ContextParams;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class ResourceName extends GeneratedMessageV3 implements r1 {
    public static final int AUTHORITY_FIELD_NUMBER = 2;
    public static final int CONTEXT_FIELD_NUMBER = 4;
    public static final int ID_FIELD_NUMBER = 1;
    public static final int RESOURCE_TYPE_FIELD_NUMBER = 3;
    private static final long serialVersionUID = 0;
    private volatile Object authority_;
    private ContextParams context_;
    private volatile Object id_;
    private byte memoizedIsInitialized;
    private volatile Object resourceType_;
    private static final ResourceName DEFAULT_INSTANCE = new ResourceName();
    private static final e2<ResourceName> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends com.google.protobuf.c<ResourceName> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public ResourceName m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new ResourceName(pVar, f0Var, null);
        }
    }

    /* loaded from: classes5.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private Object f45506e;

        /* renamed from: f  reason: collision with root package name */
        private Object f45507f;

        /* renamed from: g  reason: collision with root package name */
        private Object f45508g;

        /* renamed from: h  reason: collision with root package name */
        private ContextParams f45509h;

        /* renamed from: i  reason: collision with root package name */
        private q2<ContextParams, ContextParams.b, e> f45510i;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return i.f45530b.d(ResourceName.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public ResourceName build() {
            ResourceName I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public ResourceName I() {
            ResourceName resourceName = new ResourceName(this, (a) null);
            resourceName.id_ = this.f45506e;
            resourceName.authority_ = this.f45507f;
            resourceName.resourceType_ = this.f45508g;
            q2<ContextParams, ContextParams.b, e> q2Var = this.f45510i;
            if (q2Var == null) {
                resourceName.context_ = this.f45509h;
            } else {
                resourceName.context_ = q2Var.b();
            }
            Q();
            return resourceName;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public ResourceName getDefaultInstanceForType() {
            return ResourceName.getDefaultInstance();
        }

        public b d0(ContextParams contextParams) {
            q2<ContextParams, ContextParams.b, e> q2Var = this.f45510i;
            if (q2Var == null) {
                ContextParams contextParams2 = this.f45509h;
                if (contextParams2 != null) {
                    this.f45509h = ContextParams.newBuilder(contextParams2).i0(contextParams).I();
                } else {
                    this.f45509h = contextParams;
                }
                R();
            } else {
                q2Var.e(contextParams);
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
        public io.grpc.xds.shaded.com.github.xds.core.v3.ResourceName.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.com.github.xds.core.v3.ResourceName.access$900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.com.github.xds.core.v3.ResourceName r3 = (io.grpc.xds.shaded.com.github.xds.core.v3.ResourceName) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.com.github.xds.core.v3.ResourceName r4 = (io.grpc.xds.shaded.com.github.xds.core.v3.ResourceName) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.com.github.xds.core.v3.ResourceName.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.com.github.xds.core.v3.ResourceName$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof ResourceName) {
                return h0((ResourceName) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return i.f45529a;
        }

        public b h0(ResourceName resourceName) {
            if (resourceName == ResourceName.getDefaultInstance()) {
                return this;
            }
            if (!resourceName.getId().isEmpty()) {
                this.f45506e = resourceName.id_;
                R();
            }
            if (!resourceName.getAuthority().isEmpty()) {
                this.f45507f = resourceName.authority_;
                R();
            }
            if (!resourceName.getResourceType().isEmpty()) {
                this.f45508g = resourceName.resourceType_;
                R();
            }
            if (resourceName.hasContext()) {
                d0(resourceName.getContext());
            }
            z(((GeneratedMessageV3) resourceName).unknownFields);
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
            this.f45506e = "";
            this.f45507f = "";
            this.f45508g = "";
            b0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f45506e = "";
            this.f45507f = "";
            this.f45508g = "";
            b0();
        }
    }

    /* synthetic */ ResourceName(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static ResourceName getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return i.f45529a;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static ResourceName parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (ResourceName) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static ResourceName parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<ResourceName> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ResourceName)) {
            return super.equals(obj);
        }
        ResourceName resourceName = (ResourceName) obj;
        if (getId().equals(resourceName.getId()) && getAuthority().equals(resourceName.getAuthority()) && getResourceType().equals(resourceName.getResourceType()) && hasContext() == resourceName.hasContext()) {
            return (!hasContext() || getContext().equals(resourceName.getContext())) && this.unknownFields.equals(resourceName.unknownFields);
        }
        return false;
    }

    public String getAuthority() {
        Object obj = this.authority_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.authority_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getAuthorityBytes() {
        Object obj = this.authority_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.authority_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public ContextParams getContext() {
        ContextParams contextParams = this.context_;
        return contextParams == null ? ContextParams.getDefaultInstance() : contextParams;
    }

    public e getContextOrBuilder() {
        return getContext();
    }

    public String getId() {
        Object obj = this.id_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.id_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getIdBytes() {
        Object obj = this.id_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.id_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<ResourceName> getParserForType() {
        return PARSER;
    }

    public String getResourceType() {
        Object obj = this.resourceType_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.resourceType_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getResourceTypeBytes() {
        Object obj = this.resourceType_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.resourceType_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = GeneratedMessageV3.isStringEmpty(this.id_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.id_);
        if (!GeneratedMessageV3.isStringEmpty(this.authority_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(2, this.authority_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.resourceType_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(3, this.resourceType_);
        }
        if (this.context_ != null) {
            computeStringSize += CodedOutputStream.G(4, getContext());
        }
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasContext() {
        return this.context_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = ((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getId().hashCode()) * 37) + 2) * 53) + getAuthority().hashCode()) * 37) + 3) * 53) + getResourceType().hashCode();
        if (hasContext()) {
            hashCode = (((hashCode * 37) + 4) * 53) + getContext().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return i.f45530b.d(ResourceName.class, b.class);
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
        return new ResourceName();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.id_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.id_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.authority_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.authority_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.resourceType_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 3, this.resourceType_);
        }
        if (this.context_ != null) {
            codedOutputStream.L0(4, getContext());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ ResourceName(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(ResourceName resourceName) {
        return DEFAULT_INSTANCE.toBuilder().h0(resourceName);
    }

    public static ResourceName parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private ResourceName(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static ResourceName parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ResourceName) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static ResourceName parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public ResourceName getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).h0(this);
    }

    public static ResourceName parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private ResourceName() {
        this.memoizedIsInitialized = (byte) -1;
        this.id_ = "";
        this.authority_ = "";
        this.resourceType_ = "";
    }

    public static ResourceName parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static ResourceName parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static ResourceName parseFrom(InputStream inputStream) throws IOException {
        return (ResourceName) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static ResourceName parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ResourceName) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    private ResourceName(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            if (L == 10) {
                                this.id_ = pVar.K();
                            } else if (L == 18) {
                                this.authority_ = pVar.K();
                            } else if (L == 26) {
                                this.resourceType_ = pVar.K();
                            } else if (L != 34) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                ContextParams contextParams = this.context_;
                                ContextParams.b builder = contextParams != null ? contextParams.toBuilder() : null;
                                ContextParams contextParams2 = (ContextParams) pVar.B(ContextParams.parser(), f0Var);
                                this.context_ = contextParams2;
                                if (builder != null) {
                                    builder.i0(contextParams2);
                                    this.context_ = builder.I();
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

    public static ResourceName parseFrom(p pVar) throws IOException {
        return (ResourceName) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static ResourceName parseFrom(p pVar, f0 f0Var) throws IOException {
        return (ResourceName) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
