package io.grpc.xds.shaded.udpa.annotations;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.DescriptorProtos;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessage;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.c;
import com.google.protobuf.d0;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.p;
import com.google.protobuf.r1;
import com.google.protobuf.u0;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class Security {

    /* renamed from: a  reason: collision with root package name */
    public static final GeneratedMessage.l<DescriptorProtos.FieldOptions, FieldSecurityAnnotation> f50833a;

    /* renamed from: b  reason: collision with root package name */
    private static final Descriptors.b f50834b;

    /* renamed from: c  reason: collision with root package name */
    private static final GeneratedMessageV3.e f50835c;

    /* renamed from: d  reason: collision with root package name */
    private static Descriptors.FileDescriptor f50836d;

    /* loaded from: classes5.dex */
    public static final class FieldSecurityAnnotation extends GeneratedMessageV3 implements r1 {
        public static final int CONFIGURE_FOR_UNTRUSTED_DOWNSTREAM_FIELD_NUMBER = 1;
        public static final int CONFIGURE_FOR_UNTRUSTED_UPSTREAM_FIELD_NUMBER = 2;
        private static final FieldSecurityAnnotation DEFAULT_INSTANCE = new FieldSecurityAnnotation();
        private static final e2<FieldSecurityAnnotation> PARSER = new a();
        private static final long serialVersionUID = 0;
        private boolean configureForUntrustedDownstream_;
        private boolean configureForUntrustedUpstream_;
        private byte memoizedIsInitialized;

        /* loaded from: classes5.dex */
        class a extends c<FieldSecurityAnnotation> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public FieldSecurityAnnotation m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new FieldSecurityAnnotation(pVar, f0Var);
            }
        }

        public static FieldSecurityAnnotation getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return Security.f50834b;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static FieldSecurityAnnotation parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (FieldSecurityAnnotation) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static FieldSecurityAnnotation parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<FieldSecurityAnnotation> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof FieldSecurityAnnotation)) {
                return super.equals(obj);
            }
            FieldSecurityAnnotation fieldSecurityAnnotation = (FieldSecurityAnnotation) obj;
            return getConfigureForUntrustedDownstream() == fieldSecurityAnnotation.getConfigureForUntrustedDownstream() && getConfigureForUntrustedUpstream() == fieldSecurityAnnotation.getConfigureForUntrustedUpstream() && this.unknownFields.equals(fieldSecurityAnnotation.unknownFields);
        }

        public boolean getConfigureForUntrustedDownstream() {
            return this.configureForUntrustedDownstream_;
        }

        public boolean getConfigureForUntrustedUpstream() {
            return this.configureForUntrustedUpstream_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<FieldSecurityAnnotation> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            boolean z10 = this.configureForUntrustedDownstream_;
            int e10 = z10 ? 0 + CodedOutputStream.e(1, z10) : 0;
            boolean z11 = this.configureForUntrustedUpstream_;
            if (z11) {
                e10 += CodedOutputStream.e(2, z11);
            }
            int serializedSize = e10 + this.unknownFields.getSerializedSize();
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
            int hashCode = ((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + u0.d(getConfigureForUntrustedDownstream())) * 37) + 2) * 53) + u0.d(getConfigureForUntrustedUpstream())) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode;
            return hashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return Security.f50835c.d(FieldSecurityAnnotation.class, b.class);
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
            return new FieldSecurityAnnotation();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            boolean z10 = this.configureForUntrustedDownstream_;
            if (z10) {
                codedOutputStream.n0(1, z10);
            }
            boolean z11 = this.configureForUntrustedUpstream_;
            if (z11) {
                codedOutputStream.n0(2, z11);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* loaded from: classes5.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements r1 {

            /* renamed from: e  reason: collision with root package name */
            private boolean f50837e;

            /* renamed from: f  reason: collision with root package name */
            private boolean f50838f;

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return Security.f50835c.d(FieldSecurityAnnotation.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public FieldSecurityAnnotation build() {
                FieldSecurityAnnotation I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public FieldSecurityAnnotation I() {
                FieldSecurityAnnotation fieldSecurityAnnotation = new FieldSecurityAnnotation(this);
                fieldSecurityAnnotation.configureForUntrustedDownstream_ = this.f50837e;
                fieldSecurityAnnotation.configureForUntrustedUpstream_ = this.f50838f;
                Q();
                return fieldSecurityAnnotation;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public FieldSecurityAnnotation getDefaultInstanceForType() {
                return FieldSecurityAnnotation.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: d0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.udpa.annotations.Security.FieldSecurityAnnotation.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.udpa.annotations.Security.FieldSecurityAnnotation.access$900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.udpa.annotations.Security$FieldSecurityAnnotation r3 = (io.grpc.xds.shaded.udpa.annotations.Security.FieldSecurityAnnotation) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.udpa.annotations.Security$FieldSecurityAnnotation r4 = (io.grpc.xds.shaded.udpa.annotations.Security.FieldSecurityAnnotation) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.udpa.annotations.Security.FieldSecurityAnnotation.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.udpa.annotations.Security$FieldSecurityAnnotation$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof FieldSecurityAnnotation) {
                    return g0((FieldSecurityAnnotation) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b g0(FieldSecurityAnnotation fieldSecurityAnnotation) {
                if (fieldSecurityAnnotation == FieldSecurityAnnotation.getDefaultInstance()) {
                    return this;
                }
                if (fieldSecurityAnnotation.getConfigureForUntrustedDownstream()) {
                    i0(fieldSecurityAnnotation.getConfigureForUntrustedDownstream());
                }
                if (fieldSecurityAnnotation.getConfigureForUntrustedUpstream()) {
                    j0(fieldSecurityAnnotation.getConfigureForUntrustedUpstream());
                }
                z(((GeneratedMessageV3) fieldSecurityAnnotation).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return Security.f50834b;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: h0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            public b i0(boolean z10) {
                this.f50837e = z10;
                R();
                return this;
            }

            public b j0(boolean z10) {
                this.f50838f = z10;
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

            private b() {
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                b0();
            }
        }

        public static b newBuilder(FieldSecurityAnnotation fieldSecurityAnnotation) {
            return DEFAULT_INSTANCE.toBuilder().g0(fieldSecurityAnnotation);
        }

        public static FieldSecurityAnnotation parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private FieldSecurityAnnotation(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static FieldSecurityAnnotation parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (FieldSecurityAnnotation) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static FieldSecurityAnnotation parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public FieldSecurityAnnotation getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b() : new b().g0(this);
        }

        public static FieldSecurityAnnotation parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private FieldSecurityAnnotation() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static FieldSecurityAnnotation parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar);
        }

        public static FieldSecurityAnnotation parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        private FieldSecurityAnnotation(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                if (L == 8) {
                                    this.configureForUntrustedDownstream_ = pVar.r();
                                } else if (L != 16) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    this.configureForUntrustedUpstream_ = pVar.r();
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

        public static FieldSecurityAnnotation parseFrom(InputStream inputStream) throws IOException {
            return (FieldSecurityAnnotation) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static FieldSecurityAnnotation parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (FieldSecurityAnnotation) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static FieldSecurityAnnotation parseFrom(p pVar) throws IOException {
            return (FieldSecurityAnnotation) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static FieldSecurityAnnotation parseFrom(p pVar, f0 f0Var) throws IOException {
            return (FieldSecurityAnnotation) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    static {
        GeneratedMessage.l<DescriptorProtos.FieldOptions, FieldSecurityAnnotation> newFileScopedGeneratedExtension = GeneratedMessage.newFileScopedGeneratedExtension(FieldSecurityAnnotation.class, FieldSecurityAnnotation.getDefaultInstance());
        f50833a = newFileScopedGeneratedExtension;
        f50836d = Descriptors.FileDescriptor.s(new String[]{"\n\u001fudpa/annotations/security.proto\u0012\u0010udpa.annotations\u001a\u001dudpa/annotations/status.proto\u001a google/protobuf/descriptor.proto\"o\n\u0017FieldSecurityAnnotation\u0012*\n\"configure_for_untrusted_downstream\u0018\u0001 \u0001(\b\u0012(\n configure_for_untrusted_upstream\u0018\u0002 \u0001(\b:]\n\bsecurity\u0012\u001d.google.protobuf.FieldOptions\u0018±ò¦\u0005 \u0001(\u000b2).udpa.annotations.FieldSecurityAnnotationB,Z\"github.com/cncf/xds/go/annotationsº\u0080ÈÑ\u0006\u0002\b\u0001b\u0006proto3"}, new Descriptors.FileDescriptor[]{Status.c(), DescriptorProtos.c0()});
        Descriptors.b bVar = c().m().get(0);
        f50834b = bVar;
        f50835c = new GeneratedMessageV3.e(bVar, new String[]{"ConfigureForUntrustedDownstream", "ConfigureForUntrustedUpstream"});
        newFileScopedGeneratedExtension.g(f50836d.l().get(0));
        d0 k10 = d0.k();
        k10.f(Status.f50839a);
        Descriptors.FileDescriptor.u(f50836d, k10);
        Status.c();
        DescriptorProtos.c0();
    }

    public static Descriptors.FileDescriptor c() {
        return f50836d;
    }
}
