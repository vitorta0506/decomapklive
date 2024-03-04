package io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3;

import com.google.protobuf.Any;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Timestamp;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.f;
import com.google.protobuf.f0;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.l2;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import com.google.protobuf.u0;
import com.google.protobuf.z2;
import io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ClientResourceStatus;
import io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.UpdateFailureState;
import io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.g;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Node;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.l0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3.PerXdsConfig;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class ClientConfig extends GeneratedMessageV3 implements io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3.a {
    public static final int GENERIC_XDS_CONFIGS_FIELD_NUMBER = 3;
    public static final int NODE_FIELD_NUMBER = 1;
    public static final int XDS_CONFIG_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private List<GenericXdsConfig> genericXdsConfigs_;
    private byte memoizedIsInitialized;
    private Node node_;
    private List<PerXdsConfig> xdsConfig_;
    private static final ClientConfig DEFAULT_INSTANCE = new ClientConfig();
    private static final e2<ClientConfig> PARSER = new a();

    /* loaded from: classes6.dex */
    public static final class GenericXdsConfig extends GeneratedMessageV3 implements c {
        public static final int CLIENT_STATUS_FIELD_NUMBER = 7;
        public static final int CONFIG_STATUS_FIELD_NUMBER = 6;
        public static final int ERROR_STATE_FIELD_NUMBER = 8;
        public static final int IS_STATIC_RESOURCE_FIELD_NUMBER = 9;
        public static final int LAST_UPDATED_FIELD_NUMBER = 5;
        public static final int NAME_FIELD_NUMBER = 2;
        public static final int TYPE_URL_FIELD_NUMBER = 1;
        public static final int VERSION_INFO_FIELD_NUMBER = 3;
        public static final int XDS_CONFIG_FIELD_NUMBER = 4;
        private static final long serialVersionUID = 0;
        private int clientStatus_;
        private int configStatus_;
        private UpdateFailureState errorState_;
        private boolean isStaticResource_;
        private Timestamp lastUpdated_;
        private byte memoizedIsInitialized;
        private volatile Object name_;
        private volatile Object typeUrl_;
        private volatile Object versionInfo_;
        private Any xdsConfig_;
        private static final GenericXdsConfig DEFAULT_INSTANCE = new GenericXdsConfig();
        private static final e2<GenericXdsConfig> PARSER = new a();

        /* loaded from: classes6.dex */
        class a extends com.google.protobuf.c<GenericXdsConfig> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public GenericXdsConfig m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new GenericXdsConfig(pVar, f0Var, null);
            }
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements c {

            /* renamed from: e  reason: collision with root package name */
            private Object f50169e;

            /* renamed from: f  reason: collision with root package name */
            private Object f50170f;

            /* renamed from: g  reason: collision with root package name */
            private Object f50171g;

            /* renamed from: h  reason: collision with root package name */
            private Any f50172h;

            /* renamed from: i  reason: collision with root package name */
            private q2<Any, Any.b, f> f50173i;

            /* renamed from: j  reason: collision with root package name */
            private Timestamp f50174j;

            /* renamed from: k  reason: collision with root package name */
            private q2<Timestamp, Timestamp.b, z2> f50175k;

            /* renamed from: l  reason: collision with root package name */
            private int f50176l;

            /* renamed from: m  reason: collision with root package name */
            private int f50177m;

            /* renamed from: n  reason: collision with root package name */
            private UpdateFailureState f50178n;

            /* renamed from: o  reason: collision with root package name */
            private q2<UpdateFailureState, UpdateFailureState.b, g> f50179o;

            /* renamed from: p  reason: collision with root package name */
            private boolean f50180p;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3.b.f50213h.d(GenericXdsConfig.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public GenericXdsConfig build() {
                GenericXdsConfig I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public GenericXdsConfig I() {
                GenericXdsConfig genericXdsConfig = new GenericXdsConfig(this, (a) null);
                genericXdsConfig.typeUrl_ = this.f50169e;
                genericXdsConfig.name_ = this.f50170f;
                genericXdsConfig.versionInfo_ = this.f50171g;
                q2<Any, Any.b, f> q2Var = this.f50173i;
                if (q2Var == null) {
                    genericXdsConfig.xdsConfig_ = this.f50172h;
                } else {
                    genericXdsConfig.xdsConfig_ = q2Var.b();
                }
                q2<Timestamp, Timestamp.b, z2> q2Var2 = this.f50175k;
                if (q2Var2 == null) {
                    genericXdsConfig.lastUpdated_ = this.f50174j;
                } else {
                    genericXdsConfig.lastUpdated_ = q2Var2.b();
                }
                genericXdsConfig.configStatus_ = this.f50176l;
                genericXdsConfig.clientStatus_ = this.f50177m;
                q2<UpdateFailureState, UpdateFailureState.b, g> q2Var3 = this.f50179o;
                if (q2Var3 == null) {
                    genericXdsConfig.errorState_ = this.f50178n;
                } else {
                    genericXdsConfig.errorState_ = q2Var3.b();
                }
                genericXdsConfig.isStaticResource_ = this.f50180p;
                Q();
                return genericXdsConfig;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public GenericXdsConfig getDefaultInstanceForType() {
                return GenericXdsConfig.getDefaultInstance();
            }

            public b d0(UpdateFailureState updateFailureState) {
                q2<UpdateFailureState, UpdateFailureState.b, g> q2Var = this.f50179o;
                if (q2Var == null) {
                    UpdateFailureState updateFailureState2 = this.f50178n;
                    if (updateFailureState2 != null) {
                        this.f50178n = UpdateFailureState.newBuilder(updateFailureState2).h0(updateFailureState).I();
                    } else {
                        this.f50178n = updateFailureState;
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
            public io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3.ClientConfig.GenericXdsConfig.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3.ClientConfig.GenericXdsConfig.access$1400()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3.ClientConfig$GenericXdsConfig r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3.ClientConfig.GenericXdsConfig) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3.ClientConfig$GenericXdsConfig r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3.ClientConfig.GenericXdsConfig) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3.ClientConfig.GenericXdsConfig.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3.ClientConfig$GenericXdsConfig$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: g0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof GenericXdsConfig) {
                    return h0((GenericXdsConfig) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3.b.f50212g;
            }

            public b h0(GenericXdsConfig genericXdsConfig) {
                if (genericXdsConfig == GenericXdsConfig.getDefaultInstance()) {
                    return this;
                }
                if (!genericXdsConfig.getTypeUrl().isEmpty()) {
                    this.f50169e = genericXdsConfig.typeUrl_;
                    R();
                }
                if (!genericXdsConfig.getName().isEmpty()) {
                    this.f50170f = genericXdsConfig.name_;
                    R();
                }
                if (!genericXdsConfig.getVersionInfo().isEmpty()) {
                    this.f50171g = genericXdsConfig.versionInfo_;
                    R();
                }
                if (genericXdsConfig.hasXdsConfig()) {
                    k0(genericXdsConfig.getXdsConfig());
                }
                if (genericXdsConfig.hasLastUpdated()) {
                    i0(genericXdsConfig.getLastUpdated());
                }
                if (genericXdsConfig.configStatus_ != 0) {
                    m0(genericXdsConfig.getConfigStatusValue());
                }
                if (genericXdsConfig.clientStatus_ != 0) {
                    l0(genericXdsConfig.getClientStatusValue());
                }
                if (genericXdsConfig.hasErrorState()) {
                    d0(genericXdsConfig.getErrorState());
                }
                if (genericXdsConfig.getIsStaticResource()) {
                    o0(genericXdsConfig.getIsStaticResource());
                }
                z(((GeneratedMessageV3) genericXdsConfig).unknownFields);
                R();
                return this;
            }

            public b i0(Timestamp timestamp) {
                q2<Timestamp, Timestamp.b, z2> q2Var = this.f50175k;
                if (q2Var == null) {
                    Timestamp timestamp2 = this.f50174j;
                    if (timestamp2 != null) {
                        this.f50174j = Timestamp.newBuilder(timestamp2).g0(timestamp).I();
                    } else {
                        this.f50174j = timestamp;
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

            public b k0(Any any) {
                q2<Any, Any.b, f> q2Var = this.f50173i;
                if (q2Var == null) {
                    Any any2 = this.f50172h;
                    if (any2 != null) {
                        this.f50172h = Any.newBuilder(any2).d0(any).I();
                    } else {
                        this.f50172h = any;
                    }
                    R();
                } else {
                    q2Var.e(any);
                }
                return this;
            }

            public b l0(int i9) {
                this.f50177m = i9;
                R();
                return this;
            }

            public b m0(int i9) {
                this.f50176l = i9;
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: n0 */
            public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.c(fieldDescriptor, obj);
            }

            public b o0(boolean z10) {
                this.f50180p = z10;
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: q0 */
            public final b f1(h3 h3Var) {
                return (b) super.f1(h3Var);
            }

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                this.f50169e = "";
                this.f50170f = "";
                this.f50171g = "";
                this.f50176l = 0;
                this.f50177m = 0;
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f50169e = "";
                this.f50170f = "";
                this.f50171g = "";
                this.f50176l = 0;
                this.f50177m = 0;
                b0();
            }
        }

        /* synthetic */ GenericXdsConfig(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static GenericXdsConfig getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3.b.f50212g;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static GenericXdsConfig parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (GenericXdsConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static GenericXdsConfig parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<GenericXdsConfig> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof GenericXdsConfig)) {
                return super.equals(obj);
            }
            GenericXdsConfig genericXdsConfig = (GenericXdsConfig) obj;
            if (getTypeUrl().equals(genericXdsConfig.getTypeUrl()) && getName().equals(genericXdsConfig.getName()) && getVersionInfo().equals(genericXdsConfig.getVersionInfo()) && hasXdsConfig() == genericXdsConfig.hasXdsConfig()) {
                if ((!hasXdsConfig() || getXdsConfig().equals(genericXdsConfig.getXdsConfig())) && hasLastUpdated() == genericXdsConfig.hasLastUpdated()) {
                    if ((!hasLastUpdated() || getLastUpdated().equals(genericXdsConfig.getLastUpdated())) && this.configStatus_ == genericXdsConfig.configStatus_ && this.clientStatus_ == genericXdsConfig.clientStatus_ && hasErrorState() == genericXdsConfig.hasErrorState()) {
                        return (!hasErrorState() || getErrorState().equals(genericXdsConfig.getErrorState())) && getIsStaticResource() == genericXdsConfig.getIsStaticResource() && this.unknownFields.equals(genericXdsConfig.unknownFields);
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

        public ConfigStatus getConfigStatus() {
            ConfigStatus valueOf = ConfigStatus.valueOf(this.configStatus_);
            return valueOf == null ? ConfigStatus.UNRECOGNIZED : valueOf;
        }

        public int getConfigStatusValue() {
            return this.configStatus_;
        }

        public UpdateFailureState getErrorState() {
            UpdateFailureState updateFailureState = this.errorState_;
            return updateFailureState == null ? UpdateFailureState.getDefaultInstance() : updateFailureState;
        }

        public g getErrorStateOrBuilder() {
            return getErrorState();
        }

        public boolean getIsStaticResource() {
            return this.isStaticResource_;
        }

        public Timestamp getLastUpdated() {
            Timestamp timestamp = this.lastUpdated_;
            return timestamp == null ? Timestamp.getDefaultInstance() : timestamp;
        }

        public z2 getLastUpdatedOrBuilder() {
            return getLastUpdated();
        }

        public String getName() {
            Object obj = this.name_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.name_ = stringUtf8;
            return stringUtf8;
        }

        public ByteString getNameBytes() {
            Object obj = this.name_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.name_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<GenericXdsConfig> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int computeStringSize = GeneratedMessageV3.isStringEmpty(this.typeUrl_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.typeUrl_);
            if (!GeneratedMessageV3.isStringEmpty(this.name_)) {
                computeStringSize += GeneratedMessageV3.computeStringSize(2, this.name_);
            }
            if (!GeneratedMessageV3.isStringEmpty(this.versionInfo_)) {
                computeStringSize += GeneratedMessageV3.computeStringSize(3, this.versionInfo_);
            }
            if (this.xdsConfig_ != null) {
                computeStringSize += CodedOutputStream.G(4, getXdsConfig());
            }
            if (this.lastUpdated_ != null) {
                computeStringSize += CodedOutputStream.G(5, getLastUpdated());
            }
            if (this.configStatus_ != ConfigStatus.UNKNOWN.getNumber()) {
                computeStringSize += CodedOutputStream.l(6, this.configStatus_);
            }
            if (this.clientStatus_ != ClientResourceStatus.UNKNOWN.getNumber()) {
                computeStringSize += CodedOutputStream.l(7, this.clientStatus_);
            }
            if (this.errorState_ != null) {
                computeStringSize += CodedOutputStream.G(8, getErrorState());
            }
            boolean z10 = this.isStaticResource_;
            if (z10) {
                computeStringSize += CodedOutputStream.e(9, z10);
            }
            int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        public String getTypeUrl() {
            Object obj = this.typeUrl_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.typeUrl_ = stringUtf8;
            return stringUtf8;
        }

        public ByteString getTypeUrlBytes() {
            Object obj = this.typeUrl_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.typeUrl_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
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

        public Any getXdsConfig() {
            Any any = this.xdsConfig_;
            return any == null ? Any.getDefaultInstance() : any;
        }

        public f getXdsConfigOrBuilder() {
            return getXdsConfig();
        }

        public boolean hasErrorState() {
            return this.errorState_ != null;
        }

        public boolean hasLastUpdated() {
            return this.lastUpdated_ != null;
        }

        public boolean hasXdsConfig() {
            return this.xdsConfig_ != null;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = ((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getTypeUrl().hashCode()) * 37) + 2) * 53) + getName().hashCode()) * 37) + 3) * 53) + getVersionInfo().hashCode();
            if (hasXdsConfig()) {
                hashCode = (((hashCode * 37) + 4) * 53) + getXdsConfig().hashCode();
            }
            if (hasLastUpdated()) {
                hashCode = (((hashCode * 37) + 5) * 53) + getLastUpdated().hashCode();
            }
            int i10 = (((((((hashCode * 37) + 6) * 53) + this.configStatus_) * 37) + 7) * 53) + this.clientStatus_;
            if (hasErrorState()) {
                i10 = (((i10 * 37) + 8) * 53) + getErrorState().hashCode();
            }
            int d10 = (((((i10 * 37) + 9) * 53) + u0.d(getIsStaticResource())) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = d10;
            return d10;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3.b.f50213h.d(GenericXdsConfig.class, b.class);
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
            return new GenericXdsConfig();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (!GeneratedMessageV3.isStringEmpty(this.typeUrl_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.typeUrl_);
            }
            if (!GeneratedMessageV3.isStringEmpty(this.name_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 2, this.name_);
            }
            if (!GeneratedMessageV3.isStringEmpty(this.versionInfo_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 3, this.versionInfo_);
            }
            if (this.xdsConfig_ != null) {
                codedOutputStream.L0(4, getXdsConfig());
            }
            if (this.lastUpdated_ != null) {
                codedOutputStream.L0(5, getLastUpdated());
            }
            if (this.configStatus_ != ConfigStatus.UNKNOWN.getNumber()) {
                codedOutputStream.v0(6, this.configStatus_);
            }
            if (this.clientStatus_ != ClientResourceStatus.UNKNOWN.getNumber()) {
                codedOutputStream.v0(7, this.clientStatus_);
            }
            if (this.errorState_ != null) {
                codedOutputStream.L0(8, getErrorState());
            }
            boolean z10 = this.isStaticResource_;
            if (z10) {
                codedOutputStream.n0(9, z10);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ GenericXdsConfig(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(GenericXdsConfig genericXdsConfig) {
            return DEFAULT_INSTANCE.toBuilder().h0(genericXdsConfig);
        }

        public static GenericXdsConfig parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private GenericXdsConfig(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static GenericXdsConfig parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (GenericXdsConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static GenericXdsConfig parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public GenericXdsConfig getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).h0(this);
        }

        public static GenericXdsConfig parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private GenericXdsConfig() {
            this.memoizedIsInitialized = (byte) -1;
            this.typeUrl_ = "";
            this.name_ = "";
            this.versionInfo_ = "";
            this.configStatus_ = 0;
            this.clientStatus_ = 0;
        }

        public static GenericXdsConfig parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static GenericXdsConfig parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static GenericXdsConfig parseFrom(InputStream inputStream) throws IOException {
            return (GenericXdsConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static GenericXdsConfig parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (GenericXdsConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static GenericXdsConfig parseFrom(p pVar) throws IOException {
            return (GenericXdsConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        private GenericXdsConfig(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                    this.typeUrl_ = pVar.K();
                                } else if (L == 18) {
                                    this.name_ = pVar.K();
                                } else if (L != 26) {
                                    if (L == 34) {
                                        Any any = this.xdsConfig_;
                                        Any.b builder = any != null ? any.toBuilder() : null;
                                        Any any2 = (Any) pVar.B(Any.parser(), f0Var);
                                        this.xdsConfig_ = any2;
                                        if (builder != null) {
                                            builder.d0(any2);
                                            this.xdsConfig_ = builder.I();
                                        }
                                    } else if (L == 42) {
                                        Timestamp timestamp = this.lastUpdated_;
                                        Timestamp.b builder2 = timestamp != null ? timestamp.toBuilder() : null;
                                        Timestamp timestamp2 = (Timestamp) pVar.B(Timestamp.parser(), f0Var);
                                        this.lastUpdated_ = timestamp2;
                                        if (builder2 != null) {
                                            builder2.g0(timestamp2);
                                            this.lastUpdated_ = builder2.I();
                                        }
                                    } else if (L == 48) {
                                        this.configStatus_ = pVar.u();
                                    } else if (L == 56) {
                                        this.clientStatus_ = pVar.u();
                                    } else if (L == 66) {
                                        UpdateFailureState updateFailureState = this.errorState_;
                                        UpdateFailureState.b builder3 = updateFailureState != null ? updateFailureState.toBuilder() : null;
                                        UpdateFailureState updateFailureState2 = (UpdateFailureState) pVar.B(UpdateFailureState.parser(), f0Var);
                                        this.errorState_ = updateFailureState2;
                                        if (builder3 != null) {
                                            builder3.h0(updateFailureState2);
                                            this.errorState_ = builder3.I();
                                        }
                                    } else if (L != 72) {
                                        if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                        }
                                    } else {
                                        this.isStaticResource_ = pVar.r();
                                    }
                                } else {
                                    this.versionInfo_ = pVar.K();
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

        public static GenericXdsConfig parseFrom(p pVar, f0 f0Var) throws IOException {
            return (GenericXdsConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<ClientConfig> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public ClientConfig m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new ClientConfig(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3.a {

        /* renamed from: e  reason: collision with root package name */
        private int f50181e;

        /* renamed from: f  reason: collision with root package name */
        private Node f50182f;

        /* renamed from: g  reason: collision with root package name */
        private q2<Node, Node.c, l0> f50183g;

        /* renamed from: h  reason: collision with root package name */
        private List<PerXdsConfig> f50184h;

        /* renamed from: i  reason: collision with root package name */
        private l2<PerXdsConfig, PerXdsConfig.c, io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3.c> f50185i;

        /* renamed from: j  reason: collision with root package name */
        private List<GenericXdsConfig> f50186j;

        /* renamed from: k  reason: collision with root package name */
        private l2<GenericXdsConfig, GenericXdsConfig.b, c> f50187k;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f50181e & 2) == 0) {
                this.f50186j = new ArrayList(this.f50186j);
                this.f50181e |= 2;
            }
        }

        private void b0() {
            if ((this.f50181e & 1) == 0) {
                this.f50184h = new ArrayList(this.f50184h);
                this.f50181e |= 1;
            }
        }

        private l2<GenericXdsConfig, GenericXdsConfig.b, c> e0() {
            if (this.f50187k == null) {
                this.f50187k = new l2<>(this.f50186j, (this.f50181e & 2) != 0, H(), O());
                this.f50186j = null;
            }
            return this.f50187k;
        }

        private l2<PerXdsConfig, PerXdsConfig.c, io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3.c> g0() {
            if (this.f50185i == null) {
                this.f50185i = new l2<>(this.f50184h, (this.f50181e & 1) != 0, H(), O());
                this.f50184h = null;
            }
            return this.f50185i;
        }

        private void h0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                g0();
                e0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3.b.f50211f.d(ClientConfig.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public ClientConfig build() {
            ClientConfig I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public ClientConfig I() {
            ClientConfig clientConfig = new ClientConfig(this, (a) null);
            q2<Node, Node.c, l0> q2Var = this.f50183g;
            if (q2Var == null) {
                clientConfig.node_ = this.f50182f;
            } else {
                clientConfig.node_ = q2Var.b();
            }
            l2<PerXdsConfig, PerXdsConfig.c, io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3.c> l2Var = this.f50185i;
            if (l2Var == null) {
                if ((this.f50181e & 1) != 0) {
                    this.f50184h = Collections.unmodifiableList(this.f50184h);
                    this.f50181e &= -2;
                }
                clientConfig.xdsConfig_ = this.f50184h;
            } else {
                clientConfig.xdsConfig_ = l2Var.e();
            }
            l2<GenericXdsConfig, GenericXdsConfig.b, c> l2Var2 = this.f50187k;
            if (l2Var2 == null) {
                if ((this.f50181e & 2) != 0) {
                    this.f50186j = Collections.unmodifiableList(this.f50186j);
                    this.f50181e &= -3;
                }
                clientConfig.genericXdsConfigs_ = this.f50186j;
            } else {
                clientConfig.genericXdsConfigs_ = l2Var2.e();
            }
            Q();
            return clientConfig;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: d0 */
        public ClientConfig getDefaultInstanceForType() {
            return ClientConfig.getDefaultInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3.b.f50210e;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3.ClientConfig.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3.ClientConfig.access$2900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3.ClientConfig r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3.ClientConfig) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3.ClientConfig r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3.ClientConfig) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3.ClientConfig.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3.ClientConfig$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: j0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof ClientConfig) {
                return k0((ClientConfig) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b k0(ClientConfig clientConfig) {
            if (clientConfig == ClientConfig.getDefaultInstance()) {
                return this;
            }
            if (clientConfig.hasNode()) {
                l0(clientConfig.getNode());
            }
            if (this.f50185i == null) {
                if (!clientConfig.xdsConfig_.isEmpty()) {
                    if (this.f50184h.isEmpty()) {
                        this.f50184h = clientConfig.xdsConfig_;
                        this.f50181e &= -2;
                    } else {
                        b0();
                        this.f50184h.addAll(clientConfig.xdsConfig_);
                    }
                    R();
                }
            } else if (!clientConfig.xdsConfig_.isEmpty()) {
                if (this.f50185i.k()) {
                    this.f50185i.f();
                    this.f50185i = null;
                    this.f50184h = clientConfig.xdsConfig_;
                    this.f50181e &= -2;
                    this.f50185i = GeneratedMessageV3.alwaysUseFieldBuilders ? g0() : null;
                } else {
                    this.f50185i.b(clientConfig.xdsConfig_);
                }
            }
            if (this.f50187k == null) {
                if (!clientConfig.genericXdsConfigs_.isEmpty()) {
                    if (this.f50186j.isEmpty()) {
                        this.f50186j = clientConfig.genericXdsConfigs_;
                        this.f50181e &= -3;
                    } else {
                        a0();
                        this.f50186j.addAll(clientConfig.genericXdsConfigs_);
                    }
                    R();
                }
            } else if (!clientConfig.genericXdsConfigs_.isEmpty()) {
                if (this.f50187k.k()) {
                    this.f50187k.f();
                    this.f50187k = null;
                    this.f50186j = clientConfig.genericXdsConfigs_;
                    this.f50181e &= -3;
                    this.f50187k = GeneratedMessageV3.alwaysUseFieldBuilders ? e0() : null;
                } else {
                    this.f50187k.b(clientConfig.genericXdsConfigs_);
                }
            }
            z(((GeneratedMessageV3) clientConfig).unknownFields);
            R();
            return this;
        }

        public b l0(Node node) {
            q2<Node, Node.c, l0> q2Var = this.f50183g;
            if (q2Var == null) {
                Node node2 = this.f50182f;
                if (node2 != null) {
                    this.f50182f = Node.newBuilder(node2).q0(node).I();
                } else {
                    this.f50182f = node;
                }
                R();
            } else {
                q2Var.e(node);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: m0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: n0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: o0 */
        public final b f1(h3 h3Var) {
            return (b) super.f1(h3Var);
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            this.f50184h = Collections.emptyList();
            this.f50186j = Collections.emptyList();
            h0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f50184h = Collections.emptyList();
            this.f50186j = Collections.emptyList();
            h0();
        }
    }

    /* loaded from: classes6.dex */
    public interface c extends r1 {
    }

    /* synthetic */ ClientConfig(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static ClientConfig getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3.b.f50210e;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static ClientConfig parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (ClientConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static ClientConfig parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<ClientConfig> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ClientConfig)) {
            return super.equals(obj);
        }
        ClientConfig clientConfig = (ClientConfig) obj;
        if (hasNode() != clientConfig.hasNode()) {
            return false;
        }
        return (!hasNode() || getNode().equals(clientConfig.getNode())) && getXdsConfigList().equals(clientConfig.getXdsConfigList()) && getGenericXdsConfigsList().equals(clientConfig.getGenericXdsConfigsList()) && this.unknownFields.equals(clientConfig.unknownFields);
    }

    public GenericXdsConfig getGenericXdsConfigs(int i9) {
        return this.genericXdsConfigs_.get(i9);
    }

    public int getGenericXdsConfigsCount() {
        return this.genericXdsConfigs_.size();
    }

    public List<GenericXdsConfig> getGenericXdsConfigsList() {
        return this.genericXdsConfigs_;
    }

    public c getGenericXdsConfigsOrBuilder(int i9) {
        return this.genericXdsConfigs_.get(i9);
    }

    public List<? extends c> getGenericXdsConfigsOrBuilderList() {
        return this.genericXdsConfigs_;
    }

    public Node getNode() {
        Node node = this.node_;
        return node == null ? Node.getDefaultInstance() : node;
    }

    public l0 getNodeOrBuilder() {
        return getNode();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<ClientConfig> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.node_ != null ? CodedOutputStream.G(1, getNode()) + 0 : 0;
        for (int i10 = 0; i10 < this.xdsConfig_.size(); i10++) {
            G += CodedOutputStream.G(2, this.xdsConfig_.get(i10));
        }
        for (int i11 = 0; i11 < this.genericXdsConfigs_.size(); i11++) {
            G += CodedOutputStream.G(3, this.genericXdsConfigs_.get(i11));
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    @Deprecated
    public PerXdsConfig getXdsConfig(int i9) {
        return this.xdsConfig_.get(i9);
    }

    @Deprecated
    public int getXdsConfigCount() {
        return this.xdsConfig_.size();
    }

    @Deprecated
    public List<PerXdsConfig> getXdsConfigList() {
        return this.xdsConfig_;
    }

    @Deprecated
    public io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3.c getXdsConfigOrBuilder(int i9) {
        return this.xdsConfig_.get(i9);
    }

    @Deprecated
    public List<? extends io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3.c> getXdsConfigOrBuilderList() {
        return this.xdsConfig_;
    }

    public boolean hasNode() {
        return this.node_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasNode()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getNode().hashCode();
        }
        if (getXdsConfigCount() > 0) {
            hashCode = (((hashCode * 37) + 2) * 53) + getXdsConfigList().hashCode();
        }
        if (getGenericXdsConfigsCount() > 0) {
            hashCode = (((hashCode * 37) + 3) * 53) + getGenericXdsConfigsList().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3.b.f50211f.d(ClientConfig.class, b.class);
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
        return new ClientConfig();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.node_ != null) {
            codedOutputStream.L0(1, getNode());
        }
        for (int i9 = 0; i9 < this.xdsConfig_.size(); i9++) {
            codedOutputStream.L0(2, this.xdsConfig_.get(i9));
        }
        for (int i10 = 0; i10 < this.genericXdsConfigs_.size(); i10++) {
            codedOutputStream.L0(3, this.genericXdsConfigs_.get(i10));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ ClientConfig(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(ClientConfig clientConfig) {
        return DEFAULT_INSTANCE.toBuilder().k0(clientConfig);
    }

    public static ClientConfig parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private ClientConfig(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static ClientConfig parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ClientConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static ClientConfig parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public ClientConfig getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).k0(this);
    }

    public static ClientConfig parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private ClientConfig() {
        this.memoizedIsInitialized = (byte) -1;
        this.xdsConfig_ = Collections.emptyList();
        this.genericXdsConfigs_ = Collections.emptyList();
    }

    public static ClientConfig parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static ClientConfig parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static ClientConfig parseFrom(InputStream inputStream) throws IOException {
        return (ClientConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private ClientConfig(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                        if (L == 10) {
                            Node node = this.node_;
                            Node.c builder = node != null ? node.toBuilder() : null;
                            Node node2 = (Node) pVar.B(Node.parser(), f0Var);
                            this.node_ = node2;
                            if (builder != null) {
                                builder.q0(node2);
                                this.node_ = builder.I();
                            }
                        } else if (L == 18) {
                            if (!(z11 & true)) {
                                this.xdsConfig_ = new ArrayList();
                                z11 |= true;
                            }
                            this.xdsConfig_.add((PerXdsConfig) pVar.B(PerXdsConfig.parser(), f0Var));
                        } else if (L != 26) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            if (!(z11 & true)) {
                                this.genericXdsConfigs_ = new ArrayList();
                                z11 |= true;
                            }
                            this.genericXdsConfigs_.add((GenericXdsConfig) pVar.B(GenericXdsConfig.parser(), f0Var));
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
                    this.xdsConfig_ = Collections.unmodifiableList(this.xdsConfig_);
                }
                if (z11 & true) {
                    this.genericXdsConfigs_ = Collections.unmodifiableList(this.genericXdsConfigs_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static ClientConfig parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ClientConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static ClientConfig parseFrom(p pVar) throws IOException {
        return (ClientConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static ClientConfig parseFrom(p pVar, f0 f0Var) throws IOException {
        return (ClientConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
