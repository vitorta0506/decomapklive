package io.grpc.xds.shaded.xds.annotations.v3;

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
public final class Versioning {

    /* renamed from: a  reason: collision with root package name */
    public static final GeneratedMessage.l<DescriptorProtos.MessageOptions, VersioningAnnotation> f50891a;

    /* renamed from: b  reason: collision with root package name */
    private static final Descriptors.b f50892b;

    /* renamed from: c  reason: collision with root package name */
    private static final GeneratedMessageV3.e f50893c;

    /* renamed from: d  reason: collision with root package name */
    private static Descriptors.FileDescriptor f50894d;

    /* loaded from: classes5.dex */
    public static final class VersioningAnnotation extends GeneratedMessageV3 implements r1 {
        private static final VersioningAnnotation DEFAULT_INSTANCE = new VersioningAnnotation();
        private static final e2<VersioningAnnotation> PARSER = new a();
        public static final int PREVIOUS_MESSAGE_TYPE_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private volatile Object previousMessageType_;

        /* loaded from: classes5.dex */
        class a extends c<VersioningAnnotation> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public VersioningAnnotation m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new VersioningAnnotation(pVar, f0Var);
            }
        }

        public static VersioningAnnotation getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return Versioning.f50892b;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static VersioningAnnotation parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (VersioningAnnotation) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static VersioningAnnotation parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<VersioningAnnotation> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof VersioningAnnotation)) {
                return super.equals(obj);
            }
            VersioningAnnotation versioningAnnotation = (VersioningAnnotation) obj;
            return getPreviousMessageType().equals(versioningAnnotation.getPreviousMessageType()) && this.unknownFields.equals(versioningAnnotation.unknownFields);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<VersioningAnnotation> getParserForType() {
            return PARSER;
        }

        public String getPreviousMessageType() {
            Object obj = this.previousMessageType_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.previousMessageType_ = stringUtf8;
            return stringUtf8;
        }

        public ByteString getPreviousMessageTypeBytes() {
            Object obj = this.previousMessageType_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.previousMessageType_ = copyFromUtf8;
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
            int computeStringSize = (GeneratedMessageV3.isStringEmpty(this.previousMessageType_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.previousMessageType_)) + this.unknownFields.getSerializedSize();
            this.memoizedSize = computeStringSize;
            return computeStringSize;
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
            int hashCode = ((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getPreviousMessageType().hashCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode;
            return hashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return Versioning.f50893c.d(VersioningAnnotation.class, b.class);
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
            return new VersioningAnnotation();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (!GeneratedMessageV3.isStringEmpty(this.previousMessageType_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.previousMessageType_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* loaded from: classes5.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements r1 {

            /* renamed from: e  reason: collision with root package name */
            private Object f50895e;

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return Versioning.f50893c.d(VersioningAnnotation.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public VersioningAnnotation build() {
                VersioningAnnotation I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public VersioningAnnotation I() {
                VersioningAnnotation versioningAnnotation = new VersioningAnnotation(this);
                versioningAnnotation.previousMessageType_ = this.f50895e;
                Q();
                return versioningAnnotation;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public VersioningAnnotation getDefaultInstanceForType() {
                return VersioningAnnotation.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: d0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.xds.annotations.v3.Versioning.VersioningAnnotation.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.xds.annotations.v3.Versioning.VersioningAnnotation.access$800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.xds.annotations.v3.Versioning$VersioningAnnotation r3 = (io.grpc.xds.shaded.xds.annotations.v3.Versioning.VersioningAnnotation) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.xds.annotations.v3.Versioning$VersioningAnnotation r4 = (io.grpc.xds.shaded.xds.annotations.v3.Versioning.VersioningAnnotation) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.xds.annotations.v3.Versioning.VersioningAnnotation.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.xds.annotations.v3.Versioning$VersioningAnnotation$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof VersioningAnnotation) {
                    return g0((VersioningAnnotation) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b g0(VersioningAnnotation versioningAnnotation) {
                if (versioningAnnotation == VersioningAnnotation.getDefaultInstance()) {
                    return this;
                }
                if (!versioningAnnotation.getPreviousMessageType().isEmpty()) {
                    this.f50895e = versioningAnnotation.previousMessageType_;
                    R();
                }
                z(((GeneratedMessageV3) versioningAnnotation).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return Versioning.f50892b;
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
                this.f50895e = "";
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f50895e = "";
                b0();
            }
        }

        public static b newBuilder(VersioningAnnotation versioningAnnotation) {
            return DEFAULT_INSTANCE.toBuilder().g0(versioningAnnotation);
        }

        public static VersioningAnnotation parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private VersioningAnnotation(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static VersioningAnnotation parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (VersioningAnnotation) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static VersioningAnnotation parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public VersioningAnnotation getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b() : new b().g0(this);
        }

        public static VersioningAnnotation parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private VersioningAnnotation() {
            this.memoizedIsInitialized = (byte) -1;
            this.previousMessageType_ = "";
        }

        public static VersioningAnnotation parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar);
        }

        public static VersioningAnnotation parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static VersioningAnnotation parseFrom(InputStream inputStream) throws IOException {
            return (VersioningAnnotation) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private VersioningAnnotation(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                this.previousMessageType_ = pVar.K();
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

        public static VersioningAnnotation parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (VersioningAnnotation) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static VersioningAnnotation parseFrom(p pVar) throws IOException {
            return (VersioningAnnotation) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static VersioningAnnotation parseFrom(p pVar, f0 f0Var) throws IOException {
            return (VersioningAnnotation) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    static {
        GeneratedMessage.l<DescriptorProtos.MessageOptions, VersioningAnnotation> newFileScopedGeneratedExtension = GeneratedMessage.newFileScopedGeneratedExtension(VersioningAnnotation.class, VersioningAnnotation.getDefaultInstance());
        f50891a = newFileScopedGeneratedExtension;
        f50894d = Descriptors.FileDescriptor.s(new String[]{"\n#xds/annotations/v3/versioning.proto\u0012\u0012xds.annotations.v3\u001a google/protobuf/descriptor.proto\"5\n\u0014VersioningAnnotation\u0012\u001d\n\u0015previous_message_type\u0018\u0001 \u0001(\t:`\n\nversioning\u0012\u001f.google.protobuf.MessageOptions\u0018\u0093ý\u0086, \u0001(\u000b2(.xds.annotations.v3.VersioningAnnotationB+Z)github.com/cncf/xds/go/xds/annotations/v3b\u0006proto3"}, new Descriptors.FileDescriptor[]{DescriptorProtos.c0()});
        Descriptors.b bVar = c().m().get(0);
        f50892b = bVar;
        f50893c = new GeneratedMessageV3.e(bVar, new String[]{"PreviousMessageType"});
        newFileScopedGeneratedExtension.g(f50894d.l().get(0));
        DescriptorProtos.c0();
    }

    public static Descriptors.FileDescriptor c() {
        return f50894d;
    }
}
