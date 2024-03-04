package io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v2;

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
import io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v2.MetadataKey;
import io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v2.MetadataKind;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class CustomTag extends GeneratedMessageV3 implements io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v2.a {
    public static final int ENVIRONMENT_FIELD_NUMBER = 3;
    public static final int LITERAL_FIELD_NUMBER = 2;
    public static final int METADATA_FIELD_NUMBER = 5;
    public static final int REQUEST_HEADER_FIELD_NUMBER = 4;
    public static final int TAG_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private volatile Object tag_;
    private int typeCase_;
    private Object type_;
    private static final CustomTag DEFAULT_INSTANCE = new CustomTag();
    private static final e2<CustomTag> PARSER = new a();

    /* loaded from: classes6.dex */
    public static final class Environment extends GeneratedMessageV3 implements d {
        public static final int DEFAULT_VALUE_FIELD_NUMBER = 2;
        public static final int NAME_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private volatile Object defaultValue_;
        private byte memoizedIsInitialized;
        private volatile Object name_;
        private static final Environment DEFAULT_INSTANCE = new Environment();
        private static final e2<Environment> PARSER = new a();

        /* loaded from: classes6.dex */
        class a extends com.google.protobuf.c<Environment> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public Environment m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new Environment(pVar, f0Var, null);
            }
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements d {

            /* renamed from: e  reason: collision with root package name */
            private Object f50493e;

            /* renamed from: f  reason: collision with root package name */
            private Object f50494f;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v2.b.f50516f.d(Environment.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public Environment build() {
                Environment I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public Environment I() {
                Environment environment = new Environment(this, (a) null);
                environment.name_ = this.f50493e;
                environment.defaultValue_ = this.f50494f;
                Q();
                return environment;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public Environment getDefaultInstanceForType() {
                return Environment.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: d0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v2.CustomTag.Environment.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v2.CustomTag.Environment.access$1600()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v2.CustomTag$Environment r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v2.CustomTag.Environment) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v2.CustomTag$Environment r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v2.CustomTag.Environment) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v2.CustomTag.Environment.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v2.CustomTag$Environment$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof Environment) {
                    return g0((Environment) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b g0(Environment environment) {
                if (environment == Environment.getDefaultInstance()) {
                    return this;
                }
                if (!environment.getName().isEmpty()) {
                    this.f50493e = environment.name_;
                    R();
                }
                if (!environment.getDefaultValue().isEmpty()) {
                    this.f50494f = environment.defaultValue_;
                    R();
                }
                z(((GeneratedMessageV3) environment).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v2.b.f50515e;
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
                this.f50493e = "";
                this.f50494f = "";
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f50493e = "";
                this.f50494f = "";
                b0();
            }
        }

        /* synthetic */ Environment(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static Environment getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v2.b.f50515e;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Environment parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Environment) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Environment parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<Environment> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Environment)) {
                return super.equals(obj);
            }
            Environment environment = (Environment) obj;
            return getName().equals(environment.getName()) && getDefaultValue().equals(environment.getDefaultValue()) && this.unknownFields.equals(environment.unknownFields);
        }

        public String getDefaultValue() {
            Object obj = this.defaultValue_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.defaultValue_ = stringUtf8;
            return stringUtf8;
        }

        public ByteString getDefaultValueBytes() {
            Object obj = this.defaultValue_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.defaultValue_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
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
        public e2<Environment> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int computeStringSize = GeneratedMessageV3.isStringEmpty(this.name_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.name_);
            if (!GeneratedMessageV3.isStringEmpty(this.defaultValue_)) {
                computeStringSize += GeneratedMessageV3.computeStringSize(2, this.defaultValue_);
            }
            int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
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
            int hashCode = ((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode()) * 37) + 2) * 53) + getDefaultValue().hashCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode;
            return hashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v2.b.f50516f.d(Environment.class, b.class);
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
            return new Environment();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (!GeneratedMessageV3.isStringEmpty(this.name_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.name_);
            }
            if (!GeneratedMessageV3.isStringEmpty(this.defaultValue_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 2, this.defaultValue_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ Environment(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(Environment environment) {
            return DEFAULT_INSTANCE.toBuilder().g0(environment);
        }

        public static Environment parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private Environment(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Environment parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Environment) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static Environment parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public Environment getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
        }

        public static Environment parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private Environment() {
            this.memoizedIsInitialized = (byte) -1;
            this.name_ = "";
            this.defaultValue_ = "";
        }

        public static Environment parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static Environment parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static Environment parseFrom(InputStream inputStream) throws IOException {
            return (Environment) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private Environment(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                    this.name_ = pVar.K();
                                } else if (L != 18) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    this.defaultValue_ = pVar.K();
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

        public static Environment parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Environment) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static Environment parseFrom(p pVar) throws IOException {
            return (Environment) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static Environment parseFrom(p pVar, f0 f0Var) throws IOException {
            return (Environment) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes6.dex */
    public static final class Header extends GeneratedMessageV3 implements e {
        public static final int DEFAULT_VALUE_FIELD_NUMBER = 2;
        public static final int NAME_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private volatile Object defaultValue_;
        private byte memoizedIsInitialized;
        private volatile Object name_;
        private static final Header DEFAULT_INSTANCE = new Header();
        private static final e2<Header> PARSER = new a();

        /* loaded from: classes6.dex */
        class a extends com.google.protobuf.c<Header> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public Header m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new Header(pVar, f0Var, null);
            }
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements e {

            /* renamed from: e  reason: collision with root package name */
            private Object f50495e;

            /* renamed from: f  reason: collision with root package name */
            private Object f50496f;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v2.b.f50518h.d(Header.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public Header build() {
                Header I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public Header I() {
                Header header = new Header(this, (a) null);
                header.name_ = this.f50495e;
                header.defaultValue_ = this.f50496f;
                Q();
                return header;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public Header getDefaultInstanceForType() {
                return Header.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: d0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v2.CustomTag.Header.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v2.CustomTag.Header.access$2700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v2.CustomTag$Header r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v2.CustomTag.Header) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v2.CustomTag$Header r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v2.CustomTag.Header) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v2.CustomTag.Header.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v2.CustomTag$Header$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof Header) {
                    return g0((Header) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b g0(Header header) {
                if (header == Header.getDefaultInstance()) {
                    return this;
                }
                if (!header.getName().isEmpty()) {
                    this.f50495e = header.name_;
                    R();
                }
                if (!header.getDefaultValue().isEmpty()) {
                    this.f50496f = header.defaultValue_;
                    R();
                }
                z(((GeneratedMessageV3) header).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v2.b.f50517g;
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
                this.f50495e = "";
                this.f50496f = "";
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f50495e = "";
                this.f50496f = "";
                b0();
            }
        }

        /* synthetic */ Header(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static Header getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v2.b.f50517g;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Header parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Header) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Header parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<Header> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Header)) {
                return super.equals(obj);
            }
            Header header = (Header) obj;
            return getName().equals(header.getName()) && getDefaultValue().equals(header.getDefaultValue()) && this.unknownFields.equals(header.unknownFields);
        }

        public String getDefaultValue() {
            Object obj = this.defaultValue_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.defaultValue_ = stringUtf8;
            return stringUtf8;
        }

        public ByteString getDefaultValueBytes() {
            Object obj = this.defaultValue_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.defaultValue_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
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
        public e2<Header> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int computeStringSize = GeneratedMessageV3.isStringEmpty(this.name_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.name_);
            if (!GeneratedMessageV3.isStringEmpty(this.defaultValue_)) {
                computeStringSize += GeneratedMessageV3.computeStringSize(2, this.defaultValue_);
            }
            int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
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
            int hashCode = ((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode()) * 37) + 2) * 53) + getDefaultValue().hashCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode;
            return hashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v2.b.f50518h.d(Header.class, b.class);
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
            return new Header();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (!GeneratedMessageV3.isStringEmpty(this.name_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.name_);
            }
            if (!GeneratedMessageV3.isStringEmpty(this.defaultValue_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 2, this.defaultValue_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ Header(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(Header header) {
            return DEFAULT_INSTANCE.toBuilder().g0(header);
        }

        public static Header parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private Header(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Header parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Header) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static Header parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public Header getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
        }

        public static Header parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private Header() {
            this.memoizedIsInitialized = (byte) -1;
            this.name_ = "";
            this.defaultValue_ = "";
        }

        public static Header parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static Header parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static Header parseFrom(InputStream inputStream) throws IOException {
            return (Header) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private Header(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                    this.name_ = pVar.K();
                                } else if (L != 18) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    this.defaultValue_ = pVar.K();
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

        public static Header parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Header) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static Header parseFrom(p pVar) throws IOException {
            return (Header) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static Header parseFrom(p pVar, f0 f0Var) throws IOException {
            return (Header) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes6.dex */
    public static final class Literal extends GeneratedMessageV3 implements f {
        private static final Literal DEFAULT_INSTANCE = new Literal();
        private static final e2<Literal> PARSER = new a();
        public static final int VALUE_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private volatile Object value_;

        /* loaded from: classes6.dex */
        class a extends com.google.protobuf.c<Literal> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public Literal m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new Literal(pVar, f0Var, null);
            }
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements f {

            /* renamed from: e  reason: collision with root package name */
            private Object f50497e;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v2.b.f50514d.d(Literal.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public Literal build() {
                Literal I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public Literal I() {
                Literal literal = new Literal(this, (a) null);
                literal.value_ = this.f50497e;
                Q();
                return literal;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public Literal getDefaultInstanceForType() {
                return Literal.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: d0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v2.CustomTag.Literal.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v2.CustomTag.Literal.access$600()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v2.CustomTag$Literal r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v2.CustomTag.Literal) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v2.CustomTag$Literal r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v2.CustomTag.Literal) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v2.CustomTag.Literal.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v2.CustomTag$Literal$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof Literal) {
                    return g0((Literal) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b g0(Literal literal) {
                if (literal == Literal.getDefaultInstance()) {
                    return this;
                }
                if (!literal.getValue().isEmpty()) {
                    this.f50497e = literal.value_;
                    R();
                }
                z(((GeneratedMessageV3) literal).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v2.b.f50513c;
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
                this.f50497e = "";
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f50497e = "";
                b0();
            }
        }

        /* synthetic */ Literal(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static Literal getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v2.b.f50513c;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Literal parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Literal) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Literal parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<Literal> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Literal)) {
                return super.equals(obj);
            }
            Literal literal = (Literal) obj;
            return getValue().equals(literal.getValue()) && this.unknownFields.equals(literal.unknownFields);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<Literal> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int computeStringSize = (GeneratedMessageV3.isStringEmpty(this.value_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.value_)) + this.unknownFields.getSerializedSize();
            this.memoizedSize = computeStringSize;
            return computeStringSize;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public String getValue() {
            Object obj = this.value_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.value_ = stringUtf8;
            return stringUtf8;
        }

        public ByteString getValueBytes() {
            Object obj = this.value_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.value_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = ((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getValue().hashCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode;
            return hashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v2.b.f50514d.d(Literal.class, b.class);
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
            return new Literal();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (!GeneratedMessageV3.isStringEmpty(this.value_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.value_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ Literal(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(Literal literal) {
            return DEFAULT_INSTANCE.toBuilder().g0(literal);
        }

        public static Literal parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private Literal(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Literal parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Literal) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static Literal parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public Literal getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
        }

        public static Literal parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private Literal() {
            this.memoizedIsInitialized = (byte) -1;
            this.value_ = "";
        }

        public static Literal parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static Literal parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static Literal parseFrom(InputStream inputStream) throws IOException {
            return (Literal) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private Literal(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                this.value_ = pVar.K();
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

        public static Literal parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Literal) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static Literal parseFrom(p pVar) throws IOException {
            return (Literal) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static Literal parseFrom(p pVar, f0 f0Var) throws IOException {
            return (Literal) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes6.dex */
    public static final class Metadata extends GeneratedMessageV3 implements g {
        public static final int DEFAULT_VALUE_FIELD_NUMBER = 3;
        public static final int KIND_FIELD_NUMBER = 1;
        public static final int METADATA_KEY_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private volatile Object defaultValue_;
        private MetadataKind kind_;
        private byte memoizedIsInitialized;
        private MetadataKey metadataKey_;
        private static final Metadata DEFAULT_INSTANCE = new Metadata();
        private static final e2<Metadata> PARSER = new a();

        /* loaded from: classes6.dex */
        class a extends com.google.protobuf.c<Metadata> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public Metadata m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new Metadata(pVar, f0Var, null);
            }
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements g {

            /* renamed from: e  reason: collision with root package name */
            private MetadataKind f50498e;

            /* renamed from: f  reason: collision with root package name */
            private q2<MetadataKind, MetadataKind.c, io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v2.b> f50499f;

            /* renamed from: g  reason: collision with root package name */
            private MetadataKey f50500g;

            /* renamed from: h  reason: collision with root package name */
            private q2<MetadataKey, MetadataKey.c, io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v2.a> f50501h;

            /* renamed from: i  reason: collision with root package name */
            private Object f50502i;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v2.b.f50520j.d(Metadata.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public Metadata build() {
                Metadata I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public Metadata I() {
                Metadata metadata = new Metadata(this, (a) null);
                q2<MetadataKind, MetadataKind.c, io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v2.b> q2Var = this.f50499f;
                if (q2Var == null) {
                    metadata.kind_ = this.f50498e;
                } else {
                    metadata.kind_ = q2Var.b();
                }
                q2<MetadataKey, MetadataKey.c, io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v2.a> q2Var2 = this.f50501h;
                if (q2Var2 == null) {
                    metadata.metadataKey_ = this.f50500g;
                } else {
                    metadata.metadataKey_ = q2Var2.b();
                }
                metadata.defaultValue_ = this.f50502i;
                Q();
                return metadata;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public Metadata getDefaultInstanceForType() {
                return Metadata.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: d0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v2.CustomTag.Metadata.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v2.CustomTag.Metadata.access$3900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v2.CustomTag$Metadata r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v2.CustomTag.Metadata) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v2.CustomTag$Metadata r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v2.CustomTag.Metadata) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v2.CustomTag.Metadata.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v2.CustomTag$Metadata$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof Metadata) {
                    return g0((Metadata) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b g0(Metadata metadata) {
                if (metadata == Metadata.getDefaultInstance()) {
                    return this;
                }
                if (metadata.hasKind()) {
                    h0(metadata.getKind());
                }
                if (metadata.hasMetadataKey()) {
                    i0(metadata.getMetadataKey());
                }
                if (!metadata.getDefaultValue().isEmpty()) {
                    this.f50502i = metadata.defaultValue_;
                    R();
                }
                z(((GeneratedMessageV3) metadata).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v2.b.f50519i;
            }

            public b h0(MetadataKind metadataKind) {
                q2<MetadataKind, MetadataKind.c, io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v2.b> q2Var = this.f50499f;
                if (q2Var == null) {
                    MetadataKind metadataKind2 = this.f50498e;
                    if (metadataKind2 != null) {
                        this.f50498e = MetadataKind.newBuilder(metadataKind2).h0(metadataKind).I();
                    } else {
                        this.f50498e = metadataKind;
                    }
                    R();
                } else {
                    q2Var.e(metadataKind);
                }
                return this;
            }

            public b i0(MetadataKey metadataKey) {
                q2<MetadataKey, MetadataKey.c, io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v2.a> q2Var = this.f50501h;
                if (q2Var == null) {
                    MetadataKey metadataKey2 = this.f50500g;
                    if (metadataKey2 != null) {
                        this.f50500g = MetadataKey.newBuilder(metadataKey2).i0(metadataKey).I();
                    } else {
                        this.f50500g = metadataKey;
                    }
                    R();
                } else {
                    q2Var.e(metadataKey);
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
                this.f50502i = "";
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f50502i = "";
                b0();
            }
        }

        /* synthetic */ Metadata(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static Metadata getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v2.b.f50519i;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Metadata parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Metadata) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Metadata parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<Metadata> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Metadata)) {
                return super.equals(obj);
            }
            Metadata metadata = (Metadata) obj;
            if (hasKind() != metadata.hasKind()) {
                return false;
            }
            if ((!hasKind() || getKind().equals(metadata.getKind())) && hasMetadataKey() == metadata.hasMetadataKey()) {
                return (!hasMetadataKey() || getMetadataKey().equals(metadata.getMetadataKey())) && getDefaultValue().equals(metadata.getDefaultValue()) && this.unknownFields.equals(metadata.unknownFields);
            }
            return false;
        }

        public String getDefaultValue() {
            Object obj = this.defaultValue_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.defaultValue_ = stringUtf8;
            return stringUtf8;
        }

        public ByteString getDefaultValueBytes() {
            Object obj = this.defaultValue_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.defaultValue_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        public MetadataKind getKind() {
            MetadataKind metadataKind = this.kind_;
            return metadataKind == null ? MetadataKind.getDefaultInstance() : metadataKind;
        }

        public io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v2.b getKindOrBuilder() {
            return getKind();
        }

        public MetadataKey getMetadataKey() {
            MetadataKey metadataKey = this.metadataKey_;
            return metadataKey == null ? MetadataKey.getDefaultInstance() : metadataKey;
        }

        public io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v2.a getMetadataKeyOrBuilder() {
            return getMetadataKey();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<Metadata> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int G = this.kind_ != null ? 0 + CodedOutputStream.G(1, getKind()) : 0;
            if (this.metadataKey_ != null) {
                G += CodedOutputStream.G(2, getMetadataKey());
            }
            if (!GeneratedMessageV3.isStringEmpty(this.defaultValue_)) {
                G += GeneratedMessageV3.computeStringSize(3, this.defaultValue_);
            }
            int serializedSize = G + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasKind() {
            return this.kind_ != null;
        }

        public boolean hasMetadataKey() {
            return this.metadataKey_ != null;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (hasKind()) {
                hashCode = (((hashCode * 37) + 1) * 53) + getKind().hashCode();
            }
            if (hasMetadataKey()) {
                hashCode = (((hashCode * 37) + 2) * 53) + getMetadataKey().hashCode();
            }
            int hashCode2 = (((((hashCode * 37) + 3) * 53) + getDefaultValue().hashCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v2.b.f50520j.d(Metadata.class, b.class);
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
            return new Metadata();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (this.kind_ != null) {
                codedOutputStream.L0(1, getKind());
            }
            if (this.metadataKey_ != null) {
                codedOutputStream.L0(2, getMetadataKey());
            }
            if (!GeneratedMessageV3.isStringEmpty(this.defaultValue_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 3, this.defaultValue_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ Metadata(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(Metadata metadata) {
            return DEFAULT_INSTANCE.toBuilder().g0(metadata);
        }

        public static Metadata parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private Metadata(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Metadata parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Metadata) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static Metadata parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public Metadata getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
        }

        public static Metadata parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private Metadata() {
            this.memoizedIsInitialized = (byte) -1;
            this.defaultValue_ = "";
        }

        public static Metadata parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static Metadata parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static Metadata parseFrom(InputStream inputStream) throws IOException {
            return (Metadata) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private Metadata(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                    MetadataKind metadataKind = this.kind_;
                                    MetadataKind.c builder = metadataKind != null ? metadataKind.toBuilder() : null;
                                    MetadataKind metadataKind2 = (MetadataKind) pVar.B(MetadataKind.parser(), f0Var);
                                    this.kind_ = metadataKind2;
                                    if (builder != null) {
                                        builder.h0(metadataKind2);
                                        this.kind_ = builder.I();
                                    }
                                } else if (L == 18) {
                                    MetadataKey metadataKey = this.metadataKey_;
                                    MetadataKey.c builder2 = metadataKey != null ? metadataKey.toBuilder() : null;
                                    MetadataKey metadataKey2 = (MetadataKey) pVar.B(MetadataKey.parser(), f0Var);
                                    this.metadataKey_ = metadataKey2;
                                    if (builder2 != null) {
                                        builder2.i0(metadataKey2);
                                        this.metadataKey_ = builder2.I();
                                    }
                                } else if (L != 26) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    this.defaultValue_ = pVar.K();
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

        public static Metadata parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Metadata) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static Metadata parseFrom(p pVar) throws IOException {
            return (Metadata) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static Metadata parseFrom(p pVar, f0 f0Var) throws IOException {
            return (Metadata) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes6.dex */
    public enum TypeCase implements u0.c {
        LITERAL(2),
        ENVIRONMENT(3),
        REQUEST_HEADER(4),
        METADATA(5),
        TYPE_NOT_SET(0);
        
        private final int value;

        TypeCase(int i9) {
            this.value = i9;
        }

        public static TypeCase forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 2) {
                    if (i9 != 3) {
                        if (i9 != 4) {
                            if (i9 != 5) {
                                return null;
                            }
                            return METADATA;
                        }
                        return REQUEST_HEADER;
                    }
                    return ENVIRONMENT;
                }
                return LITERAL;
            }
            return TYPE_NOT_SET;
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static TypeCase valueOf(int i9) {
            return forNumber(i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<CustomTag> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public CustomTag m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new CustomTag(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f50503a;

        static {
            int[] iArr = new int[TypeCase.values().length];
            f50503a = iArr;
            try {
                iArr[TypeCase.LITERAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f50503a[TypeCase.ENVIRONMENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f50503a[TypeCase.REQUEST_HEADER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f50503a[TypeCase.METADATA.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f50503a[TypeCase.TYPE_NOT_SET.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v2.a {

        /* renamed from: e  reason: collision with root package name */
        private int f50504e;

        /* renamed from: f  reason: collision with root package name */
        private Object f50505f;

        /* renamed from: g  reason: collision with root package name */
        private Object f50506g;

        /* renamed from: h  reason: collision with root package name */
        private q2<Literal, Literal.b, f> f50507h;

        /* renamed from: i  reason: collision with root package name */
        private q2<Environment, Environment.b, d> f50508i;

        /* renamed from: j  reason: collision with root package name */
        private q2<Header, Header.b, e> f50509j;

        /* renamed from: k  reason: collision with root package name */
        private q2<Metadata, Metadata.b, g> f50510k;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v2.b.f50512b.d(CustomTag.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public CustomTag build() {
            CustomTag I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public CustomTag I() {
            CustomTag customTag = new CustomTag(this, (a) null);
            customTag.tag_ = this.f50506g;
            if (this.f50504e == 2) {
                q2<Literal, Literal.b, f> q2Var = this.f50507h;
                if (q2Var == null) {
                    customTag.type_ = this.f50505f;
                } else {
                    customTag.type_ = q2Var.b();
                }
            }
            if (this.f50504e == 3) {
                q2<Environment, Environment.b, d> q2Var2 = this.f50508i;
                if (q2Var2 == null) {
                    customTag.type_ = this.f50505f;
                } else {
                    customTag.type_ = q2Var2.b();
                }
            }
            if (this.f50504e == 4) {
                q2<Header, Header.b, e> q2Var3 = this.f50509j;
                if (q2Var3 == null) {
                    customTag.type_ = this.f50505f;
                } else {
                    customTag.type_ = q2Var3.b();
                }
            }
            if (this.f50504e == 5) {
                q2<Metadata, Metadata.b, g> q2Var4 = this.f50510k;
                if (q2Var4 == null) {
                    customTag.type_ = this.f50505f;
                } else {
                    customTag.type_ = q2Var4.b();
                }
            }
            customTag.typeCase_ = this.f50504e;
            Q();
            return customTag;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public CustomTag getDefaultInstanceForType() {
            return CustomTag.getDefaultInstance();
        }

        public c d0(Environment environment) {
            q2<Environment, Environment.b, d> q2Var = this.f50508i;
            if (q2Var == null) {
                if (this.f50504e == 3 && this.f50505f != Environment.getDefaultInstance()) {
                    this.f50505f = Environment.newBuilder((Environment) this.f50505f).g0(environment).I();
                } else {
                    this.f50505f = environment;
                }
                R();
            } else {
                if (this.f50504e == 3) {
                    q2Var.e(environment);
                }
                this.f50508i.g(environment);
            }
            this.f50504e = 3;
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v2.CustomTag.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v2.CustomTag.access$5000()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v2.CustomTag r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v2.CustomTag) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v2.CustomTag r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v2.CustomTag) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v2.CustomTag.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v2.CustomTag$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        public c v(l1 l1Var) {
            if (l1Var instanceof CustomTag) {
                return h0((CustomTag) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v2.b.f50511a;
        }

        public c h0(CustomTag customTag) {
            if (customTag == CustomTag.getDefaultInstance()) {
                return this;
            }
            if (!customTag.getTag().isEmpty()) {
                this.f50506g = customTag.tag_;
                R();
            }
            int i9 = b.f50503a[customTag.getTypeCase().ordinal()];
            if (i9 == 1) {
                i0(customTag.getLiteral());
            } else if (i9 == 2) {
                d0(customTag.getEnvironment());
            } else if (i9 == 3) {
                k0(customTag.getRequestHeader());
            } else if (i9 == 4) {
                j0(customTag.getMetadata());
            }
            z(((GeneratedMessageV3) customTag).unknownFields);
            R();
            return this;
        }

        public c i0(Literal literal) {
            q2<Literal, Literal.b, f> q2Var = this.f50507h;
            if (q2Var == null) {
                if (this.f50504e == 2 && this.f50505f != Literal.getDefaultInstance()) {
                    this.f50505f = Literal.newBuilder((Literal) this.f50505f).g0(literal).I();
                } else {
                    this.f50505f = literal;
                }
                R();
            } else {
                if (this.f50504e == 2) {
                    q2Var.e(literal);
                }
                this.f50507h.g(literal);
            }
            this.f50504e = 2;
            return this;
        }

        public c j0(Metadata metadata) {
            q2<Metadata, Metadata.b, g> q2Var = this.f50510k;
            if (q2Var == null) {
                if (this.f50504e == 5 && this.f50505f != Metadata.getDefaultInstance()) {
                    this.f50505f = Metadata.newBuilder((Metadata) this.f50505f).g0(metadata).I();
                } else {
                    this.f50505f = metadata;
                }
                R();
            } else {
                if (this.f50504e == 5) {
                    q2Var.e(metadata);
                }
                this.f50510k.g(metadata);
            }
            this.f50504e = 5;
            return this;
        }

        public c k0(Header header) {
            q2<Header, Header.b, e> q2Var = this.f50509j;
            if (q2Var == null) {
                if (this.f50504e == 4 && this.f50505f != Header.getDefaultInstance()) {
                    this.f50505f = Header.newBuilder((Header) this.f50505f).g0(header).I();
                } else {
                    this.f50505f = header;
                }
                R();
            } else {
                if (this.f50504e == 4) {
                    q2Var.e(header);
                }
                this.f50509j.g(header);
            }
            this.f50504e = 4;
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
            this.f50504e = 0;
            this.f50506g = "";
            b0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f50504e = 0;
            this.f50506g = "";
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

    /* synthetic */ CustomTag(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static CustomTag getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v2.b.f50511a;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static CustomTag parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (CustomTag) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static CustomTag parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<CustomTag> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CustomTag)) {
            return super.equals(obj);
        }
        CustomTag customTag = (CustomTag) obj;
        if (getTag().equals(customTag.getTag()) && getTypeCase().equals(customTag.getTypeCase())) {
            int i9 = this.typeCase_;
            if (i9 != 2) {
                if (i9 != 3) {
                    if (i9 != 4) {
                        if (i9 == 5 && !getMetadata().equals(customTag.getMetadata())) {
                            return false;
                        }
                    } else if (!getRequestHeader().equals(customTag.getRequestHeader())) {
                        return false;
                    }
                } else if (!getEnvironment().equals(customTag.getEnvironment())) {
                    return false;
                }
            } else if (!getLiteral().equals(customTag.getLiteral())) {
                return false;
            }
            return this.unknownFields.equals(customTag.unknownFields);
        }
        return false;
    }

    public Environment getEnvironment() {
        if (this.typeCase_ == 3) {
            return (Environment) this.type_;
        }
        return Environment.getDefaultInstance();
    }

    public d getEnvironmentOrBuilder() {
        if (this.typeCase_ == 3) {
            return (Environment) this.type_;
        }
        return Environment.getDefaultInstance();
    }

    public Literal getLiteral() {
        if (this.typeCase_ == 2) {
            return (Literal) this.type_;
        }
        return Literal.getDefaultInstance();
    }

    public f getLiteralOrBuilder() {
        if (this.typeCase_ == 2) {
            return (Literal) this.type_;
        }
        return Literal.getDefaultInstance();
    }

    public Metadata getMetadata() {
        if (this.typeCase_ == 5) {
            return (Metadata) this.type_;
        }
        return Metadata.getDefaultInstance();
    }

    public g getMetadataOrBuilder() {
        if (this.typeCase_ == 5) {
            return (Metadata) this.type_;
        }
        return Metadata.getDefaultInstance();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<CustomTag> getParserForType() {
        return PARSER;
    }

    public Header getRequestHeader() {
        if (this.typeCase_ == 4) {
            return (Header) this.type_;
        }
        return Header.getDefaultInstance();
    }

    public e getRequestHeaderOrBuilder() {
        if (this.typeCase_ == 4) {
            return (Header) this.type_;
        }
        return Header.getDefaultInstance();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = GeneratedMessageV3.isStringEmpty(this.tag_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.tag_);
        if (this.typeCase_ == 2) {
            computeStringSize += CodedOutputStream.G(2, (Literal) this.type_);
        }
        if (this.typeCase_ == 3) {
            computeStringSize += CodedOutputStream.G(3, (Environment) this.type_);
        }
        if (this.typeCase_ == 4) {
            computeStringSize += CodedOutputStream.G(4, (Header) this.type_);
        }
        if (this.typeCase_ == 5) {
            computeStringSize += CodedOutputStream.G(5, (Metadata) this.type_);
        }
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public String getTag() {
        Object obj = this.tag_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.tag_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getTagBytes() {
        Object obj = this.tag_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.tag_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public TypeCase getTypeCase() {
        return TypeCase.forNumber(this.typeCase_);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasEnvironment() {
        return this.typeCase_ == 3;
    }

    public boolean hasLiteral() {
        return this.typeCase_ == 2;
    }

    public boolean hasMetadata() {
        return this.typeCase_ == 5;
    }

    public boolean hasRequestHeader() {
        return this.typeCase_ == 4;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9;
        int hashCode;
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int hashCode2 = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getTag().hashCode();
        int i11 = this.typeCase_;
        if (i11 == 2) {
            i9 = ((hashCode2 * 37) + 2) * 53;
            hashCode = getLiteral().hashCode();
        } else if (i11 == 3) {
            i9 = ((hashCode2 * 37) + 3) * 53;
            hashCode = getEnvironment().hashCode();
        } else if (i11 == 4) {
            i9 = ((hashCode2 * 37) + 4) * 53;
            hashCode = getRequestHeader().hashCode();
        } else {
            if (i11 == 5) {
                i9 = ((hashCode2 * 37) + 5) * 53;
                hashCode = getMetadata().hashCode();
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
        return io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v2.b.f50512b.d(CustomTag.class, c.class);
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
        return new CustomTag();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.tag_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.tag_);
        }
        if (this.typeCase_ == 2) {
            codedOutputStream.L0(2, (Literal) this.type_);
        }
        if (this.typeCase_ == 3) {
            codedOutputStream.L0(3, (Environment) this.type_);
        }
        if (this.typeCase_ == 4) {
            codedOutputStream.L0(4, (Header) this.type_);
        }
        if (this.typeCase_ == 5) {
            codedOutputStream.L0(5, (Metadata) this.type_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ CustomTag(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(CustomTag customTag) {
        return DEFAULT_INSTANCE.toBuilder().h0(customTag);
    }

    public static CustomTag parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private CustomTag(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.typeCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static CustomTag parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (CustomTag) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static CustomTag parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public CustomTag getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).h0(this);
    }

    public static CustomTag parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    public static CustomTag parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    private CustomTag() {
        this.typeCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
        this.tag_ = "";
    }

    public static CustomTag parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static CustomTag parseFrom(InputStream inputStream) throws IOException {
        return (CustomTag) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static CustomTag parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (CustomTag) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    private CustomTag(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                Literal.b builder = this.typeCase_ == 2 ? ((Literal) this.type_).toBuilder() : null;
                                o1 B = pVar.B(Literal.parser(), f0Var);
                                this.type_ = B;
                                if (builder != null) {
                                    builder.g0((Literal) B);
                                    this.type_ = builder.I();
                                }
                                this.typeCase_ = 2;
                            } else if (L == 26) {
                                Environment.b builder2 = this.typeCase_ == 3 ? ((Environment) this.type_).toBuilder() : null;
                                o1 B2 = pVar.B(Environment.parser(), f0Var);
                                this.type_ = B2;
                                if (builder2 != null) {
                                    builder2.g0((Environment) B2);
                                    this.type_ = builder2.I();
                                }
                                this.typeCase_ = 3;
                            } else if (L == 34) {
                                Header.b builder3 = this.typeCase_ == 4 ? ((Header) this.type_).toBuilder() : null;
                                o1 B3 = pVar.B(Header.parser(), f0Var);
                                this.type_ = B3;
                                if (builder3 != null) {
                                    builder3.g0((Header) B3);
                                    this.type_ = builder3.I();
                                }
                                this.typeCase_ = 4;
                            } else if (L != 42) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                Metadata.b builder4 = this.typeCase_ == 5 ? ((Metadata) this.type_).toBuilder() : null;
                                o1 B4 = pVar.B(Metadata.parser(), f0Var);
                                this.type_ = B4;
                                if (builder4 != null) {
                                    builder4.g0((Metadata) B4);
                                    this.type_ = builder4.I();
                                }
                                this.typeCase_ = 5;
                            }
                        } else {
                            this.tag_ = pVar.K();
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

    public static CustomTag parseFrom(p pVar) throws IOException {
        return (CustomTag) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static CustomTag parseFrom(p pVar, f0 f0Var) throws IOException {
        return (CustomTag) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
