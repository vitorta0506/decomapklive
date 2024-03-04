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
public final class ClustersConfigDump extends GeneratedMessageV3 implements io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.a {
    public static final int DYNAMIC_ACTIVE_CLUSTERS_FIELD_NUMBER = 3;
    public static final int DYNAMIC_WARMING_CLUSTERS_FIELD_NUMBER = 4;
    public static final int STATIC_CLUSTERS_FIELD_NUMBER = 2;
    public static final int VERSION_INFO_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private List<DynamicCluster> dynamicActiveClusters_;
    private List<DynamicCluster> dynamicWarmingClusters_;
    private byte memoizedIsInitialized;
    private List<StaticCluster> staticClusters_;
    private volatile Object versionInfo_;
    private static final ClustersConfigDump DEFAULT_INSTANCE = new ClustersConfigDump();
    private static final e2<ClustersConfigDump> PARSER = new a();

    /* loaded from: classes5.dex */
    public static final class DynamicCluster extends GeneratedMessageV3 implements c {
        public static final int CLIENT_STATUS_FIELD_NUMBER = 5;
        public static final int CLUSTER_FIELD_NUMBER = 2;
        public static final int ERROR_STATE_FIELD_NUMBER = 4;
        public static final int LAST_UPDATED_FIELD_NUMBER = 3;
        public static final int VERSION_INFO_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int clientStatus_;
        private Any cluster_;
        private UpdateFailureState errorState_;
        private Timestamp lastUpdated_;
        private byte memoizedIsInitialized;
        private volatile Object versionInfo_;
        private static final DynamicCluster DEFAULT_INSTANCE = new DynamicCluster();
        private static final e2<DynamicCluster> PARSER = new a();

