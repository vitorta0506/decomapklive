package io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3;

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
import com.google.protobuf.i2;
import com.google.protobuf.l1;
import com.google.protobuf.p;
import com.google.protobuf.u0;
import com.google.protobuf.y0;
import com.google.protobuf.z0;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class TlsParameters extends GeneratedMessageV3 implements k {
    public static final int CIPHER_SUITES_FIELD_NUMBER = 3;
    public static final int ECDH_CURVES_FIELD_NUMBER = 4;
    public static final int TLS_MAXIMUM_PROTOCOL_VERSION_FIELD_NUMBER = 2;
    public static final int TLS_MINIMUM_PROTOCOL_VERSION_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private z0 cipherSuites_;
    private z0 ecdhCurves_;
    private byte memoizedIsInitialized;
    private int tlsMaximumProtocolVersion_;
    private int tlsMinimumProtocolVersion_;
    private static final TlsParameters DEFAULT_INSTANCE = new TlsParameters();
    private static final e2<TlsParameters> PARSER = new a();

    /* loaded from: classes6.dex */
    public enum TlsProtocol implements h2 {
        TLS_AUTO(0),
        TLSv1_0(1),
        TLSv1_1(2),
        TLSv1_2(3),
        TLSv1_3(4),
        UNRECOGNIZED(-1);
        
        public static final int TLS_AUTO_VALUE = 0;
        public static final int TLSv1_0_VALUE = 1;
        public static final int TLSv1_1_VALUE = 2;
        public static final int TLSv1_2_VALUE = 3;
        public static final int TLSv1_3_VALUE = 4;
        private final int value;
        private static final u0.d<TlsProtocol> internalValueMap = new a();
        private static final TlsProtocol[] VALUES = values();

        /* loaded from: classes6.dex */
        class a implements u0.d<TlsProtocol> {
            a() {
            }

            @Override // com.google.protobuf.u0.d
            /* renamed from: b */
            public TlsProtocol a(int i9) {
                return TlsProtocol.forNumber(i9);
            }
        }

        TlsProtocol(int i9) {
            this.value = i9;
        }

        public static TlsProtocol forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 != 2) {
                        if (i9 != 3) {
                            if (i9 != 4) {
                                return null;
                            }
                            return TLSv1_3;
                        }
                        return TLSv1_2;
                    }
                    return TLSv1_1;
                }
                return TLSv1_0;
            }
            return TLS_AUTO;
        }

        public static final Descriptors.d getDescriptor() {
            return TlsParameters.getDescriptor().k().get(0);
        }

        public static u0.d<TlsProtocol> internalGetValueMap() {
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
        public static TlsProtocol valueOf(int i9) {
            return forNumber(i9);
        }

        public static TlsProtocol valueOf(Descriptors.e eVar) {
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
    public class a extends com.google.protobuf.c<TlsParameters> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public TlsParameters m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new TlsParameters(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements k {

        /* renamed from: e  reason: collision with root package name */
        private int f50009e;

        /* renamed from: f  reason: collision with root package name */
        private int f50010f;

        /* renamed from: g  reason: collision with root package name */
        private int f50011g;

        /* renamed from: h  reason: collision with root package name */
        private z0 f50012h;

        /* renamed from: i  reason: collision with root package name */
        private z0 f50013i;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f50009e & 1) == 0) {
                this.f50012h = new y0(this.f50012h);
                this.f50009e |= 1;
            }
        }

        private void b0() {
            if ((this.f50009e & 2) == 0) {
                this.f50013i = new y0(this.f50013i);
                this.f50009e |= 2;
            }
        }

        private void e0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return c.f50024b.d(TlsParameters.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public TlsParameters build() {
            TlsParameters I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public TlsParameters I() {
            TlsParameters tlsParameters = new TlsParameters(this, (a) null);
            tlsParameters.tlsMinimumProtocolVersion_ = this.f50010f;
            tlsParameters.tlsMaximumProtocolVersion_ = this.f50011g;
            if ((this.f50009e & 1) != 0) {
                this.f50012h = this.f50012h.V0();
                this.f50009e &= -2;
            }
            tlsParameters.cipherSuites_ = this.f50012h;
            if ((this.f50009e & 2) != 0) {
                this.f50013i = this.f50013i.V0();
                this.f50009e &= -3;
            }
            tlsParameters.ecdhCurves_ = this.f50013i;
            Q();
            return tlsParameters;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: d0 */
        public TlsParameters getDefaultInstanceForType() {
            return TlsParameters.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.TlsParameters.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.TlsParameters.access$900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.TlsParameters r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.TlsParameters) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.TlsParameters r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.TlsParameters) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.TlsParameters.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.TlsParameters$b");
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return c.f50023a;
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof TlsParameters) {
                return i0((TlsParameters) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b i0(TlsParameters tlsParameters) {
            if (tlsParameters == TlsParameters.getDefaultInstance()) {
                return this;
            }
            if (tlsParameters.tlsMinimumProtocolVersion_ != 0) {
                m0(tlsParameters.getTlsMinimumProtocolVersionValue());
            }
            if (tlsParameters.tlsMaximumProtocolVersion_ != 0) {
                l0(tlsParameters.getTlsMaximumProtocolVersionValue());
            }
            if (!tlsParameters.cipherSuites_.isEmpty()) {
                if (this.f50012h.isEmpty()) {
                    this.f50012h = tlsParameters.cipherSuites_;
                    this.f50009e &= -2;
                } else {
                    a0();
                    this.f50012h.addAll(tlsParameters.cipherSuites_);
                }
                R();
            }
            if (!tlsParameters.ecdhCurves_.isEmpty()) {
                if (this.f50013i.isEmpty()) {
                    this.f50013i = tlsParameters.ecdhCurves_;
                    this.f50009e &= -3;
                } else {
                    b0();
                    this.f50013i.addAll(tlsParameters.ecdhCurves_);
                }
                R();
            }
            z(((GeneratedMessageV3) tlsParameters).unknownFields);
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

        public b l0(int i9) {
            this.f50011g = i9;
            R();
            return this;
        }

        public b m0(int i9) {
            this.f50010f = i9;
            R();
            return this;
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
            this.f50010f = 0;
            this.f50011g = 0;
            z0 z0Var = y0.f15344d;
            this.f50012h = z0Var;
            this.f50013i = z0Var;
            e0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f50010f = 0;
            this.f50011g = 0;
            z0 z0Var = y0.f15344d;
            this.f50012h = z0Var;
            this.f50013i = z0Var;
            e0();
        }
    }

    /* synthetic */ TlsParameters(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static TlsParameters getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return c.f50023a;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static TlsParameters parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (TlsParameters) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static TlsParameters parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<TlsParameters> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof TlsParameters)) {
            return super.equals(obj);
        }
        TlsParameters tlsParameters = (TlsParameters) obj;
        return this.tlsMinimumProtocolVersion_ == tlsParameters.tlsMinimumProtocolVersion_ && this.tlsMaximumProtocolVersion_ == tlsParameters.tlsMaximumProtocolVersion_ && m1639getCipherSuitesList().equals(tlsParameters.m1639getCipherSuitesList()) && m1640getEcdhCurvesList().equals(tlsParameters.m1640getEcdhCurvesList()) && this.unknownFields.equals(tlsParameters.unknownFields);
    }

    public String getCipherSuites(int i9) {
        return this.cipherSuites_.get(i9);
    }

    public ByteString getCipherSuitesBytes(int i9) {
        return this.cipherSuites_.j0(i9);
    }

    public int getCipherSuitesCount() {
        return this.cipherSuites_.size();
    }

    public String getEcdhCurves(int i9) {
        return this.ecdhCurves_.get(i9);
    }

    public ByteString getEcdhCurvesBytes(int i9) {
        return this.ecdhCurves_.j0(i9);
    }

    public int getEcdhCurvesCount() {
        return this.ecdhCurves_.size();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<TlsParameters> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int i10 = this.tlsMinimumProtocolVersion_;
        TlsProtocol tlsProtocol = TlsProtocol.TLS_AUTO;
        int l10 = i10 != tlsProtocol.getNumber() ? CodedOutputStream.l(1, this.tlsMinimumProtocolVersion_) + 0 : 0;
        if (this.tlsMaximumProtocolVersion_ != tlsProtocol.getNumber()) {
            l10 += CodedOutputStream.l(2, this.tlsMaximumProtocolVersion_);
        }
        int i11 = 0;
        for (int i12 = 0; i12 < this.cipherSuites_.size(); i12++) {
            i11 += GeneratedMessageV3.computeStringSizeNoTag(this.cipherSuites_.c1(i12));
        }
        int size = l10 + i11 + (m1639getCipherSuitesList().size() * 1);
        int i13 = 0;
        for (int i14 = 0; i14 < this.ecdhCurves_.size(); i14++) {
            i13 += GeneratedMessageV3.computeStringSizeNoTag(this.ecdhCurves_.c1(i14));
        }
        int size2 = size + i13 + (m1640getEcdhCurvesList().size() * 1) + this.unknownFields.getSerializedSize();
        this.memoizedSize = size2;
        return size2;
    }

    public TlsProtocol getTlsMaximumProtocolVersion() {
        TlsProtocol valueOf = TlsProtocol.valueOf(this.tlsMaximumProtocolVersion_);
        return valueOf == null ? TlsProtocol.UNRECOGNIZED : valueOf;
    }

    public int getTlsMaximumProtocolVersionValue() {
        return this.tlsMaximumProtocolVersion_;
    }

    public TlsProtocol getTlsMinimumProtocolVersion() {
        TlsProtocol valueOf = TlsProtocol.valueOf(this.tlsMinimumProtocolVersion_);
        return valueOf == null ? TlsProtocol.UNRECOGNIZED : valueOf;
    }

    public int getTlsMinimumProtocolVersionValue() {
        return this.tlsMinimumProtocolVersion_;
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
        int hashCode = ((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + this.tlsMinimumProtocolVersion_) * 37) + 2) * 53) + this.tlsMaximumProtocolVersion_;
        if (getCipherSuitesCount() > 0) {
            hashCode = (((hashCode * 37) + 3) * 53) + m1639getCipherSuitesList().hashCode();
        }
        if (getEcdhCurvesCount() > 0) {
            hashCode = (((hashCode * 37) + 4) * 53) + m1640getEcdhCurvesList().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return c.f50024b.d(TlsParameters.class, b.class);
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
        return new TlsParameters();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        int i9 = this.tlsMinimumProtocolVersion_;
        TlsProtocol tlsProtocol = TlsProtocol.TLS_AUTO;
        if (i9 != tlsProtocol.getNumber()) {
            codedOutputStream.v0(1, this.tlsMinimumProtocolVersion_);
        }
        if (this.tlsMaximumProtocolVersion_ != tlsProtocol.getNumber()) {
            codedOutputStream.v0(2, this.tlsMaximumProtocolVersion_);
        }
        for (int i10 = 0; i10 < this.cipherSuites_.size(); i10++) {
            GeneratedMessageV3.writeString(codedOutputStream, 3, this.cipherSuites_.c1(i10));
        }
        for (int i11 = 0; i11 < this.ecdhCurves_.size(); i11++) {
            GeneratedMessageV3.writeString(codedOutputStream, 4, this.ecdhCurves_.c1(i11));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ TlsParameters(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(TlsParameters tlsParameters) {
        return DEFAULT_INSTANCE.toBuilder().i0(tlsParameters);
    }

    public static TlsParameters parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    /* renamed from: getCipherSuitesList */
    public i2 m1639getCipherSuitesList() {
        return this.cipherSuites_;
    }

    /* renamed from: getEcdhCurvesList */
    public i2 m1640getEcdhCurvesList() {
        return this.ecdhCurves_;
    }

    private TlsParameters(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static TlsParameters parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (TlsParameters) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static TlsParameters parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public TlsParameters getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).i0(this);
    }

    public static TlsParameters parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private TlsParameters() {
        this.memoizedIsInitialized = (byte) -1;
        this.tlsMinimumProtocolVersion_ = 0;
        this.tlsMaximumProtocolVersion_ = 0;
        z0 z0Var = y0.f15344d;
        this.cipherSuites_ = z0Var;
        this.ecdhCurves_ = z0Var;
    }

    public static TlsParameters parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static TlsParameters parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static TlsParameters parseFrom(InputStream inputStream) throws IOException {
        return (TlsParameters) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static TlsParameters parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (TlsParameters) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    private TlsParameters(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                        if (L == 8) {
                            this.tlsMinimumProtocolVersion_ = pVar.u();
                        } else if (L == 16) {
                            this.tlsMaximumProtocolVersion_ = pVar.u();
                        } else if (L == 26) {
                            String K = pVar.K();
                            if (!(z11 & true)) {
                                this.cipherSuites_ = new y0();
                                z11 |= true;
                            }
                            this.cipherSuites_.add(K);
                        } else if (L != 34) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            String K2 = pVar.K();
                            if (!(z11 & true)) {
                                this.ecdhCurves_ = new y0();
                                z11 |= true;
                            }
                            this.ecdhCurves_.add(K2);
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
                    this.cipherSuites_ = this.cipherSuites_.V0();
                }
                if (z11 & true) {
                    this.ecdhCurves_ = this.ecdhCurves_.V0();
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static TlsParameters parseFrom(p pVar) throws IOException {
        return (TlsParameters) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static TlsParameters parseFrom(p pVar, f0 f0Var) throws IOException {
        return (TlsParameters) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
