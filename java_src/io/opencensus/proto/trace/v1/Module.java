package io.opencensus.proto.trace.v1;

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
import io.opencensus.proto.trace.v1.TruncatableString;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes7.dex */
public final class Module extends GeneratedMessageV3 implements io.opencensus.proto.trace.v1.b {
    public static final int BUILD_ID_FIELD_NUMBER = 2;
    public static final int MODULE_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private TruncatableString buildId_;
    private byte memoizedIsInitialized;
    private TruncatableString module_;
    private static final Module DEFAULT_INSTANCE = new Module();
    private static final e2<Module> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static class a extends com.google.protobuf.c<Module> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public Module m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new Module(pVar, f0Var, null);
        }
    }

    /* loaded from: classes7.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements io.opencensus.proto.trace.v1.b {

        /* renamed from: e  reason: collision with root package name */
        private TruncatableString f51123e;

        /* renamed from: f  reason: collision with root package name */
        private q2<TruncatableString, TruncatableString.b, k> f51124f;

        /* renamed from: g  reason: collision with root package name */
        private TruncatableString f51125g;

        /* renamed from: h  reason: collision with root package name */
        private q2<TruncatableString, TruncatableString.b, k> f51126h;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return j.H.d(Module.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public Module build() {
            Module I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public Module I() {
            Module module = new Module(this, (a) null);
            q2<TruncatableString, TruncatableString.b, k> q2Var = this.f51124f;
            if (q2Var == null) {
                module.module_ = this.f51123e;
            } else {
                module.module_ = q2Var.b();
            }
            q2<TruncatableString, TruncatableString.b, k> q2Var2 = this.f51126h;
            if (q2Var2 == null) {
                module.buildId_ = this.f51125g;
            } else {
                module.buildId_ = q2Var2.b();
            }
            Q();
            return module;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public Module getDefaultInstanceForType() {
            return Module.getDefaultInstance();
        }

        public b d0(TruncatableString truncatableString) {
            q2<TruncatableString, TruncatableString.b, k> q2Var = this.f51126h;
            if (q2Var == null) {
                TruncatableString truncatableString2 = this.f51125g;
                if (truncatableString2 != null) {
                    this.f51125g = TruncatableString.newBuilder(truncatableString2).g0(truncatableString).I();
                } else {
                    this.f51125g = truncatableString;
                }
                R();
            } else {
                q2Var.e(truncatableString);
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
        public io.opencensus.proto.trace.v1.Module.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.opencensus.proto.trace.v1.Module.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.opencensus.proto.trace.v1.Module r3 = (io.opencensus.proto.trace.v1.Module) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.opencensus.proto.trace.v1.Module r4 = (io.opencensus.proto.trace.v1.Module) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.opencensus.proto.trace.v1.Module.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.opencensus.proto.trace.v1.Module$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof Module) {
                return h0((Module) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return j.G;
        }

        public b h0(Module module) {
            if (module == Module.getDefaultInstance()) {
                return this;
            }
            if (module.hasModule()) {
                i0(module.getModule());
            }
            if (module.hasBuildId()) {
                d0(module.getBuildId());
            }
            z(((GeneratedMessageV3) module).unknownFields);
            R();
            return this;
        }

        public b i0(TruncatableString truncatableString) {
            q2<TruncatableString, TruncatableString.b, k> q2Var = this.f51124f;
            if (q2Var == null) {
                TruncatableString truncatableString2 = this.f51123e;
                if (truncatableString2 != null) {
                    this.f51123e = TruncatableString.newBuilder(truncatableString2).g0(truncatableString).I();
                } else {
                    this.f51123e = truncatableString;
                }
                R();
            } else {
                q2Var.e(truncatableString);
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
            return (b) super.V(h3Var);
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            this.f51123e = null;
            this.f51125g = null;
            b0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f51123e = null;
            this.f51125g = null;
            b0();
        }
    }

    /* synthetic */ Module(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static Module getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return j.G;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Module parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Module) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Module parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<Module> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Module)) {
            return super.equals(obj);
        }
        Module module = (Module) obj;
        boolean z10 = hasModule() == module.hasModule();
        if (hasModule()) {
            z10 = z10 && getModule().equals(module.getModule());
        }
        boolean z11 = z10 && hasBuildId() == module.hasBuildId();
        if (hasBuildId()) {
            z11 = z11 && getBuildId().equals(module.getBuildId());
        }
        return z11 && this.unknownFields.equals(module.unknownFields);
    }

    public TruncatableString getBuildId() {
        TruncatableString truncatableString = this.buildId_;
        return truncatableString == null ? TruncatableString.getDefaultInstance() : truncatableString;
    }

    public k getBuildIdOrBuilder() {
        return getBuildId();
    }

    public TruncatableString getModule() {
        TruncatableString truncatableString = this.module_;
        return truncatableString == null ? TruncatableString.getDefaultInstance() : truncatableString;
    }

    public k getModuleOrBuilder() {
        return getModule();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<Module> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.module_ != null ? 0 + CodedOutputStream.G(1, getModule()) : 0;
        if (this.buildId_ != null) {
            G += CodedOutputStream.G(2, getBuildId());
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasBuildId() {
        return this.buildId_ != null;
    }

    public boolean hasModule() {
        return this.module_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasModule()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getModule().hashCode();
        }
        if (hasBuildId()) {
            hashCode = (((hashCode * 37) + 2) * 53) + getBuildId().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return j.H.d(Module.class, b.class);
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

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.module_ != null) {
            codedOutputStream.L0(1, getModule());
        }
        if (this.buildId_ != null) {
            codedOutputStream.L0(2, getBuildId());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ Module(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(Module module) {
        return DEFAULT_INSTANCE.toBuilder().h0(module);
    }

    public static Module parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private Module(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Module parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Module) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static Module parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public Module getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).h0(this);
    }

    public static Module parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private Module() {
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Module parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static Module parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    private Module(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
        this();
        TruncatableString.b builder;
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    int L = pVar.L();
                    if (L != 0) {
                        if (L == 10) {
                            TruncatableString truncatableString = this.module_;
                            builder = truncatableString != null ? truncatableString.toBuilder() : null;
                            TruncatableString truncatableString2 = (TruncatableString) pVar.B(TruncatableString.parser(), f0Var);
                            this.module_ = truncatableString2;
                            if (builder != null) {
                                builder.g0(truncatableString2);
                                this.module_ = builder.I();
                            }
                        } else if (L != 18) {
                            if (!parseUnknownFieldProto3(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            TruncatableString truncatableString3 = this.buildId_;
                            builder = truncatableString3 != null ? truncatableString3.toBuilder() : null;
                            TruncatableString truncatableString4 = (TruncatableString) pVar.B(TruncatableString.parser(), f0Var);
                            this.buildId_ = truncatableString4;
                            if (builder != null) {
                                builder.g0(truncatableString4);
                                this.buildId_ = builder.I();
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

    public static Module parseFrom(InputStream inputStream) throws IOException {
        return (Module) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static Module parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Module) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static Module parseFrom(p pVar) throws IOException {
        return (Module) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static Module parseFrom(p pVar, f0 f0Var) throws IOException {
        return (Module) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
