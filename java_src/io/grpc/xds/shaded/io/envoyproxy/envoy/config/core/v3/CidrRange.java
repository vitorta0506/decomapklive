package io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.UInt32Value;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.e3;
import com.google.protobuf.h3;
import com.google.protobuf.q2;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class CidrRange extends GeneratedMessageV3 implements j {
    public static final int ADDRESS_PREFIX_FIELD_NUMBER = 1;
    private static final CidrRange DEFAULT_INSTANCE = new CidrRange();
    private static final e2<CidrRange> PARSER = new a();
    public static final int PREFIX_LEN_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private volatile Object addressPrefix_;
    private byte memoizedIsInitialized;
    private UInt32Value prefixLen_;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<CidrRange> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public CidrRange m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return new CidrRange(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements j {

        /* renamed from: e  reason: collision with root package name */
        private Object f47806e;

        /* renamed from: f  reason: collision with root package name */
        private UInt32Value f47807f;

        /* renamed from: g  reason: collision with root package name */
        private q2<UInt32Value, UInt32Value.b, e3> f47808g;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.b.f48182n.d(CidrRange.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public CidrRange build() {
            CidrRange I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public CidrRange I() {
            CidrRange cidrRange = new CidrRange(this, (a) null);
            cidrRange.addressPrefix_ = this.f47806e;
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f47808g;
            if (q2Var == null) {
                cidrRange.prefixLen_ = this.f47807f;
            } else {
                cidrRange.prefixLen_ = q2Var.b();
            }
            Q();
            return cidrRange;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public CidrRange getDefaultInstanceForType() {
            return CidrRange.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.CidrRange.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.CidrRange.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.CidrRange r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.CidrRange) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.CidrRange r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.CidrRange) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.CidrRange.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.CidrRange$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public b v(com.google.protobuf.l1 l1Var) {
            if (l1Var instanceof CidrRange) {
                return g0((CidrRange) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b g0(CidrRange cidrRange) {
            if (cidrRange == CidrRange.getDefaultInstance()) {
                return this;
            }
            if (!cidrRange.getAddressPrefix().isEmpty()) {
                this.f47806e = cidrRange.addressPrefix_;
                R();
            }
            if (cidrRange.hasPrefixLen()) {
                h0(cidrRange.getPrefixLen());
            }
            z(((GeneratedMessageV3) cidrRange).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.b.f48181m;
        }

        public b h0(UInt32Value uInt32Value) {
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f47808g;
            if (q2Var == null) {
                UInt32Value uInt32Value2 = this.f47807f;
                if (uInt32Value2 != null) {
                    this.f47807f = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                } else {
                    this.f47807f = uInt32Value;
                }
                R();
            } else {
                q2Var.e(uInt32Value);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
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
            this.f47806e = "";
            b0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f47806e = "";
            b0();
        }
    }

    /* synthetic */ CidrRange(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static CidrRange getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.b.f48181m;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static CidrRange parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (CidrRange) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static CidrRange parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<CidrRange> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CidrRange)) {
            return super.equals(obj);
        }
        CidrRange cidrRange = (CidrRange) obj;
        if (getAddressPrefix().equals(cidrRange.getAddressPrefix()) && hasPrefixLen() == cidrRange.hasPrefixLen()) {
            return (!hasPrefixLen() || getPrefixLen().equals(cidrRange.getPrefixLen())) && this.unknownFields.equals(cidrRange.unknownFields);
        }
        return false;
    }

    public String getAddressPrefix() {
        Object obj = this.addressPrefix_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.addressPrefix_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getAddressPrefixBytes() {
        Object obj = this.addressPrefix_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.addressPrefix_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<CidrRange> getParserForType() {
        return PARSER;
    }

    public UInt32Value getPrefixLen() {
        UInt32Value uInt32Value = this.prefixLen_;
        return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
    }

    public e3 getPrefixLenOrBuilder() {
        return getPrefixLen();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = GeneratedMessageV3.isStringEmpty(this.addressPrefix_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.addressPrefix_);
        if (this.prefixLen_ != null) {
            computeStringSize += CodedOutputStream.G(2, getPrefixLen());
        }
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasPrefixLen() {
        return this.prefixLen_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getAddressPrefix().hashCode();
        if (hasPrefixLen()) {
            hashCode = (((hashCode * 37) + 2) * 53) + getPrefixLen().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.b.f48182n.d(CidrRange.class, b.class);
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
        return new CidrRange();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.addressPrefix_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.addressPrefix_);
        }
        if (this.prefixLen_ != null) {
            codedOutputStream.L0(2, getPrefixLen());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ CidrRange(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(CidrRange cidrRange) {
        return DEFAULT_INSTANCE.toBuilder().g0(cidrRange);
    }

    public static CidrRange parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private CidrRange(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static CidrRange parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (CidrRange) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static CidrRange parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public CidrRange getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static CidrRange parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private CidrRange() {
        this.memoizedIsInitialized = (byte) -1;
        this.addressPrefix_ = "";
    }

    public static CidrRange parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static CidrRange parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static CidrRange parseFrom(InputStream inputStream) throws IOException {
        return (CidrRange) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private CidrRange(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                            this.addressPrefix_ = pVar.K();
                        } else if (L != 18) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            UInt32Value uInt32Value = this.prefixLen_;
                            UInt32Value.b builder = uInt32Value != null ? uInt32Value.toBuilder() : null;
                            UInt32Value uInt32Value2 = (UInt32Value) pVar.B(UInt32Value.parser(), f0Var);
                            this.prefixLen_ = uInt32Value2;
                            if (builder != null) {
                                builder.g0(uInt32Value2);
                                this.prefixLen_ = builder.I();
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

    public static CidrRange parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (CidrRange) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static CidrRange parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (CidrRange) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static CidrRange parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
        return (CidrRange) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
