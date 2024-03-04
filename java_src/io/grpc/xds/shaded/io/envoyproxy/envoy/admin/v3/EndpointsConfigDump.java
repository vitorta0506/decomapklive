package io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3;

import com.google.protobuf.Any;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Timestamp;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.l2;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import com.google.protobuf.z2;
import io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.UpdateFailureState;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class EndpointsConfigDump extends GeneratedMessageV3 implements io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.c {
    public static final int DYNAMIC_ENDPOINT_CONFIGS_FIELD_NUMBER = 3;
    public static final int STATIC_ENDPOINT_CONFIGS_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private List<DynamicEndpointConfig> dynamicEndpointConfigs_;
    private byte memoizedIsInitialized;
    private List<StaticEndpointConfig> staticEndpointConfigs_;
    private static final EndpointsConfigDump DEFAULT_INSTANCE = new EndpointsConfigDump();
    private static final e2<EndpointsConfigDump> PARSER = new a();

    /* loaded from: classes5.dex */
    public static final class DynamicEndpointConfig extends GeneratedMessageV3 implements c {
        public static final int CLIENT_STATUS_FIELD_NUMBER = 5;
        public static final int ENDPOINT_CONFIG_FIELD_NUMBER = 2;
        public static final int ERROR_STATE_FIELD_NUMBER = 4;
        public static final int LAST_UPDATED_FIELD_NUMBER = 3;
        public static final int VERSION_INFO_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int clientStatus_;
        private Any endpointConfig_;
        private UpdateFailureState errorState_;
        private Timestamp lastUpdated_;
        private byte memoizedIsInitialized;
        private volatile Object versionInfo_;
        private static final DynamicEndpointConfig DEFAULT_INSTANCE = new DynamicEndpointConfig();
        private static final e2<DynamicEndpointConfig> PARSER = new a();

        /* loaded from: classes5.dex */
        class a extends com.google.protobuf.c<DynamicEndpointConfig> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public DynamicEndpointConfig m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new DynamicEndpointConfig(pVar, f0Var, null);
            }
        }

        /* loaded from: classes5.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements c {

            /* renamed from: e  reason: collision with root package name */
            private Object f45789e;

            /* renamed from: f  reason: collision with root package name */
            private Any f45790f;

            /* renamed from: g  reason: collision with root package name */
            private q2<Any, Any.b, com.google.protobuf.f> f45791g;

            /* renamed from: h  reason: collision with root package name */
            private Timestamp f45792h;

            /* renamed from: i  reason: collision with root package name */
            private q2<Timestamp, Timestamp.b, z2> f45793i;

            /* renamed from: j  reason: collision with root package name */
            private UpdateFailureState f45794j;

            /* renamed from: k  reason: collision with root package name */
            private q2<UpdateFailureState, UpdateFailureState.b, g> f45795k;

            /* renamed from: l  reason: collision with root package name */
            private int f45796l;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.R.d(DynamicEndpointConfig.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public DynamicEndpointConfig build() {
                DynamicEndpointConfig I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public DynamicEndpointConfig I() {
                DynamicEndpointConfig dynamicEndpointConfig = new DynamicEndpointConfig(this, (a) null);
                dynamicEndpointConfig.versionInfo_ = this.f45789e;
                q2<Any, Any.b, com.google.protobuf.f> q2Var = this.f45791g;
                if (q2Var == null) {
                    dynamicEndpointConfig.endpointConfig_ = this.f45790f;
                } else {
                    dynamicEndpointConfig.endpointConfig_ = q2Var.b();
                }
                q2<Timestamp, Timestamp.b, z2> q2Var2 = this.f45793i;
                if (q2Var2 == null) {
                    dynamicEndpointConfig.lastUpdated_ = this.f45792h;
                } else {
                    dynamicEndpointConfig.lastUpdated_ = q2Var2.b();
                }
                q2<UpdateFailureState, UpdateFailureState.b, g> q2Var3 = this.f45795k;
                if (q2Var3 == null) {
                    dynamicEndpointConfig.errorState_ = this.f45794j;
                } else {
                    dynamicEndpointConfig.errorState_ = q2Var3.b();
                }
                dynamicEndpointConfig.clientStatus_ = this.f45796l;
                Q();
                return dynamicEndpointConfig;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public DynamicEndpointConfig getDefaultInstanceForType() {
                return DynamicEndpointConfig.getDefaultInstance();
            }

            public b d0(Any any) {
                q2<Any, Any.b, com.google.protobuf.f> q2Var = this.f45791g;
                if (q2Var == null) {
                    Any any2 = this.f45790f;
                    if (any2 != null) {
                        this.f45790f = Any.newBuilder(any2).d0(any).I();
                    } else {
                        this.f45790f = any;
                    }
                    R();
                } else {
                    q2Var.e(any);
                }
                return this;
            }

            public b e0(UpdateFailureState updateFailureState) {
                q2<UpdateFailureState, UpdateFailureState.b, g> q2Var = this.f45795k;
                if (q2Var == null) {
                    UpdateFailureState updateFailureState2 = this.f45794j;
                    if (updateFailureState2 != null) {
                        this.f45794j = UpdateFailureState.newBuilder(updateFailureState2).h0(updateFailureState).I();
                    } else {
                        this.f45794j = updateFailureState;
                    }
                    R();
                } else {
                    q2Var.e(updateFailureState);
                }
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: g0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.EndpointsConfigDump.DynamicEndpointConfig.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.EndpointsConfigDump.DynamicEndpointConfig.access$1900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.EndpointsConfigDump$DynamicEndpointConfig r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.EndpointsConfigDump.DynamicEndpointConfig) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.EndpointsConfigDump$DynamicEndpointConfig r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.EndpointsConfigDump.DynamicEndpointConfig) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.EndpointsConfigDump.DynamicEndpointConfig.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.EndpointsConfigDump$DynamicEndpointConfig$b");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.Q;
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: h0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof DynamicEndpointConfig) {
                    return i0((DynamicEndpointConfig) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b i0(DynamicEndpointConfig dynamicEndpointConfig) {
                if (dynamicEndpointConfig == DynamicEndpointConfig.getDefaultInstance()) {
                    return this;
                }
                if (!dynamicEndpointConfig.getVersionInfo().isEmpty()) {
                    this.f45789e = dynamicEndpointConfig.versionInfo_;
                    R();
                }
                if (dynamicEndpointConfig.hasEndpointConfig()) {
                    d0(dynamicEndpointConfig.getEndpointConfig());
                }
                if (dynamicEndpointConfig.hasLastUpdated()) {
                    j0(dynamicEndpointConfig.getLastUpdated());
                }
                if (dynamicEndpointConfig.hasErrorState()) {
                    e0(dynamicEndpointConfig.getErrorState());
                }
                if (dynamicEndpointConfig.clientStatus_ != 0) {
                    l0(dynamicEndpointConfig.getClientStatusValue());
                }
                z(((GeneratedMessageV3) dynamicEndpointConfig).unknownFields);
                R();
                return this;
            }

            public b j0(Timestamp timestamp) {
                q2<Timestamp, Timestamp.b, z2> q2Var = this.f45793i;
                if (q2Var == null) {
                    Timestamp timestamp2 = this.f45792h;
                    if (timestamp2 != null) {
                        this.f45792h = Timestamp.newBuilder(timestamp2).g0(timestamp).I();
                    } else {
                        this.f45792h = timestamp;
                    }
                    R();
                } else {
                    q2Var.e(timestamp);
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: k0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            public b l0(int i9) {
                this.f45796l = i9;
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: m0 */
            public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.c(fieldDescriptor, obj);
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
                this.f45789e = "";
                this.f45796l = 0;
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f45789e = "";
                this.f45796l = 0;
                b0();
            }
        }

        /* synthetic */ DynamicEndpointConfig(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static DynamicEndpointConfig getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.Q;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static DynamicEndpointConfig parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (DynamicEndpointConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static DynamicEndpointConfig parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<DynamicEndpointConfig> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof DynamicEndpointConfig)) {
                return super.equals(obj);
            }
            DynamicEndpointConfig dynamicEndpointConfig = (DynamicEndpointConfig) obj;
            if (getVersionInfo().equals(dynamicEndpointConfig.getVersionInfo()) && hasEndpointConfig() == dynamicEndpointConfig.hasEndpointConfig()) {
                if ((!hasEndpointConfig() || getEndpointConfig().equals(dynamicEndpointConfig.getEndpointConfig())) && hasLastUpdated() == dynamicEndpointConfig.hasLastUpdated()) {
                    if ((!hasLastUpdated() || getLastUpdated().equals(dynamicEndpointConfig.getLastUpdated())) && hasErrorState() == dynamicEndpointConfig.hasErrorState()) {
                        return (!hasErrorState() || getErrorState().equals(dynamicEndpointConfig.getErrorState())) && this.clientStatus_ == dynamicEndpointConfig.clientStatus_ && this.unknownFields.equals(dynamicEndpointConfig.unknownFields);
                    }
                    return false;
                }
                return false;
            }
            return false;
        }

        public ClientResourceStatus getClientStatus() {
            ClientResourceStatus valueOf = ClientResourceStatus.valueOf(this.clientStatus_);
            return valueOf == null ? ClientResourceStatus.UNRECOGNIZED : valueOf;
        }

        public int getClientStatusValue() {
            return this.clientStatus_;
        }

        public Any getEndpointConfig() {
            Any any = this.endpointConfig_;
            return any == null ? Any.getDefaultInstance() : any;
        }

        public com.google.protobuf.f getEndpointConfigOrBuilder() {
            return getEndpointConfig();
        }

        public UpdateFailureState getErrorState() {
            UpdateFailureState updateFailureState = this.errorState_;
            return updateFailureState == null ? UpdateFailureState.getDefaultInstance() : updateFailureState;
        }

        public g getErrorStateOrBuilder() {
            return getErrorState();
        }

        public Timestamp getLastUpdated() {
            Timestamp timestamp = this.lastUpdated_;
            return timestamp == null ? Timestamp.getDefaultInstance() : timestamp;
        }

        public z2 getLastUpdatedOrBuilder() {
            return getLastUpdated();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<DynamicEndpointConfig> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int computeStringSize = GeneratedMessageV3.isStringEmpty(this.versionInfo_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.versionInfo_);
            if (this.endpointConfig_ != null) {
                computeStringSize += CodedOutputStream.G(2, getEndpointConfig());
            }
            if (this.lastUpdated_ != null) {
                computeStringSize += CodedOutputStream.G(3, getLastUpdated());
            }
            if (this.errorState_ != null) {
                computeStringSize += CodedOutputStream.G(4, getErrorState());
            }
            if (this.clientStatus_ != ClientResourceStatus.UNKNOWN.getNumber()) {
                computeStringSize += CodedOutputStream.l(5, this.clientStatus_);
            }
            int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public String getVersionInfo() {
            Object obj = this.versionInfo_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.versionInfo_ = stringUtf8;
            return stringUtf8;
        }

        public ByteString getVersionInfoBytes() {
            Object obj = this.versionInfo_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.versionInfo_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        public boolean hasEndpointConfig() {
            return this.endpointConfig_ != null;
        }

        public boolean hasErrorState() {
            return this.errorState_ != null;
        }

        public boolean hasLastUpdated() {
            return this.lastUpdated_ != null;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getVersionInfo().hashCode();
            if (hasEndpointConfig()) {
                hashCode = (((hashCode * 37) + 2) * 53) + getEndpointConfig().hashCode();
            }
            if (hasLastUpdated()) {
                hashCode = (((hashCode * 37) + 3) * 53) + getLastUpdated().hashCode();
            }
            if (hasErrorState()) {
                hashCode = (((hashCode * 37) + 4) * 53) + getErrorState().hashCode();
            }
            int hashCode2 = (((((hashCode * 37) + 5) * 53) + this.clientStatus_) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.R.d(DynamicEndpointConfig.class, b.class);
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
            return new DynamicEndpointConfig();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (!GeneratedMessageV3.isStringEmpty(this.versionInfo_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.versionInfo_);
            }
            if (this.endpointConfig_ != null) {
                codedOutputStream.L0(2, getEndpointConfig());
            }
            if (this.lastUpdated_ != null) {
                codedOutputStream.L0(3, getLastUpdated());
            }
            if (this.errorState_ != null) {
                codedOutputStream.L0(4, getErrorState());
            }
            if (this.clientStatus_ != ClientResourceStatus.UNKNOWN.getNumber()) {
                codedOutputStream.v0(5, this.clientStatus_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ DynamicEndpointConfig(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(DynamicEndpointConfig dynamicEndpointConfig) {
            return DEFAULT_INSTANCE.toBuilder().i0(dynamicEndpointConfig);
        }

        public static DynamicEndpointConfig parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private DynamicEndpointConfig(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static DynamicEndpointConfig parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (DynamicEndpointConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static DynamicEndpointConfig parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public DynamicEndpointConfig getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).i0(this);
        }

        public static DynamicEndpointConfig parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private DynamicEndpointConfig() {
            this.memoizedIsInitialized = (byte) -1;
            this.versionInfo_ = "";
            this.clientStatus_ = 0;
        }

        public static DynamicEndpointConfig parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static DynamicEndpointConfig parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static DynamicEndpointConfig parseFrom(InputStream inputStream) throws IOException {
            return (DynamicEndpointConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private DynamicEndpointConfig(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                if (L != 10) {
                                    if (L == 18) {
                                        Any any = this.endpointConfig_;
                                        Any.b builder = any != null ? any.toBuilder() : null;
                                        Any any2 = (Any) pVar.B(Any.parser(), f0Var);
                                        this.endpointConfig_ = any2;
                                        if (builder != null) {
                                            builder.d0(any2);
                                            this.endpointConfig_ = builder.I();
                                        }
                                    } else if (L == 26) {
                                        Timestamp timestamp = this.lastUpdated_;
                                        Timestamp.b builder2 = timestamp != null ? timestamp.toBuilder() : null;
                                        Timestamp timestamp2 = (Timestamp) pVar.B(Timestamp.parser(), f0Var);
                                        this.lastUpdated_ = timestamp2;
                                        if (builder2 != null) {
                                            builder2.g0(timestamp2);
                                            this.lastUpdated_ = builder2.I();
                                        }
                                    } else if (L == 34) {
                                        UpdateFailureState updateFailureState = this.errorState_;
                                        UpdateFailureState.b builder3 = updateFailureState != null ? updateFailureState.toBuilder() : null;
                                        UpdateFailureState updateFailureState2 = (UpdateFailureState) pVar.B(UpdateFailureState.parser(), f0Var);
                                        this.errorState_ = updateFailureState2;
                                        if (builder3 != null) {
                                            builder3.h0(updateFailureState2);
                                            this.errorState_ = builder3.I();
                                        }
                                    } else if (L != 40) {
                                        if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                        }
                                    } else {
                                        this.clientStatus_ = pVar.u();
                                    }
                                } else {
                                    this.versionInfo_ = pVar.K();
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
                    this.unknownFields = h10.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static DynamicEndpointConfig parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (DynamicEndpointConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static DynamicEndpointConfig parseFrom(p pVar) throws IOException {
            return (DynamicEndpointConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static DynamicEndpointConfig parseFrom(p pVar, f0 f0Var) throws IOException {
            return (DynamicEndpointConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes5.dex */
    public static final class StaticEndpointConfig extends GeneratedMessageV3 implements d {
        public static final int ENDPOINT_CONFIG_FIELD_NUMBER = 1;
        public static final int LAST_UPDATED_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private Any endpointConfig_;
        private Timestamp lastUpdated_;
        private byte memoizedIsInitialized;
        private static final StaticEndpointConfig DEFAULT_INSTANCE = new StaticEndpointConfig();
        private static final e2<StaticEndpointConfig> PARSER = new a();

        /* loaded from: classes5.dex */
        class a extends com.google.protobuf.c<StaticEndpointConfig> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public StaticEndpointConfig m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new StaticEndpointConfig(pVar, f0Var, null);
            }
        }

        /* loaded from: classes5.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements d {

            /* renamed from: e  reason: collision with root package name */
            private Any f45797e;

            /* renamed from: f  reason: collision with root package name */
            private q2<Any, Any.b, com.google.protobuf.f> f45798f;

            /* renamed from: g  reason: collision with root package name */
            private Timestamp f45799g;

            /* renamed from: h  reason: collision with root package name */
            private q2<Timestamp, Timestamp.b, z2> f45800h;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.P.d(StaticEndpointConfig.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public StaticEndpointConfig build() {
                StaticEndpointConfig I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public StaticEndpointConfig I() {
                StaticEndpointConfig staticEndpointConfig = new StaticEndpointConfig(this, (a) null);
                q2<Any, Any.b, com.google.protobuf.f> q2Var = this.f45798f;
                if (q2Var == null) {
                    staticEndpointConfig.endpointConfig_ = this.f45797e;
                } else {
                    staticEndpointConfig.endpointConfig_ = q2Var.b();
                }
                q2<Timestamp, Timestamp.b, z2> q2Var2 = this.f45800h;
                if (q2Var2 == null) {
                    staticEndpointConfig.lastUpdated_ = this.f45799g;
                } else {
                    staticEndpointConfig.lastUpdated_ = q2Var2.b();
                }
                Q();
                return staticEndpointConfig;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public StaticEndpointConfig getDefaultInstanceForType() {
                return StaticEndpointConfig.getDefaultInstance();
            }

            public b d0(Any any) {
                q2<Any, Any.b, com.google.protobuf.f> q2Var = this.f45798f;
                if (q2Var == null) {
                    Any any2 = this.f45797e;
                    if (any2 != null) {
                        this.f45797e = Any.newBuilder(any2).d0(any).I();
                    } else {
                        this.f45797e = any;
                    }
                    R();
                } else {
                    q2Var.e(any);
                }
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.EndpointsConfigDump.StaticEndpointConfig.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.EndpointsConfigDump.StaticEndpointConfig.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.EndpointsConfigDump$StaticEndpointConfig r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.EndpointsConfigDump.StaticEndpointConfig) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.EndpointsConfigDump$StaticEndpointConfig r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.EndpointsConfigDump.StaticEndpointConfig) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.EndpointsConfigDump.StaticEndpointConfig.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.EndpointsConfigDump$StaticEndpointConfig$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: g0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof StaticEndpointConfig) {
                    return h0((StaticEndpointConfig) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.O;
            }

            public b h0(StaticEndpointConfig staticEndpointConfig) {
                if (staticEndpointConfig == StaticEndpointConfig.getDefaultInstance()) {
                    return this;
                }
                if (staticEndpointConfig.hasEndpointConfig()) {
                    d0(staticEndpointConfig.getEndpointConfig());
                }
                if (staticEndpointConfig.hasLastUpdated()) {
                    i0(staticEndpointConfig.getLastUpdated());
                }
                z(((GeneratedMessageV3) staticEndpointConfig).unknownFields);
                R();
                return this;
            }

            public b i0(Timestamp timestamp) {
                q2<Timestamp, Timestamp.b, z2> q2Var = this.f45800h;
                if (q2Var == null) {
                    Timestamp timestamp2 = this.f45799g;
                    if (timestamp2 != null) {
                        this.f45799g = Timestamp.newBuilder(timestamp2).g0(timestamp).I();
                    } else {
                        this.f45799g = timestamp;
                    }
                    R();
                } else {
                    q2Var.e(timestamp);
                }
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

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: l0 */
            public final b f1(h3 h3Var) {
                return (b) super.f1(h3Var);
            }

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                b0();
            }
        }

        /* synthetic */ StaticEndpointConfig(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static StaticEndpointConfig getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.O;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static StaticEndpointConfig parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (StaticEndpointConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static StaticEndpointConfig parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<StaticEndpointConfig> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof StaticEndpointConfig)) {
                return super.equals(obj);
            }
            StaticEndpointConfig staticEndpointConfig = (StaticEndpointConfig) obj;
            if (hasEndpointConfig() != staticEndpointConfig.hasEndpointConfig()) {
                return false;
            }
            if ((!hasEndpointConfig() || getEndpointConfig().equals(staticEndpointConfig.getEndpointConfig())) && hasLastUpdated() == staticEndpointConfig.hasLastUpdated()) {
                return (!hasLastUpdated() || getLastUpdated().equals(staticEndpointConfig.getLastUpdated())) && this.unknownFields.equals(staticEndpointConfig.unknownFields);
            }
            return false;
        }

        public Any getEndpointConfig() {
            Any any = this.endpointConfig_;
            return any == null ? Any.getDefaultInstance() : any;
        }

        public com.google.protobuf.f getEndpointConfigOrBuilder() {
            return getEndpointConfig();
        }

        public Timestamp getLastUpdated() {
            Timestamp timestamp = this.lastUpdated_;
            return timestamp == null ? Timestamp.getDefaultInstance() : timestamp;
        }

        public z2 getLastUpdatedOrBuilder() {
            return getLastUpdated();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<StaticEndpointConfig> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int G = this.endpointConfig_ != null ? 0 + CodedOutputStream.G(1, getEndpointConfig()) : 0;
            if (this.lastUpdated_ != null) {
                G += CodedOutputStream.G(2, getLastUpdated());
            }
            int serializedSize = G + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasEndpointConfig() {
            return this.endpointConfig_ != null;
        }

        public boolean hasLastUpdated() {
            return this.lastUpdated_ != null;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (hasEndpointConfig()) {
                hashCode = (((hashCode * 37) + 1) * 53) + getEndpointConfig().hashCode();
            }
            if (hasLastUpdated()) {
                hashCode = (((hashCode * 37) + 2) * 53) + getLastUpdated().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.P.d(StaticEndpointConfig.class, b.class);
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
            return new StaticEndpointConfig();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (this.endpointConfig_ != null) {
                codedOutputStream.L0(1, getEndpointConfig());
            }
            if (this.lastUpdated_ != null) {
                codedOutputStream.L0(2, getLastUpdated());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ StaticEndpointConfig(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(StaticEndpointConfig staticEndpointConfig) {
            return DEFAULT_INSTANCE.toBuilder().h0(staticEndpointConfig);
        }

        public static StaticEndpointConfig parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private StaticEndpointConfig(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static StaticEndpointConfig parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (StaticEndpointConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static StaticEndpointConfig parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public StaticEndpointConfig getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).h0(this);
        }

        public static StaticEndpointConfig parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private StaticEndpointConfig() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static StaticEndpointConfig parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static StaticEndpointConfig parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        private StaticEndpointConfig(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                Any any = this.endpointConfig_;
                                Any.b builder = any != null ? any.toBuilder() : null;
                                Any any2 = (Any) pVar.B(Any.parser(), f0Var);
                                this.endpointConfig_ = any2;
                                if (builder != null) {
                                    builder.d0(any2);
                                    this.endpointConfig_ = builder.I();
                                }
                            } else if (L != 18) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                Timestamp timestamp = this.lastUpdated_;
                                Timestamp.b builder2 = timestamp != null ? timestamp.toBuilder() : null;
                                Timestamp timestamp2 = (Timestamp) pVar.B(Timestamp.parser(), f0Var);
                                this.lastUpdated_ = timestamp2;
                                if (builder2 != null) {
                                    builder2.g0(timestamp2);
                                    this.lastUpdated_ = builder2.I();
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

        public static StaticEndpointConfig parseFrom(InputStream inputStream) throws IOException {
            return (StaticEndpointConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static StaticEndpointConfig parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (StaticEndpointConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static StaticEndpointConfig parseFrom(p pVar) throws IOException {
            return (StaticEndpointConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static StaticEndpointConfig parseFrom(p pVar, f0 f0Var) throws IOException {
            return (StaticEndpointConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends com.google.protobuf.c<EndpointsConfigDump> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public EndpointsConfigDump m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new EndpointsConfigDump(pVar, f0Var, null);
        }
    }

    /* loaded from: classes5.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.c {

        /* renamed from: e  reason: collision with root package name */
        private int f45801e;

        /* renamed from: f  reason: collision with root package name */
        private List<StaticEndpointConfig> f45802f;

        /* renamed from: g  reason: collision with root package name */
        private l2<StaticEndpointConfig, StaticEndpointConfig.b, d> f45803g;

        /* renamed from: h  reason: collision with root package name */
        private List<DynamicEndpointConfig> f45804h;

        /* renamed from: i  reason: collision with root package name */
        private l2<DynamicEndpointConfig, DynamicEndpointConfig.b, c> f45805i;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f45801e & 2) == 0) {
                this.f45804h = new ArrayList(this.f45804h);
                this.f45801e |= 2;
            }
        }

        private void b0() {
            if ((this.f45801e & 1) == 0) {
                this.f45802f = new ArrayList(this.f45802f);
                this.f45801e |= 1;
            }
        }

        private l2<DynamicEndpointConfig, DynamicEndpointConfig.b, c> e0() {
            if (this.f45805i == null) {
                this.f45805i = new l2<>(this.f45804h, (this.f45801e & 2) != 0, H(), O());
                this.f45804h = null;
            }
            return this.f45805i;
        }

        private l2<StaticEndpointConfig, StaticEndpointConfig.b, d> g0() {
            if (this.f45803g == null) {
                this.f45803g = new l2<>(this.f45802f, (this.f45801e & 1) != 0, H(), O());
                this.f45802f = null;
            }
            return this.f45803g;
        }

        private void h0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                g0();
                e0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.N.d(EndpointsConfigDump.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public EndpointsConfigDump build() {
            EndpointsConfigDump I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public EndpointsConfigDump I() {
            EndpointsConfigDump endpointsConfigDump = new EndpointsConfigDump(this, (a) null);
            int i9 = this.f45801e;
            l2<StaticEndpointConfig, StaticEndpointConfig.b, d> l2Var = this.f45803g;
            if (l2Var == null) {
                if ((i9 & 1) != 0) {
                    this.f45802f = Collections.unmodifiableList(this.f45802f);
                    this.f45801e &= -2;
                }
                endpointsConfigDump.staticEndpointConfigs_ = this.f45802f;
            } else {
                endpointsConfigDump.staticEndpointConfigs_ = l2Var.e();
            }
            l2<DynamicEndpointConfig, DynamicEndpointConfig.b, c> l2Var2 = this.f45805i;
            if (l2Var2 == null) {
                if ((this.f45801e & 2) != 0) {
                    this.f45804h = Collections.unmodifiableList(this.f45804h);
                    this.f45801e &= -3;
                }
                endpointsConfigDump.dynamicEndpointConfigs_ = this.f45804h;
            } else {
                endpointsConfigDump.dynamicEndpointConfigs_ = l2Var2.e();
            }
            Q();
            return endpointsConfigDump;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: d0 */
        public EndpointsConfigDump getDefaultInstanceForType() {
            return EndpointsConfigDump.getDefaultInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.M;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.EndpointsConfigDump.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.EndpointsConfigDump.access$3100()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.EndpointsConfigDump r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.EndpointsConfigDump) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.k0(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.EndpointsConfigDump r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.EndpointsConfigDump) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.k0(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.EndpointsConfigDump.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.EndpointsConfigDump$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: j0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof EndpointsConfigDump) {
                return k0((EndpointsConfigDump) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b k0(EndpointsConfigDump endpointsConfigDump) {
            if (endpointsConfigDump == EndpointsConfigDump.getDefaultInstance()) {
                return this;
            }
            if (this.f45803g == null) {
                if (!endpointsConfigDump.staticEndpointConfigs_.isEmpty()) {
                    if (this.f45802f.isEmpty()) {
                        this.f45802f = endpointsConfigDump.staticEndpointConfigs_;
                        this.f45801e &= -2;
                    } else {
                        b0();
                        this.f45802f.addAll(endpointsConfigDump.staticEndpointConfigs_);
                    }
                    R();
                }
            } else if (!endpointsConfigDump.staticEndpointConfigs_.isEmpty()) {
                if (this.f45803g.k()) {
                    this.f45803g.f();
                    this.f45803g = null;
                    this.f45802f = endpointsConfigDump.staticEndpointConfigs_;
                    this.f45801e &= -2;
                    this.f45803g = GeneratedMessageV3.alwaysUseFieldBuilders ? g0() : null;
                } else {
                    this.f45803g.b(endpointsConfigDump.staticEndpointConfigs_);
                }
            }
            if (this.f45805i == null) {
                if (!endpointsConfigDump.dynamicEndpointConfigs_.isEmpty()) {
                    if (this.f45804h.isEmpty()) {
                        this.f45804h = endpointsConfigDump.dynamicEndpointConfigs_;
                        this.f45801e &= -3;
                    } else {
                        a0();
                        this.f45804h.addAll(endpointsConfigDump.dynamicEndpointConfigs_);
                    }
                    R();
                }
            } else if (!endpointsConfigDump.dynamicEndpointConfigs_.isEmpty()) {
                if (this.f45805i.k()) {
                    this.f45805i.f();
                    this.f45805i = null;
                    this.f45804h = endpointsConfigDump.dynamicEndpointConfigs_;
                    this.f45801e &= -3;
                    this.f45805i = GeneratedMessageV3.alwaysUseFieldBuilders ? e0() : null;
                } else {
                    this.f45805i.b(endpointsConfigDump.dynamicEndpointConfigs_);
                }
            }
            z(((GeneratedMessageV3) endpointsConfigDump).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: l0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: m0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
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
            this.f45802f = Collections.emptyList();
            this.f45804h = Collections.emptyList();
            h0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f45802f = Collections.emptyList();
            this.f45804h = Collections.emptyList();
            h0();
        }
    }

    /* loaded from: classes5.dex */
    public interface c extends r1 {
    }

    /* loaded from: classes5.dex */
    public interface d extends r1 {
    }

    /* synthetic */ EndpointsConfigDump(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static EndpointsConfigDump getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.M;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static EndpointsConfigDump parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (EndpointsConfigDump) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static EndpointsConfigDump parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<EndpointsConfigDump> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof EndpointsConfigDump)) {
            return super.equals(obj);
        }
        EndpointsConfigDump endpointsConfigDump = (EndpointsConfigDump) obj;
        return getStaticEndpointConfigsList().equals(endpointsConfigDump.getStaticEndpointConfigsList()) && getDynamicEndpointConfigsList().equals(endpointsConfigDump.getDynamicEndpointConfigsList()) && this.unknownFields.equals(endpointsConfigDump.unknownFields);
    }

    public DynamicEndpointConfig getDynamicEndpointConfigs(int i9) {
        return this.dynamicEndpointConfigs_.get(i9);
    }

    public int getDynamicEndpointConfigsCount() {
        return this.dynamicEndpointConfigs_.size();
    }

    public List<DynamicEndpointConfig> getDynamicEndpointConfigsList() {
        return this.dynamicEndpointConfigs_;
    }

    public c getDynamicEndpointConfigsOrBuilder(int i9) {
        return this.dynamicEndpointConfigs_.get(i9);
    }

    public List<? extends c> getDynamicEndpointConfigsOrBuilderList() {
        return this.dynamicEndpointConfigs_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<EndpointsConfigDump> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < this.staticEndpointConfigs_.size(); i11++) {
            i10 += CodedOutputStream.G(2, this.staticEndpointConfigs_.get(i11));
        }
        for (int i12 = 0; i12 < this.dynamicEndpointConfigs_.size(); i12++) {
            i10 += CodedOutputStream.G(3, this.dynamicEndpointConfigs_.get(i12));
        }
        int serializedSize = i10 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public StaticEndpointConfig getStaticEndpointConfigs(int i9) {
        return this.staticEndpointConfigs_.get(i9);
    }

    public int getStaticEndpointConfigsCount() {
        return this.staticEndpointConfigs_.size();
    }

    public List<StaticEndpointConfig> getStaticEndpointConfigsList() {
        return this.staticEndpointConfigs_;
    }

    public d getStaticEndpointConfigsOrBuilder(int i9) {
        return this.staticEndpointConfigs_.get(i9);
    }

    public List<? extends d> getStaticEndpointConfigsOrBuilderList() {
        return this.staticEndpointConfigs_;
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
        int hashCode = 779 + getDescriptor().hashCode();
        if (getStaticEndpointConfigsCount() > 0) {
            hashCode = (((hashCode * 37) + 2) * 53) + getStaticEndpointConfigsList().hashCode();
        }
        if (getDynamicEndpointConfigsCount() > 0) {
            hashCode = (((hashCode * 37) + 3) * 53) + getDynamicEndpointConfigsList().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.N.d(EndpointsConfigDump.class, b.class);
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
        return new EndpointsConfigDump();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        for (int i9 = 0; i9 < this.staticEndpointConfigs_.size(); i9++) {
            codedOutputStream.L0(2, this.staticEndpointConfigs_.get(i9));
        }
        for (int i10 = 0; i10 < this.dynamicEndpointConfigs_.size(); i10++) {
            codedOutputStream.L0(3, this.dynamicEndpointConfigs_.get(i10));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ EndpointsConfigDump(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(EndpointsConfigDump endpointsConfigDump) {
        return DEFAULT_INSTANCE.toBuilder().k0(endpointsConfigDump);
    }

    public static EndpointsConfigDump parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private EndpointsConfigDump(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static EndpointsConfigDump parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (EndpointsConfigDump) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static EndpointsConfigDump parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public EndpointsConfigDump getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).k0(this);
    }

    public static EndpointsConfigDump parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private EndpointsConfigDump() {
        this.memoizedIsInitialized = (byte) -1;
        this.staticEndpointConfigs_ = Collections.emptyList();
        this.dynamicEndpointConfigs_ = Collections.emptyList();
    }

    public static EndpointsConfigDump parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static EndpointsConfigDump parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static EndpointsConfigDump parseFrom(InputStream inputStream) throws IOException {
        return (EndpointsConfigDump) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private EndpointsConfigDump(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            if (L == 18) {
                                if (!(z11 & true)) {
                                    this.staticEndpointConfigs_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.staticEndpointConfigs_.add((StaticEndpointConfig) pVar.B(StaticEndpointConfig.parser(), f0Var));
                            } else if (L != 26) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                if (!(z11 & true)) {
                                    this.dynamicEndpointConfigs_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.dynamicEndpointConfigs_.add((DynamicEndpointConfig) pVar.B(DynamicEndpointConfig.parser(), f0Var));
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
                    this.staticEndpointConfigs_ = Collections.unmodifiableList(this.staticEndpointConfigs_);
                }
                if (z11 & true) {
                    this.dynamicEndpointConfigs_ = Collections.unmodifiableList(this.dynamicEndpointConfigs_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static EndpointsConfigDump parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (EndpointsConfigDump) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static EndpointsConfigDump parseFrom(p pVar) throws IOException {
        return (EndpointsConfigDump) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static EndpointsConfigDump parseFrom(p pVar, f0 f0Var) throws IOException {
        return (EndpointsConfigDump) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