        /* loaded from: classes5.dex */
        class a extends com.google.protobuf.c<DynamicCluster> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public DynamicCluster m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new DynamicCluster(pVar, f0Var, null);
            }
        }

        /* loaded from: classes5.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements c {

            /* renamed from: e  reason: collision with root package name */
            private Object f45766e;

            /* renamed from: f  reason: collision with root package name */
            private Any f45767f;

            /* renamed from: g  reason: collision with root package name */
            private q2<Any, Any.b, com.google.protobuf.f> f45768g;

            /* renamed from: h  reason: collision with root package name */
            private Timestamp f45769h;

            /* renamed from: i  reason: collision with root package name */
            private q2<Timestamp, Timestamp.b, z2> f45770i;

            /* renamed from: j  reason: collision with root package name */
            private UpdateFailureState f45771j;

            /* renamed from: k  reason: collision with root package name */
            private q2<UpdateFailureState, UpdateFailureState.b, g> f45772k;

            /* renamed from: l  reason: collision with root package name */
            private int f45773l;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.f45915t.d(DynamicCluster.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public DynamicCluster build() {
                DynamicCluster I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public DynamicCluster I() {
                DynamicCluster dynamicCluster = new DynamicCluster(this, (a) null);
                dynamicCluster.versionInfo_ = this.f45766e;
                q2<Any, Any.b, com.google.protobuf.f> q2Var = this.f45768g;
                if (q2Var == null) {
                    dynamicCluster.cluster_ = this.f45767f;
                } else {
                    dynamicCluster.cluster_ = q2Var.b();
                }
                q2<Timestamp, Timestamp.b, z2> q2Var2 = this.f45770i;
                if (q2Var2 == null) {
                    dynamicCluster.lastUpdated_ = this.f45769h;
                } else {
                    dynamicCluster.lastUpdated_ = q2Var2.b();
                }
                q2<UpdateFailureState, UpdateFailureState.b, g> q2Var3 = this.f45772k;
                if (q2Var3 == null) {
                    dynamicCluster.errorState_ = this.f45771j;
                } else {
                    dynamicCluster.errorState_ = q2Var3.b();
                }
                dynamicCluster.clientStatus_ = this.f45773l;
                Q();
                return dynamicCluster;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public DynamicCluster getDefaultInstanceForType() {
                return DynamicCluster.getDefaultInstance();
            }

            public b d0(Any any) {
                q2<Any, Any.b, com.google.protobuf.f> q2Var = this.f45768g;
                if (q2Var == null) {
                    Any any2 = this.f45767f;
                    if (any2 != null) {
                        this.f45767f = Any.newBuilder(any2).d0(any).I();
                    } else {
                        this.f45767f = any;
                    }
                    R();
                } else {
                    q2Var.e(any);
                }
                return this;
            }

            public b e0(UpdateFailureState updateFailureState) {
                q2<UpdateFailureState, UpdateFailureState.b, g> q2Var = this.f45772k;
                if (q2Var == null) {
                    UpdateFailureState updateFailureState2 = this.f45771j;
                    if (updateFailureState2 != null) {
                        this.f45771j = UpdateFailureState.newBuilder(updateFailureState2).h0(updateFailureState).I();
                    } else {
                        this.f45771j = updateFailureState;
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
            public io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ClustersConfigDump.DynamicCluster.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ClustersConfigDump.DynamicCluster.access$1900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ClustersConfigDump$DynamicCluster r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ClustersConfigDump.DynamicCluster) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ClustersConfigDump$DynamicCluster r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ClustersConfigDump.DynamicCluster) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ClustersConfigDump.DynamicCluster.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ClustersConfigDump$DynamicCluster$b");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.f45914s;
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: h0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof DynamicCluster) {
                    return i0((DynamicCluster) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b i0(DynamicCluster dynamicCluster) {
                if (dynamicCluster == DynamicCluster.getDefaultInstance()) {
                    return this;
                }
                if (!dynamicCluster.getVersionInfo().isEmpty()) {
                    this.f45766e = dynamicCluster.versionInfo_;
                    R();
                }
                if (dynamicCluster.hasCluster()) {
                    d0(dynamicCluster.getCluster());
                }
                if (dynamicCluster.hasLastUpdated()) {
                    j0(dynamicCluster.getLastUpdated());
                }
                if (dynamicCluster.hasErrorState()) {
                    e0(dynamicCluster.getErrorState());
                }
                if (dynamicCluster.clientStatus_ != 0) {
                    l0(dynamicCluster.getClientStatusValue());
                }
                z(((GeneratedMessageV3) dynamicCluster).unknownFields);
                R();
                return this;
            }

            public b j0(Timestamp timestamp) {
                q2<Timestamp, Timestamp.b, z2> q2Var = this.f45770i;
                if (q2Var == null) {
                    Timestamp timestamp2 = this.f45769h;
                    if (timestamp2 != null) {
                        this.f45769h = Timestamp.newBuilder(timestamp2).g0(timestamp).I();
                    } else {
                        this.f45769h = timestamp;
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
                this.f45773l = i9;
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
                this.f45766e = "";
                this.f45773l = 0;
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f45766e = "";
                this.f45773l = 0;
                b0();
            }
        }

        /* synthetic */ DynamicCluster(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static DynamicCluster getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.f45914s;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static DynamicCluster parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (DynamicCluster) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static DynamicCluster parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<DynamicCluster> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof DynamicCluster)) {
                return super.equals(obj);
            }
            DynamicCluster dynamicCluster = (DynamicCluster) obj;
            if (getVersionInfo().equals(dynamicCluster.getVersionInfo()) && hasCluster() == dynamicCluster.hasCluster()) {
                if ((!hasCluster() || getCluster().equals(dynamicCluster.getCluster())) && hasLastUpdated() == dynamicCluster.hasLastUpdated()) {
                    if ((!hasLastUpdated() || getLastUpdated().equals(dynamicCluster.getLastUpdated())) && hasErrorState() == dynamicCluster.hasErrorState()) {
                        return (!hasErrorState() || getErrorState().equals(dynamicCluster.getErrorState())) && this.clientStatus_ == dynamicCluster.clientStatus_ && this.unknownFields.equals(dynamicCluster.unknownFields);
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

        public Any getCluster() {
            Any any = this.cluster_;
            return any == null ? Any.getDefaultInstance() : any;
        }

        public com.google.protobuf.f getClusterOrBuilder() {
            return getCluster();
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
        public e2<DynamicCluster> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int computeStringSize = GeneratedMessageV3.isStringEmpty(this.versionInfo_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.versionInfo_);
            if (this.cluster_ != null) {
                computeStringSize += CodedOutputStream.G(2, getCluster());
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

        public boolean hasCluster() {
            return this.cluster_ != null;
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
            if (hasCluster()) {
                hashCode = (((hashCode * 37) + 2) * 53) + getCluster().hashCode();
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
            return io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.f45915t.d(DynamicCluster.class, b.class);
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
            return new DynamicCluster();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (!GeneratedMessageV3.isStringEmpty(this.versionInfo_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.versionInfo_);
            }
            if (this.cluster_ != null) {
                codedOutputStream.L0(2, getCluster());
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

        /* synthetic */ DynamicCluster(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(DynamicCluster dynamicCluster) {
            return DEFAULT_INSTANCE.toBuilder().i0(dynamicCluster);
        }

        public static DynamicCluster parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private DynamicCluster(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static DynamicCluster parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (DynamicCluster) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static DynamicCluster parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public DynamicCluster getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).i0(this);
        }

        public static DynamicCluster parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private DynamicCluster() {
            this.memoizedIsInitialized = (byte) -1;
            this.versionInfo_ = "";
            this.clientStatus_ = 0;
        }

        public static DynamicCluster parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static DynamicCluster parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static DynamicCluster parseFrom(InputStream inputStream) throws IOException {
            return (DynamicCluster) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private DynamicCluster(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                        Any any = this.cluster_;
                                        Any.b builder = any != null ? any.toBuilder() : null;
                                        Any any2 = (Any) pVar.B(Any.parser(), f0Var);
                                        this.cluster_ = any2;
                                        if (builder != null) {
                                            builder.d0(any2);
                                            this.cluster_ = builder.I();
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

        public static DynamicCluster parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (DynamicCluster) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static DynamicCluster parseFrom(p pVar) throws IOException {
            return (DynamicCluster) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static DynamicCluster parseFrom(p pVar, f0 f0Var) throws IOException {
            return (DynamicCluster) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes5.dex */
    public static final class StaticCluster extends GeneratedMessageV3 implements d {
        public static final int CLUSTER_FIELD_NUMBER = 1;
        public static final int LAST_UPDATED_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private Any cluster_;
        private Timestamp lastUpdated_;
        private byte memoizedIsInitialized;
        private static final StaticCluster DEFAULT_INSTANCE = new StaticCluster();
        private static final e2<StaticCluster> PARSER = new a();

        /* loaded from: classes5.dex */
        class a extends com.google.protobuf.c<StaticCluster> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public StaticCluster m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new StaticCluster(pVar, f0Var, null);
            }
        }

        /* loaded from: classes5.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements d {

            /* renamed from: e  reason: collision with root package name */
            private Any f45774e;

            /* renamed from: f  reason: collision with root package name */
            private q2<Any, Any.b, com.google.protobuf.f> f45775f;

            /* renamed from: g  reason: collision with root package name */
            private Timestamp f45776g;

            /* renamed from: h  reason: collision with root package name */
            private q2<Timestamp, Timestamp.b, z2> f45777h;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.f45913r.d(StaticCluster.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public StaticCluster build() {
                StaticCluster I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public StaticCluster I() {
                StaticCluster staticCluster = new StaticCluster(this, (a) null);
                q2<Any, Any.b, com.google.protobuf.f> q2Var = this.f45775f;
                if (q2Var == null) {
                    staticCluster.cluster_ = this.f45774e;
                } else {
                    staticCluster.cluster_ = q2Var.b();
                }
                q2<Timestamp, Timestamp.b, z2> q2Var2 = this.f45777h;
                if (q2Var2 == null) {
                    staticCluster.lastUpdated_ = this.f45776g;
                } else {
                    staticCluster.lastUpdated_ = q2Var2.b();
                }
                Q();
                return staticCluster;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public StaticCluster getDefaultInstanceForType() {
                return StaticCluster.getDefaultInstance();
            }

            public b d0(Any any) {
                q2<Any, Any.b, com.google.protobuf.f> q2Var = this.f45775f;
                if (q2Var == null) {
                    Any any2 = this.f45774e;
                    if (any2 != null) {
                        this.f45774e = Any.newBuilder(any2).d0(any).I();
                    } else {
                        this.f45774e = any;
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
            public io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ClustersConfigDump.StaticCluster.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ClustersConfigDump.StaticCluster.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ClustersConfigDump$StaticCluster r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ClustersConfigDump.StaticCluster) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ClustersConfigDump$StaticCluster r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ClustersConfigDump.StaticCluster) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ClustersConfigDump.StaticCluster.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ClustersConfigDump$StaticCluster$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: g0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof StaticCluster) {
                    return h0((StaticCluster) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.f45912q;
            }

            public b h0(StaticCluster staticCluster) {
                if (staticCluster == StaticCluster.getDefaultInstance()) {
                    return this;
                }
                if (staticCluster.hasCluster()) {
                    d0(staticCluster.getCluster());
                }
                if (staticCluster.hasLastUpdated()) {
                    i0(staticCluster.getLastUpdated());
                }
                z(((GeneratedMessageV3) staticCluster).unknownFields);
                R();
                return this;
            }

            public b i0(Timestamp timestamp) {
                q2<Timestamp, Timestamp.b, z2> q2Var = this.f45777h;
                if (q2Var == null) {
                    Timestamp timestamp2 = this.f45776g;
                    if (timestamp2 != null) {
                        this.f45776g = Timestamp.newBuilder(timestamp2).g0(timestamp).I();
                    } else {
                        this.f45776g = timestamp;
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

        /* synthetic */ StaticCluster(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static StaticCluster getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.f45912q;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static StaticCluster parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (StaticCluster) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static StaticCluster parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<StaticCluster> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof StaticCluster)) {
                return super.equals(obj);
            }
            StaticCluster staticCluster = (StaticCluster) obj;
            if (hasCluster() != staticCluster.hasCluster()) {
                return false;
            }
            if ((!hasCluster() || getCluster().equals(staticCluster.getCluster())) && hasLastUpdated() == staticCluster.hasLastUpdated()) {
                return (!hasLastUpdated() || getLastUpdated().equals(staticCluster.getLastUpdated())) && this.unknownFields.equals(staticCluster.unknownFields);
            }
            return false;
        }

        public Any getCluster() {
            Any any = this.cluster_;
            return any == null ? Any.getDefaultInstance() : any;
        }

        public com.google.protobuf.f getClusterOrBuilder() {
            return getCluster();
        }

        public Timestamp getLastUpdated() {
            Timestamp timestamp = this.lastUpdated_;
            return timestamp == null ? Timestamp.getDefaultInstance() : timestamp;
        }

        public z2 getLastUpdatedOrBuilder() {
            return getLastUpdated();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<StaticCluster> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int G = this.cluster_ != null ? 0 + CodedOutputStream.G(1, getCluster()) : 0;
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

        public boolean hasCluster() {
            return this.cluster_ != null;
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
            if (hasCluster()) {
                hashCode = (((hashCode * 37) + 1) * 53) + getCluster().hashCode();
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
            return io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.f45913r.d(StaticCluster.class, b.class);
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
            return new StaticCluster();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (this.cluster_ != null) {
                codedOutputStream.L0(1, getCluster());
            }
            if (this.lastUpdated_ != null) {
                codedOutputStream.L0(2, getLastUpdated());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ StaticCluster(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(StaticCluster staticCluster) {
            return DEFAULT_INSTANCE.toBuilder().h0(staticCluster);
        }

        public static StaticCluster parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private StaticCluster(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static StaticCluster parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (StaticCluster) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static StaticCluster parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public StaticCluster getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).h0(this);
        }

        public static StaticCluster parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private StaticCluster() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static StaticCluster parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static StaticCluster parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        private StaticCluster(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                Any any = this.cluster_;
                                Any.b builder = any != null ? any.toBuilder() : null;
                                Any any2 = (Any) pVar.B(Any.parser(), f0Var);
                                this.cluster_ = any2;
                                if (builder != null) {
                                    builder.d0(any2);
                                    this.cluster_ = builder.I();
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

        public static StaticCluster parseFrom(InputStream inputStream) throws IOException {
            return (StaticCluster) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static StaticCluster parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (StaticCluster) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static StaticCluster parseFrom(p pVar) throws IOException {
            return (StaticCluster) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static StaticCluster parseFrom(p pVar, f0 f0Var) throws IOException {
            return (StaticCluster) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends com.google.protobuf.c<ClustersConfigDump> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public ClustersConfigDump m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new ClustersConfigDump(pVar, f0Var, null);
        }
    }

    /* loaded from: classes5.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.a {

        /* renamed from: e  reason: collision with root package name */
        private int f45778e;

        /* renamed from: f  reason: collision with root package name */
        private Object f45779f;

        /* renamed from: g  reason: collision with root package name */
        private List<StaticCluster> f45780g;

        /* renamed from: h  reason: collision with root package name */
        private l2<StaticCluster, StaticCluster.b, d> f45781h;

        /* renamed from: i  reason: collision with root package name */
        private List<DynamicCluster> f45782i;

        /* renamed from: j  reason: collision with root package name */
        private l2<DynamicCluster, DynamicCluster.b, c> f45783j;

        /* renamed from: k  reason: collision with root package name */
        private List<DynamicCluster> f45784k;

        /* renamed from: l  reason: collision with root package name */
        private l2<DynamicCluster, DynamicCluster.b, c> f45785l;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f45778e & 2) == 0) {
                this.f45782i = new ArrayList(this.f45782i);
                this.f45778e |= 2;
            }
        }

        private void b0() {
            if ((this.f45778e & 4) == 0) {
                this.f45784k = new ArrayList(this.f45784k);
                this.f45778e |= 4;
            }
        }

        private void d0() {
            if ((this.f45778e & 1) == 0) {
                this.f45780g = new ArrayList(this.f45780g);
                this.f45778e |= 1;
            }
        }

        private l2<DynamicCluster, DynamicCluster.b, c> g0() {
            if (this.f45783j == null) {
                this.f45783j = new l2<>(this.f45782i, (this.f45778e & 2) != 0, H(), O());
                this.f45782i = null;
            }
            return this.f45783j;
        }

        private l2<DynamicCluster, DynamicCluster.b, c> h0() {
            if (this.f45785l == null) {
                this.f45785l = new l2<>(this.f45784k, (this.f45778e & 4) != 0, H(), O());
                this.f45784k = null;
            }
            return this.f45785l;
        }

        private l2<StaticCluster, StaticCluster.b, d> i0() {
            if (this.f45781h == null) {
                this.f45781h = new l2<>(this.f45780g, (this.f45778e & 1) != 0, H(), O());
                this.f45780g = null;
            }
            return this.f45781h;
        }

        private void j0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                i0();
                g0();
                h0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.f45911p.d(ClustersConfigDump.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public ClustersConfigDump build() {
            ClustersConfigDump I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public ClustersConfigDump I() {
            ClustersConfigDump clustersConfigDump = new ClustersConfigDump(this, (a) null);
            clustersConfigDump.versionInfo_ = this.f45779f;
            l2<StaticCluster, StaticCluster.b, d> l2Var = this.f45781h;
            if (l2Var == null) {
                if ((this.f45778e & 1) != 0) {
                    this.f45780g = Collections.unmodifiableList(this.f45780g);
                    this.f45778e &= -2;
                }
                clustersConfigDump.staticClusters_ = this.f45780g;
            } else {
                clustersConfigDump.staticClusters_ = l2Var.e();
            }
            l2<DynamicCluster, DynamicCluster.b, c> l2Var2 = this.f45783j;
            if (l2Var2 == null) {
                if ((this.f45778e & 2) != 0) {
                    this.f45782i = Collections.unmodifiableList(this.f45782i);
                    this.f45778e &= -3;
                }
                clustersConfigDump.dynamicActiveClusters_ = this.f45782i;
            } else {
                clustersConfigDump.dynamicActiveClusters_ = l2Var2.e();
            }
            l2<DynamicCluster, DynamicCluster.b, c> l2Var3 = this.f45785l;
            if (l2Var3 == null) {
                if ((this.f45778e & 4) != 0) {
                    this.f45784k = Collections.unmodifiableList(this.f45784k);
                    this.f45778e &= -5;
                }
                clustersConfigDump.dynamicWarmingClusters_ = this.f45784k;
            } else {
                clustersConfigDump.dynamicWarmingClusters_ = l2Var3.e();
            }
            Q();
            return clustersConfigDump;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: e0 */
        public ClustersConfigDump getDefaultInstanceForType() {
            return ClustersConfigDump.getDefaultInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.f45910o;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: k0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ClustersConfigDump.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ClustersConfigDump.access$3400()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ClustersConfigDump r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ClustersConfigDump) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.m0(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ClustersConfigDump r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ClustersConfigDump) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.m0(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ClustersConfigDump.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ClustersConfigDump$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: l0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof ClustersConfigDump) {
                return m0((ClustersConfigDump) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b m0(ClustersConfigDump clustersConfigDump) {
            if (clustersConfigDump == ClustersConfigDump.getDefaultInstance()) {
                return this;
            }
            if (!clustersConfigDump.getVersionInfo().isEmpty()) {
                this.f45779f = clustersConfigDump.versionInfo_;
                R();
            }
            if (this.f45781h == null) {
                if (!clustersConfigDump.staticClusters_.isEmpty()) {
                    if (this.f45780g.isEmpty()) {
                        this.f45780g = clustersConfigDump.staticClusters_;
                        this.f45778e &= -2;
                    } else {
                        d0();
                        this.f45780g.addAll(clustersConfigDump.staticClusters_);
                    }
                    R();
                }
            } else if (!clustersConfigDump.staticClusters_.isEmpty()) {
                if (this.f45781h.k()) {
                    this.f45781h.f();
                    this.f45781h = null;
                    this.f45780g = clustersConfigDump.staticClusters_;
                    this.f45778e &= -2;
                    this.f45781h = GeneratedMessageV3.alwaysUseFieldBuilders ? i0() : null;
                } else {
                    this.f45781h.b(clustersConfigDump.staticClusters_);
                }
            }
            if (this.f45783j == null) {
                if (!clustersConfigDump.dynamicActiveClusters_.isEmpty()) {
                    if (this.f45782i.isEmpty()) {
                        this.f45782i = clustersConfigDump.dynamicActiveClusters_;
                        this.f45778e &= -3;
                    } else {
                        a0();
                        this.f45782i.addAll(clustersConfigDump.dynamicActiveClusters_);
                    }
                    R();
                }
            } else if (!clustersConfigDump.dynamicActiveClusters_.isEmpty()) {
                if (this.f45783j.k()) {
                    this.f45783j.f();
                    this.f45783j = null;
                    this.f45782i = clustersConfigDump.dynamicActiveClusters_;
                    this.f45778e &= -3;
                    this.f45783j = GeneratedMessageV3.alwaysUseFieldBuilders ? g0() : null;
                } else {
                    this.f45783j.b(clustersConfigDump.dynamicActiveClusters_);
                }
            }
            if (this.f45785l == null) {
                if (!clustersConfigDump.dynamicWarmingClusters_.isEmpty()) {
                    if (this.f45784k.isEmpty()) {
                        this.f45784k = clustersConfigDump.dynamicWarmingClusters_;
                        this.f45778e &= -5;
                    } else {
                        b0();
                        this.f45784k.addAll(clustersConfigDump.dynamicWarmingClusters_);
                    }
                    R();
                }
            } else if (!clustersConfigDump.dynamicWarmingClusters_.isEmpty()) {
                if (this.f45785l.k()) {
                    this.f45785l.f();
                    this.f45785l = null;
                    this.f45784k = clustersConfigDump.dynamicWarmingClusters_;
                    this.f45778e &= -5;
                    this.f45785l = GeneratedMessageV3.alwaysUseFieldBuilders ? h0() : null;
                } else {
                    this.f45785l.b(clustersConfigDump.dynamicWarmingClusters_);
                }
            }
            z(((GeneratedMessageV3) clustersConfigDump).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: n0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: o0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
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
            this.f45779f = "";
            this.f45780g = Collections.emptyList();
            this.f45782i = Collections.emptyList();
            this.f45784k = Collections.emptyList();
            j0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f45779f = "";
            this.f45780g = Collections.emptyList();
            this.f45782i = Collections.emptyList();
            this.f45784k = Collections.emptyList();
            j0();
        }
    }

    /* loaded from: classes5.dex */
    public interface c extends r1 {
    }

    /* loaded from: classes5.dex */
    public interface d extends r1 {
    }

    /* synthetic */ ClustersConfigDump(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static ClustersConfigDump getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.f45910o;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static ClustersConfigDump parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (ClustersConfigDump) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static ClustersConfigDump parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<ClustersConfigDump> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ClustersConfigDump)) {
            return super.equals(obj);
        }
        ClustersConfigDump clustersConfigDump = (ClustersConfigDump) obj;
        return getVersionInfo().equals(clustersConfigDump.getVersionInfo()) && getStaticClustersList().equals(clustersConfigDump.getStaticClustersList()) && getDynamicActiveClustersList().equals(clustersConfigDump.getDynamicActiveClustersList()) && getDynamicWarmingClustersList().equals(clustersConfigDump.getDynamicWarmingClustersList()) && this.unknownFields.equals(clustersConfigDump.unknownFields);
    }

    public DynamicCluster getDynamicActiveClusters(int i9) {
        return this.dynamicActiveClusters_.get(i9);
    }

    public int getDynamicActiveClustersCount() {
        return this.dynamicActiveClusters_.size();
    }

    public List<DynamicCluster> getDynamicActiveClustersList() {
        return this.dynamicActiveClusters_;
    }

    public c getDynamicActiveClustersOrBuilder(int i9) {
        return this.dynamicActiveClusters_.get(i9);
    }

    public List<? extends c> getDynamicActiveClustersOrBuilderList() {
        return this.dynamicActiveClusters_;
    }

    public DynamicCluster getDynamicWarmingClusters(int i9) {
        return this.dynamicWarmingClusters_.get(i9);
    }

    public int getDynamicWarmingClustersCount() {
        return this.dynamicWarmingClusters_.size();
    }

    public List<DynamicCluster> getDynamicWarmingClustersList() {
        return this.dynamicWarmingClusters_;
    }

    public c getDynamicWarmingClustersOrBuilder(int i9) {
        return this.dynamicWarmingClusters_.get(i9);
    }

    public List<? extends c> getDynamicWarmingClustersOrBuilderList() {
        return this.dynamicWarmingClusters_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<ClustersConfigDump> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = !GeneratedMessageV3.isStringEmpty(this.versionInfo_) ? GeneratedMessageV3.computeStringSize(1, this.versionInfo_) + 0 : 0;
        for (int i10 = 0; i10 < this.staticClusters_.size(); i10++) {
            computeStringSize += CodedOutputStream.G(2, this.staticClusters_.get(i10));
        }
        for (int i11 = 0; i11 < this.dynamicActiveClusters_.size(); i11++) {
            computeStringSize += CodedOutputStream.G(3, this.dynamicActiveClusters_.get(i11));
        }
        for (int i12 = 0; i12 < this.dynamicWarmingClusters_.size(); i12++) {
            computeStringSize += CodedOutputStream.G(4, this.dynamicWarmingClusters_.get(i12));
        }
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public StaticCluster getStaticClusters(int i9) {
        return this.staticClusters_.get(i9);
    }

    public int getStaticClustersCount() {
        return this.staticClusters_.size();
    }

    public List<StaticCluster> getStaticClustersList() {
        return this.staticClusters_;
    }

    public d getStaticClustersOrBuilder(int i9) {
        return this.staticClusters_.get(i9);
    }

    public List<? extends d> getStaticClustersOrBuilderList() {
        return this.staticClusters_;
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

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getVersionInfo().hashCode();
        if (getStaticClustersCount() > 0) {
            hashCode = (((hashCode * 37) + 2) * 53) + getStaticClustersList().hashCode();
        }
        if (getDynamicActiveClustersCount() > 0) {
            hashCode = (((hashCode * 37) + 3) * 53) + getDynamicActiveClustersList().hashCode();
        }
        if (getDynamicWarmingClustersCount() > 0) {
            hashCode = (((hashCode * 37) + 4) * 53) + getDynamicWarmingClustersList().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.f45911p.d(ClustersConfigDump.class, b.class);
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
        return new ClustersConfigDump();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.versionInfo_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.versionInfo_);
        }
        for (int i9 = 0; i9 < this.staticClusters_.size(); i9++) {
            codedOutputStream.L0(2, this.staticClusters_.get(i9));
        }
        for (int i10 = 0; i10 < this.dynamicActiveClusters_.size(); i10++) {
            codedOutputStream.L0(3, this.dynamicActiveClusters_.get(i10));
        }
        for (int i11 = 0; i11 < this.dynamicWarmingClusters_.size(); i11++) {
            codedOutputStream.L0(4, this.dynamicWarmingClusters_.get(i11));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ ClustersConfigDump(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(ClustersConfigDump clustersConfigDump) {
        return DEFAULT_INSTANCE.toBuilder().m0(clustersConfigDump);
    }

    public static ClustersConfigDump parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private ClustersConfigDump(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static ClustersConfigDump parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ClustersConfigDump) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static ClustersConfigDump parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public ClustersConfigDump getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).m0(this);
    }

    public static ClustersConfigDump parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private ClustersConfigDump() {
        this.memoizedIsInitialized = (byte) -1;
        this.versionInfo_ = "";
        this.staticClusters_ = Collections.emptyList();
        this.dynamicActiveClusters_ = Collections.emptyList();
        this.dynamicWarmingClusters_ = Collections.emptyList();
    }

    public static ClustersConfigDump parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static ClustersConfigDump parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static ClustersConfigDump parseFrom(InputStream inputStream) throws IOException {
        return (ClustersConfigDump) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static ClustersConfigDump parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ClustersConfigDump) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    private ClustersConfigDump(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                this.versionInfo_ = pVar.K();
                            } else if (L == 18) {
                                if (!(z11 & true)) {
                                    this.staticClusters_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.staticClusters_.add((StaticCluster) pVar.B(StaticCluster.parser(), f0Var));
                            } else if (L == 26) {
                                if (!(z11 & true)) {
                                    this.dynamicActiveClusters_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.dynamicActiveClusters_.add((DynamicCluster) pVar.B(DynamicCluster.parser(), f0Var));
                            } else if (L != 34) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                if (!(z11 & true)) {
                                    this.dynamicWarmingClusters_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.dynamicWarmingClusters_.add((DynamicCluster) pVar.B(DynamicCluster.parser(), f0Var));
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
                    this.staticClusters_ = Collections.unmodifiableList(this.staticClusters_);
                }
                if (z11 & true) {
                    this.dynamicActiveClusters_ = Collections.unmodifiableList(this.dynamicActiveClusters_);
                }
                if (z11 & true) {
                    this.dynamicWarmingClusters_ = Collections.unmodifiableList(this.dynamicWarmingClusters_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static ClustersConfigDump parseFrom(p pVar) throws IOException {
        return (ClustersConfigDump) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static ClustersConfigDump parseFrom(p pVar, f0 f0Var) throws IOException {
        return (ClustersConfigDump) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
