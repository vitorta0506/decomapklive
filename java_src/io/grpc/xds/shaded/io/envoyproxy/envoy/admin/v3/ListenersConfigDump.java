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
public final class ListenersConfigDump extends GeneratedMessageV3 implements io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.d {
    public static final int DYNAMIC_LISTENERS_FIELD_NUMBER = 3;
    public static final int STATIC_LISTENERS_FIELD_NUMBER = 2;
    public static final int VERSION_INFO_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private List<DynamicListener> dynamicListeners_;
    private byte memoizedIsInitialized;
    private List<StaticListener> staticListeners_;
    private volatile Object versionInfo_;
    private static final ListenersConfigDump DEFAULT_INSTANCE = new ListenersConfigDump();
    private static final e2<ListenersConfigDump> PARSER = new a();

    /* loaded from: classes5.dex */
    public static final class DynamicListener extends GeneratedMessageV3 implements c {
        public static final int ACTIVE_STATE_FIELD_NUMBER = 2;
        public static final int CLIENT_STATUS_FIELD_NUMBER = 6;
        public static final int DRAINING_STATE_FIELD_NUMBER = 4;
        public static final int ERROR_STATE_FIELD_NUMBER = 5;
        public static final int NAME_FIELD_NUMBER = 1;
        public static final int WARMING_STATE_FIELD_NUMBER = 3;
        private static final long serialVersionUID = 0;
        private DynamicListenerState activeState_;
        private int clientStatus_;
        private DynamicListenerState drainingState_;
        private UpdateFailureState errorState_;
        private byte memoizedIsInitialized;
        private volatile Object name_;
        private DynamicListenerState warmingState_;
        private static final DynamicListener DEFAULT_INSTANCE = new DynamicListener();
        private static final e2<DynamicListener> PARSER = new a();

