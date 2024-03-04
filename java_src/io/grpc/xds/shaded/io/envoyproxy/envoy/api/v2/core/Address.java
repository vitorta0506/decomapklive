package io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.o1;
import com.google.protobuf.q2;
import com.google.protobuf.u0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.Pipe;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.SocketAddress;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class Address extends GeneratedMessageV3 implements io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.a {
    private static final Address DEFAULT_INSTANCE = new Address();
    private static final e2<Address> PARSER = new a();
    public static final int PIPE_FIELD_NUMBER = 2;
    public static final int SOCKET_ADDRESS_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private int addressCase_;
    private Object address_;
    private byte memoizedIsInitialized;

    /* loaded from: classes6.dex */
    public enum AddressCase implements u0.c {
        SOCKET_ADDRESS(1),
        PIPE(2),
        ADDRESS_NOT_SET(0);
        
        private final int value;

        AddressCase(int i9) {
            this.value = i9;
        }

        public static AddressCase forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 != 2) {
                        return null;
                    }
                    return PIPE;
                }
                return SOCKET_ADDRESS;
            }
            return ADDRESS_NOT_SET;
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static AddressCase valueOf(int i9) {
            return forNumber(i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<Address> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public Address m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return new Address(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f46350a;

        static {
            int[] iArr = new int[AddressCase.values().length];
            f46350a = iArr;
            try {
                iArr[AddressCase.SOCKET_ADDRESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f46350a[AddressCase.PIPE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f46350a[AddressCase.ADDRESS_NOT_SET.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.a {

        /* renamed from: e  reason: collision with root package name */
        private int f46351e;

        /* renamed from: f  reason: collision with root package name */
        private Object f46352f;

        /* renamed from: g  reason: collision with root package name */
        private q2<SocketAddress, SocketAddress.c, n0> f46353g;

        /* renamed from: h  reason: collision with root package name */
        private q2<Pipe, Pipe.b, f0> f46354h;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.b.f46682j.d(Address.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public Address build() {
            Address I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public Address I() {
            Address address = new Address(this, (a) null);
            if (this.f46351e == 1) {
                q2<SocketAddress, SocketAddress.c, n0> q2Var = this.f46353g;
                if (q2Var == null) {
                    address.address_ = this.f46352f;
                } else {
                    address.address_ = q2Var.b();
                }
            }
            if (this.f46351e == 2) {
                q2<Pipe, Pipe.b, f0> q2Var2 = this.f46354h;
                if (q2Var2 == null) {
                    address.address_ = this.f46352f;
                } else {
                    address.address_ = q2Var2.b();
                }
            }
            address.addressCase_ = this.f46351e;
            Q();
            return address;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public Address getDefaultInstanceForType() {
            return Address.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.Address.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.Address.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.Address r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.Address) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.Address r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.Address) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.Address.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.Address$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public c v(l1 l1Var) {
            if (l1Var instanceof Address) {
                return g0((Address) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public c g0(Address address) {
            if (address == Address.getDefaultInstance()) {
                return this;
            }
            int i9 = b.f46350a[address.getAddressCase().ordinal()];
            if (i9 == 1) {
                i0(address.getSocketAddress());
            } else if (i9 == 2) {
                h0(address.getPipe());
            }
            z(((GeneratedMessageV3) address).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.b.f46681i;
        }

        public c h0(Pipe pipe) {
            q2<Pipe, Pipe.b, f0> q2Var = this.f46354h;
            if (q2Var == null) {
                if (this.f46351e == 2 && this.f46352f != Pipe.getDefaultInstance()) {
                    this.f46352f = Pipe.newBuilder((Pipe) this.f46352f).g0(pipe).I();
                } else {
                    this.f46352f = pipe;
                }
                R();
            } else {
                if (this.f46351e == 2) {
                    q2Var.e(pipe);
                }
                this.f46354h.g(pipe);
            }
            this.f46351e = 2;
            return this;
        }

        public c i0(SocketAddress socketAddress) {
            q2<SocketAddress, SocketAddress.c, n0> q2Var = this.f46353g;
            if (q2Var == null) {
                if (this.f46351e == 1 && this.f46352f != SocketAddress.getDefaultInstance()) {
                    this.f46352f = SocketAddress.newBuilder((SocketAddress) this.f46352f).g0(socketAddress).I();
                } else {
                    this.f46352f = socketAddress;
                }
                R();
            } else {
                if (this.f46351e == 1) {
                    q2Var.e(socketAddress);
                }
                this.f46353g.g(socketAddress);
            }
            this.f46351e = 1;
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: j0 */
        public final c z(h3 h3Var) {
            return (c) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: k0 */
        public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.c(fieldDescriptor, obj);
        }

        public c l0(SocketAddress.c cVar) {
            q2<SocketAddress, SocketAddress.c, n0> q2Var = this.f46353g;
            if (q2Var == null) {
                this.f46352f = cVar.build();
                R();
            } else {
                q2Var.g(cVar.build());
            }
            this.f46351e = 1;
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: m0 */
        public final c f1(h3 h3Var) {
            return (c) super.f1(h3Var);
        }

        /* synthetic */ c(a aVar) {
            this();
        }

        private c() {
            this.f46351e = 0;
            b0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f46351e = 0;
            b0();
        }
    }

    /* synthetic */ Address(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static Address getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.b.f46681i;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Address parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Address) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Address parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<Address> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Address)) {
            return super.equals(obj);
        }
        Address address = (Address) obj;
        if (getAddressCase().equals(address.getAddressCase())) {
            int i9 = this.addressCase_;
            if (i9 != 1) {
                if (i9 == 2 && !getPipe().equals(address.getPipe())) {
                    return false;
                }
            } else if (!getSocketAddress().equals(address.getSocketAddress())) {
                return false;
            }
            return this.unknownFields.equals(address.unknownFields);
        }
        return false;
    }

    public AddressCase getAddressCase() {
        return AddressCase.forNumber(this.addressCase_);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<Address> getParserForType() {
        return PARSER;
    }

    public Pipe getPipe() {
        if (this.addressCase_ == 2) {
            return (Pipe) this.address_;
        }
        return Pipe.getDefaultInstance();
    }

    public f0 getPipeOrBuilder() {
        if (this.addressCase_ == 2) {
            return (Pipe) this.address_;
        }
        return Pipe.getDefaultInstance();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.addressCase_ == 1 ? 0 + CodedOutputStream.G(1, (SocketAddress) this.address_) : 0;
        if (this.addressCase_ == 2) {
            G += CodedOutputStream.G(2, (Pipe) this.address_);
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public SocketAddress getSocketAddress() {
        if (this.addressCase_ == 1) {
            return (SocketAddress) this.address_;
        }
        return SocketAddress.getDefaultInstance();
    }

    public n0 getSocketAddressOrBuilder() {
        if (this.addressCase_ == 1) {
            return (SocketAddress) this.address_;
        }
        return SocketAddress.getDefaultInstance();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasPipe() {
        return this.addressCase_ == 2;
    }

    public boolean hasSocketAddress() {
        return this.addressCase_ == 1;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9;
        int hashCode;
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int hashCode2 = 779 + getDescriptor().hashCode();
        int i11 = this.addressCase_;
        if (i11 == 1) {
            i9 = ((hashCode2 * 37) + 1) * 53;
            hashCode = getSocketAddress().hashCode();
        } else {
            if (i11 == 2) {
                i9 = ((hashCode2 * 37) + 2) * 53;
                hashCode = getPipe().hashCode();
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
        return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.b.f46682j.d(Address.class, c.class);
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
        return new Address();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.addressCase_ == 1) {
            codedOutputStream.L0(1, (SocketAddress) this.address_);
        }
        if (this.addressCase_ == 2) {
            codedOutputStream.L0(2, (Pipe) this.address_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ Address(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(Address address) {
        return DEFAULT_INSTANCE.toBuilder().g0(address);
    }

    public static Address parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private Address(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.addressCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Address parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (Address) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static Address parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public Address getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).g0(this);
    }

    public static Address parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    public static Address parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    private Address() {
        this.addressCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Address parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static Address parseFrom(InputStream inputStream) throws IOException {
        return (Address) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private Address(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                                SocketAddress.c builder = this.addressCase_ == 1 ? ((SocketAddress) this.address_).toBuilder() : null;
                                o1 B = pVar.B(SocketAddress.parser(), f0Var);
                                this.address_ = B;
                                if (builder != null) {
                                    builder.g0((SocketAddress) B);
                                    this.address_ = builder.I();
                                }
                                this.addressCase_ = 1;
                            } else if (L != 18) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                Pipe.b builder2 = this.addressCase_ == 2 ? ((Pipe) this.address_).toBuilder() : null;
                                o1 B2 = pVar.B(Pipe.parser(), f0Var);
                                this.address_ = B2;
                                if (builder2 != null) {
                                    builder2.g0((Pipe) B2);
                                    this.address_ = builder2.I();
                                }
                                this.addressCase_ = 2;
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

    public static Address parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (Address) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static Address parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (Address) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static Address parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
        return (Address) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
