package io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3;

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
import com.google.protobuf.l2;
import com.google.protobuf.p;
import com.google.protobuf.r1;
import io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3.ClientConfig;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class ClientStatusResponse extends GeneratedMessageV3 implements r1 {
    public static final int CONFIG_FIELD_NUMBER = 1;
    private static final ClientStatusResponse DEFAULT_INSTANCE = new ClientStatusResponse();
    private static final e2<ClientStatusResponse> PARSER = new a();
    private static final long serialVersionUID = 0;
    private List<ClientConfig> config_;
    private byte memoizedIsInitialized;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<ClientStatusResponse> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public ClientStatusResponse m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new ClientStatusResponse(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private int f50193e;

        /* renamed from: f  reason: collision with root package name */
        private List<ClientConfig> f50194f;

        /* renamed from: g  reason: collision with root package name */
        private l2<ClientConfig, ClientConfig.b, io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3.a> f50195g;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f50193e & 1) == 0) {
                this.f50194f = new ArrayList(this.f50194f);
                this.f50193e |= 1;
            }
        }

        private l2<ClientConfig, ClientConfig.b, io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3.a> b0() {
            if (this.f50195g == null) {
                this.f50195g = new l2<>(this.f50194f, (this.f50193e & 1) != 0, H(), O());
                this.f50194f = null;
            }
            return this.f50195g;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                b0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3.b.f50215j.d(ClientStatusResponse.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public ClientStatusResponse build() {
            ClientStatusResponse I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public ClientStatusResponse I() {
            ClientStatusResponse clientStatusResponse = new ClientStatusResponse(this, (a) null);
            int i9 = this.f50193e;
            l2<ClientConfig, ClientConfig.b, io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3.a> l2Var = this.f50195g;
            if (l2Var == null) {
                if ((i9 & 1) != 0) {
                    this.f50194f = Collections.unmodifiableList(this.f50194f);
                    this.f50193e &= -2;
                }
                clientStatusResponse.config_ = this.f50194f;
            } else {
                clientStatusResponse.config_ = l2Var.e();
            }
            Q();
            return clientStatusResponse;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: d0 */
        public ClientStatusResponse getDefaultInstanceForType() {
            return ClientStatusResponse.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3.ClientStatusResponse.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3.ClientStatusResponse.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3.ClientStatusResponse r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3.ClientStatusResponse) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.i0(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3.ClientStatusResponse r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3.ClientStatusResponse) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.i0(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3.ClientStatusResponse.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3.ClientStatusResponse$b");
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3.b.f50214i;
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof ClientStatusResponse) {
                return i0((ClientStatusResponse) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b i0(ClientStatusResponse clientStatusResponse) {
            if (clientStatusResponse == ClientStatusResponse.getDefaultInstance()) {
                return this;
            }
            if (this.f50195g == null) {
                if (!clientStatusResponse.config_.isEmpty()) {
                    if (this.f50194f.isEmpty()) {
                        this.f50194f = clientStatusResponse.config_;
                        this.f50193e &= -2;
                    } else {
                        a0();
                        this.f50194f.addAll(clientStatusResponse.config_);
                    }
                    R();
                }
            } else if (!clientStatusResponse.config_.isEmpty()) {
                if (this.f50195g.k()) {
                    this.f50195g.f();
                    this.f50195g = null;
                    this.f50194f = clientStatusResponse.config_;
                    this.f50193e &= -2;
                    this.f50195g = GeneratedMessageV3.alwaysUseFieldBuilders ? b0() : null;
                } else {
                    this.f50195g.b(clientStatusResponse.config_);
                }
            }
            z(((GeneratedMessageV3) clientStatusResponse).unknownFields);
            R();
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
            this.f50194f = Collections.emptyList();
            e0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f50194f = Collections.emptyList();
            e0();
        }
    }

    /* synthetic */ ClientStatusResponse(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static ClientStatusResponse getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3.b.f50214i;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static ClientStatusResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (ClientStatusResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static ClientStatusResponse parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<ClientStatusResponse> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ClientStatusResponse)) {
            return super.equals(obj);
        }
        ClientStatusResponse clientStatusResponse = (ClientStatusResponse) obj;
        return getConfigList().equals(clientStatusResponse.getConfigList()) && this.unknownFields.equals(clientStatusResponse.unknownFields);
    }

    public ClientConfig getConfig(int i9) {
        return this.config_.get(i9);
    }

    public int getConfigCount() {
        return this.config_.size();
    }

    public List<ClientConfig> getConfigList() {
        return this.config_;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3.a getConfigOrBuilder(int i9) {
        return this.config_.get(i9);
    }

    public List<? extends io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3.a> getConfigOrBuilderList() {
        return this.config_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<ClientStatusResponse> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < this.config_.size(); i11++) {
            i10 += CodedOutputStream.G(1, this.config_.get(i11));
        }
        int serializedSize = i10 + this.unknownFields.getSerializedSize();
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
        int hashCode = 779 + getDescriptor().hashCode();
        if (getConfigCount() > 0) {
            hashCode = (((hashCode * 37) + 1) * 53) + getConfigList().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3.b.f50215j.d(ClientStatusResponse.class, b.class);
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
        return new ClientStatusResponse();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        for (int i9 = 0; i9 < this.config_.size(); i9++) {
            codedOutputStream.L0(1, this.config_.get(i9));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ ClientStatusResponse(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(ClientStatusResponse clientStatusResponse) {
        return DEFAULT_INSTANCE.toBuilder().i0(clientStatusResponse);
    }

    public static ClientStatusResponse parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private ClientStatusResponse(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static ClientStatusResponse parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ClientStatusResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static ClientStatusResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public ClientStatusResponse getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).i0(this);
    }

    public static ClientStatusResponse parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private ClientStatusResponse() {
        this.memoizedIsInitialized = (byte) -1;
        this.config_ = Collections.emptyList();
    }

    public static ClientStatusResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static ClientStatusResponse parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static ClientStatusResponse parseFrom(InputStream inputStream) throws IOException {
        return (ClientStatusResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private ClientStatusResponse(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        boolean z11 = false;
        while (!z10) {
            try {
                try {
                    int L = pVar.L();
                    if (L != 0) {
                        if (L != 10) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            if (!(z11 & true)) {
                                this.config_ = new ArrayList();
                                z11 |= true;
                            }
                            this.config_.add((ClientConfig) pVar.B(ClientConfig.parser(), f0Var));
                        }
                    }
                    z10 = true;
                } catch (InvalidProtocolBufferException e10) {
                    throw e10.setUnfinishedMessage(this);
                } catch (IOException e11) {
                    throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                }
            } finally {
                if (z11 & true) {
                    this.config_ = Collections.unmodifiableList(this.config_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static ClientStatusResponse parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ClientStatusResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static ClientStatusResponse parseFrom(p pVar) throws IOException {
        return (ClientStatusResponse) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static ClientStatusResponse parseFrom(p pVar, f0 f0Var) throws IOException {
        return (ClientStatusResponse) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
