package io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.h3;
import com.google.protobuf.u0;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class EnvoyInternalAddress extends GeneratedMessageV3 implements q {
    private static final EnvoyInternalAddress DEFAULT_INSTANCE = new EnvoyInternalAddress();
    private static final e2<EnvoyInternalAddress> PARSER = new a();
    public static final int SERVER_LISTENER_NAME_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private int addressNameSpecifierCase_;
    private Object addressNameSpecifier_;
    private byte memoizedIsInitialized;

    /* loaded from: classes6.dex */
    public enum AddressNameSpecifierCase implements u0.c {
        SERVER_LISTENER_NAME(1),
        ADDRESSNAMESPECIFIER_NOT_SET(0);
        
        private final int value;

        AddressNameSpecifierCase(int i9) {
            this.value = i9;
        }

        public static AddressNameSpecifierCase forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    return null;
                }
                return SERVER_LISTENER_NAME;
            }
            return ADDRESSNAMESPECIFIER_NOT_SET;
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static AddressNameSpecifierCase valueOf(int i9) {
            return forNumber(i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<EnvoyInternalAddress> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public EnvoyInternalAddress m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return new EnvoyInternalAddress(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f47832a;

        static {
            int[] iArr = new int[AddressNameSpecifierCase.values().length];
            f47832a = iArr;
            try {
                iArr[AddressNameSpecifierCase.SERVER_LISTENER_NAME.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f47832a[AddressNameSpecifierCase.ADDRESSNAMESPECIFIER_NOT_SET.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements q {

        /* renamed from: e  reason: collision with root package name */
        private int f47833e;

        /* renamed from: f  reason: collision with root package name */
        private Object f47834f;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.b.f48172d.d(EnvoyInternalAddress.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public EnvoyInternalAddress build() {
            EnvoyInternalAddress I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public EnvoyInternalAddress I() {
            EnvoyInternalAddress envoyInternalAddress = new EnvoyInternalAddress(this, (a) null);
            if (this.f47833e == 1) {
                envoyInternalAddress.addressNameSpecifier_ = this.f47834f;
            }
            envoyInternalAddress.addressNameSpecifierCase_ = this.f47833e;
            Q();
            return envoyInternalAddress;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public EnvoyInternalAddress getDefaultInstanceForType() {
            return EnvoyInternalAddress.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.EnvoyInternalAddress.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.EnvoyInternalAddress.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.EnvoyInternalAddress r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.EnvoyInternalAddress) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.EnvoyInternalAddress r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.EnvoyInternalAddress) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.EnvoyInternalAddress.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.EnvoyInternalAddress$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public c v(com.google.protobuf.l1 l1Var) {
            if (l1Var instanceof EnvoyInternalAddress) {
                return g0((EnvoyInternalAddress) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public c g0(EnvoyInternalAddress envoyInternalAddress) {
            if (envoyInternalAddress == EnvoyInternalAddress.getDefaultInstance()) {
                return this;
            }
            if (b.f47832a[envoyInternalAddress.getAddressNameSpecifierCase().ordinal()] == 1) {
                this.f47833e = 1;
                this.f47834f = envoyInternalAddress.addressNameSpecifier_;
                R();
            }
            z(((GeneratedMessageV3) envoyInternalAddress).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.b.f48171c;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public final c z(h3 h3Var) {
            return (c) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: i0 */
        public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.c(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: j0 */
        public final c f1(h3 h3Var) {
            return (c) super.f1(h3Var);
        }

        /* synthetic */ c(a aVar) {
            this();
        }

        private c() {
            this.f47833e = 0;
            b0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f47833e = 0;
            b0();
        }
    }

    /* synthetic */ EnvoyInternalAddress(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static EnvoyInternalAddress getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.b.f48171c;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static EnvoyInternalAddress parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (EnvoyInternalAddress) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static EnvoyInternalAddress parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<EnvoyInternalAddress> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof EnvoyInternalAddress)) {
            return super.equals(obj);
        }
        EnvoyInternalAddress envoyInternalAddress = (EnvoyInternalAddress) obj;
        if (getAddressNameSpecifierCase().equals(envoyInternalAddress.getAddressNameSpecifierCase())) {
            return (this.addressNameSpecifierCase_ != 1 || getServerListenerName().equals(envoyInternalAddress.getServerListenerName())) && this.unknownFields.equals(envoyInternalAddress.unknownFields);
        }
        return false;
    }

    public AddressNameSpecifierCase getAddressNameSpecifierCase() {
        return AddressNameSpecifierCase.forNumber(this.addressNameSpecifierCase_);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<EnvoyInternalAddress> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = (this.addressNameSpecifierCase_ == 1 ? 0 + GeneratedMessageV3.computeStringSize(1, this.addressNameSpecifier_) : 0) + this.unknownFields.getSerializedSize();
        this.memoizedSize = computeStringSize;
        return computeStringSize;
    }

    public String getServerListenerName() {
        String str = this.addressNameSpecifierCase_ == 1 ? this.addressNameSpecifier_ : "";
        if (str instanceof String) {
            return (String) str;
        }
        String stringUtf8 = ((ByteString) str).toStringUtf8();
        if (this.addressNameSpecifierCase_ == 1) {
            this.addressNameSpecifier_ = stringUtf8;
        }
        return stringUtf8;
    }

    public ByteString getServerListenerNameBytes() {
        String str = this.addressNameSpecifierCase_ == 1 ? this.addressNameSpecifier_ : "";
        if (str instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) str);
            if (this.addressNameSpecifierCase_ == 1) {
                this.addressNameSpecifier_ = copyFromUtf8;
            }
            return copyFromUtf8;
        }
        return (ByteString) str;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasServerListenerName() {
        return this.addressNameSpecifierCase_ == 1;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (this.addressNameSpecifierCase_ == 1) {
            hashCode = (((hashCode * 37) + 1) * 53) + getServerListenerName().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.b.f48172d.d(EnvoyInternalAddress.class, c.class);
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
        return new EnvoyInternalAddress();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.addressNameSpecifierCase_ == 1) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.addressNameSpecifier_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ EnvoyInternalAddress(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(EnvoyInternalAddress envoyInternalAddress) {
        return DEFAULT_INSTANCE.toBuilder().g0(envoyInternalAddress);
    }

    public static EnvoyInternalAddress parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private EnvoyInternalAddress(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.addressNameSpecifierCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static EnvoyInternalAddress parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (EnvoyInternalAddress) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static EnvoyInternalAddress parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public EnvoyInternalAddress getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).g0(this);
    }

    public static EnvoyInternalAddress parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    public static EnvoyInternalAddress parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    private EnvoyInternalAddress() {
        this.addressNameSpecifierCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static EnvoyInternalAddress parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static EnvoyInternalAddress parseFrom(InputStream inputStream) throws IOException {
        return (EnvoyInternalAddress) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private EnvoyInternalAddress(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                            String K = pVar.K();
                            this.addressNameSpecifierCase_ = 1;
                            this.addressNameSpecifier_ = K;
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

    public static EnvoyInternalAddress parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (EnvoyInternalAddress) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static EnvoyInternalAddress parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (EnvoyInternalAddress) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static EnvoyInternalAddress parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
        return (EnvoyInternalAddress) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
