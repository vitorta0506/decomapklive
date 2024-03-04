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
public final class ScopedRoutesConfigDump extends GeneratedMessageV3 implements f {
    public static final int DYNAMIC_SCOPED_ROUTE_CONFIGS_FIELD_NUMBER = 2;
    public static final int INLINE_SCOPED_ROUTE_CONFIGS_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private List<DynamicScopedRouteConfigs> dynamicScopedRouteConfigs_;
    private List<InlineScopedRouteConfigs> inlineScopedRouteConfigs_;
    private byte memoizedIsInitialized;
    private static final ScopedRoutesConfigDump DEFAULT_INSTANCE = new ScopedRoutesConfigDump();
    private static final e2<ScopedRoutesConfigDump> PARSER = new a();

    /* loaded from: classes5.dex */
    public static final class DynamicScopedRouteConfigs extends GeneratedMessageV3 implements c {
        public static final int CLIENT_STATUS_FIELD_NUMBER = 6;
        public static final int ERROR_STATE_FIELD_NUMBER = 5;
        public static final int LAST_UPDATED_FIELD_NUMBER = 4;
        public static final int NAME_FIELD_NUMBER = 1;
        public static final int SCOPED_ROUTE_CONFIGS_FIELD_NUMBER = 3;
        public static final int VERSION_INFO_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private int clientStatus_;
        private UpdateFailureState errorState_;
        private Timestamp lastUpdated_;
        private byte memoizedIsInitialized;
        private volatile Object name_;
        private List<Any> scopedRouteConfigs_;
        private volatile Object versionInfo_;
        private static final DynamicScopedRouteConfigs DEFAULT_INSTANCE = new DynamicScopedRouteConfigs();
        private static final e2<DynamicScopedRouteConfigs> PARSER = new a();

