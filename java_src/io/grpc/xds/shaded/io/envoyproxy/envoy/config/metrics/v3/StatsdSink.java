package io.grpc.xds.shaded.io.envoyproxy.envoy.config.metrics.v3;

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
public final class StatsdSink extends GeneratedMessageV3 implements r1 {
    public static final int ADDRESS_FIELD_NUMBER = 1;
    private static final StatsdSink DEFAULT_INSTANCE = new StatsdSink();
    private static final e2<StatsdSink> PARSER = new a();
    public static final int PREFIX_FIELD_NUMBER = 3;
    public static final int TCP_CLUSTER_NAME_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private volatile Object prefix_;
    private int statsdSpecifierCase_;
    private Object statsdSpecifier_;

    /* loaded from: classes6.dex */
    public enum StatsdSpecifierCase implements u0.c {
        ADDRESS(1),
        TCP_CLUSTER_NAME(2),
        STATSDSPECIFIER_NOT_SET(0);
        
        private final int value;

        StatsdSpecifierCase(int i9) {
            this.value = i9;
        }

        public static StatsdSpecifierCase forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 != 2) {
                        return null;
                    }
                    return TCP_CLUSTER_NAME;
                }
                return ADDRESS;
            }
            return STATSDSPECIFIER_NOT_SET;
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static StatsdSpecifierCase valueOf(int i9) {
            return forNumber(i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<StatsdSink> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public StatsdSink m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new StatsdSink(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f48904a;

        static {
            int[] iArr = new int[StatsdSpecifierCase.values().length];
            f48904a = iArr;
            try {
                iArr[StatsdSpecifierCase.ADDRESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f48904a[StatsdSpecifierCase.TCP_CLUSTER_NAME.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f48904a[StatsdSpecifierCase.STATSDSPECIFIER_NOT_SET.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private int f48905e;

        /* renamed from: f  reason: collision with root package name */
        private Object f48906f;

        /* renamed from: g  reason: collision with root package name */
        private q2<Address, Address.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.a> f48907g;

        /* renamed from: h  reason: collision with root package name */
        private Object f48908h;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return d.f48924l.d(StatsdSink.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public StatsdSink build() {
            StatsdSink I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public StatsdSink I() {
            StatsdSink statsdSink = new StatsdSink(this, (a) null);
            if (this.f48905e == 1) {
                q2<Address, Address.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.a> q2Var = this.f48907g;
                if (q2Var == null) {
                    statsdSink.statsdSpecifier_ = this.f48906f;
                } else {
                    statsdSink.statsdSpecifier_ = q2Var.b();
                }
            }
            if (this.f48905e == 2) {
                statsdSink.statsdSpecifier_ = this.f48906f;
            }
            statsdSink.prefix_ = this.f48908h;
            statsdSink.statsdSpecifierCase_ = this.f48905e;
            Q();
            return statsdSink;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public StatsdSink getDefaultInstanceForType() {
            return StatsdSink.getDefaultInstance();
        }

        public c d0(Address address) {
            q2<Address, Address.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.a> q2Var = this.f48907g;
            if (q2Var == null) {
                if (this.f48905e == 1 && this.f48906f != Address.getDefaultInstance()) {
                    this.f48906f = Address.newBuilder((Address) this.f48906f).h0(address).I();
                } else {
                    this.f48906f = address;
                }
                R();
            } else {
                if (this.f48905e == 1) {
                    q2Var.e(address);
                }
                this.f48907g.g(address);
            }
            this.f48905e = 1;
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.metrics.v3.StatsdSink.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.metrics.v3.StatsdSink.access$800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.metrics.v3.StatsdSink r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.metrics.v3.StatsdSink) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.metrics.v3.StatsdSink r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.metrics.v3.StatsdSink) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.metrics.v3.StatsdSink.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.metrics.v3.StatsdSink$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        public c v(l1 l1Var) {
            if (l1Var instanceof StatsdSink) {
                return h0((StatsdSink) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return d.f48923k;
        }

        public c h0(StatsdSink statsdSink) {
            if (statsdSink == StatsdSink.getDefaultInstance()) {
                return this;
            }
            if (!statsdSink.getPrefix().isEmpty()) {
                this.f48908h = statsdSink.prefix_;
                R();
            }
            int i9 = b.f48904a[statsdSink.getStatsdSpecifierCase().ordinal()];
            if (i9 == 1) {
                d0(statsdSink.getAddress());
            } else if (i9 == 2) {
                this.f48905e = 2;
                this.f48906f = statsdSink.statsdSpecifier_;
                R();
            }
            z(((GeneratedMessageV3) statsdSink).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public final c z(h3 h3Var) {
            return (c) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: j0 */
        public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.c(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: k0 */
        public final c f1(h3 h3Var) {
            return (c) super.f1(h3Var);
        }

        /* synthetic */ c(a aVar) {
            this();
        }

        private c() {
            this.f48905e = 0;
            this.f48908h = "";
            b0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f48905e = 0;
            this.f48908h = "";
            b0();
        }
    }

    /* synthetic */ StatsdSink(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static StatsdSink getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return d.f48923k;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static StatsdSink parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (StatsdSink) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static StatsdSink parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<StatsdSink> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof StatsdSink)) {
            return super.equals(obj);
        }
        StatsdSink statsdSink = (StatsdSink) obj;
        if (getPrefix().equals(statsdSink.getPrefix()) && getStatsdSpecifierCase().equals(statsdSink.getStatsdSpecifierCase())) {
            int i9 = this.statsdSpecifierCase_;
            if (i9 != 1) {
                if (i9 == 2 && !getTcpClusterName().equals(statsdSink.getTcpClusterName())) {
                    return false;
                }
            } else if (!getAddress().equals(statsdSink.getAddress())) {
                return false;
            }
            return this.unknownFields.equals(statsdSink.unknownFields);
        }
        return false;
    }

    public Address getAddress() {
        if (this.statsdSpecifierCase_ == 1) {
            return (Address) this.statsdSpecifier_;
        }
        return Address.getDefaultInstance();
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.a getAddressOrBuilder() {
        if (this.statsdSpecifierCase_ == 1) {
            return (Address) this.statsdSpecifier_;
        }
        return Address.getDefaultInstance();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<StatsdSink> getParserForType() {
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
        int G = this.statsdSpecifierCase_ == 1 ? 0 + CodedOutputStream.G(1, (Address) this.statsdSpecifier_) : 0;
        if (this.statsdSpecifierCase_ == 2) {
            G += GeneratedMessageV3.computeStringSize(2, this.statsdSpecifier_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.prefix_)) {
            G += GeneratedMessageV3.computeStringSize(3, this.prefix_);
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public StatsdSpecifierCase getStatsdSpecifierCase() {
        return StatsdSpecifierCase.forNumber(this.statsdSpecifierCase_);
    }

    public String getTcpClusterName() {
        String str = this.statsdSpecifierCase_ == 2 ? this.statsdSpecifier_ : "";
        if (str instanceof String) {
            return (String) str;
        }
        String stringUtf8 = ((ByteString) str).toStringUtf8();
        if (this.statsdSpecifierCase_ == 2) {
            this.statsdSpecifier_ = stringUtf8;
        }
        return stringUtf8;
    }

    public ByteString getTcpClusterNameBytes() {
        String str = this.statsdSpecifierCase_ == 2 ? this.statsdSpecifier_ : "";
        if (str instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) str);
            if (this.statsdSpecifierCase_ == 2) {
                this.statsdSpecifier_ = copyFromUtf8;
            }
            return copyFromUtf8;
        }
        return (ByteString) str;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasAddress() {
        return this.statsdSpecifierCase_ == 1;
    }

    public boolean hasTcpClusterName() {
        return this.statsdSpecifierCase_ == 2;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9;
        int hashCode;
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int hashCode2 = ((((779 + getDescriptor().hashCode()) * 37) + 3) * 53) + getPrefix().hashCode();
        int i11 = this.statsdSpecifierCase_;
        if (i11 == 1) {
            i9 = ((hashCode2 * 37) + 1) * 53;
            hashCode = getAddress().hashCode();
        } else {
            if (i11 == 2) {
                i9 = ((hashCode2 * 37) + 2) * 53;
                hashCode = getTcpClusterName().hashCode();
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
        return d.f48924l.d(StatsdSink.class, c.class);
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
        return new StatsdSink();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.statsdSpecifierCase_ == 1) {
            codedOutputStream.L0(1, (Address) this.statsdSpecifier_);
        }
        if (this.statsdSpecifierCase_ == 2) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.statsdSpecifier_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.prefix_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 3, this.prefix_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ StatsdSink(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(StatsdSink statsdSink) {
        return DEFAULT_INSTANCE.toBuilder().h0(statsdSink);
    }

    public static StatsdSink parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private StatsdSink(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.statsdSpecifierCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static StatsdSink parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (StatsdSink) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static StatsdSink parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public StatsdSink getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).h0(this);
    }

    public static StatsdSink parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    public static StatsdSink parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    private StatsdSink() {
        this.statsdSpecifierCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
        this.prefix_ = "";
    }

    public static StatsdSink parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static StatsdSink parseFrom(InputStream inputStream) throws IOException {
        return (StatsdSink) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static StatsdSink parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (StatsdSink) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    private StatsdSink(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                Address.c builder = this.statsdSpecifierCase_ == 1 ? ((Address) this.statsdSpecifier_).toBuilder() : null;
                                o1 B = pVar.B(Address.parser(), f0Var);
                                this.statsdSpecifier_ = B;
                                if (builder != null) {
                                    builder.h0((Address) B);
                                    this.statsdSpecifier_ = builder.I();
                                }
                                this.statsdSpecifierCase_ = 1;
                            } else if (L == 18) {
                                String K = pVar.K();
                                this.statsdSpecifierCase_ = 2;
                                this.statsdSpecifier_ = K;
                            } else if (L != 26) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                this.prefix_ = pVar.K();
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

    public static StatsdSink parseFrom(p pVar) throws IOException {
        return (StatsdSink) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static StatsdSink parseFrom(p pVar, f0 f0Var) throws IOException {
        return (StatsdSink) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
