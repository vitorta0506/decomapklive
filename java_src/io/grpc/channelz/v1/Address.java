package io.grpc.channelz.v1;

import com.google.protobuf.Any;
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
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import com.google.protobuf.u0;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class Address extends GeneratedMessageV3 implements io.grpc.channelz.v1.a {
    public static final int OTHER_ADDRESS_FIELD_NUMBER = 3;
    public static final int TCPIP_ADDRESS_FIELD_NUMBER = 1;
    public static final int UDS_ADDRESS_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private int addressCase_;
    private Object address_;
    private byte memoizedIsInitialized;
    private static final Address DEFAULT_INSTANCE = new Address();
    private static final e2<Address> PARSER = new a();

    /* loaded from: classes5.dex */
    public enum AddressCase implements u0.c {
        TCPIP_ADDRESS(1),
        UDS_ADDRESS(2),
        OTHER_ADDRESS(3),
        ADDRESS_NOT_SET(0);
        
        private final int value;

        AddressCase(int i9) {
            this.value = i9;
        }

        public static AddressCase forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 != 2) {
                        if (i9 != 3) {
                            return null;
                        }
                        return OTHER_ADDRESS;
                    }
                    return UDS_ADDRESS;
                }
                return TCPIP_ADDRESS;
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

    /* loaded from: classes5.dex */
    public static final class OtherAddress extends GeneratedMessageV3 implements d {
        public static final int NAME_FIELD_NUMBER = 1;
        public static final int VALUE_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private volatile Object name_;
        private Any value_;
        private static final OtherAddress DEFAULT_INSTANCE = new OtherAddress();
        private static final e2<OtherAddress> PARSER = new a();

        /* loaded from: classes5.dex */
        class a extends com.google.protobuf.c<OtherAddress> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public OtherAddress m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new OtherAddress(pVar, f0Var, null);
            }
        }

        /* loaded from: classes5.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements d {

            /* renamed from: e  reason: collision with root package name */
            private Object f42064e;

            /* renamed from: f  reason: collision with root package name */
            private Any f42065f;

            /* renamed from: g  reason: collision with root package name */
            private q2<Any, Any.b, com.google.protobuf.f> f42066g;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return h.J.d(OtherAddress.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public OtherAddress build() {
                OtherAddress I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public OtherAddress I() {
                OtherAddress otherAddress = new OtherAddress(this, (a) null);
                otherAddress.name_ = this.f42064e;
                q2<Any, Any.b, com.google.protobuf.f> q2Var = this.f42066g;
                if (q2Var == null) {
                    otherAddress.value_ = this.f42065f;
                } else {
                    otherAddress.value_ = q2Var.b();
                }
                Q();
                return otherAddress;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public OtherAddress getDefaultInstanceForType() {
                return OtherAddress.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: d0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.channelz.v1.Address.OtherAddress.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.channelz.v1.Address.OtherAddress.access$2500()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.channelz.v1.Address$OtherAddress r3 = (io.grpc.channelz.v1.Address.OtherAddress) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.channelz.v1.Address$OtherAddress r4 = (io.grpc.channelz.v1.Address.OtherAddress) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.channelz.v1.Address.OtherAddress.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.channelz.v1.Address$OtherAddress$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof OtherAddress) {
                    return g0((OtherAddress) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b g0(OtherAddress otherAddress) {
                if (otherAddress == OtherAddress.getDefaultInstance()) {
                    return this;
                }
                if (!otherAddress.getName().isEmpty()) {
                    this.f42064e = otherAddress.name_;
                    R();
                }
                if (otherAddress.hasValue()) {
                    i0(otherAddress.getValue());
                }
                z(((GeneratedMessageV3) otherAddress).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return h.I;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: h0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            public b i0(Any any) {
                q2<Any, Any.b, com.google.protobuf.f> q2Var = this.f42066g;
                if (q2Var == null) {
                    Any any2 = this.f42065f;
                    if (any2 != null) {
                        this.f42065f = Any.newBuilder(any2).d0(any).I();
                    } else {
                        this.f42065f = any;
                    }
                    R();
                } else {
                    q2Var.e(any);
                }
                return this;
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
                this.f42064e = "";
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f42064e = "";
                b0();
            }
        }

        /* synthetic */ OtherAddress(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static OtherAddress getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return h.I;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static OtherAddress parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (OtherAddress) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static OtherAddress parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<OtherAddress> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof OtherAddress)) {
                return super.equals(obj);
            }
            OtherAddress otherAddress = (OtherAddress) obj;
            if (getName().equals(otherAddress.getName()) && hasValue() == otherAddress.hasValue()) {
                return (!hasValue() || getValue().equals(otherAddress.getValue())) && this.unknownFields.equals(otherAddress.unknownFields);
            }
            return false;
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
        public e2<OtherAddress> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int computeStringSize = GeneratedMessageV3.isStringEmpty(this.name_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.name_);
            if (this.value_ != null) {
                computeStringSize += CodedOutputStream.G(2, getValue());
            }
            int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public Any getValue() {
            Any any = this.value_;
            return any == null ? Any.getDefaultInstance() : any;
        }

        public com.google.protobuf.f getValueOrBuilder() {
            return getValue();
        }

        public boolean hasValue() {
            return this.value_ != null;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode();
            if (hasValue()) {
                hashCode = (((hashCode * 37) + 2) * 53) + getValue().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return h.J.d(OtherAddress.class, b.class);
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
            return new OtherAddress();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (!GeneratedMessageV3.isStringEmpty(this.name_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.name_);
            }
            if (this.value_ != null) {
                codedOutputStream.L0(2, getValue());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ OtherAddress(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(OtherAddress otherAddress) {
            return DEFAULT_INSTANCE.toBuilder().g0(otherAddress);
        }

        public static OtherAddress parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private OtherAddress(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static OtherAddress parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (OtherAddress) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static OtherAddress parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public OtherAddress getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
        }

        public static OtherAddress parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private OtherAddress() {
            this.memoizedIsInitialized = (byte) -1;
            this.name_ = "";
        }

        public static OtherAddress parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static OtherAddress parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static OtherAddress parseFrom(InputStream inputStream) throws IOException {
            return (OtherAddress) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private OtherAddress(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                this.name_ = pVar.K();
                            } else if (L != 18) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                Any any = this.value_;
                                Any.b builder = any != null ? any.toBuilder() : null;
                                Any any2 = (Any) pVar.B(Any.parser(), f0Var);
                                this.value_ = any2;
                                if (builder != null) {
                                    builder.d0(any2);
                                    this.value_ = builder.I();
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

        public static OtherAddress parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (OtherAddress) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static OtherAddress parseFrom(com.google.protobuf.p pVar) throws IOException {
            return (OtherAddress) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static OtherAddress parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
            return (OtherAddress) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes5.dex */
    public static final class TcpIpAddress extends GeneratedMessageV3 implements e {
        public static final int IP_ADDRESS_FIELD_NUMBER = 1;
        public static final int PORT_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private ByteString ipAddress_;
        private byte memoizedIsInitialized;
        private int port_;
        private static final TcpIpAddress DEFAULT_INSTANCE = new TcpIpAddress();
        private static final e2<TcpIpAddress> PARSER = new a();

        /* loaded from: classes5.dex */
        class a extends com.google.protobuf.c<TcpIpAddress> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public TcpIpAddress m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new TcpIpAddress(pVar, f0Var, null);
            }
        }

        /* loaded from: classes5.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements e {

            /* renamed from: e  reason: collision with root package name */
            private ByteString f42067e;

            /* renamed from: f  reason: collision with root package name */
            private int f42068f;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return h.F.d(TcpIpAddress.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public TcpIpAddress build() {
                TcpIpAddress I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public TcpIpAddress I() {
                TcpIpAddress tcpIpAddress = new TcpIpAddress(this, (a) null);
                tcpIpAddress.ipAddress_ = this.f42067e;
                tcpIpAddress.port_ = this.f42068f;
                Q();
                return tcpIpAddress;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public TcpIpAddress getDefaultInstanceForType() {
                return TcpIpAddress.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: d0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.channelz.v1.Address.TcpIpAddress.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.channelz.v1.Address.TcpIpAddress.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.channelz.v1.Address$TcpIpAddress r3 = (io.grpc.channelz.v1.Address.TcpIpAddress) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.channelz.v1.Address$TcpIpAddress r4 = (io.grpc.channelz.v1.Address.TcpIpAddress) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.channelz.v1.Address.TcpIpAddress.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.channelz.v1.Address$TcpIpAddress$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof TcpIpAddress) {
                    return g0((TcpIpAddress) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b g0(TcpIpAddress tcpIpAddress) {
                if (tcpIpAddress == TcpIpAddress.getDefaultInstance()) {
                    return this;
                }
                if (tcpIpAddress.getIpAddress() != ByteString.EMPTY) {
                    j0(tcpIpAddress.getIpAddress());
                }
                if (tcpIpAddress.getPort() != 0) {
                    k0(tcpIpAddress.getPort());
                }
                z(((GeneratedMessageV3) tcpIpAddress).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return h.E;
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

            public b j0(ByteString byteString) {
                Objects.requireNonNull(byteString);
                this.f42067e = byteString;
                R();
                return this;
            }

            public b k0(int i9) {
                this.f42068f = i9;
                R();
                return this;
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
                this.f42067e = ByteString.EMPTY;
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f42067e = ByteString.EMPTY;
                b0();
            }
        }

        /* synthetic */ TcpIpAddress(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static TcpIpAddress getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return h.E;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static TcpIpAddress parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (TcpIpAddress) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static TcpIpAddress parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<TcpIpAddress> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof TcpIpAddress)) {
                return super.equals(obj);
            }
            TcpIpAddress tcpIpAddress = (TcpIpAddress) obj;
            return getIpAddress().equals(tcpIpAddress.getIpAddress()) && getPort() == tcpIpAddress.getPort() && this.unknownFields.equals(tcpIpAddress.unknownFields);
        }

        public ByteString getIpAddress() {
            return this.ipAddress_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<TcpIpAddress> getParserForType() {
            return PARSER;
        }

        public int getPort() {
            return this.port_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int h10 = this.ipAddress_.isEmpty() ? 0 : 0 + CodedOutputStream.h(1, this.ipAddress_);
            int i10 = this.port_;
            if (i10 != 0) {
                h10 += CodedOutputStream.x(2, i10);
            }
            int serializedSize = h10 + this.unknownFields.getSerializedSize();
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
            int hashCode = ((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getIpAddress().hashCode()) * 37) + 2) * 53) + getPort()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode;
            return hashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return h.F.d(TcpIpAddress.class, b.class);
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
            return new TcpIpAddress();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (!this.ipAddress_.isEmpty()) {
                codedOutputStream.r0(1, this.ipAddress_);
            }
            int i9 = this.port_;
            if (i9 != 0) {
                codedOutputStream.H0(2, i9);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ TcpIpAddress(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(TcpIpAddress tcpIpAddress) {
            return DEFAULT_INSTANCE.toBuilder().g0(tcpIpAddress);
        }

        public static TcpIpAddress parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private TcpIpAddress(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static TcpIpAddress parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (TcpIpAddress) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static TcpIpAddress parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public TcpIpAddress getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
        }

        public static TcpIpAddress parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private TcpIpAddress() {
            this.memoizedIsInitialized = (byte) -1;
            this.ipAddress_ = ByteString.EMPTY;
        }

        public static TcpIpAddress parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static TcpIpAddress parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static TcpIpAddress parseFrom(InputStream inputStream) throws IOException {
            return (TcpIpAddress) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private TcpIpAddress(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                    this.ipAddress_ = pVar.s();
                                } else if (L != 16) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    this.port_ = pVar.z();
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

        public static TcpIpAddress parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (TcpIpAddress) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static TcpIpAddress parseFrom(com.google.protobuf.p pVar) throws IOException {
            return (TcpIpAddress) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static TcpIpAddress parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
            return (TcpIpAddress) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes5.dex */
    public static final class UdsAddress extends GeneratedMessageV3 implements f {
        public static final int FILENAME_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private volatile Object filename_;
        private byte memoizedIsInitialized;
        private static final UdsAddress DEFAULT_INSTANCE = new UdsAddress();
        private static final e2<UdsAddress> PARSER = new a();

        /* loaded from: classes5.dex */
        class a extends com.google.protobuf.c<UdsAddress> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public UdsAddress m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new UdsAddress(pVar, f0Var, null);
            }
        }

        /* loaded from: classes5.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements f {

            /* renamed from: e  reason: collision with root package name */
            private Object f42069e;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return h.H.d(UdsAddress.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public UdsAddress build() {
                UdsAddress I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public UdsAddress I() {
                UdsAddress udsAddress = new UdsAddress(this, (a) null);
                udsAddress.filename_ = this.f42069e;
                Q();
                return udsAddress;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public UdsAddress getDefaultInstanceForType() {
                return UdsAddress.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: d0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.channelz.v1.Address.UdsAddress.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.channelz.v1.Address.UdsAddress.access$1500()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.channelz.v1.Address$UdsAddress r3 = (io.grpc.channelz.v1.Address.UdsAddress) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.channelz.v1.Address$UdsAddress r4 = (io.grpc.channelz.v1.Address.UdsAddress) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.channelz.v1.Address.UdsAddress.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.channelz.v1.Address$UdsAddress$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof UdsAddress) {
                    return g0((UdsAddress) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b g0(UdsAddress udsAddress) {
                if (udsAddress == UdsAddress.getDefaultInstance()) {
                    return this;
                }
                if (!udsAddress.getFilename().isEmpty()) {
                    this.f42069e = udsAddress.filename_;
                    R();
                }
                z(((GeneratedMessageV3) udsAddress).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return h.G;
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
                this.f42069e = "";
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f42069e = "";
                b0();
            }
        }

        /* synthetic */ UdsAddress(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static UdsAddress getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return h.G;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static UdsAddress parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (UdsAddress) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static UdsAddress parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<UdsAddress> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof UdsAddress)) {
                return super.equals(obj);
            }
            UdsAddress udsAddress = (UdsAddress) obj;
            return getFilename().equals(udsAddress.getFilename()) && this.unknownFields.equals(udsAddress.unknownFields);
        }

        public String getFilename() {
            Object obj = this.filename_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.filename_ = stringUtf8;
            return stringUtf8;
        }

        public ByteString getFilenameBytes() {
            Object obj = this.filename_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.filename_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<UdsAddress> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int computeStringSize = (GeneratedMessageV3.isStringEmpty(this.filename_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.filename_)) + this.unknownFields.getSerializedSize();
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
            int hashCode = ((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getFilename().hashCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode;
            return hashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return h.H.d(UdsAddress.class, b.class);
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
            return new UdsAddress();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (!GeneratedMessageV3.isStringEmpty(this.filename_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.filename_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ UdsAddress(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(UdsAddress udsAddress) {
            return DEFAULT_INSTANCE.toBuilder().g0(udsAddress);
        }

        public static UdsAddress parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private UdsAddress(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static UdsAddress parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (UdsAddress) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static UdsAddress parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public UdsAddress getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
        }

        public static UdsAddress parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private UdsAddress() {
            this.memoizedIsInitialized = (byte) -1;
            this.filename_ = "";
        }

        public static UdsAddress parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static UdsAddress parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static UdsAddress parseFrom(InputStream inputStream) throws IOException {
            return (UdsAddress) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private UdsAddress(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                this.filename_ = pVar.K();
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

        public static UdsAddress parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (UdsAddress) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static UdsAddress parseFrom(com.google.protobuf.p pVar) throws IOException {
            return (UdsAddress) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static UdsAddress parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
            return (UdsAddress) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends com.google.protobuf.c<Address> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public Address m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new Address(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f42070a;

        static {
            int[] iArr = new int[AddressCase.values().length];
            f42070a = iArr;
            try {
                iArr[AddressCase.TCPIP_ADDRESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f42070a[AddressCase.UDS_ADDRESS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f42070a[AddressCase.OTHER_ADDRESS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f42070a[AddressCase.ADDRESS_NOT_SET.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* loaded from: classes5.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements io.grpc.channelz.v1.a {

        /* renamed from: e  reason: collision with root package name */
        private int f42071e;

        /* renamed from: f  reason: collision with root package name */
        private Object f42072f;

        /* renamed from: g  reason: collision with root package name */
        private q2<TcpIpAddress, TcpIpAddress.b, e> f42073g;

        /* renamed from: h  reason: collision with root package name */
        private q2<UdsAddress, UdsAddress.b, f> f42074h;

        /* renamed from: i  reason: collision with root package name */
        private q2<OtherAddress, OtherAddress.b, d> f42075i;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return h.D.d(Address.class, c.class);
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
            if (this.f42071e == 1) {
                q2<TcpIpAddress, TcpIpAddress.b, e> q2Var = this.f42073g;
                if (q2Var == null) {
                    address.address_ = this.f42072f;
                } else {
                    address.address_ = q2Var.b();
                }
            }
            if (this.f42071e == 2) {
                q2<UdsAddress, UdsAddress.b, f> q2Var2 = this.f42074h;
                if (q2Var2 == null) {
                    address.address_ = this.f42072f;
                } else {
                    address.address_ = q2Var2.b();
                }
            }
            if (this.f42071e == 3) {
                q2<OtherAddress, OtherAddress.b, d> q2Var3 = this.f42075i;
                if (q2Var3 == null) {
                    address.address_ = this.f42072f;
                } else {
                    address.address_ = q2Var3.b();
                }
            }
            address.addressCase_ = this.f42071e;
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
        public io.grpc.channelz.v1.Address.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.channelz.v1.Address.access$3500()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.channelz.v1.Address r3 = (io.grpc.channelz.v1.Address) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.channelz.v1.Address r4 = (io.grpc.channelz.v1.Address) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.channelz.v1.Address.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.channelz.v1.Address$c");
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
            int i9 = b.f42070a[address.getAddressCase().ordinal()];
            if (i9 == 1) {
                i0(address.getTcpipAddress());
            } else if (i9 == 2) {
                j0(address.getUdsAddress());
            } else if (i9 == 3) {
                h0(address.getOtherAddress());
            }
            z(((GeneratedMessageV3) address).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return h.C;
        }

        public c h0(OtherAddress otherAddress) {
            q2<OtherAddress, OtherAddress.b, d> q2Var = this.f42075i;
            if (q2Var == null) {
                if (this.f42071e == 3 && this.f42072f != OtherAddress.getDefaultInstance()) {
                    this.f42072f = OtherAddress.newBuilder((OtherAddress) this.f42072f).g0(otherAddress).I();
                } else {
                    this.f42072f = otherAddress;
                }
                R();
            } else {
                if (this.f42071e == 3) {
                    q2Var.e(otherAddress);
                }
                this.f42075i.g(otherAddress);
            }
            this.f42071e = 3;
            return this;
        }

        public c i0(TcpIpAddress tcpIpAddress) {
            q2<TcpIpAddress, TcpIpAddress.b, e> q2Var = this.f42073g;
            if (q2Var == null) {
                if (this.f42071e == 1 && this.f42072f != TcpIpAddress.getDefaultInstance()) {
                    this.f42072f = TcpIpAddress.newBuilder((TcpIpAddress) this.f42072f).g0(tcpIpAddress).I();
                } else {
                    this.f42072f = tcpIpAddress;
                }
                R();
            } else {
                if (this.f42071e == 1) {
                    q2Var.e(tcpIpAddress);
                }
                this.f42073g.g(tcpIpAddress);
            }
            this.f42071e = 1;
            return this;
        }

        public c j0(UdsAddress udsAddress) {
            q2<UdsAddress, UdsAddress.b, f> q2Var = this.f42074h;
            if (q2Var == null) {
                if (this.f42071e == 2 && this.f42072f != UdsAddress.getDefaultInstance()) {
                    this.f42072f = UdsAddress.newBuilder((UdsAddress) this.f42072f).g0(udsAddress).I();
                } else {
                    this.f42072f = udsAddress;
                }
                R();
            } else {
                if (this.f42071e == 2) {
                    q2Var.e(udsAddress);
                }
                this.f42074h.g(udsAddress);
            }
            this.f42071e = 2;
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: k0 */
        public final c z(h3 h3Var) {
            return (c) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: l0 */
        public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.c(fieldDescriptor, obj);
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
            this.f42071e = 0;
            b0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f42071e = 0;
            b0();
        }
    }

    /* loaded from: classes5.dex */
    public interface d extends r1 {
    }

    /* loaded from: classes5.dex */
    public interface e extends r1 {
    }

    /* loaded from: classes5.dex */
    public interface f extends r1 {
    }

    /* synthetic */ Address(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static Address getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return h.C;
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
                if (i9 != 2) {
                    if (i9 == 3 && !getOtherAddress().equals(address.getOtherAddress())) {
                        return false;
                    }
                } else if (!getUdsAddress().equals(address.getUdsAddress())) {
                    return false;
                }
            } else if (!getTcpipAddress().equals(address.getTcpipAddress())) {
                return false;
            }
            return this.unknownFields.equals(address.unknownFields);
        }
        return false;
    }

    public AddressCase getAddressCase() {
        return AddressCase.forNumber(this.addressCase_);
    }

    public OtherAddress getOtherAddress() {
        if (this.addressCase_ == 3) {
            return (OtherAddress) this.address_;
        }
        return OtherAddress.getDefaultInstance();
    }

    public d getOtherAddressOrBuilder() {
        if (this.addressCase_ == 3) {
            return (OtherAddress) this.address_;
        }
        return OtherAddress.getDefaultInstance();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<Address> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.addressCase_ == 1 ? 0 + CodedOutputStream.G(1, (TcpIpAddress) this.address_) : 0;
        if (this.addressCase_ == 2) {
            G += CodedOutputStream.G(2, (UdsAddress) this.address_);
        }
        if (this.addressCase_ == 3) {
            G += CodedOutputStream.G(3, (OtherAddress) this.address_);
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public TcpIpAddress getTcpipAddress() {
        if (this.addressCase_ == 1) {
            return (TcpIpAddress) this.address_;
        }
        return TcpIpAddress.getDefaultInstance();
    }

    public e getTcpipAddressOrBuilder() {
        if (this.addressCase_ == 1) {
            return (TcpIpAddress) this.address_;
        }
        return TcpIpAddress.getDefaultInstance();
    }

    public UdsAddress getUdsAddress() {
        if (this.addressCase_ == 2) {
            return (UdsAddress) this.address_;
        }
        return UdsAddress.getDefaultInstance();
    }

    public f getUdsAddressOrBuilder() {
        if (this.addressCase_ == 2) {
            return (UdsAddress) this.address_;
        }
        return UdsAddress.getDefaultInstance();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasOtherAddress() {
        return this.addressCase_ == 3;
    }

    public boolean hasTcpipAddress() {
        return this.addressCase_ == 1;
    }

    public boolean hasUdsAddress() {
        return this.addressCase_ == 2;
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
            hashCode = getTcpipAddress().hashCode();
        } else if (i11 == 2) {
            i9 = ((hashCode2 * 37) + 2) * 53;
            hashCode = getUdsAddress().hashCode();
        } else {
            if (i11 == 3) {
                i9 = ((hashCode2 * 37) + 3) * 53;
                hashCode = getOtherAddress().hashCode();
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
        return h.D.d(Address.class, c.class);
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
            codedOutputStream.L0(1, (TcpIpAddress) this.address_);
        }
        if (this.addressCase_ == 2) {
            codedOutputStream.L0(2, (UdsAddress) this.address_);
        }
        if (this.addressCase_ == 3) {
            codedOutputStream.L0(3, (OtherAddress) this.address_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ Address(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(Address address) {
        return DEFAULT_INSTANCE.toBuilder().g0(address);
    }

    public static Address parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private Address(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.addressCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Address parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
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

    public static Address parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
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

    public static Address parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static Address parseFrom(InputStream inputStream) throws IOException {
        return (Address) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private Address(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                TcpIpAddress.b builder = this.addressCase_ == 1 ? ((TcpIpAddress) this.address_).toBuilder() : null;
                                o1 B = pVar.B(TcpIpAddress.parser(), f0Var);
                                this.address_ = B;
                                if (builder != null) {
                                    builder.g0((TcpIpAddress) B);
                                    this.address_ = builder.I();
                                }
                                this.addressCase_ = 1;
                            } else if (L == 18) {
                                UdsAddress.b builder2 = this.addressCase_ == 2 ? ((UdsAddress) this.address_).toBuilder() : null;
                                o1 B2 = pVar.B(UdsAddress.parser(), f0Var);
                                this.address_ = B2;
                                if (builder2 != null) {
                                    builder2.g0((UdsAddress) B2);
                                    this.address_ = builder2.I();
                                }
                                this.addressCase_ = 2;
                            } else if (L != 26) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                OtherAddress.b builder3 = this.addressCase_ == 3 ? ((OtherAddress) this.address_).toBuilder() : null;
                                o1 B3 = pVar.B(OtherAddress.parser(), f0Var);
                                this.address_ = B3;
                                if (builder3 != null) {
                                    builder3.g0((OtherAddress) B3);
                                    this.address_ = builder3.I();
                                }
                                this.addressCase_ = 3;
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

    public static Address parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Address) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static Address parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (Address) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static Address parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
        return (Address) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
