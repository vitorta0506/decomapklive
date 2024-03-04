package io.grpc.xds.shaded.io.envoyproxy.envoy.config.metrics.v3;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.UInt64Value;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.f3;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.o1;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import com.google.protobuf.u0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Address;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class DogStatsdSink extends GeneratedMessageV3 implements r1 {
    public static final int ADDRESS_FIELD_NUMBER = 1;
    public static final int MAX_BYTES_PER_DATAGRAM_FIELD_NUMBER = 4;
    public static final int PREFIX_FIELD_NUMBER = 3;
    private static final long serialVersionUID = 0;
    private int dogStatsdSpecifierCase_;
    private Object dogStatsdSpecifier_;
    private UInt64Value maxBytesPerDatagram_;
    private byte memoizedIsInitialized;
    private volatile Object prefix_;
    private static final DogStatsdSink DEFAULT_INSTANCE = new DogStatsdSink();
    private static final e2<DogStatsdSink> PARSER = new a();

    /* loaded from: classes6.dex */
    public enum DogStatsdSpecifierCase implements u0.c {
        ADDRESS(1),
        DOGSTATSDSPECIFIER_NOT_SET(0);
        
        private final int value;

        DogStatsdSpecifierCase(int i9) {
            this.value = i9;
        }

        public static DogStatsdSpecifierCase forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    return null;
                }
                return ADDRESS;
            }
            return DOGSTATSDSPECIFIER_NOT_SET;
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static DogStatsdSpecifierCase valueOf(int i9) {
            return forNumber(i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<DogStatsdSink> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public DogStatsdSink m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new DogStatsdSink(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f48873a;

        static {
            int[] iArr = new int[DogStatsdSpecifierCase.values().length];
            f48873a = iArr;
            try {
                iArr[DogStatsdSpecifierCase.ADDRESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f48873a[DogStatsdSpecifierCase.DOGSTATSDSPECIFIER_NOT_SET.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private int f48874e;

        /* renamed from: f  reason: collision with root package name */
        private Object f48875f;

        /* renamed from: g  reason: collision with root package name */
        private q2<Address, Address.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.a> f48876g;

        /* renamed from: h  reason: collision with root package name */
        private Object f48877h;

        /* renamed from: i  reason: collision with root package name */
        private UInt64Value f48878i;

        /* renamed from: j  reason: collision with root package name */
        private q2<UInt64Value, UInt64Value.b, f3> f48879j;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return d.f48926n.d(DogStatsdSink.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public DogStatsdSink build() {
            DogStatsdSink I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public DogStatsdSink I() {
            DogStatsdSink dogStatsdSink = new DogStatsdSink(this, (a) null);
            if (this.f48874e == 1) {
                q2<Address, Address.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.a> q2Var = this.f48876g;
                if (q2Var == null) {
                    dogStatsdSink.dogStatsdSpecifier_ = this.f48875f;
                } else {
                    dogStatsdSink.dogStatsdSpecifier_ = q2Var.b();
                }
            }
            dogStatsdSink.prefix_ = this.f48877h;
            q2<UInt64Value, UInt64Value.b, f3> q2Var2 = this.f48879j;
            if (q2Var2 == null) {
                dogStatsdSink.maxBytesPerDatagram_ = this.f48878i;
            } else {
                dogStatsdSink.maxBytesPerDatagram_ = q2Var2.b();
            }
            dogStatsdSink.dogStatsdSpecifierCase_ = this.f48874e;
            Q();
            return dogStatsdSink;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public DogStatsdSink getDefaultInstanceForType() {
            return DogStatsdSink.getDefaultInstance();
        }

        public c d0(Address address) {
            q2<Address, Address.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.a> q2Var = this.f48876g;
            if (q2Var == null) {
                if (this.f48874e == 1 && this.f48875f != Address.getDefaultInstance()) {
                    this.f48875f = Address.newBuilder((Address) this.f48875f).h0(address).I();
                } else {
                    this.f48875f = address;
                }
                R();
            } else {
                if (this.f48874e == 1) {
                    q2Var.e(address);
                }
                this.f48876g.g(address);
            }
            this.f48874e = 1;
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.metrics.v3.DogStatsdSink.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.metrics.v3.DogStatsdSink.access$900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.metrics.v3.DogStatsdSink r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.metrics.v3.DogStatsdSink) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.metrics.v3.DogStatsdSink r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.metrics.v3.DogStatsdSink) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.metrics.v3.DogStatsdSink.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.metrics.v3.DogStatsdSink$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        public c v(l1 l1Var) {
            if (l1Var instanceof DogStatsdSink) {
                return h0((DogStatsdSink) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return d.f48925m;
        }

        public c h0(DogStatsdSink dogStatsdSink) {
            if (dogStatsdSink == DogStatsdSink.getDefaultInstance()) {
                return this;
            }
            if (!dogStatsdSink.getPrefix().isEmpty()) {
                this.f48877h = dogStatsdSink.prefix_;
                R();
            }
            if (dogStatsdSink.hasMaxBytesPerDatagram()) {
                i0(dogStatsdSink.getMaxBytesPerDatagram());
            }
            if (b.f48873a[dogStatsdSink.getDogStatsdSpecifierCase().ordinal()] == 1) {
                d0(dogStatsdSink.getAddress());
            }
            z(((GeneratedMessageV3) dogStatsdSink).unknownFields);
            R();
            return this;
        }

        public c i0(UInt64Value uInt64Value) {
            q2<UInt64Value, UInt64Value.b, f3> q2Var = this.f48879j;
            if (q2Var == null) {
                UInt64Value uInt64Value2 = this.f48878i;
                if (uInt64Value2 != null) {
                    this.f48878i = UInt64Value.newBuilder(uInt64Value2).g0(uInt64Value).I();
                } else {
                    this.f48878i = uInt64Value;
                }
                R();
            } else {
                q2Var.e(uInt64Value);
            }
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

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: l0 */
        public final c f1(h3 h3Var) {
            return (c) super.f1(h3Var);
        }

        /* synthetic */ c(a aVar) {
            this();
        }

        private c() {
            this.f48874e = 0;
            this.f48877h = "";
            b0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f48874e = 0;
            this.f48877h = "";
            b0();
        }
    }

    /* synthetic */ DogStatsdSink(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static DogStatsdSink getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return d.f48925m;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static DogStatsdSink parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (DogStatsdSink) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static DogStatsdSink parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<DogStatsdSink> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof DogStatsdSink)) {
            return super.equals(obj);
        }
        DogStatsdSink dogStatsdSink = (DogStatsdSink) obj;
        if (getPrefix().equals(dogStatsdSink.getPrefix()) && hasMaxBytesPerDatagram() == dogStatsdSink.hasMaxBytesPerDatagram()) {
            if ((!hasMaxBytesPerDatagram() || getMaxBytesPerDatagram().equals(dogStatsdSink.getMaxBytesPerDatagram())) && getDogStatsdSpecifierCase().equals(dogStatsdSink.getDogStatsdSpecifierCase())) {
                return (this.dogStatsdSpecifierCase_ != 1 || getAddress().equals(dogStatsdSink.getAddress())) && this.unknownFields.equals(dogStatsdSink.unknownFields);
            }
            return false;
        }
        return false;
    }

    public Address getAddress() {
        if (this.dogStatsdSpecifierCase_ == 1) {
            return (Address) this.dogStatsdSpecifier_;
        }
        return Address.getDefaultInstance();
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.a getAddressOrBuilder() {
        if (this.dogStatsdSpecifierCase_ == 1) {
            return (Address) this.dogStatsdSpecifier_;
        }
        return Address.getDefaultInstance();
    }

    public DogStatsdSpecifierCase getDogStatsdSpecifierCase() {
        return DogStatsdSpecifierCase.forNumber(this.dogStatsdSpecifierCase_);
    }

    public UInt64Value getMaxBytesPerDatagram() {
        UInt64Value uInt64Value = this.maxBytesPerDatagram_;
        return uInt64Value == null ? UInt64Value.getDefaultInstance() : uInt64Value;
    }

    public f3 getMaxBytesPerDatagramOrBuilder() {
        return getMaxBytesPerDatagram();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<DogStatsdSink> getParserForType() {
        return PARSER;
    }

    public String getPrefix() {
        Object obj = this.prefix_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.prefix_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getPrefixBytes() {
        Object obj = this.prefix_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.prefix_ = copyFromUtf8;
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
        int G = this.dogStatsdSpecifierCase_ == 1 ? 0 + CodedOutputStream.G(1, (Address) this.dogStatsdSpecifier_) : 0;
        if (!GeneratedMessageV3.isStringEmpty(this.prefix_)) {
            G += GeneratedMessageV3.computeStringSize(3, this.prefix_);
        }
        if (this.maxBytesPerDatagram_ != null) {
            G += CodedOutputStream.G(4, getMaxBytesPerDatagram());
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasAddress() {
        return this.dogStatsdSpecifierCase_ == 1;
    }

    public boolean hasMaxBytesPerDatagram() {
        return this.maxBytesPerDatagram_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 3) * 53) + getPrefix().hashCode();
        if (hasMaxBytesPerDatagram()) {
            hashCode = (((hashCode * 37) + 4) * 53) + getMaxBytesPerDatagram().hashCode();
        }
        if (this.dogStatsdSpecifierCase_ == 1) {
            hashCode = (((hashCode * 37) + 1) * 53) + getAddress().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return d.f48926n.d(DogStatsdSink.class, c.class);
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
        return new DogStatsdSink();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.dogStatsdSpecifierCase_ == 1) {
            codedOutputStream.L0(1, (Address) this.dogStatsdSpecifier_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.prefix_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 3, this.prefix_);
        }
        if (this.maxBytesPerDatagram_ != null) {
            codedOutputStream.L0(4, getMaxBytesPerDatagram());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ DogStatsdSink(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(DogStatsdSink dogStatsdSink) {
        return DEFAULT_INSTANCE.toBuilder().h0(dogStatsdSink);
    }

    public static DogStatsdSink parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private DogStatsdSink(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.dogStatsdSpecifierCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static DogStatsdSink parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (DogStatsdSink) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static DogStatsdSink parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public DogStatsdSink getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).h0(this);
    }

    public static DogStatsdSink parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    public static DogStatsdSink parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    private DogStatsdSink() {
        this.dogStatsdSpecifierCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
        this.prefix_ = "";
    }

    public static DogStatsdSink parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static DogStatsdSink parseFrom(InputStream inputStream) throws IOException {
        return (DogStatsdSink) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static DogStatsdSink parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (DogStatsdSink) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    private DogStatsdSink(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            Address.c builder = this.dogStatsdSpecifierCase_ == 1 ? ((Address) this.dogStatsdSpecifier_).toBuilder() : null;
                            o1 B = pVar.B(Address.parser(), f0Var);
                            this.dogStatsdSpecifier_ = B;
                            if (builder != null) {
                                builder.h0((Address) B);
                                this.dogStatsdSpecifier_ = builder.I();
                            }
                            this.dogStatsdSpecifierCase_ = 1;
                        } else if (L == 26) {
                            this.prefix_ = pVar.K();
                        } else if (L != 34) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            UInt64Value uInt64Value = this.maxBytesPerDatagram_;
                            UInt64Value.b builder2 = uInt64Value != null ? uInt64Value.toBuilder() : null;
                            UInt64Value uInt64Value2 = (UInt64Value) pVar.B(UInt64Value.parser(), f0Var);
                            this.maxBytesPerDatagram_ = uInt64Value2;
                            if (builder2 != null) {
                                builder2.g0(uInt64Value2);
                                this.maxBytesPerDatagram_ = builder2.I();
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

    public static DogStatsdSink parseFrom(p pVar) throws IOException {
        return (DogStatsdSink) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static DogStatsdSink parseFrom(p pVar, f0 f0Var) throws IOException {
        return (DogStatsdSink) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
