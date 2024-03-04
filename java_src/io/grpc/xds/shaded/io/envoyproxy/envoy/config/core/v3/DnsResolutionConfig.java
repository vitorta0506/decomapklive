package io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.h3;
import com.google.protobuf.l2;
import com.google.protobuf.q2;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Address;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.DnsResolverOptions;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class DnsResolutionConfig extends GeneratedMessageV3 implements o {
    public static final int DNS_RESOLVER_OPTIONS_FIELD_NUMBER = 2;
    public static final int RESOLVERS_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private DnsResolverOptions dnsResolverOptions_;
    private byte memoizedIsInitialized;
    private List<Address> resolvers_;
    private static final DnsResolutionConfig DEFAULT_INSTANCE = new DnsResolutionConfig();
    private static final e2<DnsResolutionConfig> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<DnsResolutionConfig> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public DnsResolutionConfig m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return new DnsResolutionConfig(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements o {

        /* renamed from: e  reason: collision with root package name */
        private int f47825e;

        /* renamed from: f  reason: collision with root package name */
        private List<Address> f47826f;

        /* renamed from: g  reason: collision with root package name */
        private l2<Address, Address.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.a> f47827g;

        /* renamed from: h  reason: collision with root package name */
        private DnsResolverOptions f47828h;

        /* renamed from: i  reason: collision with root package name */
        private q2<DnsResolverOptions, DnsResolverOptions.b, p> f47829i;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f47825e & 1) == 0) {
                this.f47826f = new ArrayList(this.f47826f);
                this.f47825e |= 1;
            }
        }

        private l2<Address, Address.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.a> d0() {
            if (this.f47827g == null) {
                this.f47827g = new l2<>(this.f47826f, (this.f47825e & 1) != 0, H(), O());
                this.f47826f = null;
            }
            return this.f47827g;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                d0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return t0.f48288d.d(DnsResolutionConfig.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public DnsResolutionConfig build() {
            DnsResolutionConfig I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public DnsResolutionConfig I() {
            DnsResolutionConfig dnsResolutionConfig = new DnsResolutionConfig(this, (a) null);
            int i9 = this.f47825e;
            l2<Address, Address.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.a> l2Var = this.f47827g;
            if (l2Var == null) {
                if ((i9 & 1) != 0) {
                    this.f47826f = Collections.unmodifiableList(this.f47826f);
                    this.f47825e &= -2;
                }
                dnsResolutionConfig.resolvers_ = this.f47826f;
            } else {
                dnsResolutionConfig.resolvers_ = l2Var.e();
            }
            q2<DnsResolverOptions, DnsResolverOptions.b, p> q2Var = this.f47829i;
            if (q2Var == null) {
                dnsResolutionConfig.dnsResolverOptions_ = this.f47828h;
            } else {
                dnsResolutionConfig.dnsResolverOptions_ = q2Var.b();
            }
            Q();
            return dnsResolutionConfig;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: b0 */
        public DnsResolutionConfig getDefaultInstanceForType() {
            return DnsResolutionConfig.getDefaultInstance();
        }

        public b g0(DnsResolverOptions dnsResolverOptions) {
            q2<DnsResolverOptions, DnsResolverOptions.b, p> q2Var = this.f47829i;
            if (q2Var == null) {
                DnsResolverOptions dnsResolverOptions2 = this.f47828h;
                if (dnsResolverOptions2 != null) {
                    this.f47828h = DnsResolverOptions.newBuilder(dnsResolverOptions2).g0(dnsResolverOptions).I();
                } else {
                    this.f47828h = dnsResolverOptions;
                }
                R();
            } else {
                q2Var.e(dnsResolverOptions);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return t0.f48287c;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.DnsResolutionConfig.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.DnsResolutionConfig.access$800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.DnsResolutionConfig r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.DnsResolutionConfig) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.DnsResolutionConfig r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.DnsResolutionConfig) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.DnsResolutionConfig.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.DnsResolutionConfig$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public b v(com.google.protobuf.l1 l1Var) {
            if (l1Var instanceof DnsResolutionConfig) {
                return j0((DnsResolutionConfig) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b j0(DnsResolutionConfig dnsResolutionConfig) {
            if (dnsResolutionConfig == DnsResolutionConfig.getDefaultInstance()) {
                return this;
            }
            if (this.f47827g == null) {
                if (!dnsResolutionConfig.resolvers_.isEmpty()) {
                    if (this.f47826f.isEmpty()) {
                        this.f47826f = dnsResolutionConfig.resolvers_;
                        this.f47825e &= -2;
                    } else {
                        a0();
                        this.f47826f.addAll(dnsResolutionConfig.resolvers_);
                    }
                    R();
                }
            } else if (!dnsResolutionConfig.resolvers_.isEmpty()) {
                if (this.f47827g.k()) {
                    this.f47827g.f();
                    this.f47827g = null;
                    this.f47826f = dnsResolutionConfig.resolvers_;
                    this.f47825e &= -2;
                    this.f47827g = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                } else {
                    this.f47827g.b(dnsResolutionConfig.resolvers_);
                }
            }
            if (dnsResolutionConfig.hasDnsResolverOptions()) {
                g0(dnsResolutionConfig.getDnsResolverOptions());
            }
            z(((GeneratedMessageV3) dnsResolutionConfig).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: k0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: l0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: m0 */
        public final b f1(h3 h3Var) {
            return (b) super.f1(h3Var);
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            this.f47826f = Collections.emptyList();
            e0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f47826f = Collections.emptyList();
            e0();
        }
    }

    /* synthetic */ DnsResolutionConfig(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static DnsResolutionConfig getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return t0.f48287c;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static DnsResolutionConfig parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (DnsResolutionConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static DnsResolutionConfig parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<DnsResolutionConfig> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof DnsResolutionConfig)) {
            return super.equals(obj);
        }
        DnsResolutionConfig dnsResolutionConfig = (DnsResolutionConfig) obj;
        if (getResolversList().equals(dnsResolutionConfig.getResolversList()) && hasDnsResolverOptions() == dnsResolutionConfig.hasDnsResolverOptions()) {
            return (!hasDnsResolverOptions() || getDnsResolverOptions().equals(dnsResolutionConfig.getDnsResolverOptions())) && this.unknownFields.equals(dnsResolutionConfig.unknownFields);
        }
        return false;
    }

    public DnsResolverOptions getDnsResolverOptions() {
        DnsResolverOptions dnsResolverOptions = this.dnsResolverOptions_;
        return dnsResolverOptions == null ? DnsResolverOptions.getDefaultInstance() : dnsResolverOptions;
    }

    public p getDnsResolverOptionsOrBuilder() {
        return getDnsResolverOptions();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<DnsResolutionConfig> getParserForType() {
        return PARSER;
    }

    public Address getResolvers(int i9) {
        return this.resolvers_.get(i9);
    }

    public int getResolversCount() {
        return this.resolvers_.size();
    }

    public List<Address> getResolversList() {
        return this.resolvers_;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.a getResolversOrBuilder(int i9) {
        return this.resolvers_.get(i9);
    }

    public List<? extends io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.a> getResolversOrBuilderList() {
        return this.resolvers_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < this.resolvers_.size(); i11++) {
            i10 += CodedOutputStream.G(1, this.resolvers_.get(i11));
        }
        if (this.dnsResolverOptions_ != null) {
            i10 += CodedOutputStream.G(2, getDnsResolverOptions());
        }
        int serializedSize = i10 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasDnsResolverOptions() {
        return this.dnsResolverOptions_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (getResolversCount() > 0) {
            hashCode = (((hashCode * 37) + 1) * 53) + getResolversList().hashCode();
        }
        if (hasDnsResolverOptions()) {
            hashCode = (((hashCode * 37) + 2) * 53) + getDnsResolverOptions().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return t0.f48288d.d(DnsResolutionConfig.class, b.class);
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
        return new DnsResolutionConfig();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        for (int i9 = 0; i9 < this.resolvers_.size(); i9++) {
            codedOutputStream.L0(1, this.resolvers_.get(i9));
        }
        if (this.dnsResolverOptions_ != null) {
            codedOutputStream.L0(2, getDnsResolverOptions());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ DnsResolutionConfig(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(DnsResolutionConfig dnsResolutionConfig) {
        return DEFAULT_INSTANCE.toBuilder().j0(dnsResolutionConfig);
    }

    public static DnsResolutionConfig parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private DnsResolutionConfig(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static DnsResolutionConfig parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (DnsResolutionConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static DnsResolutionConfig parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public DnsResolutionConfig getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).j0(this);
    }

    public static DnsResolutionConfig parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private DnsResolutionConfig() {
        this.memoizedIsInitialized = (byte) -1;
        this.resolvers_ = Collections.emptyList();
    }

    public static DnsResolutionConfig parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static DnsResolutionConfig parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static DnsResolutionConfig parseFrom(InputStream inputStream) throws IOException {
        return (DnsResolutionConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private DnsResolutionConfig(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        boolean z11 = false;
        while (!z10) {
            try {
                try {
                    try {
                        int L = pVar.L();
                        if (L != 0) {
                            if (L == 10) {
                                if (!(z11 & true)) {
                                    this.resolvers_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.resolvers_.add((Address) pVar.B(Address.parser(), f0Var));
                            } else if (L != 18) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                DnsResolverOptions dnsResolverOptions = this.dnsResolverOptions_;
                                DnsResolverOptions.b builder = dnsResolverOptions != null ? dnsResolverOptions.toBuilder() : null;
                                DnsResolverOptions dnsResolverOptions2 = (DnsResolverOptions) pVar.B(DnsResolverOptions.parser(), f0Var);
                                this.dnsResolverOptions_ = dnsResolverOptions2;
                                if (builder != null) {
                                    builder.g0(dnsResolverOptions2);
                                    this.dnsResolverOptions_ = builder.I();
                                }
                            }
                        }
                        z10 = true;
                    } catch (InvalidProtocolBufferException e10) {
                        throw e10.setUnfinishedMessage(this);
                    }
                } catch (IOException e11) {
                    throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                }
            } finally {
                if (z11 & true) {
                    this.resolvers_ = Collections.unmodifiableList(this.resolvers_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static DnsResolutionConfig parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (DnsResolutionConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static DnsResolutionConfig parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (DnsResolutionConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static DnsResolutionConfig parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
        return (DnsResolutionConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
