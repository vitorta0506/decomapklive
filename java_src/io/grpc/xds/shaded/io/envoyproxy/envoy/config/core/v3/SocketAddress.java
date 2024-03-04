package io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.h2;
import com.google.protobuf.h3;
import com.google.protobuf.u0;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class SocketAddress extends GeneratedMessageV3 implements b1 {
    public static final int ADDRESS_FIELD_NUMBER = 2;
    public static final int IPV4_COMPAT_FIELD_NUMBER = 6;
    public static final int NAMED_PORT_FIELD_NUMBER = 4;
    public static final int PORT_VALUE_FIELD_NUMBER = 3;
    public static final int PROTOCOL_FIELD_NUMBER = 1;
    public static final int RESOLVER_NAME_FIELD_NUMBER = 5;
    private static final long serialVersionUID = 0;
    private volatile Object address_;
    private boolean ipv4Compat_;
    private byte memoizedIsInitialized;
    private int portSpecifierCase_;
    private Object portSpecifier_;
    private int protocol_;
    private volatile Object resolverName_;
    private static final SocketAddress DEFAULT_INSTANCE = new SocketAddress();
    private static final e2<SocketAddress> PARSER = new a();

    /* loaded from: classes6.dex */
    public enum PortSpecifierCase implements u0.c {
        PORT_VALUE(3),
        NAMED_PORT(4),
        PORTSPECIFIER_NOT_SET(0);
        
        private final int value;

        PortSpecifierCase(int i9) {
            this.value = i9;
        }

        public static PortSpecifierCase forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 3) {
                    if (i9 != 4) {
                        return null;
                    }
                    return NAMED_PORT;
                }
                return PORT_VALUE;
            }
            return PORTSPECIFIER_NOT_SET;
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static PortSpecifierCase valueOf(int i9) {
            return forNumber(i9);
        }
    }

    /* loaded from: classes6.dex */
    public enum Protocol implements h2 {
        TCP(0),
        UDP(1),
        UNRECOGNIZED(-1);
        
        public static final int TCP_VALUE = 0;
        public static final int UDP_VALUE = 1;
        private final int value;
        private static final u0.d<Protocol> internalValueMap = new a();
        private static final Protocol[] VALUES = values();

        /* loaded from: classes6.dex */
        class a implements u0.d<Protocol> {
            a() {
            }

            @Override // com.google.protobuf.u0.d
            /* renamed from: b */
            public Protocol a(int i9) {
                return Protocol.forNumber(i9);
            }
        }

        Protocol(int i9) {
            this.value = i9;
        }

        public static Protocol forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    return null;
                }
                return UDP;
            }
            return TCP;
        }

        public static final Descriptors.d getDescriptor() {
            return SocketAddress.getDescriptor().k().get(0);
        }

        public static u0.d<Protocol> internalGetValueMap() {
            return internalValueMap;
        }

        public final Descriptors.d getDescriptorForType() {
            return getDescriptor();
        }

        @Override // com.google.protobuf.u0.c
        public final int getNumber() {
            if (this != UNRECOGNIZED) {
                return this.value;
            }
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }

        public final Descriptors.e getValueDescriptor() {
            if (this != UNRECOGNIZED) {
                return getDescriptor().k().get(ordinal());
            }
            throw new IllegalStateException("Can't get the descriptor of an unrecognized enum value.");
        }

        @Deprecated
        public static Protocol valueOf(int i9) {
            return forNumber(i9);
        }

        public static Protocol valueOf(Descriptors.e eVar) {
            if (eVar.h() == getDescriptor()) {
                if (eVar.g() == -1) {
                    return UNRECOGNIZED;
                }
                return VALUES[eVar.g()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<SocketAddress> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public SocketAddress m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return new SocketAddress(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f48124a;

        static {
            int[] iArr = new int[PortSpecifierCase.values().length];
            f48124a = iArr;
            try {
                iArr[PortSpecifierCase.PORT_VALUE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f48124a[PortSpecifierCase.NAMED_PORT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f48124a[PortSpecifierCase.PORTSPECIFIER_NOT_SET.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements b1 {

        /* renamed from: e  reason: collision with root package name */
        private int f48125e;

        /* renamed from: f  reason: collision with root package name */
        private Object f48126f;

        /* renamed from: g  reason: collision with root package name */
        private int f48127g;

        /* renamed from: h  reason: collision with root package name */
        private Object f48128h;

        /* renamed from: i  reason: collision with root package name */
        private Object f48129i;

        /* renamed from: j  reason: collision with root package name */
        private boolean f48130j;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.b.f48174f.d(SocketAddress.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public SocketAddress build() {
            SocketAddress I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public SocketAddress I() {
            SocketAddress socketAddress = new SocketAddress(this, (a) null);
            socketAddress.protocol_ = this.f48127g;
            socketAddress.address_ = this.f48128h;
            if (this.f48125e == 3) {
                socketAddress.portSpecifier_ = this.f48126f;
            }
            if (this.f48125e == 4) {
                socketAddress.portSpecifier_ = this.f48126f;
            }
            socketAddress.resolverName_ = this.f48129i;
            socketAddress.ipv4Compat_ = this.f48130j;
            socketAddress.portSpecifierCase_ = this.f48125e;
            Q();
            return socketAddress;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public SocketAddress getDefaultInstanceForType() {
            return SocketAddress.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.SocketAddress.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.SocketAddress.access$1100()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.SocketAddress r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.SocketAddress) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.SocketAddress r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.SocketAddress) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.SocketAddress.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.SocketAddress$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public c v(com.google.protobuf.l1 l1Var) {
            if (l1Var instanceof SocketAddress) {
                return g0((SocketAddress) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public c g0(SocketAddress socketAddress) {
            if (socketAddress == SocketAddress.getDefaultInstance()) {
                return this;
            }
            if (socketAddress.protocol_ != 0) {
                m0(socketAddress.getProtocolValue());
            }
            if (!socketAddress.getAddress().isEmpty()) {
                this.f48128h = socketAddress.address_;
                R();
            }
            if (!socketAddress.getResolverName().isEmpty()) {
                this.f48129i = socketAddress.resolverName_;
                R();
            }
            if (socketAddress.getIpv4Compat()) {
                k0(socketAddress.getIpv4Compat());
            }
            int i9 = b.f48124a[socketAddress.getPortSpecifierCase().ordinal()];
            if (i9 == 1) {
                l0(socketAddress.getPortValue());
            } else if (i9 == 2) {
                this.f48125e = 4;
                this.f48126f = socketAddress.portSpecifier_;
                R();
            }
            z(((GeneratedMessageV3) socketAddress).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.b.f48173e;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public final c z(h3 h3Var) {
            return (c) super.z(h3Var);
        }

        public c i0(String str) {
            Objects.requireNonNull(str);
            this.f48128h = str;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: j0 */
        public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.c(fieldDescriptor, obj);
        }

        public c k0(boolean z10) {
            this.f48130j = z10;
            R();
            return this;
        }

        public c l0(int i9) {
            this.f48125e = 3;
            this.f48126f = Integer.valueOf(i9);
            R();
            return this;
        }

        public c m0(int i9) {
            this.f48127g = i9;
            R();
            return this;
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
            this.f48125e = 0;
            this.f48127g = 0;
            this.f48128h = "";
            this.f48129i = "";
            b0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f48125e = 0;
            this.f48127g = 0;
            this.f48128h = "";
            this.f48129i = "";
            b0();
        }
    }

    /* synthetic */ SocketAddress(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static SocketAddress getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.b.f48173e;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static SocketAddress parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (SocketAddress) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static SocketAddress parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<SocketAddress> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SocketAddress)) {
            return super.equals(obj);
        }
        SocketAddress socketAddress = (SocketAddress) obj;
        if (this.protocol_ == socketAddress.protocol_ && getAddress().equals(socketAddress.getAddress()) && getResolverName().equals(socketAddress.getResolverName()) && getIpv4Compat() == socketAddress.getIpv4Compat() && getPortSpecifierCase().equals(socketAddress.getPortSpecifierCase())) {
            int i9 = this.portSpecifierCase_;
            if (i9 != 3) {
                if (i9 == 4 && !getNamedPort().equals(socketAddress.getNamedPort())) {
                    return false;
                }
            } else if (getPortValue() != socketAddress.getPortValue()) {
                return false;
            }
            return this.unknownFields.equals(socketAddress.unknownFields);
        }
        return false;
    }

    public String getAddress() {
        Object obj = this.address_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.address_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getAddressBytes() {
        Object obj = this.address_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.address_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public boolean getIpv4Compat() {
        return this.ipv4Compat_;
    }

    public String getNamedPort() {
        String str = this.portSpecifierCase_ == 4 ? this.portSpecifier_ : "";
        if (str instanceof String) {
            return (String) str;
        }
        String stringUtf8 = ((ByteString) str).toStringUtf8();
        if (this.portSpecifierCase_ == 4) {
            this.portSpecifier_ = stringUtf8;
        }
        return stringUtf8;
    }

    public ByteString getNamedPortBytes() {
        String str = this.portSpecifierCase_ == 4 ? this.portSpecifier_ : "";
        if (str instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) str);
            if (this.portSpecifierCase_ == 4) {
                this.portSpecifier_ = copyFromUtf8;
            }
            return copyFromUtf8;
        }
        return (ByteString) str;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<SocketAddress> getParserForType() {
        return PARSER;
    }

    public PortSpecifierCase getPortSpecifierCase() {
        return PortSpecifierCase.forNumber(this.portSpecifierCase_);
    }

    public int getPortValue() {
        if (this.portSpecifierCase_ == 3) {
            return ((Integer) this.portSpecifier_).intValue();
        }
        return 0;
    }

    public Protocol getProtocol() {
        Protocol valueOf = Protocol.valueOf(this.protocol_);
        return valueOf == null ? Protocol.UNRECOGNIZED : valueOf;
    }

    public int getProtocolValue() {
        return this.protocol_;
    }

    public String getResolverName() {
        Object obj = this.resolverName_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.resolverName_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getResolverNameBytes() {
        Object obj = this.resolverName_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.resolverName_ = copyFromUtf8;
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
        int l10 = this.protocol_ != Protocol.TCP.getNumber() ? 0 + CodedOutputStream.l(1, this.protocol_) : 0;
        if (!GeneratedMessageV3.isStringEmpty(this.address_)) {
            l10 += GeneratedMessageV3.computeStringSize(2, this.address_);
        }
        if (this.portSpecifierCase_ == 3) {
            l10 += CodedOutputStream.Y(3, ((Integer) this.portSpecifier_).intValue());
        }
        if (this.portSpecifierCase_ == 4) {
            l10 += GeneratedMessageV3.computeStringSize(4, this.portSpecifier_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.resolverName_)) {
            l10 += GeneratedMessageV3.computeStringSize(5, this.resolverName_);
        }
        boolean z10 = this.ipv4Compat_;
        if (z10) {
            l10 += CodedOutputStream.e(6, z10);
        }
        int serializedSize = l10 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasNamedPort() {
        return this.portSpecifierCase_ == 4;
    }

    public boolean hasPortValue() {
        return this.portSpecifierCase_ == 3;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9;
        int portValue;
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int hashCode = ((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + this.protocol_) * 37) + 2) * 53) + getAddress().hashCode()) * 37) + 5) * 53) + getResolverName().hashCode()) * 37) + 6) * 53) + com.google.protobuf.u0.d(getIpv4Compat());
        int i11 = this.portSpecifierCase_;
        if (i11 == 3) {
            i9 = ((hashCode * 37) + 3) * 53;
            portValue = getPortValue();
        } else {
            if (i11 == 4) {
                i9 = ((hashCode * 37) + 4) * 53;
                portValue = getNamedPort().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }
        hashCode = i9 + portValue;
        int hashCode22 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode22;
        return hashCode22;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.b.f48174f.d(SocketAddress.class, c.class);
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
        return new SocketAddress();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.protocol_ != Protocol.TCP.getNumber()) {
            codedOutputStream.v0(1, this.protocol_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.address_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.address_);
        }
        if (this.portSpecifierCase_ == 3) {
            codedOutputStream.c1(3, ((Integer) this.portSpecifier_).intValue());
        }
        if (this.portSpecifierCase_ == 4) {
            GeneratedMessageV3.writeString(codedOutputStream, 4, this.portSpecifier_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.resolverName_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 5, this.resolverName_);
        }
        boolean z10 = this.ipv4Compat_;
        if (z10) {
            codedOutputStream.n0(6, z10);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ SocketAddress(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(SocketAddress socketAddress) {
        return DEFAULT_INSTANCE.toBuilder().g0(socketAddress);
    }

    public static SocketAddress parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private SocketAddress(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.portSpecifierCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static SocketAddress parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (SocketAddress) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static SocketAddress parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public SocketAddress getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).g0(this);
    }

    public static SocketAddress parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    public static SocketAddress parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    private SocketAddress() {
        this.portSpecifierCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
        this.protocol_ = 0;
        this.address_ = "";
        this.resolverName_ = "";
    }

    public static SocketAddress parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static SocketAddress parseFrom(InputStream inputStream) throws IOException {
        return (SocketAddress) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static SocketAddress parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (SocketAddress) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static SocketAddress parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (SocketAddress) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    private SocketAddress(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    int L = pVar.L();
                    if (L != 0) {
                        if (L == 8) {
                            this.protocol_ = pVar.u();
                        } else if (L == 18) {
                            this.address_ = pVar.K();
                        } else if (L == 24) {
                            this.portSpecifier_ = Integer.valueOf(pVar.M());
                            this.portSpecifierCase_ = 3;
                        } else if (L == 34) {
                            String K = pVar.K();
                            this.portSpecifierCase_ = 4;
                            this.portSpecifier_ = K;
                        } else if (L == 42) {
                            this.resolverName_ = pVar.K();
                        } else if (L != 48) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            this.ipv4Compat_ = pVar.r();
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

    public static SocketAddress parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
        return (SocketAddress) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