        /* loaded from: classes5.dex */
        class a extends com.google.protobuf.c<DynamicScopedRouteConfigs> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public DynamicScopedRouteConfigs m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new DynamicScopedRouteConfigs(pVar, f0Var, null);
            }
        }

        /* loaded from: classes5.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements c {

            /* renamed from: e  reason: collision with root package name */
            private int f45848e;

            /* renamed from: f  reason: collision with root package name */
            private Object f45849f;

            /* renamed from: g  reason: collision with root package name */
            private Object f45850g;

            /* renamed from: h  reason: collision with root package name */
            private List<Any> f45851h;

            /* renamed from: i  reason: collision with root package name */
            private l2<Any, Any.b, com.google.protobuf.f> f45852i;

            /* renamed from: j  reason: collision with root package name */
            private Timestamp f45853j;

            /* renamed from: k  reason: collision with root package name */
            private q2<Timestamp, Timestamp.b, z2> f45854k;

            /* renamed from: l  reason: collision with root package name */
            private UpdateFailureState f45855l;

            /* renamed from: m  reason: collision with root package name */
            private q2<UpdateFailureState, UpdateFailureState.b, g> f45856m;

            /* renamed from: n  reason: collision with root package name */
            private int f45857n;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void a0() {
                if ((this.f45848e & 1) == 0) {
                    this.f45851h = new ArrayList(this.f45851h);
                    this.f45848e |= 1;
                }
            }

            private l2<Any, Any.b, com.google.protobuf.f> d0() {
                if (this.f45852i == null) {
                    this.f45852i = new l2<>(this.f45851h, (this.f45848e & 1) != 0, H(), O());
                    this.f45851h = null;
                }
                return this.f45852i;
            }

            private void e0() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    d0();
                }
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.F.d(DynamicScopedRouteConfigs.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public DynamicScopedRouteConfigs build() {
                DynamicScopedRouteConfigs I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public DynamicScopedRouteConfigs I() {
                DynamicScopedRouteConfigs dynamicScopedRouteConfigs = new DynamicScopedRouteConfigs(this, (a) null);
                dynamicScopedRouteConfigs.name_ = this.f45849f;
                dynamicScopedRouteConfigs.versionInfo_ = this.f45850g;
                l2<Any, Any.b, com.google.protobuf.f> l2Var = this.f45852i;
                if (l2Var == null) {
                    if ((this.f45848e & 1) != 0) {
                        this.f45851h = Collections.unmodifiableList(this.f45851h);
                        this.f45848e &= -2;
                    }
                    dynamicScopedRouteConfigs.scopedRouteConfigs_ = this.f45851h;
                } else {
                    dynamicScopedRouteConfigs.scopedRouteConfigs_ = l2Var.e();
                }
                q2<Timestamp, Timestamp.b, z2> q2Var = this.f45854k;
                if (q2Var == null) {
                    dynamicScopedRouteConfigs.lastUpdated_ = this.f45853j;
                } else {
                    dynamicScopedRouteConfigs.lastUpdated_ = q2Var.b();
                }
                q2<UpdateFailureState, UpdateFailureState.b, g> q2Var2 = this.f45856m;
                if (q2Var2 == null) {
                    dynamicScopedRouteConfigs.errorState_ = this.f45855l;
                } else {
                    dynamicScopedRouteConfigs.errorState_ = q2Var2.b();
                }
                dynamicScopedRouteConfigs.clientStatus_ = this.f45857n;
                Q();
                return dynamicScopedRouteConfigs;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: b0 */
            public DynamicScopedRouteConfigs getDefaultInstanceForType() {
                return DynamicScopedRouteConfigs.getDefaultInstance();
            }

            public b g0(UpdateFailureState updateFailureState) {
                q2<UpdateFailureState, UpdateFailureState.b, g> q2Var = this.f45856m;
                if (q2Var == null) {
                    UpdateFailureState updateFailureState2 = this.f45855l;
                    if (updateFailureState2 != null) {
                        this.f45855l = UpdateFailureState.newBuilder(updateFailureState2).h0(updateFailureState).I();
                    } else {
                        this.f45855l = updateFailureState;
                    }
                    R();
                } else {
                    q2Var.e(updateFailureState);
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.E;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: h0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ScopedRoutesConfigDump.DynamicScopedRouteConfigs.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ScopedRoutesConfigDump.DynamicScopedRouteConfigs.access$2400()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ScopedRoutesConfigDump$DynamicScopedRouteConfigs r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ScopedRoutesConfigDump.DynamicScopedRouteConfigs) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ScopedRoutesConfigDump$DynamicScopedRouteConfigs r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ScopedRoutesConfigDump.DynamicScopedRouteConfigs) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ScopedRoutesConfigDump.DynamicScopedRouteConfigs.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ScopedRoutesConfigDump$DynamicScopedRouteConfigs$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: i0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof DynamicScopedRouteConfigs) {
                    return j0((DynamicScopedRouteConfigs) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b j0(DynamicScopedRouteConfigs dynamicScopedRouteConfigs) {
                if (dynamicScopedRouteConfigs == DynamicScopedRouteConfigs.getDefaultInstance()) {
                    return this;
                }
                if (!dynamicScopedRouteConfigs.getName().isEmpty()) {
                    this.f45849f = dynamicScopedRouteConfigs.name_;
                    R();
                }
                if (!dynamicScopedRouteConfigs.getVersionInfo().isEmpty()) {
                    this.f45850g = dynamicScopedRouteConfigs.versionInfo_;
                    R();
                }
                if (this.f45852i == null) {
                    if (!dynamicScopedRouteConfigs.scopedRouteConfigs_.isEmpty()) {
                        if (this.f45851h.isEmpty()) {
                            this.f45851h = dynamicScopedRouteConfigs.scopedRouteConfigs_;
                            this.f45848e &= -2;
                        } else {
                            a0();
                            this.f45851h.addAll(dynamicScopedRouteConfigs.scopedRouteConfigs_);
                        }
                        R();
                    }
                } else if (!dynamicScopedRouteConfigs.scopedRouteConfigs_.isEmpty()) {
                    if (this.f45852i.k()) {
                        this.f45852i.f();
                        this.f45852i = null;
                        this.f45851h = dynamicScopedRouteConfigs.scopedRouteConfigs_;
                        this.f45848e &= -2;
                        this.f45852i = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                    } else {
                        this.f45852i.b(dynamicScopedRouteConfigs.scopedRouteConfigs_);
                    }
                }
                if (dynamicScopedRouteConfigs.hasLastUpdated()) {
                    k0(dynamicScopedRouteConfigs.getLastUpdated());
                }
                if (dynamicScopedRouteConfigs.hasErrorState()) {
                    g0(dynamicScopedRouteConfigs.getErrorState());
                }
                if (dynamicScopedRouteConfigs.clientStatus_ != 0) {
                    m0(dynamicScopedRouteConfigs.getClientStatusValue());
                }
                z(((GeneratedMessageV3) dynamicScopedRouteConfigs).unknownFields);
                R();
                return this;
            }

            public b k0(Timestamp timestamp) {
                q2<Timestamp, Timestamp.b, z2> q2Var = this.f45854k;
                if (q2Var == null) {
                    Timestamp timestamp2 = this.f45853j;
                    if (timestamp2 != null) {
                        this.f45853j = Timestamp.newBuilder(timestamp2).g0(timestamp).I();
                    } else {
                        this.f45853j = timestamp;
                    }
                    R();
                } else {
                    q2Var.e(timestamp);
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: l0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            public b m0(int i9) {
                this.f45857n = i9;
                R();
                return this;
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
                this.f45849f = "";
                this.f45850g = "";
                this.f45851h = Collections.emptyList();
                this.f45857n = 0;
                e0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f45849f = "";
                this.f45850g = "";
                this.f45851h = Collections.emptyList();
                this.f45857n = 0;
                e0();
            }
        }

        /* synthetic */ DynamicScopedRouteConfigs(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static DynamicScopedRouteConfigs getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.E;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static DynamicScopedRouteConfigs parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (DynamicScopedRouteConfigs) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static DynamicScopedRouteConfigs parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<DynamicScopedRouteConfigs> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof DynamicScopedRouteConfigs)) {
                return super.equals(obj);
            }
            DynamicScopedRouteConfigs dynamicScopedRouteConfigs = (DynamicScopedRouteConfigs) obj;
            if (getName().equals(dynamicScopedRouteConfigs.getName()) && getVersionInfo().equals(dynamicScopedRouteConfigs.getVersionInfo()) && getScopedRouteConfigsList().equals(dynamicScopedRouteConfigs.getScopedRouteConfigsList()) && hasLastUpdated() == dynamicScopedRouteConfigs.hasLastUpdated()) {
                if ((!hasLastUpdated() || getLastUpdated().equals(dynamicScopedRouteConfigs.getLastUpdated())) && hasErrorState() == dynamicScopedRouteConfigs.hasErrorState()) {
                    return (!hasErrorState() || getErrorState().equals(dynamicScopedRouteConfigs.getErrorState())) && this.clientStatus_ == dynamicScopedRouteConfigs.clientStatus_ && this.unknownFields.equals(dynamicScopedRouteConfigs.unknownFields);
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
        public e2<DynamicScopedRouteConfigs> getParserForType() {
            return PARSER;
        }

        public Any getScopedRouteConfigs(int i9) {
            return this.scopedRouteConfigs_.get(i9);
        }

        public int getScopedRouteConfigsCount() {
            return this.scopedRouteConfigs_.size();
        }

        public List<Any> getScopedRouteConfigsList() {
            return this.scopedRouteConfigs_;
        }

        public com.google.protobuf.f getScopedRouteConfigsOrBuilder(int i9) {
            return this.scopedRouteConfigs_.get(i9);
        }

        public List<? extends com.google.protobuf.f> getScopedRouteConfigsOrBuilderList() {
            return this.scopedRouteConfigs_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int computeStringSize = !GeneratedMessageV3.isStringEmpty(this.name_) ? GeneratedMessageV3.computeStringSize(1, this.name_) + 0 : 0;
            if (!GeneratedMessageV3.isStringEmpty(this.versionInfo_)) {
                computeStringSize += GeneratedMessageV3.computeStringSize(2, this.versionInfo_);
            }
            for (int i10 = 0; i10 < this.scopedRouteConfigs_.size(); i10++) {
                computeStringSize += CodedOutputStream.G(3, this.scopedRouteConfigs_.get(i10));
            }
            if (this.lastUpdated_ != null) {
                computeStringSize += CodedOutputStream.G(4, getLastUpdated());
            }
            if (this.errorState_ != null) {
                computeStringSize += CodedOutputStream.G(5, getErrorState());
            }
            if (this.clientStatus_ != ClientResourceStatus.UNKNOWN.getNumber()) {
                computeStringSize += CodedOutputStream.l(6, this.clientStatus_);
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

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = ((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode()) * 37) + 2) * 53) + getVersionInfo().hashCode();
            if (getScopedRouteConfigsCount() > 0) {
                hashCode = (((hashCode * 37) + 3) * 53) + getScopedRouteConfigsList().hashCode();
            }
            if (hasLastUpdated()) {
                hashCode = (((hashCode * 37) + 4) * 53) + getLastUpdated().hashCode();
            }
            if (hasErrorState()) {
                hashCode = (((hashCode * 37) + 5) * 53) + getErrorState().hashCode();
            }
            int hashCode2 = (((((hashCode * 37) + 6) * 53) + this.clientStatus_) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.F.d(DynamicScopedRouteConfigs.class, b.class);
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
            return new DynamicScopedRouteConfigs();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (!GeneratedMessageV3.isStringEmpty(this.name_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.name_);
            }
            if (!GeneratedMessageV3.isStringEmpty(this.versionInfo_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 2, this.versionInfo_);
            }
            for (int i9 = 0; i9 < this.scopedRouteConfigs_.size(); i9++) {
                codedOutputStream.L0(3, this.scopedRouteConfigs_.get(i9));
            }
            if (this.lastUpdated_ != null) {
                codedOutputStream.L0(4, getLastUpdated());
            }
            if (this.errorState_ != null) {
                codedOutputStream.L0(5, getErrorState());
            }
            if (this.clientStatus_ != ClientResourceStatus.UNKNOWN.getNumber()) {
                codedOutputStream.v0(6, this.clientStatus_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ DynamicScopedRouteConfigs(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(DynamicScopedRouteConfigs dynamicScopedRouteConfigs) {
            return DEFAULT_INSTANCE.toBuilder().j0(dynamicScopedRouteConfigs);
        }

        public static DynamicScopedRouteConfigs parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private DynamicScopedRouteConfigs(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static DynamicScopedRouteConfigs parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (DynamicScopedRouteConfigs) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static DynamicScopedRouteConfigs parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public DynamicScopedRouteConfigs getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).j0(this);
        }

        public static DynamicScopedRouteConfigs parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private DynamicScopedRouteConfigs() {
            this.memoizedIsInitialized = (byte) -1;
            this.name_ = "";
            this.versionInfo_ = "";
            this.scopedRouteConfigs_ = Collections.emptyList();
            this.clientStatus_ = 0;
        }

        public static DynamicScopedRouteConfigs parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static DynamicScopedRouteConfigs parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static DynamicScopedRouteConfigs parseFrom(InputStream inputStream) throws IOException {
            return (DynamicScopedRouteConfigs) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static DynamicScopedRouteConfigs parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (DynamicScopedRouteConfigs) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        private DynamicScopedRouteConfigs(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                this.name_ = pVar.K();
                            } else if (L == 18) {
                                this.versionInfo_ = pVar.K();
                            } else if (L != 26) {
                                if (L == 34) {
                                    Timestamp timestamp = this.lastUpdated_;
                                    Timestamp.b builder = timestamp != null ? timestamp.toBuilder() : null;
                                    Timestamp timestamp2 = (Timestamp) pVar.B(Timestamp.parser(), f0Var);
                                    this.lastUpdated_ = timestamp2;
                                    if (builder != null) {
                                        builder.g0(timestamp2);
                                        this.lastUpdated_ = builder.I();
                                    }
                                } else if (L == 42) {
                                    UpdateFailureState updateFailureState = this.errorState_;
                                    UpdateFailureState.b builder2 = updateFailureState != null ? updateFailureState.toBuilder() : null;
                                    UpdateFailureState updateFailureState2 = (UpdateFailureState) pVar.B(UpdateFailureState.parser(), f0Var);
                                    this.errorState_ = updateFailureState2;
                                    if (builder2 != null) {
                                        builder2.h0(updateFailureState2);
                                        this.errorState_ = builder2.I();
                                    }
                                } else if (L != 48) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    this.clientStatus_ = pVar.u();
                                }
                            } else {
                                if (!(z11 & true)) {
                                    this.scopedRouteConfigs_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.scopedRouteConfigs_.add((Any) pVar.B(Any.parser(), f0Var));
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
                        this.scopedRouteConfigs_ = Collections.unmodifiableList(this.scopedRouteConfigs_);
                    }
                    this.unknownFields = h10.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static DynamicScopedRouteConfigs parseFrom(p pVar) throws IOException {
            return (DynamicScopedRouteConfigs) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static DynamicScopedRouteConfigs parseFrom(p pVar, f0 f0Var) throws IOException {
            return (DynamicScopedRouteConfigs) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes5.dex */
    public static final class InlineScopedRouteConfigs extends GeneratedMessageV3 implements d {
        public static final int LAST_UPDATED_FIELD_NUMBER = 3;
        public static final int NAME_FIELD_NUMBER = 1;
        public static final int SCOPED_ROUTE_CONFIGS_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private Timestamp lastUpdated_;
        private byte memoizedIsInitialized;
        private volatile Object name_;
        private List<Any> scopedRouteConfigs_;
        private static final InlineScopedRouteConfigs DEFAULT_INSTANCE = new InlineScopedRouteConfigs();
        private static final e2<InlineScopedRouteConfigs> PARSER = new a();

        /* loaded from: classes5.dex */
        class a extends com.google.protobuf.c<InlineScopedRouteConfigs> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public InlineScopedRouteConfigs m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new InlineScopedRouteConfigs(pVar, f0Var, null);
            }
        }

        /* loaded from: classes5.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements d {

            /* renamed from: e  reason: collision with root package name */
            private int f45858e;

            /* renamed from: f  reason: collision with root package name */
            private Object f45859f;

            /* renamed from: g  reason: collision with root package name */
            private List<Any> f45860g;

            /* renamed from: h  reason: collision with root package name */
            private l2<Any, Any.b, com.google.protobuf.f> f45861h;

            /* renamed from: i  reason: collision with root package name */
            private Timestamp f45862i;

            /* renamed from: j  reason: collision with root package name */
            private q2<Timestamp, Timestamp.b, z2> f45863j;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void a0() {
                if ((this.f45858e & 1) == 0) {
                    this.f45860g = new ArrayList(this.f45860g);
                    this.f45858e |= 1;
                }
            }

            private l2<Any, Any.b, com.google.protobuf.f> d0() {
                if (this.f45861h == null) {
                    this.f45861h = new l2<>(this.f45860g, (this.f45858e & 1) != 0, H(), O());
                    this.f45860g = null;
                }
                return this.f45861h;
            }

            private void e0() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    d0();
                }
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.D.d(InlineScopedRouteConfigs.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public InlineScopedRouteConfigs build() {
                InlineScopedRouteConfigs I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public InlineScopedRouteConfigs I() {
                InlineScopedRouteConfigs inlineScopedRouteConfigs = new InlineScopedRouteConfigs(this, (a) null);
                inlineScopedRouteConfigs.name_ = this.f45859f;
                l2<Any, Any.b, com.google.protobuf.f> l2Var = this.f45861h;
                if (l2Var == null) {
                    if ((this.f45858e & 1) != 0) {
                        this.f45860g = Collections.unmodifiableList(this.f45860g);
                        this.f45858e &= -2;
                    }
                    inlineScopedRouteConfigs.scopedRouteConfigs_ = this.f45860g;
                } else {
                    inlineScopedRouteConfigs.scopedRouteConfigs_ = l2Var.e();
                }
                q2<Timestamp, Timestamp.b, z2> q2Var = this.f45863j;
                if (q2Var == null) {
                    inlineScopedRouteConfigs.lastUpdated_ = this.f45862i;
                } else {
                    inlineScopedRouteConfigs.lastUpdated_ = q2Var.b();
                }
                Q();
                return inlineScopedRouteConfigs;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: b0 */
            public InlineScopedRouteConfigs getDefaultInstanceForType() {
                return InlineScopedRouteConfigs.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: g0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ScopedRoutesConfigDump.InlineScopedRouteConfigs.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ScopedRoutesConfigDump.InlineScopedRouteConfigs.access$900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ScopedRoutesConfigDump$InlineScopedRouteConfigs r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ScopedRoutesConfigDump.InlineScopedRouteConfigs) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ScopedRoutesConfigDump$InlineScopedRouteConfigs r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ScopedRoutesConfigDump.InlineScopedRouteConfigs) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ScopedRoutesConfigDump.InlineScopedRouteConfigs.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ScopedRoutesConfigDump$InlineScopedRouteConfigs$b");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.C;
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: h0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof InlineScopedRouteConfigs) {
                    return i0((InlineScopedRouteConfigs) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b i0(InlineScopedRouteConfigs inlineScopedRouteConfigs) {
                if (inlineScopedRouteConfigs == InlineScopedRouteConfigs.getDefaultInstance()) {
                    return this;
                }
                if (!inlineScopedRouteConfigs.getName().isEmpty()) {
                    this.f45859f = inlineScopedRouteConfigs.name_;
                    R();
                }
                if (this.f45861h == null) {
                    if (!inlineScopedRouteConfigs.scopedRouteConfigs_.isEmpty()) {
                        if (this.f45860g.isEmpty()) {
                            this.f45860g = inlineScopedRouteConfigs.scopedRouteConfigs_;
                            this.f45858e &= -2;
                        } else {
                            a0();
                            this.f45860g.addAll(inlineScopedRouteConfigs.scopedRouteConfigs_);
                        }
                        R();
                    }
                } else if (!inlineScopedRouteConfigs.scopedRouteConfigs_.isEmpty()) {
                    if (this.f45861h.k()) {
                        this.f45861h.f();
                        this.f45861h = null;
                        this.f45860g = inlineScopedRouteConfigs.scopedRouteConfigs_;
                        this.f45858e &= -2;
                        this.f45861h = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                    } else {
                        this.f45861h.b(inlineScopedRouteConfigs.scopedRouteConfigs_);
                    }
                }
                if (inlineScopedRouteConfigs.hasLastUpdated()) {
                    j0(inlineScopedRouteConfigs.getLastUpdated());
                }
                z(((GeneratedMessageV3) inlineScopedRouteConfigs).unknownFields);
                R();
                return this;
            }

            public b j0(Timestamp timestamp) {
                q2<Timestamp, Timestamp.b, z2> q2Var = this.f45863j;
                if (q2Var == null) {
                    Timestamp timestamp2 = this.f45862i;
                    if (timestamp2 != null) {
                        this.f45862i = Timestamp.newBuilder(timestamp2).g0(timestamp).I();
                    } else {
                        this.f45862i = timestamp;
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
                this.f45859f = "";
                this.f45860g = Collections.emptyList();
                e0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f45859f = "";
                this.f45860g = Collections.emptyList();
                e0();
            }
        }

        /* synthetic */ InlineScopedRouteConfigs(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static InlineScopedRouteConfigs getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.C;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static InlineScopedRouteConfigs parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (InlineScopedRouteConfigs) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static InlineScopedRouteConfigs parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<InlineScopedRouteConfigs> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof InlineScopedRouteConfigs)) {
                return super.equals(obj);
            }
            InlineScopedRouteConfigs inlineScopedRouteConfigs = (InlineScopedRouteConfigs) obj;
            if (getName().equals(inlineScopedRouteConfigs.getName()) && getScopedRouteConfigsList().equals(inlineScopedRouteConfigs.getScopedRouteConfigsList()) && hasLastUpdated() == inlineScopedRouteConfigs.hasLastUpdated()) {
                return (!hasLastUpdated() || getLastUpdated().equals(inlineScopedRouteConfigs.getLastUpdated())) && this.unknownFields.equals(inlineScopedRouteConfigs.unknownFields);
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
        public e2<InlineScopedRouteConfigs> getParserForType() {
            return PARSER;
        }

        public Any getScopedRouteConfigs(int i9) {
            return this.scopedRouteConfigs_.get(i9);
        }

        public int getScopedRouteConfigsCount() {
            return this.scopedRouteConfigs_.size();
        }

        public List<Any> getScopedRouteConfigsList() {
            return this.scopedRouteConfigs_;
        }

        public com.google.protobuf.f getScopedRouteConfigsOrBuilder(int i9) {
            return this.scopedRouteConfigs_.get(i9);
        }

        public List<? extends com.google.protobuf.f> getScopedRouteConfigsOrBuilderList() {
            return this.scopedRouteConfigs_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int computeStringSize = !GeneratedMessageV3.isStringEmpty(this.name_) ? GeneratedMessageV3.computeStringSize(1, this.name_) + 0 : 0;
            for (int i10 = 0; i10 < this.scopedRouteConfigs_.size(); i10++) {
                computeStringSize += CodedOutputStream.G(2, this.scopedRouteConfigs_.get(i10));
            }
            if (this.lastUpdated_ != null) {
                computeStringSize += CodedOutputStream.G(3, getLastUpdated());
            }
            int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
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

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode();
            if (getScopedRouteConfigsCount() > 0) {
                hashCode = (((hashCode * 37) + 2) * 53) + getScopedRouteConfigsList().hashCode();
            }
            if (hasLastUpdated()) {
                hashCode = (((hashCode * 37) + 3) * 53) + getLastUpdated().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.D.d(InlineScopedRouteConfigs.class, b.class);
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
            return new InlineScopedRouteConfigs();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (!GeneratedMessageV3.isStringEmpty(this.name_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.name_);
            }
            for (int i9 = 0; i9 < this.scopedRouteConfigs_.size(); i9++) {
                codedOutputStream.L0(2, this.scopedRouteConfigs_.get(i9));
            }
            if (this.lastUpdated_ != null) {
                codedOutputStream.L0(3, getLastUpdated());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ InlineScopedRouteConfigs(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(InlineScopedRouteConfigs inlineScopedRouteConfigs) {
            return DEFAULT_INSTANCE.toBuilder().i0(inlineScopedRouteConfigs);
        }

        public static InlineScopedRouteConfigs parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private InlineScopedRouteConfigs(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static InlineScopedRouteConfigs parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (InlineScopedRouteConfigs) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static InlineScopedRouteConfigs parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public InlineScopedRouteConfigs getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).i0(this);
        }

        public static InlineScopedRouteConfigs parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private InlineScopedRouteConfigs() {
            this.memoizedIsInitialized = (byte) -1;
            this.name_ = "";
            this.scopedRouteConfigs_ = Collections.emptyList();
        }

        public static InlineScopedRouteConfigs parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static InlineScopedRouteConfigs parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static InlineScopedRouteConfigs parseFrom(InputStream inputStream) throws IOException {
            return (InlineScopedRouteConfigs) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private InlineScopedRouteConfigs(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                this.name_ = pVar.K();
                            } else if (L == 18) {
                                if (!(z11 & true)) {
                                    this.scopedRouteConfigs_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.scopedRouteConfigs_.add((Any) pVar.B(Any.parser(), f0Var));
                            } else if (L != 26) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                Timestamp timestamp = this.lastUpdated_;
                                Timestamp.b builder = timestamp != null ? timestamp.toBuilder() : null;
                                Timestamp timestamp2 = (Timestamp) pVar.B(Timestamp.parser(), f0Var);
                                this.lastUpdated_ = timestamp2;
                                if (builder != null) {
                                    builder.g0(timestamp2);
                                    this.lastUpdated_ = builder.I();
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
                    if (z11 & true) {
                        this.scopedRouteConfigs_ = Collections.unmodifiableList(this.scopedRouteConfigs_);
                    }
                    this.unknownFields = h10.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static InlineScopedRouteConfigs parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (InlineScopedRouteConfigs) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static InlineScopedRouteConfigs parseFrom(p pVar) throws IOException {
            return (InlineScopedRouteConfigs) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static InlineScopedRouteConfigs parseFrom(p pVar, f0 f0Var) throws IOException {
            return (InlineScopedRouteConfigs) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends com.google.protobuf.c<ScopedRoutesConfigDump> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public ScopedRoutesConfigDump m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new ScopedRoutesConfigDump(pVar, f0Var, null);
        }
    }

    /* loaded from: classes5.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements f {

        /* renamed from: e  reason: collision with root package name */
        private int f45864e;

        /* renamed from: f  reason: collision with root package name */
        private List<InlineScopedRouteConfigs> f45865f;

        /* renamed from: g  reason: collision with root package name */
        private l2<InlineScopedRouteConfigs, InlineScopedRouteConfigs.b, d> f45866g;

        /* renamed from: h  reason: collision with root package name */
        private List<DynamicScopedRouteConfigs> f45867h;

        /* renamed from: i  reason: collision with root package name */
        private l2<DynamicScopedRouteConfigs, DynamicScopedRouteConfigs.b, c> f45868i;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f45864e & 2) == 0) {
                this.f45867h = new ArrayList(this.f45867h);
                this.f45864e |= 2;
            }
        }

        private void b0() {
            if ((this.f45864e & 1) == 0) {
                this.f45865f = new ArrayList(this.f45865f);
                this.f45864e |= 1;
            }
        }

        private l2<DynamicScopedRouteConfigs, DynamicScopedRouteConfigs.b, c> e0() {
            if (this.f45868i == null) {
                this.f45868i = new l2<>(this.f45867h, (this.f45864e & 2) != 0, H(), O());
                this.f45867h = null;
            }
            return this.f45868i;
        }

        private l2<InlineScopedRouteConfigs, InlineScopedRouteConfigs.b, d> g0() {
            if (this.f45866g == null) {
                this.f45866g = new l2<>(this.f45865f, (this.f45864e & 1) != 0, H(), O());
                this.f45865f = null;
            }
            return this.f45866g;
        }

        private void h0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                g0();
                e0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.B.d(ScopedRoutesConfigDump.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public ScopedRoutesConfigDump build() {
            ScopedRoutesConfigDump I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public ScopedRoutesConfigDump I() {
            ScopedRoutesConfigDump scopedRoutesConfigDump = new ScopedRoutesConfigDump(this, (a) null);
            int i9 = this.f45864e;
            l2<InlineScopedRouteConfigs, InlineScopedRouteConfigs.b, d> l2Var = this.f45866g;
            if (l2Var == null) {
                if ((i9 & 1) != 0) {
                    this.f45865f = Collections.unmodifiableList(this.f45865f);
                    this.f45864e &= -2;
                }
                scopedRoutesConfigDump.inlineScopedRouteConfigs_ = this.f45865f;
            } else {
                scopedRoutesConfigDump.inlineScopedRouteConfigs_ = l2Var.e();
            }
            l2<DynamicScopedRouteConfigs, DynamicScopedRouteConfigs.b, c> l2Var2 = this.f45868i;
            if (l2Var2 == null) {
                if ((this.f45864e & 2) != 0) {
                    this.f45867h = Collections.unmodifiableList(this.f45867h);
                    this.f45864e &= -3;
                }
                scopedRoutesConfigDump.dynamicScopedRouteConfigs_ = this.f45867h;
            } else {
                scopedRoutesConfigDump.dynamicScopedRouteConfigs_ = l2Var2.e();
            }
            Q();
            return scopedRoutesConfigDump;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: d0 */
        public ScopedRoutesConfigDump getDefaultInstanceForType() {
            return ScopedRoutesConfigDump.getDefaultInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.A;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ScopedRoutesConfigDump.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ScopedRoutesConfigDump.access$3700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ScopedRoutesConfigDump r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ScopedRoutesConfigDump) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ScopedRoutesConfigDump r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ScopedRoutesConfigDump) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ScopedRoutesConfigDump.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ScopedRoutesConfigDump$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: j0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof ScopedRoutesConfigDump) {
                return k0((ScopedRoutesConfigDump) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b k0(ScopedRoutesConfigDump scopedRoutesConfigDump) {
            if (scopedRoutesConfigDump == ScopedRoutesConfigDump.getDefaultInstance()) {
                return this;
            }
            if (this.f45866g == null) {
                if (!scopedRoutesConfigDump.inlineScopedRouteConfigs_.isEmpty()) {
                    if (this.f45865f.isEmpty()) {
                        this.f45865f = scopedRoutesConfigDump.inlineScopedRouteConfigs_;
                        this.f45864e &= -2;
                    } else {
                        b0();
                        this.f45865f.addAll(scopedRoutesConfigDump.inlineScopedRouteConfigs_);
                    }
                    R();
                }
            } else if (!scopedRoutesConfigDump.inlineScopedRouteConfigs_.isEmpty()) {
                if (this.f45866g.k()) {
                    this.f45866g.f();
                    this.f45866g = null;
                    this.f45865f = scopedRoutesConfigDump.inlineScopedRouteConfigs_;
                    this.f45864e &= -2;
                    this.f45866g = GeneratedMessageV3.alwaysUseFieldBuilders ? g0() : null;
                } else {
                    this.f45866g.b(scopedRoutesConfigDump.inlineScopedRouteConfigs_);
                }
            }
            if (this.f45868i == null) {
                if (!scopedRoutesConfigDump.dynamicScopedRouteConfigs_.isEmpty()) {
                    if (this.f45867h.isEmpty()) {
                        this.f45867h = scopedRoutesConfigDump.dynamicScopedRouteConfigs_;
                        this.f45864e &= -3;
                    } else {
                        a0();
                        this.f45867h.addAll(scopedRoutesConfigDump.dynamicScopedRouteConfigs_);
                    }
                    R();
                }
            } else if (!scopedRoutesConfigDump.dynamicScopedRouteConfigs_.isEmpty()) {
                if (this.f45868i.k()) {
                    this.f45868i.f();
                    this.f45868i = null;
                    this.f45867h = scopedRoutesConfigDump.dynamicScopedRouteConfigs_;
                    this.f45864e &= -3;
                    this.f45868i = GeneratedMessageV3.alwaysUseFieldBuilders ? e0() : null;
                } else {
                    this.f45868i.b(scopedRoutesConfigDump.dynamicScopedRouteConfigs_);
                }
            }
            z(((GeneratedMessageV3) scopedRoutesConfigDump).unknownFields);
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
            this.f45865f = Collections.emptyList();
            this.f45867h = Collections.emptyList();
            h0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f45865f = Collections.emptyList();
            this.f45867h = Collections.emptyList();
            h0();
        }
    }

    /* loaded from: classes5.dex */
    public interface c extends r1 {
    }

    /* loaded from: classes5.dex */
    public interface d extends r1 {
    }

    /* synthetic */ ScopedRoutesConfigDump(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static ScopedRoutesConfigDump getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.A;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static ScopedRoutesConfigDump parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (ScopedRoutesConfigDump) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static ScopedRoutesConfigDump parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<ScopedRoutesConfigDump> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ScopedRoutesConfigDump)) {
            return super.equals(obj);
        }
        ScopedRoutesConfigDump scopedRoutesConfigDump = (ScopedRoutesConfigDump) obj;
        return getInlineScopedRouteConfigsList().equals(scopedRoutesConfigDump.getInlineScopedRouteConfigsList()) && getDynamicScopedRouteConfigsList().equals(scopedRoutesConfigDump.getDynamicScopedRouteConfigsList()) && this.unknownFields.equals(scopedRoutesConfigDump.unknownFields);
    }

    public DynamicScopedRouteConfigs getDynamicScopedRouteConfigs(int i9) {
        return this.dynamicScopedRouteConfigs_.get(i9);
    }

    public int getDynamicScopedRouteConfigsCount() {
        return this.dynamicScopedRouteConfigs_.size();
    }

    public List<DynamicScopedRouteConfigs> getDynamicScopedRouteConfigsList() {
        return this.dynamicScopedRouteConfigs_;
    }

    public c getDynamicScopedRouteConfigsOrBuilder(int i9) {
        return this.dynamicScopedRouteConfigs_.get(i9);
    }

    public List<? extends c> getDynamicScopedRouteConfigsOrBuilderList() {
        return this.dynamicScopedRouteConfigs_;
    }

    public InlineScopedRouteConfigs getInlineScopedRouteConfigs(int i9) {
        return this.inlineScopedRouteConfigs_.get(i9);
    }

    public int getInlineScopedRouteConfigsCount() {
        return this.inlineScopedRouteConfigs_.size();
    }

    public List<InlineScopedRouteConfigs> getInlineScopedRouteConfigsList() {
        return this.inlineScopedRouteConfigs_;
    }

    public d getInlineScopedRouteConfigsOrBuilder(int i9) {
        return this.inlineScopedRouteConfigs_.get(i9);
    }

    public List<? extends d> getInlineScopedRouteConfigsOrBuilderList() {
        return this.inlineScopedRouteConfigs_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<ScopedRoutesConfigDump> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < this.inlineScopedRouteConfigs_.size(); i11++) {
            i10 += CodedOutputStream.G(1, this.inlineScopedRouteConfigs_.get(i11));
        }
        for (int i12 = 0; i12 < this.dynamicScopedRouteConfigs_.size(); i12++) {
            i10 += CodedOutputStream.G(2, this.dynamicScopedRouteConfigs_.get(i12));
        }
        int serializedSize = i10 + this.unknownFields.getSerializedSize();
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
        int hashCode = 779 + getDescriptor().hashCode();
        if (getInlineScopedRouteConfigsCount() > 0) {
            hashCode = (((hashCode * 37) + 1) * 53) + getInlineScopedRouteConfigsList().hashCode();
        }
        if (getDynamicScopedRouteConfigsCount() > 0) {
            hashCode = (((hashCode * 37) + 2) * 53) + getDynamicScopedRouteConfigsList().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.B.d(ScopedRoutesConfigDump.class, b.class);
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
        return new ScopedRoutesConfigDump();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        for (int i9 = 0; i9 < this.inlineScopedRouteConfigs_.size(); i9++) {
            codedOutputStream.L0(1, this.inlineScopedRouteConfigs_.get(i9));
        }
        for (int i10 = 0; i10 < this.dynamicScopedRouteConfigs_.size(); i10++) {
            codedOutputStream.L0(2, this.dynamicScopedRouteConfigs_.get(i10));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ ScopedRoutesConfigDump(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(ScopedRoutesConfigDump scopedRoutesConfigDump) {
        return DEFAULT_INSTANCE.toBuilder().k0(scopedRoutesConfigDump);
    }

    public static ScopedRoutesConfigDump parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private ScopedRoutesConfigDump(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static ScopedRoutesConfigDump parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ScopedRoutesConfigDump) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static ScopedRoutesConfigDump parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public ScopedRoutesConfigDump getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).k0(this);
    }

    public static ScopedRoutesConfigDump parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private ScopedRoutesConfigDump() {
        this.memoizedIsInitialized = (byte) -1;
        this.inlineScopedRouteConfigs_ = Collections.emptyList();
        this.dynamicScopedRouteConfigs_ = Collections.emptyList();
    }

    public static ScopedRoutesConfigDump parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static ScopedRoutesConfigDump parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static ScopedRoutesConfigDump parseFrom(InputStream inputStream) throws IOException {
        return (ScopedRoutesConfigDump) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private ScopedRoutesConfigDump(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                    this.inlineScopedRouteConfigs_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.inlineScopedRouteConfigs_.add((InlineScopedRouteConfigs) pVar.B(InlineScopedRouteConfigs.parser(), f0Var));
                            } else if (L != 18) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                if (!(z11 & true)) {
                                    this.dynamicScopedRouteConfigs_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.dynamicScopedRouteConfigs_.add((DynamicScopedRouteConfigs) pVar.B(DynamicScopedRouteConfigs.parser(), f0Var));
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
                    this.inlineScopedRouteConfigs_ = Collections.unmodifiableList(this.inlineScopedRouteConfigs_);
                }
                if (z11 & true) {
                    this.dynamicScopedRouteConfigs_ = Collections.unmodifiableList(this.dynamicScopedRouteConfigs_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static ScopedRoutesConfigDump parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ScopedRoutesConfigDump) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static ScopedRoutesConfigDump parseFrom(p pVar) throws IOException {
        return (ScopedRoutesConfigDump) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static ScopedRoutesConfigDump parseFrom(p pVar, f0 f0Var) throws IOException {
        return (ScopedRoutesConfigDump) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
