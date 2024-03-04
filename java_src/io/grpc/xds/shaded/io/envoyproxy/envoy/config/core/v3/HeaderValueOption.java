package io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3;

import com.google.protobuf.BoolValue;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.h3;
import com.google.protobuf.q2;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HeaderValue;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class HeaderValueOption extends GeneratedMessageV3 implements y {
    public static final int APPEND_FIELD_NUMBER = 2;
    public static final int HEADER_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private BoolValue append_;
    private HeaderValue header_;
    private byte memoizedIsInitialized;
    private static final HeaderValueOption DEFAULT_INSTANCE = new HeaderValueOption();
    private static final e2<HeaderValueOption> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<HeaderValueOption> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public HeaderValueOption m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return new HeaderValueOption(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements y {

        /* renamed from: e  reason: collision with root package name */
        private HeaderValue f47928e;

        /* renamed from: f  reason: collision with root package name */
        private q2<HeaderValue, HeaderValue.b, z> f47929f;

        /* renamed from: g  reason: collision with root package name */
        private BoolValue f47930g;

        /* renamed from: h  reason: collision with root package name */
        private q2<BoolValue, BoolValue.b, com.google.protobuf.l> f47931h;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return g.B.d(HeaderValueOption.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public HeaderValueOption build() {
            HeaderValueOption I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public HeaderValueOption I() {
            HeaderValueOption headerValueOption = new HeaderValueOption(this, (a) null);
            q2<HeaderValue, HeaderValue.b, z> q2Var = this.f47929f;
            if (q2Var == null) {
                headerValueOption.header_ = this.f47928e;
            } else {
                headerValueOption.header_ = q2Var.b();
            }
            q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var2 = this.f47931h;
            if (q2Var2 == null) {
                headerValueOption.append_ = this.f47930g;
            } else {
                headerValueOption.append_ = q2Var2.b();
            }
            Q();
            return headerValueOption;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public HeaderValueOption getDefaultInstanceForType() {
            return HeaderValueOption.getDefaultInstance();
        }

        public b d0(BoolValue boolValue) {
            q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var = this.f47931h;
            if (q2Var == null) {
                BoolValue boolValue2 = this.f47930g;
                if (boolValue2 != null) {
                    this.f47930g = BoolValue.newBuilder(boolValue2).d0(boolValue).I();
                } else {
                    this.f47930g = boolValue;
                }
                R();
            } else {
                q2Var.e(boolValue);
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
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HeaderValueOption.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HeaderValueOption.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HeaderValueOption r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HeaderValueOption) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HeaderValueOption r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HeaderValueOption) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HeaderValueOption.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HeaderValueOption$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        public b v(com.google.protobuf.l1 l1Var) {
            if (l1Var instanceof HeaderValueOption) {
                return h0((HeaderValueOption) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return g.A;
        }

        public b h0(HeaderValueOption headerValueOption) {
            if (headerValueOption == HeaderValueOption.getDefaultInstance()) {
                return this;
            }
            if (headerValueOption.hasHeader()) {
                i0(headerValueOption.getHeader());
            }
            if (headerValueOption.hasAppend()) {
                d0(headerValueOption.getAppend());
            }
            z(((GeneratedMessageV3) headerValueOption).unknownFields);
            R();
            return this;
        }

        public b i0(HeaderValue headerValue) {
            q2<HeaderValue, HeaderValue.b, z> q2Var = this.f47929f;
            if (q2Var == null) {
                HeaderValue headerValue2 = this.f47928e;
                if (headerValue2 != null) {
                    this.f47928e = HeaderValue.newBuilder(headerValue2).g0(headerValue).I();
                } else {
                    this.f47928e = headerValue;
                }
                R();
            } else {
                q2Var.e(headerValue);
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
            b0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            b0();
        }
    }

    /* synthetic */ HeaderValueOption(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static HeaderValueOption getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return g.A;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static HeaderValueOption parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (HeaderValueOption) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static HeaderValueOption parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<HeaderValueOption> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof HeaderValueOption)) {
            return super.equals(obj);
        }
        HeaderValueOption headerValueOption = (HeaderValueOption) obj;
        if (hasHeader() != headerValueOption.hasHeader()) {
            return false;
        }
        if ((!hasHeader() || getHeader().equals(headerValueOption.getHeader())) && hasAppend() == headerValueOption.hasAppend()) {
            return (!hasAppend() || getAppend().equals(headerValueOption.getAppend())) && this.unknownFields.equals(headerValueOption.unknownFields);
        }
        return false;
    }

    public BoolValue getAppend() {
        BoolValue boolValue = this.append_;
        return boolValue == null ? BoolValue.getDefaultInstance() : boolValue;
    }

    public com.google.protobuf.l getAppendOrBuilder() {
        return getAppend();
    }

    public HeaderValue getHeader() {
        HeaderValue headerValue = this.header_;
        return headerValue == null ? HeaderValue.getDefaultInstance() : headerValue;
    }

    public z getHeaderOrBuilder() {
        return getHeader();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<HeaderValueOption> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.header_ != null ? 0 + CodedOutputStream.G(1, getHeader()) : 0;
        if (this.append_ != null) {
            G += CodedOutputStream.G(2, getAppend());
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasAppend() {
        return this.append_ != null;
    }

    public boolean hasHeader() {
        return this.header_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasHeader()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getHeader().hashCode();
        }
        if (hasAppend()) {
            hashCode = (((hashCode * 37) + 2) * 53) + getAppend().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return g.B.d(HeaderValueOption.class, b.class);
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
        return new HeaderValueOption();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.header_ != null) {
            codedOutputStream.L0(1, getHeader());
        }
        if (this.append_ != null) {
            codedOutputStream.L0(2, getAppend());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ HeaderValueOption(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(HeaderValueOption headerValueOption) {
        return DEFAULT_INSTANCE.toBuilder().h0(headerValueOption);
    }

    public static HeaderValueOption parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private HeaderValueOption(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static HeaderValueOption parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (HeaderValueOption) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static HeaderValueOption parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public HeaderValueOption getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).h0(this);
    }

    public static HeaderValueOption parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private HeaderValueOption() {
        this.memoizedIsInitialized = (byte) -1;
    }

    public static HeaderValueOption parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static HeaderValueOption parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    private HeaderValueOption(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                            HeaderValue headerValue = this.header_;
                            HeaderValue.b builder = headerValue != null ? headerValue.toBuilder() : null;
                            HeaderValue headerValue2 = (HeaderValue) pVar.B(HeaderValue.parser(), f0Var);
                            this.header_ = headerValue2;
                            if (builder != null) {
                                builder.g0(headerValue2);
                                this.header_ = builder.I();
                            }
                        } else if (L != 18) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            BoolValue boolValue = this.append_;
                            BoolValue.b builder2 = boolValue != null ? boolValue.toBuilder() : null;
                            BoolValue boolValue2 = (BoolValue) pVar.B(BoolValue.parser(), f0Var);
                            this.append_ = boolValue2;
                            if (builder2 != null) {
                                builder2.d0(boolValue2);
                                this.append_ = builder2.I();
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

    public static HeaderValueOption parseFrom(InputStream inputStream) throws IOException {
        return (HeaderValueOption) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static HeaderValueOption parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (HeaderValueOption) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static HeaderValueOption parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (HeaderValueOption) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static HeaderValueOption parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
        return (HeaderValueOption) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
