package io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v2;

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
import com.google.protobuf.r1;
import com.google.protobuf.u0;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class LightstepConfig extends GeneratedMessageV3 implements r1 {
    public static final int ACCESS_TOKEN_FILE_FIELD_NUMBER = 2;
    public static final int COLLECTOR_CLUSTER_FIELD_NUMBER = 1;
    public static final int PROPAGATION_MODES_FIELD_NUMBER = 3;
    private static final long serialVersionUID = 0;
    private volatile Object accessTokenFile_;
    private volatile Object collectorCluster_;
    private byte memoizedIsInitialized;
    private int propagationModesMemoizedSerializedSize;
    private List<Integer> propagationModes_;
    private static final u0.h.a<Integer, PropagationMode> propagationModes_converter_ = new a();
    private static final LightstepConfig DEFAULT_INSTANCE = new LightstepConfig();
    private static final e2<LightstepConfig> PARSER = new b();

    /* loaded from: classes6.dex */
    public enum PropagationMode implements h2 {
        ENVOY(0),
        LIGHTSTEP(1),
        B3(2),
        TRACE_CONTEXT(3),
        UNRECOGNIZED(-1);
        
        public static final int B3_VALUE = 2;
        public static final int ENVOY_VALUE = 0;
        public static final int LIGHTSTEP_VALUE = 1;
        public static final int TRACE_CONTEXT_VALUE = 3;
        private final int value;
        private static final u0.d<PropagationMode> internalValueMap = new a();
        private static final PropagationMode[] VALUES = values();

        /* loaded from: classes6.dex */
        class a implements u0.d<PropagationMode> {
            a() {
            }

            @Override // com.google.protobuf.u0.d
            /* renamed from: b */
            public PropagationMode a(int i9) {
                return PropagationMode.forNumber(i9);
            }
        }

        PropagationMode(int i9) {
            this.value = i9;
        }

        public static PropagationMode forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 != 2) {
                        if (i9 != 3) {
                            return null;
                        }
                        return TRACE_CONTEXT;
                    }
                    return B3;
                }
                return LIGHTSTEP;
            }
            return ENVOY;
        }

        public static final Descriptors.d getDescriptor() {
            return LightstepConfig.getDescriptor().k().get(0);
        }

        public static u0.d<PropagationMode> internalGetValueMap() {
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
        public static PropagationMode valueOf(int i9) {
            return forNumber(i9);
        }

        public static PropagationMode valueOf(Descriptors.e eVar) {
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
    public class a implements u0.h.a<Integer, PropagationMode> {
        a() {
        }

        @Override // com.google.protobuf.u0.h.a
        /* renamed from: a */
        public PropagationMode convert(Integer num) {
            PropagationMode valueOf = PropagationMode.valueOf(num.intValue());
            return valueOf == null ? PropagationMode.UNRECOGNIZED : valueOf;
        }
    }

    /* loaded from: classes6.dex */
    class b extends com.google.protobuf.c<LightstepConfig> {
        b() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public LightstepConfig m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new LightstepConfig(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private int f49536e;

        /* renamed from: f  reason: collision with root package name */
        private Object f49537f;

        /* renamed from: g  reason: collision with root package name */
        private Object f49538g;

        /* renamed from: h  reason: collision with root package name */
        private List<Integer> f49539h;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f49536e & 1) == 0) {
                this.f49539h = new ArrayList(this.f49539h);
                this.f49536e |= 1;
            }
        }

        private void d0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return d.f49585b.d(LightstepConfig.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public LightstepConfig build() {
            LightstepConfig I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public LightstepConfig I() {
            LightstepConfig lightstepConfig = new LightstepConfig(this, (a) null);
            lightstepConfig.collectorCluster_ = this.f49537f;
            lightstepConfig.accessTokenFile_ = this.f49538g;
            if ((this.f49536e & 1) != 0) {
                this.f49539h = Collections.unmodifiableList(this.f49539h);
                this.f49536e &= -2;
            }
            lightstepConfig.propagationModes_ = this.f49539h;
            Q();
            return lightstepConfig;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: b0 */
        public LightstepConfig getDefaultInstanceForType() {
            return LightstepConfig.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v2.LightstepConfig.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v2.LightstepConfig.access$800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v2.LightstepConfig r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v2.LightstepConfig) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v2.LightstepConfig r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v2.LightstepConfig) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v2.LightstepConfig.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v2.LightstepConfig$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        public c v(l1 l1Var) {
            if (l1Var instanceof LightstepConfig) {
                return h0((LightstepConfig) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return d.f49584a;
        }

        public c h0(LightstepConfig lightstepConfig) {
            if (lightstepConfig == LightstepConfig.getDefaultInstance()) {
                return this;
            }
            if (!lightstepConfig.getCollectorCluster().isEmpty()) {
                this.f49537f = lightstepConfig.collectorCluster_;
                R();
            }
            if (!lightstepConfig.getAccessTokenFile().isEmpty()) {
                this.f49538g = lightstepConfig.accessTokenFile_;
                R();
            }
            if (!lightstepConfig.propagationModes_.isEmpty()) {
                if (this.f49539h.isEmpty()) {
                    this.f49539h = lightstepConfig.propagationModes_;
                    this.f49536e &= -2;
                } else {
                    a0();
                    this.f49539h.addAll(lightstepConfig.propagationModes_);
                }
                R();
            }
            z(((GeneratedMessageV3) lightstepConfig).unknownFields);
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
            this.f49537f = "";
            this.f49538g = "";
            this.f49539h = Collections.emptyList();
            d0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f49537f = "";
            this.f49538g = "";
            this.f49539h = Collections.emptyList();
            d0();
        }
    }

    /* synthetic */ LightstepConfig(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static LightstepConfig getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return d.f49584a;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static LightstepConfig parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (LightstepConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static LightstepConfig parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<LightstepConfig> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof LightstepConfig)) {
            return super.equals(obj);
        }
        LightstepConfig lightstepConfig = (LightstepConfig) obj;
        return getCollectorCluster().equals(lightstepConfig.getCollectorCluster()) && getAccessTokenFile().equals(lightstepConfig.getAccessTokenFile()) && this.propagationModes_.equals(lightstepConfig.propagationModes_) && this.unknownFields.equals(lightstepConfig.unknownFields);
    }

    public String getAccessTokenFile() {
        Object obj = this.accessTokenFile_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.accessTokenFile_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getAccessTokenFileBytes() {
        Object obj = this.accessTokenFile_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.accessTokenFile_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public String getCollectorCluster() {
        Object obj = this.collectorCluster_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.collectorCluster_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getCollectorClusterBytes() {
        Object obj = this.collectorCluster_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.collectorCluster_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<LightstepConfig> getParserForType() {
        return PARSER;
    }

    public PropagationMode getPropagationModes(int i9) {
        return propagationModes_converter_.convert(this.propagationModes_.get(i9));
    }

    public int getPropagationModesCount() {
        return this.propagationModes_.size();
    }

    public List<PropagationMode> getPropagationModesList() {
        return new u0.h(this.propagationModes_, propagationModes_converter_);
    }

    public int getPropagationModesValue(int i9) {
        return this.propagationModes_.get(i9).intValue();
    }

    public List<Integer> getPropagationModesValueList() {
        return this.propagationModes_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = !GeneratedMessageV3.isStringEmpty(this.collectorCluster_) ? GeneratedMessageV3.computeStringSize(1, this.collectorCluster_) + 0 : 0;
        if (!GeneratedMessageV3.isStringEmpty(this.accessTokenFile_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(2, this.accessTokenFile_);
        }
        int i10 = 0;
        for (int i11 = 0; i11 < this.propagationModes_.size(); i11++) {
            i10 += CodedOutputStream.m(this.propagationModes_.get(i11).intValue());
        }
        int i12 = computeStringSize + i10;
        if (!getPropagationModesList().isEmpty()) {
            i12 = i12 + 1 + CodedOutputStream.Z(i10);
        }
        this.propagationModesMemoizedSerializedSize = i10;
        int serializedSize = i12 + this.unknownFields.getSerializedSize();
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
        int hashCode = ((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getCollectorCluster().hashCode()) * 37) + 2) * 53) + getAccessTokenFile().hashCode();
        if (getPropagationModesCount() > 0) {
            hashCode = (((hashCode * 37) + 3) * 53) + this.propagationModes_.hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return d.f49585b.d(LightstepConfig.class, c.class);
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
        return new LightstepConfig();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        getSerializedSize();
        if (!GeneratedMessageV3.isStringEmpty(this.collectorCluster_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.collectorCluster_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.accessTokenFile_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.accessTokenFile_);
        }
        if (getPropagationModesList().size() > 0) {
            codedOutputStream.d1(26);
            codedOutputStream.d1(this.propagationModesMemoizedSerializedSize);
        }
        for (int i9 = 0; i9 < this.propagationModes_.size(); i9++) {
            codedOutputStream.w0(this.propagationModes_.get(i9).intValue());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ LightstepConfig(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(LightstepConfig lightstepConfig) {
        return DEFAULT_INSTANCE.toBuilder().h0(lightstepConfig);
    }

    public static LightstepConfig parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private LightstepConfig(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static LightstepConfig parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (LightstepConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static LightstepConfig parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public LightstepConfig getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).h0(this);
    }

    public static LightstepConfig parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    private LightstepConfig() {
        this.memoizedIsInitialized = (byte) -1;
        this.collectorCluster_ = "";
        this.accessTokenFile_ = "";
        this.propagationModes_ = Collections.emptyList();
    }

    public static LightstepConfig parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    public static LightstepConfig parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static LightstepConfig parseFrom(InputStream inputStream) throws IOException {
        return (LightstepConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static LightstepConfig parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (LightstepConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    private LightstepConfig(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                this.collectorCluster_ = pVar.K();
                            } else if (L == 18) {
                                this.accessTokenFile_ = pVar.K();
                            } else if (L == 24) {
                                int u10 = pVar.u();
                                if (!(z11 & true)) {
                                    this.propagationModes_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.propagationModes_.add(Integer.valueOf(u10));
                            } else if (L != 26) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                int q10 = pVar.q(pVar.D());
                                while (pVar.e() > 0) {
                                    int u11 = pVar.u();
                                    if (!(z11 & true)) {
                                        this.propagationModes_ = new ArrayList();
                                        z11 |= true;
                                    }
                                    this.propagationModes_.add(Integer.valueOf(u11));
                                }
                                pVar.p(q10);
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
                    this.propagationModes_ = Collections.unmodifiableList(this.propagationModes_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static LightstepConfig parseFrom(p pVar) throws IOException {
        return (LightstepConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static LightstepConfig parseFrom(p pVar, f0 f0Var) throws IOException {
        return (LightstepConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
