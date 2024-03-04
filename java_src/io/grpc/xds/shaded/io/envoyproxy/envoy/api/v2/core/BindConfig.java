package io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core;

import com.google.protobuf.BoolValue;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.l2;
import com.google.protobuf.q2;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.SocketAddress;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.SocketOption;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class BindConfig extends GeneratedMessageV3 implements h {
    public static final int FREEBIND_FIELD_NUMBER = 2;
    public static final int SOCKET_OPTIONS_FIELD_NUMBER = 3;
    public static final int SOURCE_ADDRESS_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private BoolValue freebind_;
    private byte memoizedIsInitialized;
    private List<SocketOption> socketOptions_;
    private SocketAddress sourceAddress_;
    private static final BindConfig DEFAULT_INSTANCE = new BindConfig();
    private static final e2<BindConfig> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<BindConfig> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public BindConfig m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return new BindConfig(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements h {

        /* renamed from: e  reason: collision with root package name */
        private int f46377e;

        /* renamed from: f  reason: collision with root package name */
        private SocketAddress f46378f;

        /* renamed from: g  reason: collision with root package name */
        private q2<SocketAddress, SocketAddress.c, n0> f46379g;

        /* renamed from: h  reason: collision with root package name */
        private BoolValue f46380h;

        /* renamed from: i  reason: collision with root package name */
        private q2<BoolValue, BoolValue.b, com.google.protobuf.l> f46381i;

        /* renamed from: j  reason: collision with root package name */
        private List<SocketOption> f46382j;

        /* renamed from: k  reason: collision with root package name */
        private l2<SocketOption, SocketOption.c, o0> f46383k;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f46377e & 1) == 0) {
                this.f46382j = new ArrayList(this.f46382j);
                this.f46377e |= 1;
            }
        }

        private l2<SocketOption, SocketOption.c, o0> d0() {
            if (this.f46383k == null) {
                this.f46383k = new l2<>(this.f46382j, (this.f46377e & 1) != 0, H(), O());
                this.f46382j = null;
            }
            return this.f46383k;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                d0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.b.f46680h.d(BindConfig.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public BindConfig build() {
            BindConfig I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public BindConfig I() {
            BindConfig bindConfig = new BindConfig(this, (a) null);
            q2<SocketAddress, SocketAddress.c, n0> q2Var = this.f46379g;
            if (q2Var == null) {
                bindConfig.sourceAddress_ = this.f46378f;
            } else {
                bindConfig.sourceAddress_ = q2Var.b();
            }
            q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var2 = this.f46381i;
            if (q2Var2 == null) {
                bindConfig.freebind_ = this.f46380h;
            } else {
                bindConfig.freebind_ = q2Var2.b();
            }
            l2<SocketOption, SocketOption.c, o0> l2Var = this.f46383k;
            if (l2Var == null) {
                if ((this.f46377e & 1) != 0) {
                    this.f46382j = Collections.unmodifiableList(this.f46382j);
                    this.f46377e &= -2;
                }
                bindConfig.socketOptions_ = this.f46382j;
            } else {
                bindConfig.socketOptions_ = l2Var.e();
            }
            Q();
            return bindConfig;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: b0 */
        public BindConfig getDefaultInstanceForType() {
            return BindConfig.getDefaultInstance();
        }

        public b g0(BoolValue boolValue) {
            q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var = this.f46381i;
            if (q2Var == null) {
                BoolValue boolValue2 = this.f46380h;
                if (boolValue2 != null) {
                    this.f46380h = BoolValue.newBuilder(boolValue2).d0(boolValue).I();
                } else {
                    this.f46380h = boolValue;
                }
                R();
            } else {
                q2Var.e(boolValue);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.b.f46679g;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.BindConfig.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.BindConfig.access$900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.BindConfig r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.BindConfig) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.j0(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.BindConfig r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.BindConfig) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.j0(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.BindConfig.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.BindConfig$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof BindConfig) {
                return j0((BindConfig) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b j0(BindConfig bindConfig) {
            if (bindConfig == BindConfig.getDefaultInstance()) {
                return this;
            }
            if (bindConfig.hasSourceAddress()) {
                k0(bindConfig.getSourceAddress());
            }
            if (bindConfig.hasFreebind()) {
                g0(bindConfig.getFreebind());
            }
            if (this.f46383k == null) {
                if (!bindConfig.socketOptions_.isEmpty()) {
                    if (this.f46382j.isEmpty()) {
                        this.f46382j = bindConfig.socketOptions_;
                        this.f46377e &= -2;
                    } else {
                        a0();
                        this.f46382j.addAll(bindConfig.socketOptions_);
                    }
                    R();
                }
            } else if (!bindConfig.socketOptions_.isEmpty()) {
                if (this.f46383k.k()) {
                    this.f46383k.f();
                    this.f46383k = null;
                    this.f46382j = bindConfig.socketOptions_;
                    this.f46377e &= -2;
                    this.f46383k = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                } else {
                    this.f46383k.b(bindConfig.socketOptions_);
                }
            }
            z(((GeneratedMessageV3) bindConfig).unknownFields);
            R();
            return this;
        }

        public b k0(SocketAddress socketAddress) {
            q2<SocketAddress, SocketAddress.c, n0> q2Var = this.f46379g;
            if (q2Var == null) {
                SocketAddress socketAddress2 = this.f46378f;
                if (socketAddress2 != null) {
                    this.f46378f = SocketAddress.newBuilder(socketAddress2).g0(socketAddress).I();
                } else {
                    this.f46378f = socketAddress;
                }
                R();
            } else {
                q2Var.e(socketAddress);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: l0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: m0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: n0 */
        public final b f1(h3 h3Var) {
            return (b) super.f1(h3Var);
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            this.f46382j = Collections.emptyList();
            e0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f46382j = Collections.emptyList();
            e0();
        }
    }

    /* synthetic */ BindConfig(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static BindConfig getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.b.f46679g;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static BindConfig parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (BindConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static BindConfig parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<BindConfig> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof BindConfig)) {
            return super.equals(obj);
        }
        BindConfig bindConfig = (BindConfig) obj;
        if (hasSourceAddress() != bindConfig.hasSourceAddress()) {
            return false;
        }
        if ((!hasSourceAddress() || getSourceAddress().equals(bindConfig.getSourceAddress())) && hasFreebind() == bindConfig.hasFreebind()) {
            return (!hasFreebind() || getFreebind().equals(bindConfig.getFreebind())) && getSocketOptionsList().equals(bindConfig.getSocketOptionsList()) && this.unknownFields.equals(bindConfig.unknownFields);
        }
        return false;
    }

    public BoolValue getFreebind() {
        BoolValue boolValue = this.freebind_;
        return boolValue == null ? BoolValue.getDefaultInstance() : boolValue;
    }

    public com.google.protobuf.l getFreebindOrBuilder() {
        return getFreebind();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<BindConfig> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.sourceAddress_ != null ? CodedOutputStream.G(1, getSourceAddress()) + 0 : 0;
        if (this.freebind_ != null) {
            G += CodedOutputStream.G(2, getFreebind());
        }
        for (int i10 = 0; i10 < this.socketOptions_.size(); i10++) {
            G += CodedOutputStream.G(3, this.socketOptions_.get(i10));
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public SocketOption getSocketOptions(int i9) {
        return this.socketOptions_.get(i9);
    }

    public int getSocketOptionsCount() {
        return this.socketOptions_.size();
    }

    public List<SocketOption> getSocketOptionsList() {
        return this.socketOptions_;
    }

    public o0 getSocketOptionsOrBuilder(int i9) {
        return this.socketOptions_.get(i9);
    }

    public List<? extends o0> getSocketOptionsOrBuilderList() {
        return this.socketOptions_;
    }

    public SocketAddress getSourceAddress() {
        SocketAddress socketAddress = this.sourceAddress_;
        return socketAddress == null ? SocketAddress.getDefaultInstance() : socketAddress;
    }

    public n0 getSourceAddressOrBuilder() {
        return getSourceAddress();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasFreebind() {
        return this.freebind_ != null;
    }

    public boolean hasSourceAddress() {
        return this.sourceAddress_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasSourceAddress()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getSourceAddress().hashCode();
        }
        if (hasFreebind()) {
            hashCode = (((hashCode * 37) + 2) * 53) + getFreebind().hashCode();
        }
        if (getSocketOptionsCount() > 0) {
            hashCode = (((hashCode * 37) + 3) * 53) + getSocketOptionsList().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.b.f46680h.d(BindConfig.class, b.class);
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
        return new BindConfig();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.sourceAddress_ != null) {
            codedOutputStream.L0(1, getSourceAddress());
        }
        if (this.freebind_ != null) {
            codedOutputStream.L0(2, getFreebind());
        }
        for (int i9 = 0; i9 < this.socketOptions_.size(); i9++) {
            codedOutputStream.L0(3, this.socketOptions_.get(i9));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ BindConfig(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(BindConfig bindConfig) {
        return DEFAULT_INSTANCE.toBuilder().j0(bindConfig);
    }

    public static BindConfig parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private BindConfig(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static BindConfig parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (BindConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static BindConfig parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public BindConfig getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).j0(this);
    }

    public static BindConfig parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private BindConfig() {
        this.memoizedIsInitialized = (byte) -1;
        this.socketOptions_ = Collections.emptyList();
    }

    public static BindConfig parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static BindConfig parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static BindConfig parseFrom(InputStream inputStream) throws IOException {
        return (BindConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private BindConfig(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                        if (L == 10) {
                            SocketAddress socketAddress = this.sourceAddress_;
                            SocketAddress.c builder = socketAddress != null ? socketAddress.toBuilder() : null;
                            SocketAddress socketAddress2 = (SocketAddress) pVar.B(SocketAddress.parser(), f0Var);
                            this.sourceAddress_ = socketAddress2;
                            if (builder != null) {
                                builder.g0(socketAddress2);
                                this.sourceAddress_ = builder.I();
                            }
                        } else if (L == 18) {
                            BoolValue boolValue = this.freebind_;
                            BoolValue.b builder2 = boolValue != null ? boolValue.toBuilder() : null;
                            BoolValue boolValue2 = (BoolValue) pVar.B(BoolValue.parser(), f0Var);
                            this.freebind_ = boolValue2;
                            if (builder2 != null) {
                                builder2.d0(boolValue2);
                                this.freebind_ = builder2.I();
                            }
                        } else if (L != 26) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            if (!(z11 & true)) {
                                this.socketOptions_ = new ArrayList();
                                z11 |= true;
                            }
                            this.socketOptions_.add((SocketOption) pVar.B(SocketOption.parser(), f0Var));
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
                    this.socketOptions_ = Collections.unmodifiableList(this.socketOptions_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static BindConfig parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (BindConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static BindConfig parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (BindConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static BindConfig parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
        return (BindConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