        /* loaded from: classes5.dex */
        class a extends com.google.protobuf.c<DynamicListener> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public DynamicListener m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new DynamicListener(pVar, f0Var, null);
            }
        }

        /* loaded from: classes5.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements c {

            /* renamed from: e  reason: collision with root package name */
            private Object f45806e;

            /* renamed from: f  reason: collision with root package name */
            private DynamicListenerState f45807f;

            /* renamed from: g  reason: collision with root package name */
            private q2<DynamicListenerState, DynamicListenerState.b, d> f45808g;

            /* renamed from: h  reason: collision with root package name */
            private DynamicListenerState f45809h;

            /* renamed from: i  reason: collision with root package name */
            private q2<DynamicListenerState, DynamicListenerState.b, d> f45810i;

            /* renamed from: j  reason: collision with root package name */
            private DynamicListenerState f45811j;

            /* renamed from: k  reason: collision with root package name */
            private q2<DynamicListenerState, DynamicListenerState.b, d> f45812k;

            /* renamed from: l  reason: collision with root package name */
            private UpdateFailureState f45813l;

            /* renamed from: m  reason: collision with root package name */
            private q2<UpdateFailureState, UpdateFailureState.b, g> f45814m;

            /* renamed from: n  reason: collision with root package name */
            private int f45815n;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.f45909n.d(DynamicListener.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public DynamicListener build() {
                DynamicListener I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public DynamicListener I() {
                DynamicListener dynamicListener = new DynamicListener(this, (a) null);
                dynamicListener.name_ = this.f45806e;
                q2<DynamicListenerState, DynamicListenerState.b, d> q2Var = this.f45808g;
                if (q2Var == null) {
                    dynamicListener.activeState_ = this.f45807f;
                } else {
                    dynamicListener.activeState_ = q2Var.b();
                }
                q2<DynamicListenerState, DynamicListenerState.b, d> q2Var2 = this.f45810i;
                if (q2Var2 == null) {
                    dynamicListener.warmingState_ = this.f45809h;
                } else {
                    dynamicListener.warmingState_ = q2Var2.b();
                }
                q2<DynamicListenerState, DynamicListenerState.b, d> q2Var3 = this.f45812k;
                if (q2Var3 == null) {
                    dynamicListener.drainingState_ = this.f45811j;
                } else {
                    dynamicListener.drainingState_ = q2Var3.b();
                }
                q2<UpdateFailureState, UpdateFailureState.b, g> q2Var4 = this.f45814m;
                if (q2Var4 == null) {
                    dynamicListener.errorState_ = this.f45813l;
                } else {
                    dynamicListener.errorState_ = q2Var4.b();
                }
                dynamicListener.clientStatus_ = this.f45815n;
                Q();
                return dynamicListener;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public DynamicListener getDefaultInstanceForType() {
                return DynamicListener.getDefaultInstance();
            }

            public b d0(DynamicListenerState dynamicListenerState) {
                q2<DynamicListenerState, DynamicListenerState.b, d> q2Var = this.f45808g;
                if (q2Var == null) {
                    DynamicListenerState dynamicListenerState2 = this.f45807f;
                    if (dynamicListenerState2 != null) {
                        this.f45807f = DynamicListenerState.newBuilder(dynamicListenerState2).g0(dynamicListenerState).I();
                    } else {
                        this.f45807f = dynamicListenerState;
                    }
                    R();
                } else {
                    q2Var.e(dynamicListenerState);
                }
                return this;
            }

            public b e0(DynamicListenerState dynamicListenerState) {
                q2<DynamicListenerState, DynamicListenerState.b, d> q2Var = this.f45812k;
                if (q2Var == null) {
                    DynamicListenerState dynamicListenerState2 = this.f45811j;
                    if (dynamicListenerState2 != null) {
                        this.f45811j = DynamicListenerState.newBuilder(dynamicListenerState2).g0(dynamicListenerState).I();
                    } else {
                        this.f45811j = dynamicListenerState;
                    }
                    R();
                } else {
                    q2Var.e(dynamicListenerState);
                }
                return this;
            }

            public b g0(UpdateFailureState updateFailureState) {
                q2<UpdateFailureState, UpdateFailureState.b, g> q2Var = this.f45814m;
                if (q2Var == null) {
                    UpdateFailureState updateFailureState2 = this.f45813l;
                    if (updateFailureState2 != null) {
                        this.f45813l = UpdateFailureState.newBuilder(updateFailureState2).h0(updateFailureState).I();
                    } else {
                        this.f45813l = updateFailureState;
                    }
                    R();
                } else {
                    q2Var.e(updateFailureState);
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.f45908m;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: h0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ListenersConfigDump.DynamicListener.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ListenersConfigDump.DynamicListener.access$3100()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ListenersConfigDump$DynamicListener r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ListenersConfigDump.DynamicListener) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ListenersConfigDump$DynamicListener r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ListenersConfigDump.DynamicListener) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ListenersConfigDump.DynamicListener.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ListenersConfigDump$DynamicListener$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: i0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof DynamicListener) {
                    return j0((DynamicListener) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b j0(DynamicListener dynamicListener) {
                if (dynamicListener == DynamicListener.getDefaultInstance()) {
                    return this;
                }
                if (!dynamicListener.getName().isEmpty()) {
                    this.f45806e = dynamicListener.name_;
                    R();
                }
                if (dynamicListener.hasActiveState()) {
                    d0(dynamicListener.getActiveState());
                }
                if (dynamicListener.hasWarmingState()) {
                    l0(dynamicListener.getWarmingState());
                }
                if (dynamicListener.hasDrainingState()) {
                    e0(dynamicListener.getDrainingState());
                }
                if (dynamicListener.hasErrorState()) {
                    g0(dynamicListener.getErrorState());
                }
                if (dynamicListener.clientStatus_ != 0) {
                    m0(dynamicListener.getClientStatusValue());
                }
                z(((GeneratedMessageV3) dynamicListener).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: k0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            public b l0(DynamicListenerState dynamicListenerState) {
                q2<DynamicListenerState, DynamicListenerState.b, d> q2Var = this.f45810i;
                if (q2Var == null) {
                    DynamicListenerState dynamicListenerState2 = this.f45809h;
                    if (dynamicListenerState2 != null) {
                        this.f45809h = DynamicListenerState.newBuilder(dynamicListenerState2).g0(dynamicListenerState).I();
                    } else {
                        this.f45809h = dynamicListenerState;
                    }
                    R();
                } else {
                    q2Var.e(dynamicListenerState);
                }
                return this;
            }

            public b m0(int i9) {
                this.f45815n = i9;
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
                this.f45806e = "";
                this.f45815n = 0;
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f45806e = "";
                this.f45815n = 0;
                b0();
            }
        }

        /* synthetic */ DynamicListener(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static DynamicListener getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.f45908m;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static DynamicListener parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (DynamicListener) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static DynamicListener parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<DynamicListener> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof DynamicListener)) {
                return super.equals(obj);
            }
            DynamicListener dynamicListener = (DynamicListener) obj;
            if (getName().equals(dynamicListener.getName()) && hasActiveState() == dynamicListener.hasActiveState()) {
                if ((!hasActiveState() || getActiveState().equals(dynamicListener.getActiveState())) && hasWarmingState() == dynamicListener.hasWarmingState()) {
                    if ((!hasWarmingState() || getWarmingState().equals(dynamicListener.getWarmingState())) && hasDrainingState() == dynamicListener.hasDrainingState()) {
                        if ((!hasDrainingState() || getDrainingState().equals(dynamicListener.getDrainingState())) && hasErrorState() == dynamicListener.hasErrorState()) {
                            return (!hasErrorState() || getErrorState().equals(dynamicListener.getErrorState())) && this.clientStatus_ == dynamicListener.clientStatus_ && this.unknownFields.equals(dynamicListener.unknownFields);
                        }
                        return false;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }

        public DynamicListenerState getActiveState() {
            DynamicListenerState dynamicListenerState = this.activeState_;
            return dynamicListenerState == null ? DynamicListenerState.getDefaultInstance() : dynamicListenerState;
        }

        public d getActiveStateOrBuilder() {
            return getActiveState();
        }

        public ClientResourceStatus getClientStatus() {
            ClientResourceStatus valueOf = ClientResourceStatus.valueOf(this.clientStatus_);
            return valueOf == null ? ClientResourceStatus.UNRECOGNIZED : valueOf;
        }

        public int getClientStatusValue() {
            return this.clientStatus_;
        }

        public DynamicListenerState getDrainingState() {
            DynamicListenerState dynamicListenerState = this.drainingState_;
            return dynamicListenerState == null ? DynamicListenerState.getDefaultInstance() : dynamicListenerState;
        }

        public d getDrainingStateOrBuilder() {
            return getDrainingState();
        }

        public UpdateFailureState getErrorState() {
            UpdateFailureState updateFailureState = this.errorState_;
            return updateFailureState == null ? UpdateFailureState.getDefaultInstance() : updateFailureState;
        }

        public g getErrorStateOrBuilder() {
            return getErrorState();
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
        public e2<DynamicListener> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int computeStringSize = GeneratedMessageV3.isStringEmpty(this.name_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.name_);
            if (this.activeState_ != null) {
                computeStringSize += CodedOutputStream.G(2, getActiveState());
            }
            if (this.warmingState_ != null) {
                computeStringSize += CodedOutputStream.G(3, getWarmingState());
            }
            if (this.drainingState_ != null) {
                computeStringSize += CodedOutputStream.G(4, getDrainingState());
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

        public DynamicListenerState getWarmingState() {
            DynamicListenerState dynamicListenerState = this.warmingState_;
            return dynamicListenerState == null ? DynamicListenerState.getDefaultInstance() : dynamicListenerState;
        }

        public d getWarmingStateOrBuilder() {
            return getWarmingState();
        }

        public boolean hasActiveState() {
            return this.activeState_ != null;
        }

        public boolean hasDrainingState() {
            return this.drainingState_ != null;
        }

        public boolean hasErrorState() {
            return this.errorState_ != null;
        }

        public boolean hasWarmingState() {
            return this.warmingState_ != null;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode();
            if (hasActiveState()) {
                hashCode = (((hashCode * 37) + 2) * 53) + getActiveState().hashCode();
            }
            if (hasWarmingState()) {
                hashCode = (((hashCode * 37) + 3) * 53) + getWarmingState().hashCode();
            }
            if (hasDrainingState()) {
                hashCode = (((hashCode * 37) + 4) * 53) + getDrainingState().hashCode();
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
            return io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.f45909n.d(DynamicListener.class, b.class);
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
            return new DynamicListener();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (!GeneratedMessageV3.isStringEmpty(this.name_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.name_);
            }
            if (this.activeState_ != null) {
                codedOutputStream.L0(2, getActiveState());
            }
            if (this.warmingState_ != null) {
                codedOutputStream.L0(3, getWarmingState());
            }
            if (this.drainingState_ != null) {
                codedOutputStream.L0(4, getDrainingState());
            }
            if (this.errorState_ != null) {
                codedOutputStream.L0(5, getErrorState());
            }
            if (this.clientStatus_ != ClientResourceStatus.UNKNOWN.getNumber()) {
                codedOutputStream.v0(6, this.clientStatus_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ DynamicListener(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(DynamicListener dynamicListener) {
            return DEFAULT_INSTANCE.toBuilder().j0(dynamicListener);
        }

        public static DynamicListener parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private DynamicListener(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static DynamicListener parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (DynamicListener) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static DynamicListener parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public DynamicListener getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).j0(this);
        }

        public static DynamicListener parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private DynamicListener() {
            this.memoizedIsInitialized = (byte) -1;
            this.name_ = "";
            this.clientStatus_ = 0;
        }

        public static DynamicListener parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static DynamicListener parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static DynamicListener parseFrom(InputStream inputStream) throws IOException {
            return (DynamicListener) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private DynamicListener(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            this();
            Objects.requireNonNull(f0Var);
            h3.b h10 = h3.h();
            boolean z10 = false;
            while (!z10) {
                try {
                    try {
                        int L = pVar.L();
                        if (L != 0) {
                            if (L != 10) {
                                if (L == 18) {
                                    DynamicListenerState dynamicListenerState = this.activeState_;
                                    DynamicListenerState.b builder = dynamicListenerState != null ? dynamicListenerState.toBuilder() : null;
                                    DynamicListenerState dynamicListenerState2 = (DynamicListenerState) pVar.B(DynamicListenerState.parser(), f0Var);
                                    this.activeState_ = dynamicListenerState2;
                                    if (builder != null) {
                                        builder.g0(dynamicListenerState2);
                                        this.activeState_ = builder.I();
                                    }
                                } else if (L == 26) {
                                    DynamicListenerState dynamicListenerState3 = this.warmingState_;
                                    DynamicListenerState.b builder2 = dynamicListenerState3 != null ? dynamicListenerState3.toBuilder() : null;
                                    DynamicListenerState dynamicListenerState4 = (DynamicListenerState) pVar.B(DynamicListenerState.parser(), f0Var);
                                    this.warmingState_ = dynamicListenerState4;
                                    if (builder2 != null) {
                                        builder2.g0(dynamicListenerState4);
                                        this.warmingState_ = builder2.I();
                                    }
                                } else if (L == 34) {
                                    DynamicListenerState dynamicListenerState5 = this.drainingState_;
                                    DynamicListenerState.b builder3 = dynamicListenerState5 != null ? dynamicListenerState5.toBuilder() : null;
                                    DynamicListenerState dynamicListenerState6 = (DynamicListenerState) pVar.B(DynamicListenerState.parser(), f0Var);
                                    this.drainingState_ = dynamicListenerState6;
                                    if (builder3 != null) {
                                        builder3.g0(dynamicListenerState6);
                                        this.drainingState_ = builder3.I();
                                    }
                                } else if (L == 42) {
                                    UpdateFailureState updateFailureState = this.errorState_;
                                    UpdateFailureState.b builder4 = updateFailureState != null ? updateFailureState.toBuilder() : null;
                                    UpdateFailureState updateFailureState2 = (UpdateFailureState) pVar.B(UpdateFailureState.parser(), f0Var);
                                    this.errorState_ = updateFailureState2;
                                    if (builder4 != null) {
                                        builder4.h0(updateFailureState2);
                                        this.errorState_ = builder4.I();
                                    }
                                } else if (L != 48) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    this.clientStatus_ = pVar.u();
                                }
                            } else {
                                this.name_ = pVar.K();
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

        public static DynamicListener parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (DynamicListener) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static DynamicListener parseFrom(p pVar) throws IOException {
            return (DynamicListener) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static DynamicListener parseFrom(p pVar, f0 f0Var) throws IOException {
            return (DynamicListener) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes5.dex */
    public static final class DynamicListenerState extends GeneratedMessageV3 implements d {
        public static final int LAST_UPDATED_FIELD_NUMBER = 3;
        public static final int LISTENER_FIELD_NUMBER = 2;
        public static final int VERSION_INFO_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private Timestamp lastUpdated_;
        private Any listener_;
        private byte memoizedIsInitialized;
        private volatile Object versionInfo_;
        private static final DynamicListenerState DEFAULT_INSTANCE = new DynamicListenerState();
        private static final e2<DynamicListenerState> PARSER = new a();

        /* loaded from: classes5.dex */
        class a extends com.google.protobuf.c<DynamicListenerState> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public DynamicListenerState m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new DynamicListenerState(pVar, f0Var, null);
            }
        }

        /* loaded from: classes5.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements d {

            /* renamed from: e  reason: collision with root package name */
            private Object f45816e;

            /* renamed from: f  reason: collision with root package name */
            private Any f45817f;

            /* renamed from: g  reason: collision with root package name */
            private q2<Any, Any.b, com.google.protobuf.f> f45818g;

            /* renamed from: h  reason: collision with root package name */
            private Timestamp f45819h;

            /* renamed from: i  reason: collision with root package name */
            private q2<Timestamp, Timestamp.b, z2> f45820i;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.f45907l.d(DynamicListenerState.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public DynamicListenerState build() {
                DynamicListenerState I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public DynamicListenerState I() {
                DynamicListenerState dynamicListenerState = new DynamicListenerState(this, (a) null);
                dynamicListenerState.versionInfo_ = this.f45816e;
                q2<Any, Any.b, com.google.protobuf.f> q2Var = this.f45818g;
                if (q2Var == null) {
                    dynamicListenerState.listener_ = this.f45817f;
                } else {
                    dynamicListenerState.listener_ = q2Var.b();
                }
                q2<Timestamp, Timestamp.b, z2> q2Var2 = this.f45820i;
                if (q2Var2 == null) {
                    dynamicListenerState.lastUpdated_ = this.f45819h;
                } else {
                    dynamicListenerState.lastUpdated_ = q2Var2.b();
                }
                Q();
                return dynamicListenerState;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public DynamicListenerState getDefaultInstanceForType() {
                return DynamicListenerState.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: d0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ListenersConfigDump.DynamicListenerState.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ListenersConfigDump.DynamicListenerState.access$1700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ListenersConfigDump$DynamicListenerState r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ListenersConfigDump.DynamicListenerState) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ListenersConfigDump$DynamicListenerState r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ListenersConfigDump.DynamicListenerState) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ListenersConfigDump.DynamicListenerState.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ListenersConfigDump$DynamicListenerState$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof DynamicListenerState) {
                    return g0((DynamicListenerState) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b g0(DynamicListenerState dynamicListenerState) {
                if (dynamicListenerState == DynamicListenerState.getDefaultInstance()) {
                    return this;
                }
                if (!dynamicListenerState.getVersionInfo().isEmpty()) {
                    this.f45816e = dynamicListenerState.versionInfo_;
                    R();
                }
                if (dynamicListenerState.hasListener()) {
                    i0(dynamicListenerState.getListener());
                }
                if (dynamicListenerState.hasLastUpdated()) {
                    h0(dynamicListenerState.getLastUpdated());
                }
                z(((GeneratedMessageV3) dynamicListenerState).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.f45906k;
            }

            public b h0(Timestamp timestamp) {
                q2<Timestamp, Timestamp.b, z2> q2Var = this.f45820i;
                if (q2Var == null) {
                    Timestamp timestamp2 = this.f45819h;
                    if (timestamp2 != null) {
                        this.f45819h = Timestamp.newBuilder(timestamp2).g0(timestamp).I();
                    } else {
                        this.f45819h = timestamp;
                    }
                    R();
                } else {
                    q2Var.e(timestamp);
                }
                return this;
            }

            public b i0(Any any) {
                q2<Any, Any.b, com.google.protobuf.f> q2Var = this.f45818g;
                if (q2Var == null) {
                    Any any2 = this.f45817f;
                    if (any2 != null) {
                        this.f45817f = Any.newBuilder(any2).d0(any).I();
                    } else {
                        this.f45817f = any;
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
                this.f45816e = "";
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f45816e = "";
                b0();
            }
        }

        /* synthetic */ DynamicListenerState(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static DynamicListenerState getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.f45906k;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static DynamicListenerState parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (DynamicListenerState) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static DynamicListenerState parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<DynamicListenerState> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof DynamicListenerState)) {
                return super.equals(obj);
            }
            DynamicListenerState dynamicListenerState = (DynamicListenerState) obj;
            if (getVersionInfo().equals(dynamicListenerState.getVersionInfo()) && hasListener() == dynamicListenerState.hasListener()) {
                if ((!hasListener() || getListener().equals(dynamicListenerState.getListener())) && hasLastUpdated() == dynamicListenerState.hasLastUpdated()) {
                    return (!hasLastUpdated() || getLastUpdated().equals(dynamicListenerState.getLastUpdated())) && this.unknownFields.equals(dynamicListenerState.unknownFields);
                }
                return false;
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

        public Any getListener() {
            Any any = this.listener_;
            return any == null ? Any.getDefaultInstance() : any;
        }

        public com.google.protobuf.f getListenerOrBuilder() {
            return getListener();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<DynamicListenerState> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int computeStringSize = GeneratedMessageV3.isStringEmpty(this.versionInfo_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.versionInfo_);
            if (this.listener_ != null) {
                computeStringSize += CodedOutputStream.G(2, getListener());
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

        public boolean hasLastUpdated() {
            return this.lastUpdated_ != null;
        }

        public boolean hasListener() {
            return this.listener_ != null;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getVersionInfo().hashCode();
            if (hasListener()) {
                hashCode = (((hashCode * 37) + 2) * 53) + getListener().hashCode();
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
            return io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.f45907l.d(DynamicListenerState.class, b.class);
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
            return new DynamicListenerState();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (!GeneratedMessageV3.isStringEmpty(this.versionInfo_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.versionInfo_);
            }
            if (this.listener_ != null) {
                codedOutputStream.L0(2, getListener());
            }
            if (this.lastUpdated_ != null) {
                codedOutputStream.L0(3, getLastUpdated());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ DynamicListenerState(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(DynamicListenerState dynamicListenerState) {
            return DEFAULT_INSTANCE.toBuilder().g0(dynamicListenerState);
        }

        public static DynamicListenerState parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private DynamicListenerState(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static DynamicListenerState parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (DynamicListenerState) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static DynamicListenerState parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public DynamicListenerState getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
        }

        public static DynamicListenerState parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private DynamicListenerState() {
            this.memoizedIsInitialized = (byte) -1;
            this.versionInfo_ = "";
        }

        public static DynamicListenerState parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static DynamicListenerState parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static DynamicListenerState parseFrom(InputStream inputStream) throws IOException {
            return (DynamicListenerState) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private DynamicListenerState(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                        Any any = this.listener_;
                                        Any.b builder = any != null ? any.toBuilder() : null;
                                        Any any2 = (Any) pVar.B(Any.parser(), f0Var);
                                        this.listener_ = any2;
                                        if (builder != null) {
                                            builder.d0(any2);
                                            this.listener_ = builder.I();
                                        }
                                    } else if (L != 26) {
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

        public static DynamicListenerState parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (DynamicListenerState) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static DynamicListenerState parseFrom(p pVar) throws IOException {
            return (DynamicListenerState) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static DynamicListenerState parseFrom(p pVar, f0 f0Var) throws IOException {
            return (DynamicListenerState) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes5.dex */
    public static final class StaticListener extends GeneratedMessageV3 implements e {
        public static final int LAST_UPDATED_FIELD_NUMBER = 2;
        public static final int LISTENER_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private Timestamp lastUpdated_;
        private Any listener_;
        private byte memoizedIsInitialized;
        private static final StaticListener DEFAULT_INSTANCE = new StaticListener();
        private static final e2<StaticListener> PARSER = new a();

        /* loaded from: classes5.dex */
        class a extends com.google.protobuf.c<StaticListener> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public StaticListener m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new StaticListener(pVar, f0Var, null);
            }
        }

        /* loaded from: classes5.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements e {

            /* renamed from: e  reason: collision with root package name */
            private Any f45821e;

            /* renamed from: f  reason: collision with root package name */
            private q2<Any, Any.b, com.google.protobuf.f> f45822f;

            /* renamed from: g  reason: collision with root package name */
            private Timestamp f45823g;

            /* renamed from: h  reason: collision with root package name */
            private q2<Timestamp, Timestamp.b, z2> f45824h;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.f45905j.d(StaticListener.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public StaticListener build() {
                StaticListener I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public StaticListener I() {
                StaticListener staticListener = new StaticListener(this, (a) null);
                q2<Any, Any.b, com.google.protobuf.f> q2Var = this.f45822f;
                if (q2Var == null) {
                    staticListener.listener_ = this.f45821e;
                } else {
                    staticListener.listener_ = q2Var.b();
                }
                q2<Timestamp, Timestamp.b, z2> q2Var2 = this.f45824h;
                if (q2Var2 == null) {
                    staticListener.lastUpdated_ = this.f45823g;
                } else {
                    staticListener.lastUpdated_ = q2Var2.b();
                }
                Q();
                return staticListener;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public StaticListener getDefaultInstanceForType() {
                return StaticListener.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: d0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ListenersConfigDump.StaticListener.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ListenersConfigDump.StaticListener.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ListenersConfigDump$StaticListener r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ListenersConfigDump.StaticListener) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ListenersConfigDump$StaticListener r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ListenersConfigDump.StaticListener) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ListenersConfigDump.StaticListener.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ListenersConfigDump$StaticListener$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof StaticListener) {
                    return g0((StaticListener) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b g0(StaticListener staticListener) {
                if (staticListener == StaticListener.getDefaultInstance()) {
                    return this;
                }
                if (staticListener.hasListener()) {
                    i0(staticListener.getListener());
                }
                if (staticListener.hasLastUpdated()) {
                    h0(staticListener.getLastUpdated());
                }
                z(((GeneratedMessageV3) staticListener).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.f45904i;
            }

            public b h0(Timestamp timestamp) {
                q2<Timestamp, Timestamp.b, z2> q2Var = this.f45824h;
                if (q2Var == null) {
                    Timestamp timestamp2 = this.f45823g;
                    if (timestamp2 != null) {
                        this.f45823g = Timestamp.newBuilder(timestamp2).g0(timestamp).I();
                    } else {
                        this.f45823g = timestamp;
                    }
                    R();
                } else {
                    q2Var.e(timestamp);
                }
                return this;
            }

            public b i0(Any any) {
                q2<Any, Any.b, com.google.protobuf.f> q2Var = this.f45822f;
                if (q2Var == null) {
                    Any any2 = this.f45821e;
                    if (any2 != null) {
                        this.f45821e = Any.newBuilder(any2).d0(any).I();
                    } else {
                        this.f45821e = any;
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

        /* synthetic */ StaticListener(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static StaticListener getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.f45904i;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static StaticListener parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (StaticListener) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static StaticListener parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<StaticListener> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof StaticListener)) {
                return super.equals(obj);
            }
            StaticListener staticListener = (StaticListener) obj;
            if (hasListener() != staticListener.hasListener()) {
                return false;
            }
            if ((!hasListener() || getListener().equals(staticListener.getListener())) && hasLastUpdated() == staticListener.hasLastUpdated()) {
                return (!hasLastUpdated() || getLastUpdated().equals(staticListener.getLastUpdated())) && this.unknownFields.equals(staticListener.unknownFields);
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

        public Any getListener() {
            Any any = this.listener_;
            return any == null ? Any.getDefaultInstance() : any;
        }

        public com.google.protobuf.f getListenerOrBuilder() {
            return getListener();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<StaticListener> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int G = this.listener_ != null ? 0 + CodedOutputStream.G(1, getListener()) : 0;
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

        public boolean hasListener() {
            return this.listener_ != null;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (hasListener()) {
                hashCode = (((hashCode * 37) + 1) * 53) + getListener().hashCode();
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
            return io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.f45905j.d(StaticListener.class, b.class);
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
            return new StaticListener();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (this.listener_ != null) {
                codedOutputStream.L0(1, getListener());
            }
            if (this.lastUpdated_ != null) {
                codedOutputStream.L0(2, getLastUpdated());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ StaticListener(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(StaticListener staticListener) {
            return DEFAULT_INSTANCE.toBuilder().g0(staticListener);
        }

        public static StaticListener parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private StaticListener(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static StaticListener parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (StaticListener) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static StaticListener parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public StaticListener getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
        }

        public static StaticListener parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private StaticListener() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static StaticListener parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static StaticListener parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        private StaticListener(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                Any any = this.listener_;
                                Any.b builder = any != null ? any.toBuilder() : null;
                                Any any2 = (Any) pVar.B(Any.parser(), f0Var);
                                this.listener_ = any2;
                                if (builder != null) {
                                    builder.d0(any2);
                                    this.listener_ = builder.I();
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

        public static StaticListener parseFrom(InputStream inputStream) throws IOException {
            return (StaticListener) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static StaticListener parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (StaticListener) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static StaticListener parseFrom(p pVar) throws IOException {
            return (StaticListener) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static StaticListener parseFrom(p pVar, f0 f0Var) throws IOException {
            return (StaticListener) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends com.google.protobuf.c<ListenersConfigDump> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public ListenersConfigDump m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new ListenersConfigDump(pVar, f0Var, null);
        }
    }

    /* loaded from: classes5.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.d {

        /* renamed from: e  reason: collision with root package name */
        private int f45825e;

        /* renamed from: f  reason: collision with root package name */
        private Object f45826f;

        /* renamed from: g  reason: collision with root package name */
        private List<StaticListener> f45827g;

        /* renamed from: h  reason: collision with root package name */
        private l2<StaticListener, StaticListener.b, e> f45828h;

        /* renamed from: i  reason: collision with root package name */
        private List<DynamicListener> f45829i;

        /* renamed from: j  reason: collision with root package name */
        private l2<DynamicListener, DynamicListener.b, c> f45830j;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f45825e & 2) == 0) {
                this.f45829i = new ArrayList(this.f45829i);
                this.f45825e |= 2;
            }
        }

        private void b0() {
            if ((this.f45825e & 1) == 0) {
                this.f45827g = new ArrayList(this.f45827g);
                this.f45825e |= 1;
            }
        }

        private l2<DynamicListener, DynamicListener.b, c> e0() {
            if (this.f45830j == null) {
                this.f45830j = new l2<>(this.f45829i, (this.f45825e & 2) != 0, H(), O());
                this.f45829i = null;
            }
            return this.f45830j;
        }

        private l2<StaticListener, StaticListener.b, e> g0() {
            if (this.f45828h == null) {
                this.f45828h = new l2<>(this.f45827g, (this.f45825e & 1) != 0, H(), O());
                this.f45827g = null;
            }
            return this.f45828h;
        }

        private void h0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                g0();
                e0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.f45903h.d(ListenersConfigDump.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public ListenersConfigDump build() {
            ListenersConfigDump I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public ListenersConfigDump I() {
            ListenersConfigDump listenersConfigDump = new ListenersConfigDump(this, (a) null);
            listenersConfigDump.versionInfo_ = this.f45826f;
            l2<StaticListener, StaticListener.b, e> l2Var = this.f45828h;
            if (l2Var == null) {
                if ((this.f45825e & 1) != 0) {
                    this.f45827g = Collections.unmodifiableList(this.f45827g);
                    this.f45825e &= -2;
                }
                listenersConfigDump.staticListeners_ = this.f45827g;
            } else {
                listenersConfigDump.staticListeners_ = l2Var.e();
            }
            l2<DynamicListener, DynamicListener.b, c> l2Var2 = this.f45830j;
            if (l2Var2 == null) {
                if ((this.f45825e & 2) != 0) {
                    this.f45829i = Collections.unmodifiableList(this.f45829i);
                    this.f45825e &= -3;
                }
                listenersConfigDump.dynamicListeners_ = this.f45829i;
            } else {
                listenersConfigDump.dynamicListeners_ = l2Var2.e();
            }
            Q();
            return listenersConfigDump;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: d0 */
        public ListenersConfigDump getDefaultInstanceForType() {
            return ListenersConfigDump.getDefaultInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.f45902g;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ListenersConfigDump.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ListenersConfigDump.access$4400()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ListenersConfigDump r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ListenersConfigDump) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ListenersConfigDump r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ListenersConfigDump) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ListenersConfigDump.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ListenersConfigDump$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: j0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof ListenersConfigDump) {
                return k0((ListenersConfigDump) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b k0(ListenersConfigDump listenersConfigDump) {
            if (listenersConfigDump == ListenersConfigDump.getDefaultInstance()) {
                return this;
            }
            if (!listenersConfigDump.getVersionInfo().isEmpty()) {
                this.f45826f = listenersConfigDump.versionInfo_;
                R();
            }
            if (this.f45828h == null) {
                if (!listenersConfigDump.staticListeners_.isEmpty()) {
                    if (this.f45827g.isEmpty()) {
                        this.f45827g = listenersConfigDump.staticListeners_;
                        this.f45825e &= -2;
                    } else {
                        b0();
                        this.f45827g.addAll(listenersConfigDump.staticListeners_);
                    }
                    R();
                }
            } else if (!listenersConfigDump.staticListeners_.isEmpty()) {
                if (this.f45828h.k()) {
                    this.f45828h.f();
                    this.f45828h = null;
                    this.f45827g = listenersConfigDump.staticListeners_;
                    this.f45825e &= -2;
                    this.f45828h = GeneratedMessageV3.alwaysUseFieldBuilders ? g0() : null;
                } else {
                    this.f45828h.b(listenersConfigDump.staticListeners_);
                }
            }
            if (this.f45830j == null) {
                if (!listenersConfigDump.dynamicListeners_.isEmpty()) {
                    if (this.f45829i.isEmpty()) {
                        this.f45829i = listenersConfigDump.dynamicListeners_;
                        this.f45825e &= -3;
                    } else {
                        a0();
                        this.f45829i.addAll(listenersConfigDump.dynamicListeners_);
                    }
                    R();
                }
            } else if (!listenersConfigDump.dynamicListeners_.isEmpty()) {
                if (this.f45830j.k()) {
                    this.f45830j.f();
                    this.f45830j = null;
                    this.f45829i = listenersConfigDump.dynamicListeners_;
                    this.f45825e &= -3;
                    this.f45830j = GeneratedMessageV3.alwaysUseFieldBuilders ? e0() : null;
                } else {
                    this.f45830j.b(listenersConfigDump.dynamicListeners_);
                }
            }
            z(((GeneratedMessageV3) listenersConfigDump).unknownFields);
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
            this.f45826f = "";
            this.f45827g = Collections.emptyList();
            this.f45829i = Collections.emptyList();
            h0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f45826f = "";
            this.f45827g = Collections.emptyList();
            this.f45829i = Collections.emptyList();
            h0();
        }
    }

    /* loaded from: classes5.dex */
    public interface c extends r1 {
    }

    /* loaded from: classes5.dex */
    public interface d extends r1 {
    }

    /* loaded from: classes5.dex */
    public interface e extends r1 {
    }

    /* synthetic */ ListenersConfigDump(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static ListenersConfigDump getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.f45902g;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static ListenersConfigDump parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (ListenersConfigDump) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static ListenersConfigDump parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<ListenersConfigDump> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ListenersConfigDump)) {
            return super.equals(obj);
        }
        ListenersConfigDump listenersConfigDump = (ListenersConfigDump) obj;
        return getVersionInfo().equals(listenersConfigDump.getVersionInfo()) && getStaticListenersList().equals(listenersConfigDump.getStaticListenersList()) && getDynamicListenersList().equals(listenersConfigDump.getDynamicListenersList()) && this.unknownFields.equals(listenersConfigDump.unknownFields);
    }

    public DynamicListener getDynamicListeners(int i9) {
        return this.dynamicListeners_.get(i9);
    }

    public int getDynamicListenersCount() {
        return this.dynamicListeners_.size();
    }

    public List<DynamicListener> getDynamicListenersList() {
        return this.dynamicListeners_;
    }

    public c getDynamicListenersOrBuilder(int i9) {
        return this.dynamicListeners_.get(i9);
    }

    public List<? extends c> getDynamicListenersOrBuilderList() {
        return this.dynamicListeners_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<ListenersConfigDump> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = !GeneratedMessageV3.isStringEmpty(this.versionInfo_) ? GeneratedMessageV3.computeStringSize(1, this.versionInfo_) + 0 : 0;
        for (int i10 = 0; i10 < this.staticListeners_.size(); i10++) {
            computeStringSize += CodedOutputStream.G(2, this.staticListeners_.get(i10));
        }
        for (int i11 = 0; i11 < this.dynamicListeners_.size(); i11++) {
            computeStringSize += CodedOutputStream.G(3, this.dynamicListeners_.get(i11));
        }
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public StaticListener getStaticListeners(int i9) {
        return this.staticListeners_.get(i9);
    }

    public int getStaticListenersCount() {
        return this.staticListeners_.size();
    }

    public List<StaticListener> getStaticListenersList() {
        return this.staticListeners_;
    }

    public e getStaticListenersOrBuilder(int i9) {
        return this.staticListeners_.get(i9);
    }

    public List<? extends e> getStaticListenersOrBuilderList() {
        return this.staticListeners_;
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
        if (getStaticListenersCount() > 0) {
            hashCode = (((hashCode * 37) + 2) * 53) + getStaticListenersList().hashCode();
        }
        if (getDynamicListenersCount() > 0) {
            hashCode = (((hashCode * 37) + 3) * 53) + getDynamicListenersList().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.f45903h.d(ListenersConfigDump.class, b.class);
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
        return new ListenersConfigDump();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.versionInfo_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.versionInfo_);
        }
        for (int i9 = 0; i9 < this.staticListeners_.size(); i9++) {
            codedOutputStream.L0(2, this.staticListeners_.get(i9));
        }
        for (int i10 = 0; i10 < this.dynamicListeners_.size(); i10++) {
            codedOutputStream.L0(3, this.dynamicListeners_.get(i10));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ ListenersConfigDump(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(ListenersConfigDump listenersConfigDump) {
        return DEFAULT_INSTANCE.toBuilder().k0(listenersConfigDump);
    }

    public static ListenersConfigDump parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private ListenersConfigDump(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static ListenersConfigDump parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ListenersConfigDump) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static ListenersConfigDump parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public ListenersConfigDump getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).k0(this);
    }

    public static ListenersConfigDump parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private ListenersConfigDump() {
        this.memoizedIsInitialized = (byte) -1;
        this.versionInfo_ = "";
        this.staticListeners_ = Collections.emptyList();
        this.dynamicListeners_ = Collections.emptyList();
    }

    public static ListenersConfigDump parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static ListenersConfigDump parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static ListenersConfigDump parseFrom(InputStream inputStream) throws IOException {
        return (ListenersConfigDump) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static ListenersConfigDump parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ListenersConfigDump) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    private ListenersConfigDump(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            this.versionInfo_ = pVar.K();
                        } else if (L == 18) {
                            if (!(z11 & true)) {
                                this.staticListeners_ = new ArrayList();
                                z11 |= true;
                            }
                            this.staticListeners_.add((StaticListener) pVar.B(StaticListener.parser(), f0Var));
                        } else if (L != 26) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            if (!(z11 & true)) {
                                this.dynamicListeners_ = new ArrayList();
                                z11 |= true;
                            }
                            this.dynamicListeners_.add((DynamicListener) pVar.B(DynamicListener.parser(), f0Var));
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
                    this.staticListeners_ = Collections.unmodifiableList(this.staticListeners_);
                }
                if (z11 & true) {
                    this.dynamicListeners_ = Collections.unmodifiableList(this.dynamicListeners_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static ListenersConfigDump parseFrom(p pVar) throws IOException {
        return (ListenersConfigDump) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static ListenersConfigDump parseFrom(p pVar, f0 f0Var) throws IOException {
        return (ListenersConfigDump) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
