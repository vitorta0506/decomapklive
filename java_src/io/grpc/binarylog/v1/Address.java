package io.grpc.binarylog.v1;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.h2;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.p;
import com.google.protobuf.u0;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class Address extends GeneratedMessageV3 implements io.grpc.binarylog.v1.a {
    public static final int ADDRESS_FIELD_NUMBER = 2;
    public static final int IP_PORT_FIELD_NUMBER = 3;
    public static final int TYPE_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private volatile Object address_;
    private int ipPort_;
    private byte memoizedIsInitialized;
    private int type_;
    private static final Address DEFAULT_INSTANCE = new Address();
    private static final e2<Address> PARSER = new a();

    /* loaded from: classes5.dex */
    public enum Type implements h2 {
        TYPE_UNKNOWN(0),
        TYPE_IPV4(1),
        TYPE_IPV6(2),
        TYPE_UNIX(3),
        UNRECOGNIZED(-1);
        
        public static final int TYPE_IPV4_VALUE = 1;
        public static final int TYPE_IPV6_VALUE = 2;
        public static final int TYPE_UNIX_VALUE = 3;
        public static final int TYPE_UNKNOWN_VALUE = 0;
        private final int value;
        private static final u0.d<Type> internalValueMap = new a();
        private static final Type[] VALUES = values();

        /* loaded from: classes5.dex */
        class a implements u0.d<Type> {
            a() {
            }

            @Override // com.google.protobuf.u0.d
            /* renamed from: b */
            public Type a(int i9) {
                return Type.forNumber(i9);
            }
        }

        Type(int i9) {
            this.value = i9;
        }

        public static Type forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 != 2) {
                        if (i9 != 3) {
                            return null;
                        }
                        return TYPE_UNIX;
                    }
                    return TYPE_IPV6;
                }
                return TYPE_IPV4;
            }
            return TYPE_UNKNOWN;
        }

        public static final Descriptors.d getDescriptor() {
            return Address.getDescriptor().k().get(0);
        }

        public static u0.d<Type> internalGetValueMap() {
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
        public static Type valueOf(int i9) {
            return forNumber(i9);
        }

        public static Type valueOf(Descriptors.e eVar) {
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
    /* loaded from: classes5.dex */
    public class a extends com.google.protobuf.c<Address> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public Address m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new Address(pVar, f0Var, null);
        }
    }

    /* loaded from: classes5.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements io.grpc.binarylog.v1.a {

        /* renamed from: e  reason: collision with root package name */
        private int f41981e;

        /* renamed from: f  reason: collision with root package name */
        private Object f41982f;

        /* renamed from: g  reason: collision with root package name */
        private int f41983g;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return io.grpc.binarylog.v1.b.f42035p.d(Address.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
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
            address.type_ = this.f41981e;
            address.address_ = this.f41982f;
            address.ipPort_ = this.f41983g;
            Q();
            return address;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
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
        public io.grpc.binarylog.v1.Address.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.binarylog.v1.Address.access$800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.binarylog.v1.Address r3 = (io.grpc.binarylog.v1.Address) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.binarylog.v1.Address r4 = (io.grpc.binarylog.v1.Address) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.binarylog.v1.Address.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.binarylog.v1.Address$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof Address) {
                return g0((Address) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b g0(Address address) {
            if (address == Address.getDefaultInstance()) {
                return this;
            }
            if (address.type_ != 0) {
                k0(address.getTypeValue());
            }
            if (!address.getAddress().isEmpty()) {
                this.f41982f = address.address_;
                R();
            }
            if (address.getIpPort() != 0) {
                j0(address.getIpPort());
            }
            z(((GeneratedMessageV3) address).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return io.grpc.binarylog.v1.b.f42034o;
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

        public b j0(int i9) {
            this.f41983g = i9;
            R();
            return this;
        }

        public b k0(int i9) {
            this.f41981e = i9;
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
            this.f41981e = 0;
            this.f41982f = "";
            b0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f41981e = 0;
            this.f41982f = "";
            b0();
        }
    }

    /* synthetic */ Address(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static Address getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return io.grpc.binarylog.v1.b.f42034o;
    }

    public static b newBuilder() {
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
        return this.type_ == address.type_ && getAddress().equals(address.getAddress()) && getIpPort() == address.getIpPort() && this.unknownFields.equals(address.unknownFields);
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

    public int getIpPort() {
        return this.ipPort_;
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
        int l10 = this.type_ != Type.TYPE_UNKNOWN.getNumber() ? 0 + CodedOutputStream.l(1, this.type_) : 0;
        if (!GeneratedMessageV3.isStringEmpty(this.address_)) {
            l10 += GeneratedMessageV3.computeStringSize(2, this.address_);
        }
        int i10 = this.ipPort_;
        if (i10 != 0) {
            l10 += CodedOutputStream.Y(3, i10);
        }
        int serializedSize = l10 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public Type getType() {
        Type valueOf = Type.valueOf(this.type_);
        return valueOf == null ? Type.UNRECOGNIZED : valueOf;
    }

    public int getTypeValue() {
        return this.type_;
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
        int hashCode = ((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + this.type_) * 37) + 2) * 53) + getAddress().hashCode()) * 37) + 3) * 53) + getIpPort()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode;
        return hashCode;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return io.grpc.binarylog.v1.b.f42035p.d(Address.class, b.class);
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
        if (this.type_ != Type.TYPE_UNKNOWN.getNumber()) {
            codedOutputStream.v0(1, this.type_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.address_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.address_);
        }
        int i9 = this.ipPort_;
        if (i9 != 0) {
            codedOutputStream.c1(3, i9);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ Address(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(Address address) {
        return DEFAULT_INSTANCE.toBuilder().g0(address);
    }

    public static Address parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private Address(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
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
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static Address parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private Address() {
        this.memoizedIsInitialized = (byte) -1;
        this.type_ = 0;
        this.address_ = "";
    }

    public static Address parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static Address parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static Address parseFrom(InputStream inputStream) throws IOException {
        return (Address) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private Address(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            this.type_ = pVar.u();
                        } else if (L == 18) {
                            this.address_ = pVar.K();
                        } else if (L != 24) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            this.ipPort_ = pVar.M();
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

    public static Address parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Address) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static Address parseFrom(p pVar) throws IOException {
        return (Address) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static Address parseFrom(p pVar, f0 f0Var) throws IOException {
        return (Address) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
