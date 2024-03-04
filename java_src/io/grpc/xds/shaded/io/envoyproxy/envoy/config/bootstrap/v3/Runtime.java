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
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import com.google.protobuf.u2;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class Runtime extends GeneratedMessageV3 implements r1 {
    public static final int BASE_FIELD_NUMBER = 4;
    public static final int OVERRIDE_SUBDIRECTORY_FIELD_NUMBER = 3;
    public static final int SUBDIRECTORY_FIELD_NUMBER = 2;
    public static final int SYMLINK_ROOT_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private Struct base_;
    private byte memoizedIsInitialized;
    private volatile Object overrideSubdirectory_;
    private volatile Object subdirectory_;
    private volatile Object symlinkRoot_;
    private static final Runtime DEFAULT_INSTANCE = new Runtime();
    private static final e2<Runtime> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<Runtime> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public Runtime m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new Runtime(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private Object f47483e;

        /* renamed from: f  reason: collision with root package name */
        private Object f47484f;

        /* renamed from: g  reason: collision with root package name */
        private Object f47485g;

        /* renamed from: h  reason: collision with root package name */
        private Struct f47486h;

        /* renamed from: i  reason: collision with root package name */
        private q2<Struct, Struct.b, u2> f47487i;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return c.f47547x.d(Runtime.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public Runtime build() {
            Runtime I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public Runtime I() {
            Runtime runtime = new Runtime(this, (a) null);
            runtime.symlinkRoot_ = this.f47483e;
            runtime.subdirectory_ = this.f47484f;
            runtime.overrideSubdirectory_ = this.f47485g;
            q2<Struct, Struct.b, u2> q2Var = this.f47487i;
            if (q2Var == null) {
                runtime.base_ = this.f47486h;
            } else {
                runtime.base_ = q2Var.b();
            }
            Q();
            return runtime;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public Runtime getDefaultInstanceForType() {
            return Runtime.getDefaultInstance();
        }

        public b d0(Struct struct) {
            q2<Struct, Struct.b, u2> q2Var = this.f47487i;
            if (q2Var == null) {
                Struct struct2 = this.f47486h;
                if (struct2 != null) {
                    this.f47486h = Struct.newBuilder(struct2).i0(struct).I();
                } else {
                    this.f47486h = struct;
                }
                R();
            } else {
                q2Var.e(struct);
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
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.Runtime.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.Runtime.access$900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.Runtime r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.Runtime) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.Runtime r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.Runtime) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.Runtime.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.Runtime$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof Runtime) {
                return h0((Runtime) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return c.f47546w;
        }

        public b h0(Runtime runtime) {
            if (runtime == Runtime.getDefaultInstance()) {
                return this;
            }
            if (!runtime.getSymlinkRoot().isEmpty()) {
                this.f47483e = runtime.symlinkRoot_;
                R();
            }
            if (!runtime.getSubdirectory().isEmpty()) {
                this.f47484f = runtime.subdirectory_;
                R();
            }
            if (!runtime.getOverrideSubdirectory().isEmpty()) {
                this.f47485g = runtime.overrideSubdirectory_;
                R();
            }
            if (runtime.hasBase()) {
                d0(runtime.getBase());
            }
            z(((GeneratedMessageV3) runtime).unknownFields);
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
            this.f47483e = "";
            this.f47484f = "";
            this.f47485g = "";
            b0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f47483e = "";
            this.f47484f = "";
            this.f47485g = "";
            b0();
        }
    }

    /* synthetic */ Runtime(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static Runtime getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return c.f47546w;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Runtime parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Runtime) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Runtime parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<Runtime> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Runtime)) {
            return super.equals(obj);
        }
        Runtime runtime = (Runtime) obj;
        if (getSymlinkRoot().equals(runtime.getSymlinkRoot()) && getSubdirectory().equals(runtime.getSubdirectory()) && getOverrideSubdirectory().equals(runtime.getOverrideSubdirectory()) && hasBase() == runtime.hasBase()) {
            return (!hasBase() || getBase().equals(runtime.getBase())) && this.unknownFields.equals(runtime.unknownFields);
        }
        return false;
    }

    public Struct getBase() {
        Struct struct = this.base_;
        return struct == null ? Struct.getDefaultInstance() : struct;
    }

    public u2 getBaseOrBuilder() {
        return getBase();
    }

    public String getOverrideSubdirectory() {
        Object obj = this.overrideSubdirectory_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.overrideSubdirectory_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getOverrideSubdirectoryBytes() {
        Object obj = this.overrideSubdirectory_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.overrideSubdirectory_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<Runtime> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = GeneratedMessageV3.isStringEmpty(this.symlinkRoot_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.symlinkRoot_);
        if (!GeneratedMessageV3.isStringEmpty(this.subdirectory_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(2, this.subdirectory_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.overrideSubdirectory_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(3, this.overrideSubdirectory_);
        }
        if (this.base_ != null) {
            computeStringSize += CodedOutputStream.G(4, getBase());
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

    public boolean hasBase() {
        return this.base_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = ((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getSymlinkRoot().hashCode()) * 37) + 2) * 53) + getSubdirectory().hashCode()) * 37) + 3) * 53) + getOverrideSubdirectory().hashCode();
        if (hasBase()) {
            hashCode = (((hashCode * 37) + 4) * 53) + getBase().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return c.f47547x.d(Runtime.class, b.class);
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
        return new Runtime();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.symlinkRoot_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.symlinkRoot_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.subdirectory_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.subdirectory_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.overrideSubdirectory_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 3, this.overrideSubdirectory_);
        }
        if (this.base_ != null) {
            codedOutputStream.L0(4, getBase());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ Runtime(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(Runtime runtime) {
        return DEFAULT_INSTANCE.toBuilder().h0(runtime);
    }

    public static Runtime parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private Runtime(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Runtime parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Runtime) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static Runtime parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public Runtime getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).h0(this);
    }

    public static Runtime parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private Runtime() {
        this.memoizedIsInitialized = (byte) -1;
        this.symlinkRoot_ = "";
        this.subdirectory_ = "";
        this.overrideSubdirectory_ = "";
    }

    public static Runtime parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static Runtime parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static Runtime parseFrom(InputStream inputStream) throws IOException {
        return (Runtime) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static Runtime parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Runtime) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    private Runtime(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                this.symlinkRoot_ = pVar.K();
                            } else if (L == 18) {
                                this.subdirectory_ = pVar.K();
                            } else if (L == 26) {
                                this.overrideSubdirectory_ = pVar.K();
                            } else if (L != 34) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                Struct struct = this.base_;
                                Struct.b builder = struct != null ? struct.toBuilder() : null;
                                Struct struct2 = (Struct) pVar.B(Struct.parser(), f0Var);
                                this.base_ = struct2;
                                if (builder != null) {
                                    builder.i0(struct2);
                                    this.base_ = builder.I();
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

    public static Runtime parseFrom(p pVar) throws IOException {
        return (Runtime) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static Runtime parseFrom(p pVar, f0 f0Var) throws IOException {
        return (Runtime) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
