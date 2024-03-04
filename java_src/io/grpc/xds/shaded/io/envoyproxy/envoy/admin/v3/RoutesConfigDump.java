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
public final class RoutesConfigDump extends GeneratedMessageV3 implements e {
    public static final int DYNAMIC_ROUTE_CONFIGS_FIELD_NUMBER = 3;
    public static final int STATIC_ROUTE_CONFIGS_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private List<DynamicRouteConfig> dynamicRouteConfigs_;
    private byte memoizedIsInitialized;
    private List<StaticRouteConfig> staticRouteConfigs_;
    private static final RoutesConfigDump DEFAULT_INSTANCE = new RoutesConfigDump();
    private static final e2<RoutesConfigDump> PARSER = new a();

    /* loaded from: classes5.dex */
    public static final class DynamicRouteConfig extends GeneratedMessageV3 implements c {
        public static final int CLIENT_STATUS_FIELD_NUMBER = 5;
        public static final int ERROR_STATE_FIELD_NUMBER = 4;
        public static final int LAST_UPDATED_FIELD_NUMBER = 3;
        public static final int ROUTE_CONFIG_FIELD_NUMBER = 2;
        public static final int VERSION_INFO_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int clientStatus_;
        private UpdateFailureState errorState_;
        private Timestamp lastUpdated_;
        private byte memoizedIsInitialized;
        private Any routeConfig_;
        private volatile Object versionInfo_;
        private static final DynamicRouteConfig DEFAULT_INSTANCE = new DynamicRouteConfig();
        private static final e2<DynamicRouteConfig> PARSER = new a();

