package io.grpc.xds.shaded.envoy.annotations;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.DescriptorProtos;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessage;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.c;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.p;
import com.google.protobuf.r1;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class Resource {

    /* renamed from: a  reason: collision with root package name */
    public static final GeneratedMessage.l<DescriptorProtos.ServiceOptions, ResourceAnnotation> f45752a;

    /* renamed from: b  reason: collision with root package name */
    private static final Descriptors.b f45753b;

    /* renamed from: c  reason: collision with root package name */
    private static final GeneratedMessageV3.e f45754c;

    /* renamed from: d  reason: collision with root package name */
    private static Descriptors.FileDescriptor f45755d;

    /* loaded from: classes5.dex */
    public static final class ResourceAnnotation extends GeneratedMessageV3 implements r1 {
        private static final ResourceAnnotation DEFAULT_INSTANCE = new ResourceAnnotation();
        private static final e2<ResourceAnnotation> PARSER = new a();
        public static final int TYPE_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private volatile Object type_;

        /* loaded from: classes5.dex */
        class a extends c<ResourceAnnotation> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public ResourceAnnotation m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new ResourceAnnotation(pVar, f0Var);
            }
        }

        public static ResourceAnnotation getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return Resource.f45753b;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static ResourceAnnotation parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (ResourceAnnotation) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static ResourceAnnotation parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<ResourceAnnotation> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof ResourceAnnotation)) {
                return super.equals(obj);
            }
            ResourceAnnotation resourceAnnotation = (ResourceAnnotation) obj;
            return getType().equals(resourceAnnotation.getType()) && this.unknownFields.equals(resourceAnnotation.unknownFields);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<ResourceAnnotation> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int computeStringSize = (GeneratedMessageV3.isStringEmpty(this.type_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.type_)) + this.unknownFields.getSerializedSize();
            this.memoizedSize = computeStringSize;
            return computeStringSize;
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
            int hashCode = ((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getType().hashCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode;
            return hashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return Resource.f45754c.d(ResourceAnnotation.class, b.class);
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
            return new ResourceAnnotation();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (!GeneratedMessageV3.isStringEmpty(this.type_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.type_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* loaded from: classes5.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements r1 {

            /* renamed from: e  reason: collision with root package name */
            private Object f45756e;

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return Resource.f45754c.d(ResourceAnnotation.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public ResourceAnnotation build() {
                ResourceAnnotation I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public ResourceAnnotation I() {
                ResourceAnnotation resourceAnnotation = new ResourceAnnotation(this);
                resourceAnnotation.type_ = this.f45756e;
                Q();
                return resourceAnnotation;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public ResourceAnnotation getDefaultInstanceForType() {
                return ResourceAnnotation.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: d0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.envoy.annotations.Resource.ResourceAnnotation.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.envoy.annotations.Resource.ResourceAnnotation.access$800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.envoy.annotations.Resource$ResourceAnnotation r3 = (io.grpc.xds.shaded.envoy.annotations.Resource.ResourceAnnotation) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.envoy.annotations.Resource$ResourceAnnotation r4 = (io.grpc.xds.shaded.envoy.annotations.Resource.ResourceAnnotation) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.envoy.annotations.Resource.ResourceAnnotation.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.envoy.annotations.Resource$ResourceAnnotation$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof ResourceAnnotation) {
                    return g0((ResourceAnnotation) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b g0(ResourceAnnotation resourceAnnotation) {
                if (resourceAnnotation == ResourceAnnotation.getDefaultInstance()) {
                    return this;
                }
                if (!resourceAnnotation.getType().isEmpty()) {
                    this.f45756e = resourceAnnotation.type_;
                    R();
                }
                z(((GeneratedMessageV3) resourceAnnotation).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return Resource.f45753b;
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

            private b() {
                this.f45756e = "";
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f45756e = "";
                b0();
            }
        }

        public static b newBuilder(ResourceAnnotation resourceAnnotation) {
            return DEFAULT_INSTANCE.toBuilder().g0(resourceAnnotation);
        }

        public static ResourceAnnotation parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private ResourceAnnotation(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static ResourceAnnotation parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (ResourceAnnotation) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static ResourceAnnotation parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public ResourceAnnotation getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b() : new b().g0(this);
        }

        public static ResourceAnnotation parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private ResourceAnnotation() {
            this.memoizedIsInitialized = (byte) -1;
            this.type_ = "";
        }

        public static ResourceAnnotation parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar);
        }

        public static ResourceAnnotation parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static ResourceAnnotation parseFrom(InputStream inputStream) throws IOException {
            return (ResourceAnnotation) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private ResourceAnnotation(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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

        public static ResourceAnnotation parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (ResourceAnnotation) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static ResourceAnnotation parseFrom(p pVar) throws IOException {
            return (ResourceAnnotation) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static ResourceAnnotation parseFrom(p pVar, f0 f0Var) throws IOException {
            return (ResourceAnnotation) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    static {
        GeneratedMessage.l<DescriptorProtos.ServiceOptions, ResourceAnnotation> newFileScopedGeneratedExtension = GeneratedMessage.newFileScopedGeneratedExtension(ResourceAnnotation.class, ResourceAnnotation.getDefaultInstance());
        f45752a = newFileScopedGeneratedExtension;
        f45755d = Descriptors.FileDescriptor.s(new String[]{"\n envoy/annotations/resource.proto\u0012\u0011envoy.annotations\u001a google/protobuf/descriptor.proto\"\"\n\u0012ResourceAnnotation\u0012\f\n\u0004type\u0018\u0001 \u0001(\t:[\n\bresource\u0012\u001f.google.protobuf.ServiceOptions\u0018Áä²~ \u0001(\u000b2%.envoy.annotations.ResourceAnnotationb\u0006proto3"}, new Descriptors.FileDescriptor[]{DescriptorProtos.c0()});
        Descriptors.b bVar = c().m().get(0);
        f45753b = bVar;
        f45754c = new GeneratedMessageV3.e(bVar, new String[]{"Type"});
        newFileScopedGeneratedExtension.g(f45755d.l().get(0));
        DescriptorProtos.c0();
    }

    public static Descriptors.FileDescriptor c() {
        return f45755d;
    }
}