        /* loaded from: classes5.dex */
        class a extends com.google.protobuf.c<DynamicRouteConfig> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public DynamicRouteConfig m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new DynamicRouteConfig(pVar, f0Var, null);
            }
        }

        /* loaded from: classes5.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements c {

            /* renamed from: e  reason: collision with root package name */
            private Object f45831e;

            /* renamed from: f  reason: collision with root package name */
            private Any f45832f;

            /* renamed from: g  reason: collision with root package name */
            private q2<Any, Any.b, com.google.protobuf.f> f45833g;

            /* renamed from: h  reason: collision with root package name */
            private Timestamp f45834h;

            /* renamed from: i  reason: collision with root package name */
            private q2<Timestamp, Timestamp.b, z2> f45835i;

            /* renamed from: j  reason: collision with root package name */
            private UpdateFailureState f45836j;

            /* renamed from: k  reason: collision with root package name */
            private q2<UpdateFailureState, UpdateFailureState.b, g> f45837k;

            /* renamed from: l  reason: collision with root package name */
            private int f45838l;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.f45921z.d(DynamicRouteConfig.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public DynamicRouteConfig build() {
                DynamicRouteConfig I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public DynamicRouteConfig I() {
                DynamicRouteConfig dynamicRouteConfig = new DynamicRouteConfig(this, (a) null);
                dynamicRouteConfig.versionInfo_ = this.f45831e;
                q2<Any, Any.b, com.google.protobuf.f> q2Var = this.f45833g;
                if (q2Var == null) {
                    dynamicRouteConfig.routeConfig_ = this.f45832f;
                } else {
                    dynamicRouteConfig.routeConfig_ = q2Var.b();
                }
                q2<Timestamp, Timestamp.b, z2> q2Var2 = this.f45835i;
                if (q2Var2 == null) {
                    dynamicRouteConfig.lastUpdated_ = this.f45834h;
                } else {
                    dynamicRouteConfig.lastUpdated_ = q2Var2.b();
                }
                q2<UpdateFailureState, UpdateFailureState.b, g> q2Var3 = this.f45837k;
                if (q2Var3 == null) {
                    dynamicRouteConfig.errorState_ = this.f45836j;
                } else {
                    dynamicRouteConfig.errorState_ = q2Var3.b();
                }
                dynamicRouteConfig.clientStatus_ = this.f45838l;
                Q();
                return dynamicRouteConfig;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public DynamicRouteConfig getDefaultInstanceForType() {
                return DynamicRouteConfig.getDefaultInstance();
            }

            public b d0(UpdateFailureState updateFailureState) {
                q2<UpdateFailureState, UpdateFailureState.b, g> q2Var = this.f45837k;
                if (q2Var == null) {
                    UpdateFailureState updateFailureState2 = this.f45836j;
                    if (updateFailureState2 != null) {
                        this.f45836j = UpdateFailureState.newBuilder(updateFailureState2).h0(updateFailureState).I();
                    } else {
                        this.f45836j = updateFailureState;
                    }
                    R();
                } else {
                    q2Var.e(updateFailureState);
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
            public io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.RoutesConfigDump.DynamicRouteConfig.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.RoutesConfigDump.DynamicRouteConfig.access$1900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.RoutesConfigDump$DynamicRouteConfig r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.RoutesConfigDump.DynamicRouteConfig) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.RoutesConfigDump$DynamicRouteConfig r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.RoutesConfigDump.DynamicRouteConfig) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.RoutesConfigDump.DynamicRouteConfig.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.RoutesConfigDump$DynamicRouteConfig$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: g0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof DynamicRouteConfig) {
                    return h0((DynamicRouteConfig) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.f45920y;
            }

            public b h0(DynamicRouteConfig dynamicRouteConfig) {
                if (dynamicRouteConfig == DynamicRouteConfig.getDefaultInstance()) {
                    return this;
                }
                if (!dynamicRouteConfig.getVersionInfo().isEmpty()) {
                    this.f45831e = dynamicRouteConfig.versionInfo_;
                    R();
                }
                if (dynamicRouteConfig.hasRouteConfig()) {
                    j0(dynamicRouteConfig.getRouteConfig());
                }
                if (dynamicRouteConfig.hasLastUpdated()) {
                    i0(dynamicRouteConfig.getLastUpdated());
                }
                if (dynamicRouteConfig.hasErrorState()) {
                    d0(dynamicRouteConfig.getErrorState());
                }
                if (dynamicRouteConfig.clientStatus_ != 0) {
                    l0(dynamicRouteConfig.getClientStatusValue());
                }
                z(((GeneratedMessageV3) dynamicRouteConfig).unknownFields);
                R();
                return this;
            }

            public b i0(Timestamp timestamp) {
                q2<Timestamp, Timestamp.b, z2> q2Var = this.f45835i;
                if (q2Var == null) {
                    Timestamp timestamp2 = this.f45834h;
                    if (timestamp2 != null) {
                        this.f45834h = Timestamp.newBuilder(timestamp2).g0(timestamp).I();
                    } else {
                        this.f45834h = timestamp;
                    }
                    R();
                } else {
                    q2Var.e(timestamp);
                }
                return this;
            }

            public b j0(Any any) {
                q2<Any, Any.b, com.google.protobuf.f> q2Var = this.f45833g;
                if (q2Var == null) {
                    Any any2 = this.f45832f;
                    if (any2 != null) {
                        this.f45832f = Any.newBuilder(any2).d0(any).I();
                    } else {
                        this.f45832f = any;
                    }
                    R();
                } else {
                    q2Var.e(any);
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: k0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            public b l0(int i9) {
                this.f45838l = i9;
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
                this.f45831e = "";
                this.f45838l = 0;
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f45831e = "";
                this.f45838l = 0;
                b0();
            }
        }

        /* synthetic */ DynamicRouteConfig(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static DynamicRouteConfig getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.f45920y;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static DynamicRouteConfig parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (DynamicRouteConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static DynamicRouteConfig parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<DynamicRouteConfig> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof DynamicRouteConfig)) {
                return super.equals(obj);
            }
            DynamicRouteConfig dynamicRouteConfig = (DynamicRouteConfig) obj;
            if (getVersionInfo().equals(dynamicRouteConfig.getVersionInfo()) && hasRouteConfig() == dynamicRouteConfig.hasRouteConfig()) {
                if ((!hasRouteConfig() || getRouteConfig().equals(dynamicRouteConfig.getRouteConfig())) && hasLastUpdated() == dynamicRouteConfig.hasLastUpdated()) {
                    if ((!hasLastUpdated() || getLastUpdated().equals(dynamicRouteConfig.getLastUpdated())) && hasErrorState() == dynamicRouteConfig.hasErrorState()) {
                        return (!hasErrorState() || getErrorState().equals(dynamicRouteConfig.getErrorState())) && this.clientStatus_ == dynamicRouteConfig.clientStatus_ && this.unknownFields.equals(dynamicRouteConfig.unknownFields);
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
        public e2<DynamicRouteConfig> getParserForType() {
            return PARSER;
        }

        public Any getRouteConfig() {
            Any any = this.routeConfig_;
            return any == null ? Any.getDefaultInstance() : any;
        }

        public com.google.protobuf.f getRouteConfigOrBuilder() {
            return getRouteConfig();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int computeStringSize = GeneratedMessageV3.isStringEmpty(this.versionInfo_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.versionInfo_);
            if (this.routeConfig_ != null) {
                computeStringSize += CodedOutputStream.G(2, getRouteConfig());
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

        public boolean hasErrorState() {
            return this.errorState_ != null;
        }

        public boolean hasLastUpdated() {
            return this.lastUpdated_ != null;
        }

        public boolean hasRouteConfig() {
            return this.routeConfig_ != null;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getVersionInfo().hashCode();
            if (hasRouteConfig()) {
                hashCode = (((hashCode * 37) + 2) * 53) + getRouteConfig().hashCode();
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
            return io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.f45921z.d(DynamicRouteConfig.class, b.class);
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
            return new DynamicRouteConfig();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (!GeneratedMessageV3.isStringEmpty(this.versionInfo_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.versionInfo_);
            }
            if (this.routeConfig_ != null) {
                codedOutputStream.L0(2, getRouteConfig());
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

        /* synthetic */ DynamicRouteConfig(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(DynamicRouteConfig dynamicRouteConfig) {
            return DEFAULT_INSTANCE.toBuilder().h0(dynamicRouteConfig);
        }

        public static DynamicRouteConfig parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private DynamicRouteConfig(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static DynamicRouteConfig parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (DynamicRouteConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static DynamicRouteConfig parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public DynamicRouteConfig getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).h0(this);
        }

        public static DynamicRouteConfig parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private DynamicRouteConfig() {
            this.memoizedIsInitialized = (byte) -1;
            this.versionInfo_ = "";
            this.clientStatus_ = 0;
        }

        public static DynamicRouteConfig parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static DynamicRouteConfig parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static DynamicRouteConfig parseFrom(InputStream inputStream) throws IOException {
            return (DynamicRouteConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private DynamicRouteConfig(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                        Any any = this.routeConfig_;
                                        Any.b builder = any != null ? any.toBuilder() : null;
                                        Any any2 = (Any) pVar.B(Any.parser(), f0Var);
                                        this.routeConfig_ = any2;
                                        if (builder != null) {
                                            builder.d0(any2);
                                            this.routeConfig_ = builder.I();
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

        public static DynamicRouteConfig parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (DynamicRouteConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static DynamicRouteConfig parseFrom(p pVar) throws IOException {
            return (DynamicRouteConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static DynamicRouteConfig parseFrom(p pVar, f0 f0Var) throws IOException {
            return (DynamicRouteConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes5.dex */
    public static final class StaticRouteConfig extends GeneratedMessageV3 implements d {
        public static final int LAST_UPDATED_FIELD_NUMBER = 2;
        public static final int ROUTE_CONFIG_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private Timestamp lastUpdated_;
        private byte memoizedIsInitialized;
        private Any routeConfig_;
        private static final StaticRouteConfig DEFAULT_INSTANCE = new StaticRouteConfig();
        private static final e2<StaticRouteConfig> PARSER = new a();

        /* loaded from: classes5.dex */
        class a extends com.google.protobuf.c<StaticRouteConfig> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public StaticRouteConfig m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new StaticRouteConfig(pVar, f0Var, null);
            }
        }

        /* loaded from: classes5.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements d {

            /* renamed from: e  reason: collision with root package name */
            private Any f45839e;

            /* renamed from: f  reason: collision with root package name */
            private q2<Any, Any.b, com.google.protobuf.f> f45840f;

            /* renamed from: g  reason: collision with root package name */
            private Timestamp f45841g;

            /* renamed from: h  reason: collision with root package name */
            private q2<Timestamp, Timestamp.b, z2> f45842h;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.f45919x.d(StaticRouteConfig.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public StaticRouteConfig build() {
                StaticRouteConfig I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public StaticRouteConfig I() {
                StaticRouteConfig staticRouteConfig = new StaticRouteConfig(this, (a) null);
                q2<Any, Any.b, com.google.protobuf.f> q2Var = this.f45840f;
                if (q2Var == null) {
                    staticRouteConfig.routeConfig_ = this.f45839e;
                } else {
                    staticRouteConfig.routeConfig_ = q2Var.b();
                }
                q2<Timestamp, Timestamp.b, z2> q2Var2 = this.f45842h;
                if (q2Var2 == null) {
                    staticRouteConfig.lastUpdated_ = this.f45841g;
                } else {
                    staticRouteConfig.lastUpdated_ = q2Var2.b();
                }
                Q();
                return staticRouteConfig;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public StaticRouteConfig getDefaultInstanceForType() {
                return StaticRouteConfig.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: d0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.RoutesConfigDump.StaticRouteConfig.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.RoutesConfigDump.StaticRouteConfig.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.RoutesConfigDump$StaticRouteConfig r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.RoutesConfigDump.StaticRouteConfig) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.RoutesConfigDump$StaticRouteConfig r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.RoutesConfigDump.StaticRouteConfig) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.RoutesConfigDump.StaticRouteConfig.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.RoutesConfigDump$StaticRouteConfig$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof StaticRouteConfig) {
                    return g0((StaticRouteConfig) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b g0(StaticRouteConfig staticRouteConfig) {
                if (staticRouteConfig == StaticRouteConfig.getDefaultInstance()) {
                    return this;
                }
                if (staticRouteConfig.hasRouteConfig()) {
                    i0(staticRouteConfig.getRouteConfig());
                }
                if (staticRouteConfig.hasLastUpdated()) {
                    h0(staticRouteConfig.getLastUpdated());
                }
                z(((GeneratedMessageV3) staticRouteConfig).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.f45918w;
            }

            public b h0(Timestamp timestamp) {
                q2<Timestamp, Timestamp.b, z2> q2Var = this.f45842h;
                if (q2Var == null) {
                    Timestamp timestamp2 = this.f45841g;
                    if (timestamp2 != null) {
                        this.f45841g = Timestamp.newBuilder(timestamp2).g0(timestamp).I();
                    } else {
                        this.f45841g = timestamp;
                    }
                    R();
                } else {
                    q2Var.e(timestamp);
                }
                return this;
            }

            public b i0(Any any) {
                q2<Any, Any.b, com.google.protobuf.f> q2Var = this.f45840f;
                if (q2Var == null) {
                    Any any2 = this.f45839e;
                    if (any2 != null) {
                        this.f45839e = Any.newBuilder(any2).d0(any).I();
                    } else {
                        this.f45839e = any;
                    }
                    R();
                } else {
                    q2Var.e(any);
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

        /* synthetic */ StaticRouteConfig(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static StaticRouteConfig getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.f45918w;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static StaticRouteConfig parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (StaticRouteConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static StaticRouteConfig parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<StaticRouteConfig> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof StaticRouteConfig)) {
                return super.equals(obj);
            }
            StaticRouteConfig staticRouteConfig = (StaticRouteConfig) obj;
            if (hasRouteConfig() != staticRouteConfig.hasRouteConfig()) {
                return false;
            }
            if ((!hasRouteConfig() || getRouteConfig().equals(staticRouteConfig.getRouteConfig())) && hasLastUpdated() == staticRouteConfig.hasLastUpdated()) {
                return (!hasLastUpdated() || getLastUpdated().equals(staticRouteConfig.getLastUpdated())) && this.unknownFields.equals(staticRouteConfig.unknownFields);
            }
            return false;
        }

        public Timestamp getLastUpdated() {
            Timestamp timestamp = this.lastUpdated_;
            return timestamp == null ? Timestamp.getDefaultInstance() : timestamp;
        }

        public z2 getLastUpdatedOrBuilder() {
            return getLastUpdated();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<StaticRouteConfig> getParserForType() {
            return PARSER;
        }

        public Any getRouteConfig() {
            Any any = this.routeConfig_;
            return any == null ? Any.getDefaultInstance() : any;
        }

        public com.google.protobuf.f getRouteConfigOrBuilder() {
            return getRouteConfig();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int G = this.routeConfig_ != null ? 0 + CodedOutputStream.G(1, getRouteConfig()) : 0;
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

        public boolean hasLastUpdated() {
            return this.lastUpdated_ != null;
        }

        public boolean hasRouteConfig() {
            return this.routeConfig_ != null;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (hasRouteConfig()) {
                hashCode = (((hashCode * 37) + 1) * 53) + getRouteConfig().hashCode();
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
            return io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.f45919x.d(StaticRouteConfig.class, b.class);
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
            return new StaticRouteConfig();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (this.routeConfig_ != null) {
                codedOutputStream.L0(1, getRouteConfig());
            }
            if (this.lastUpdated_ != null) {
                codedOutputStream.L0(2, getLastUpdated());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ StaticRouteConfig(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(StaticRouteConfig staticRouteConfig) {
            return DEFAULT_INSTANCE.toBuilder().g0(staticRouteConfig);
        }

        public static StaticRouteConfig parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private StaticRouteConfig(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static StaticRouteConfig parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (StaticRouteConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static StaticRouteConfig parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public StaticRouteConfig getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
        }

        public static StaticRouteConfig parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private StaticRouteConfig() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static StaticRouteConfig parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static StaticRouteConfig parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        private StaticRouteConfig(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                Any any = this.routeConfig_;
                                Any.b builder = any != null ? any.toBuilder() : null;
                                Any any2 = (Any) pVar.B(Any.parser(), f0Var);
                                this.routeConfig_ = any2;
                                if (builder != null) {
                                    builder.d0(any2);
                                    this.routeConfig_ = builder.I();
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

        public static StaticRouteConfig parseFrom(InputStream inputStream) throws IOException {
            return (StaticRouteConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static StaticRouteConfig parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (StaticRouteConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static StaticRouteConfig parseFrom(p pVar) throws IOException {
            return (StaticRouteConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static StaticRouteConfig parseFrom(p pVar, f0 f0Var) throws IOException {
            return (StaticRouteConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends com.google.protobuf.c<RoutesConfigDump> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public RoutesConfigDump m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new RoutesConfigDump(pVar, f0Var, null);
        }
    }

    /* loaded from: classes5.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements e {

        /* renamed from: e  reason: collision with root package name */
        private int f45843e;

        /* renamed from: f  reason: collision with root package name */
        private List<StaticRouteConfig> f45844f;

        /* renamed from: g  reason: collision with root package name */
        private l2<StaticRouteConfig, StaticRouteConfig.b, d> f45845g;

        /* renamed from: h  reason: collision with root package name */
        private List<DynamicRouteConfig> f45846h;

        /* renamed from: i  reason: collision with root package name */
        private l2<DynamicRouteConfig, DynamicRouteConfig.b, c> f45847i;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f45843e & 2) == 0) {
                this.f45846h = new ArrayList(this.f45846h);
                this.f45843e |= 2;
            }
        }

        private void b0() {
            if ((this.f45843e & 1) == 0) {
                this.f45844f = new ArrayList(this.f45844f);
                this.f45843e |= 1;
            }
        }

        private l2<DynamicRouteConfig, DynamicRouteConfig.b, c> e0() {
            if (this.f45847i == null) {
                this.f45847i = new l2<>(this.f45846h, (this.f45843e & 2) != 0, H(), O());
                this.f45846h = null;
            }
            return this.f45847i;
        }

        private l2<StaticRouteConfig, StaticRouteConfig.b, d> g0() {
            if (this.f45845g == null) {
                this.f45845g = new l2<>(this.f45844f, (this.f45843e & 1) != 0, H(), O());
                this.f45844f = null;
            }
            return this.f45845g;
        }

        private void h0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                g0();
                e0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.f45917v.d(RoutesConfigDump.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public RoutesConfigDump build() {
            RoutesConfigDump I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public RoutesConfigDump I() {
            RoutesConfigDump routesConfigDump = new RoutesConfigDump(this, (a) null);
            int i9 = this.f45843e;
            l2<StaticRouteConfig, StaticRouteConfig.b, d> l2Var = this.f45845g;
            if (l2Var == null) {
                if ((i9 & 1) != 0) {
                    this.f45844f = Collections.unmodifiableList(this.f45844f);
                    this.f45843e &= -2;
                }
                routesConfigDump.staticRouteConfigs_ = this.f45844f;
            } else {
                routesConfigDump.staticRouteConfigs_ = l2Var.e();
            }
            l2<DynamicRouteConfig, DynamicRouteConfig.b, c> l2Var2 = this.f45847i;
            if (l2Var2 == null) {
                if ((this.f45843e & 2) != 0) {
                    this.f45846h = Collections.unmodifiableList(this.f45846h);
                    this.f45843e &= -3;
                }
                routesConfigDump.dynamicRouteConfigs_ = this.f45846h;
            } else {
                routesConfigDump.dynamicRouteConfigs_ = l2Var2.e();
            }
            Q();
            return routesConfigDump;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: d0 */
        public RoutesConfigDump getDefaultInstanceForType() {
            return RoutesConfigDump.getDefaultInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.f45916u;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.RoutesConfigDump.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.RoutesConfigDump.access$3100()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.RoutesConfigDump r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.RoutesConfigDump) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.RoutesConfigDump r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.RoutesConfigDump) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.RoutesConfigDump.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.RoutesConfigDump$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: j0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof RoutesConfigDump) {
                return k0((RoutesConfigDump) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b k0(RoutesConfigDump routesConfigDump) {
            if (routesConfigDump == RoutesConfigDump.getDefaultInstance()) {
                return this;
            }
            if (this.f45845g == null) {
                if (!routesConfigDump.staticRouteConfigs_.isEmpty()) {
                    if (this.f45844f.isEmpty()) {
                        this.f45844f = routesConfigDump.staticRouteConfigs_;
                        this.f45843e &= -2;
                    } else {
                        b0();
                        this.f45844f.addAll(routesConfigDump.staticRouteConfigs_);
                    }
                    R();
                }
            } else if (!routesConfigDump.staticRouteConfigs_.isEmpty()) {
                if (this.f45845g.k()) {
                    this.f45845g.f();
                    this.f45845g = null;
                    this.f45844f = routesConfigDump.staticRouteConfigs_;
                    this.f45843e &= -2;
                    this.f45845g = GeneratedMessageV3.alwaysUseFieldBuilders ? g0() : null;
                } else {
                    this.f45845g.b(routesConfigDump.staticRouteConfigs_);
                }
            }
            if (this.f45847i == null) {
                if (!routesConfigDump.dynamicRouteConfigs_.isEmpty()) {
                    if (this.f45846h.isEmpty()) {
                        this.f45846h = routesConfigDump.dynamicRouteConfigs_;
                        this.f45843e &= -3;
                    } else {
                        a0();
                        this.f45846h.addAll(routesConfigDump.dynamicRouteConfigs_);
                    }
                    R();
                }
            } else if (!routesConfigDump.dynamicRouteConfigs_.isEmpty()) {
                if (this.f45847i.k()) {
                    this.f45847i.f();
                    this.f45847i = null;
                    this.f45846h = routesConfigDump.dynamicRouteConfigs_;
                    this.f45843e &= -3;
                    this.f45847i = GeneratedMessageV3.alwaysUseFieldBuilders ? e0() : null;
                } else {
                    this.f45847i.b(routesConfigDump.dynamicRouteConfigs_);
                }
            }
            z(((GeneratedMessageV3) routesConfigDump).unknownFields);
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
            this.f45844f = Collections.emptyList();
            this.f45846h = Collections.emptyList();
            h0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f45844f = Collections.emptyList();
            this.f45846h = Collections.emptyList();
            h0();
        }
    }

    /* loaded from: classes5.dex */
    public interface c extends r1 {
    }

    /* loaded from: classes5.dex */
    public interface d extends r1 {
    }

    /* synthetic */ RoutesConfigDump(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static RoutesConfigDump getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.f45916u;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static RoutesConfigDump parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (RoutesConfigDump) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static RoutesConfigDump parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<RoutesConfigDump> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof RoutesConfigDump)) {
            return super.equals(obj);
        }
        RoutesConfigDump routesConfigDump = (RoutesConfigDump) obj;
        return getStaticRouteConfigsList().equals(routesConfigDump.getStaticRouteConfigsList()) && getDynamicRouteConfigsList().equals(routesConfigDump.getDynamicRouteConfigsList()) && this.unknownFields.equals(routesConfigDump.unknownFields);
    }

    public DynamicRouteConfig getDynamicRouteConfigs(int i9) {
        return this.dynamicRouteConfigs_.get(i9);
    }

    public int getDynamicRouteConfigsCount() {
        return this.dynamicRouteConfigs_.size();
    }

    public List<DynamicRouteConfig> getDynamicRouteConfigsList() {
        return this.dynamicRouteConfigs_;
    }

    public c getDynamicRouteConfigsOrBuilder(int i9) {
        return this.dynamicRouteConfigs_.get(i9);
    }

    public List<? extends c> getDynamicRouteConfigsOrBuilderList() {
        return this.dynamicRouteConfigs_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<RoutesConfigDump> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < this.staticRouteConfigs_.size(); i11++) {
            i10 += CodedOutputStream.G(2, this.staticRouteConfigs_.get(i11));
        }
        for (int i12 = 0; i12 < this.dynamicRouteConfigs_.size(); i12++) {
            i10 += CodedOutputStream.G(3, this.dynamicRouteConfigs_.get(i12));
        }
        int serializedSize = i10 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public StaticRouteConfig getStaticRouteConfigs(int i9) {
        return this.staticRouteConfigs_.get(i9);
    }

    public int getStaticRouteConfigsCount() {
        return this.staticRouteConfigs_.size();
    }

    public List<StaticRouteConfig> getStaticRouteConfigsList() {
        return this.staticRouteConfigs_;
    }

    public d getStaticRouteConfigsOrBuilder(int i9) {
        return this.staticRouteConfigs_.get(i9);
    }

    public List<? extends d> getStaticRouteConfigsOrBuilderList() {
        return this.staticRouteConfigs_;
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
        if (getStaticRouteConfigsCount() > 0) {
            hashCode = (((hashCode * 37) + 2) * 53) + getStaticRouteConfigsList().hashCode();
        }
        if (getDynamicRouteConfigsCount() > 0) {
            hashCode = (((hashCode * 37) + 3) * 53) + getDynamicRouteConfigsList().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.f45917v.d(RoutesConfigDump.class, b.class);
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
        return new RoutesConfigDump();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        for (int i9 = 0; i9 < this.staticRouteConfigs_.size(); i9++) {
            codedOutputStream.L0(2, this.staticRouteConfigs_.get(i9));
        }
        for (int i10 = 0; i10 < this.dynamicRouteConfigs_.size(); i10++) {
            codedOutputStream.L0(3, this.dynamicRouteConfigs_.get(i10));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ RoutesConfigDump(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(RoutesConfigDump routesConfigDump) {
        return DEFAULT_INSTANCE.toBuilder().k0(routesConfigDump);
    }

    public static RoutesConfigDump parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private RoutesConfigDump(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static RoutesConfigDump parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (RoutesConfigDump) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static RoutesConfigDump parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public RoutesConfigDump getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).k0(this);
    }

    public static RoutesConfigDump parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private RoutesConfigDump() {
        this.memoizedIsInitialized = (byte) -1;
        this.staticRouteConfigs_ = Collections.emptyList();
        this.dynamicRouteConfigs_ = Collections.emptyList();
    }

    public static RoutesConfigDump parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static RoutesConfigDump parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static RoutesConfigDump parseFrom(InputStream inputStream) throws IOException {
        return (RoutesConfigDump) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private RoutesConfigDump(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                    this.staticRouteConfigs_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.staticRouteConfigs_.add((StaticRouteConfig) pVar.B(StaticRouteConfig.parser(), f0Var));
                            } else if (L != 26) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                if (!(z11 & true)) {
                                    this.dynamicRouteConfigs_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.dynamicRouteConfigs_.add((DynamicRouteConfig) pVar.B(DynamicRouteConfig.parser(), f0Var));
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
                    this.staticRouteConfigs_ = Collections.unmodifiableList(this.staticRouteConfigs_);
                }
                if (z11 & true) {
                    this.dynamicRouteConfigs_ = Collections.unmodifiableList(this.dynamicRouteConfigs_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static RoutesConfigDump parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (RoutesConfigDump) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static RoutesConfigDump parseFrom(p pVar) throws IOException {
        return (RoutesConfigDump) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static RoutesConfigDump parseFrom(p pVar, f0 f0Var) throws IOException {
        return (RoutesConfigDump) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
