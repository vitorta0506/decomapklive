package io.grpc.xds.shaded.io.envoyproxy.envoy.config.overload.v3;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.Duration;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.l2;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.v;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.overload.v3.BufferFactoryConfig;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.overload.v3.OverloadAction;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.overload.v3.ResourceMonitor;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class OverloadManager extends GeneratedMessageV3 implements c {
    public static final int ACTIONS_FIELD_NUMBER = 3;
    public static final int BUFFER_FACTORY_CONFIG_FIELD_NUMBER = 4;
    private static final OverloadManager DEFAULT_INSTANCE = new OverloadManager();
    private static final e2<OverloadManager> PARSER = new a();
    public static final int REFRESH_INTERVAL_FIELD_NUMBER = 1;
    public static final int RESOURCE_MONITORS_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private List<OverloadAction> actions_;
    private BufferFactoryConfig bufferFactoryConfig_;
    private byte memoizedIsInitialized;
    private Duration refreshInterval_;
    private List<ResourceMonitor> resourceMonitors_;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<OverloadManager> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public OverloadManager m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new OverloadManager(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements c {

        /* renamed from: e  reason: collision with root package name */
        private int f48937e;

        /* renamed from: f  reason: collision with root package name */
        private Duration f48938f;

        /* renamed from: g  reason: collision with root package name */
        private q2<Duration, Duration.b, v> f48939g;

        /* renamed from: h  reason: collision with root package name */
        private List<ResourceMonitor> f48940h;

        /* renamed from: i  reason: collision with root package name */
        private l2<ResourceMonitor, ResourceMonitor.c, e> f48941i;

        /* renamed from: j  reason: collision with root package name */
        private List<OverloadAction> f48942j;

        /* renamed from: k  reason: collision with root package name */
        private l2<OverloadAction, OverloadAction.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.overload.v3.b> f48943k;

        /* renamed from: l  reason: collision with root package name */
        private BufferFactoryConfig f48944l;

        /* renamed from: m  reason: collision with root package name */
        private q2<BufferFactoryConfig, BufferFactoryConfig.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.overload.v3.a> f48945m;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f48937e & 2) == 0) {
                this.f48942j = new ArrayList(this.f48942j);
                this.f48937e |= 2;
            }
        }

        private void b0() {
            if ((this.f48937e & 1) == 0) {
                this.f48940h = new ArrayList(this.f48940h);
                this.f48937e |= 1;
            }
        }

        private l2<OverloadAction, OverloadAction.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.overload.v3.b> d0() {
            if (this.f48943k == null) {
                this.f48943k = new l2<>(this.f48942j, (this.f48937e & 2) != 0, H(), O());
                this.f48942j = null;
            }
            return this.f48943k;
        }

        private l2<ResourceMonitor, ResourceMonitor.c, e> g0() {
            if (this.f48941i == null) {
                this.f48941i = new l2<>(this.f48940h, (this.f48937e & 1) != 0, H(), O());
                this.f48940h = null;
            }
            return this.f48941i;
        }

        private void h0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                g0();
                d0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return d.f48986r.d(OverloadManager.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public OverloadManager build() {
            OverloadManager I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public OverloadManager I() {
            OverloadManager overloadManager = new OverloadManager(this, (a) null);
            q2<Duration, Duration.b, v> q2Var = this.f48939g;
            if (q2Var == null) {
                overloadManager.refreshInterval_ = this.f48938f;
            } else {
                overloadManager.refreshInterval_ = q2Var.b();
            }
            l2<ResourceMonitor, ResourceMonitor.c, e> l2Var = this.f48941i;
            if (l2Var == null) {
                if ((this.f48937e & 1) != 0) {
                    this.f48940h = Collections.unmodifiableList(this.f48940h);
                    this.f48937e &= -2;
                }
                overloadManager.resourceMonitors_ = this.f48940h;
            } else {
                overloadManager.resourceMonitors_ = l2Var.e();
            }
            l2<OverloadAction, OverloadAction.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.overload.v3.b> l2Var2 = this.f48943k;
            if (l2Var2 == null) {
                if ((this.f48937e & 2) != 0) {
                    this.f48942j = Collections.unmodifiableList(this.f48942j);
                    this.f48937e &= -3;
                }
                overloadManager.actions_ = this.f48942j;
            } else {
                overloadManager.actions_ = l2Var2.e();
            }
            q2<BufferFactoryConfig, BufferFactoryConfig.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.overload.v3.a> q2Var2 = this.f48945m;
            if (q2Var2 == null) {
                overloadManager.bufferFactoryConfig_ = this.f48944l;
            } else {
                overloadManager.bufferFactoryConfig_ = q2Var2.b();
            }
            Q();
            return overloadManager;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: e0 */
        public OverloadManager getDefaultInstanceForType() {
            return OverloadManager.getDefaultInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return d.f48985q;
        }

        public b i0(BufferFactoryConfig bufferFactoryConfig) {
            q2<BufferFactoryConfig, BufferFactoryConfig.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.overload.v3.a> q2Var = this.f48945m;
            if (q2Var == null) {
                BufferFactoryConfig bufferFactoryConfig2 = this.f48944l;
                if (bufferFactoryConfig2 != null) {
                    this.f48944l = BufferFactoryConfig.newBuilder(bufferFactoryConfig2).g0(bufferFactoryConfig).I();
                } else {
                    this.f48944l = bufferFactoryConfig;
                }
                R();
            } else {
                q2Var.e(bufferFactoryConfig);
            }
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: j0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.overload.v3.OverloadManager.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.overload.v3.OverloadManager.access$1100()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.overload.v3.OverloadManager r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.overload.v3.OverloadManager) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.l0(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.overload.v3.OverloadManager r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.overload.v3.OverloadManager) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.l0(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.overload.v3.OverloadManager.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.overload.v3.OverloadManager$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: k0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof OverloadManager) {
                return l0((OverloadManager) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b l0(OverloadManager overloadManager) {
            if (overloadManager == OverloadManager.getDefaultInstance()) {
                return this;
            }
            if (overloadManager.hasRefreshInterval()) {
                m0(overloadManager.getRefreshInterval());
            }
            if (this.f48941i == null) {
                if (!overloadManager.resourceMonitors_.isEmpty()) {
                    if (this.f48940h.isEmpty()) {
                        this.f48940h = overloadManager.resourceMonitors_;
                        this.f48937e &= -2;
                    } else {
                        b0();
                        this.f48940h.addAll(overloadManager.resourceMonitors_);
                    }
                    R();
                }
            } else if (!overloadManager.resourceMonitors_.isEmpty()) {
                if (this.f48941i.k()) {
                    this.f48941i.f();
                    this.f48941i = null;
                    this.f48940h = overloadManager.resourceMonitors_;
                    this.f48937e &= -2;
                    this.f48941i = GeneratedMessageV3.alwaysUseFieldBuilders ? g0() : null;
                } else {
                    this.f48941i.b(overloadManager.resourceMonitors_);
                }
            }
            if (this.f48943k == null) {
                if (!overloadManager.actions_.isEmpty()) {
                    if (this.f48942j.isEmpty()) {
                        this.f48942j = overloadManager.actions_;
                        this.f48937e &= -3;
                    } else {
                        a0();
                        this.f48942j.addAll(overloadManager.actions_);
                    }
                    R();
                }
            } else if (!overloadManager.actions_.isEmpty()) {
                if (this.f48943k.k()) {
                    this.f48943k.f();
                    this.f48943k = null;
                    this.f48942j = overloadManager.actions_;
                    this.f48937e &= -3;
                    this.f48943k = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                } else {
                    this.f48943k.b(overloadManager.actions_);
                }
            }
            if (overloadManager.hasBufferFactoryConfig()) {
                i0(overloadManager.getBufferFactoryConfig());
            }
            z(((GeneratedMessageV3) overloadManager).unknownFields);
            R();
            return this;
        }

        public b m0(Duration duration) {
            q2<Duration, Duration.b, v> q2Var = this.f48939g;
            if (q2Var == null) {
                Duration duration2 = this.f48938f;
                if (duration2 != null) {
                    this.f48938f = Duration.newBuilder(duration2).e0(duration).I();
                } else {
                    this.f48938f = duration;
                }
                R();
            } else {
                q2Var.e(duration);
            }
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
            this.f48940h = Collections.emptyList();
            this.f48942j = Collections.emptyList();
            h0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f48940h = Collections.emptyList();
            this.f48942j = Collections.emptyList();
            h0();
        }
    }

    /* synthetic */ OverloadManager(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static OverloadManager getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return d.f48985q;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static OverloadManager parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (OverloadManager) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static OverloadManager parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<OverloadManager> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof OverloadManager)) {
            return super.equals(obj);
        }
        OverloadManager overloadManager = (OverloadManager) obj;
        if (hasRefreshInterval() != overloadManager.hasRefreshInterval()) {
            return false;
        }
        if ((!hasRefreshInterval() || getRefreshInterval().equals(overloadManager.getRefreshInterval())) && getResourceMonitorsList().equals(overloadManager.getResourceMonitorsList()) && getActionsList().equals(overloadManager.getActionsList()) && hasBufferFactoryConfig() == overloadManager.hasBufferFactoryConfig()) {
            return (!hasBufferFactoryConfig() || getBufferFactoryConfig().equals(overloadManager.getBufferFactoryConfig())) && this.unknownFields.equals(overloadManager.unknownFields);
        }
        return false;
    }

    public OverloadAction getActions(int i9) {
        return this.actions_.get(i9);
    }

    public int getActionsCount() {
        return this.actions_.size();
    }

    public List<OverloadAction> getActionsList() {
        return this.actions_;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.overload.v3.b getActionsOrBuilder(int i9) {
        return this.actions_.get(i9);
    }

    public List<? extends io.grpc.xds.shaded.io.envoyproxy.envoy.config.overload.v3.b> getActionsOrBuilderList() {
        return this.actions_;
    }

    public BufferFactoryConfig getBufferFactoryConfig() {
        BufferFactoryConfig bufferFactoryConfig = this.bufferFactoryConfig_;
        return bufferFactoryConfig == null ? BufferFactoryConfig.getDefaultInstance() : bufferFactoryConfig;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.overload.v3.a getBufferFactoryConfigOrBuilder() {
        return getBufferFactoryConfig();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<OverloadManager> getParserForType() {
        return PARSER;
    }

    public Duration getRefreshInterval() {
        Duration duration = this.refreshInterval_;
        return duration == null ? Duration.getDefaultInstance() : duration;
    }

    public v getRefreshIntervalOrBuilder() {
        return getRefreshInterval();
    }

    public ResourceMonitor getResourceMonitors(int i9) {
        return this.resourceMonitors_.get(i9);
    }

    public int getResourceMonitorsCount() {
        return this.resourceMonitors_.size();
    }

    public List<ResourceMonitor> getResourceMonitorsList() {
        return this.resourceMonitors_;
    }

    public e getResourceMonitorsOrBuilder(int i9) {
        return this.resourceMonitors_.get(i9);
    }

    public List<? extends e> getResourceMonitorsOrBuilderList() {
        return this.resourceMonitors_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.refreshInterval_ != null ? CodedOutputStream.G(1, getRefreshInterval()) + 0 : 0;
        for (int i10 = 0; i10 < this.resourceMonitors_.size(); i10++) {
            G += CodedOutputStream.G(2, this.resourceMonitors_.get(i10));
        }
        for (int i11 = 0; i11 < this.actions_.size(); i11++) {
            G += CodedOutputStream.G(3, this.actions_.get(i11));
        }
        if (this.bufferFactoryConfig_ != null) {
            G += CodedOutputStream.G(4, getBufferFactoryConfig());
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasBufferFactoryConfig() {
        return this.bufferFactoryConfig_ != null;
    }

    public boolean hasRefreshInterval() {
        return this.refreshInterval_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasRefreshInterval()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getRefreshInterval().hashCode();
        }
        if (getResourceMonitorsCount() > 0) {
            hashCode = (((hashCode * 37) + 2) * 53) + getResourceMonitorsList().hashCode();
        }
        if (getActionsCount() > 0) {
            hashCode = (((hashCode * 37) + 3) * 53) + getActionsList().hashCode();
        }
        if (hasBufferFactoryConfig()) {
            hashCode = (((hashCode * 37) + 4) * 53) + getBufferFactoryConfig().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return d.f48986r.d(OverloadManager.class, b.class);
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
        return new OverloadManager();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.refreshInterval_ != null) {
            codedOutputStream.L0(1, getRefreshInterval());
        }
        for (int i9 = 0; i9 < this.resourceMonitors_.size(); i9++) {
            codedOutputStream.L0(2, this.resourceMonitors_.get(i9));
        }
        for (int i10 = 0; i10 < this.actions_.size(); i10++) {
            codedOutputStream.L0(3, this.actions_.get(i10));
        }
        if (this.bufferFactoryConfig_ != null) {
            codedOutputStream.L0(4, getBufferFactoryConfig());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ OverloadManager(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(OverloadManager overloadManager) {
        return DEFAULT_INSTANCE.toBuilder().l0(overloadManager);
    }

    public static OverloadManager parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private OverloadManager(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static OverloadManager parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (OverloadManager) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static OverloadManager parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public OverloadManager getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).l0(this);
    }

    public static OverloadManager parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private OverloadManager() {
        this.memoizedIsInitialized = (byte) -1;
        this.resourceMonitors_ = Collections.emptyList();
        this.actions_ = Collections.emptyList();
    }

    public static OverloadManager parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static OverloadManager parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static OverloadManager parseFrom(InputStream inputStream) throws IOException {
        return (OverloadManager) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private OverloadManager(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                Duration duration = this.refreshInterval_;
                                Duration.b builder = duration != null ? duration.toBuilder() : null;
                                Duration duration2 = (Duration) pVar.B(Duration.parser(), f0Var);
                                this.refreshInterval_ = duration2;
                                if (builder != null) {
                                    builder.e0(duration2);
                                    this.refreshInterval_ = builder.I();
                                }
                            } else if (L == 18) {
                                if (!(z11 & true)) {
                                    this.resourceMonitors_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.resourceMonitors_.add((ResourceMonitor) pVar.B(ResourceMonitor.parser(), f0Var));
                            } else if (L == 26) {
                                if (!(z11 & true)) {
                                    this.actions_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.actions_.add((OverloadAction) pVar.B(OverloadAction.parser(), f0Var));
                            } else if (L != 34) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                BufferFactoryConfig bufferFactoryConfig = this.bufferFactoryConfig_;
                                BufferFactoryConfig.b builder2 = bufferFactoryConfig != null ? bufferFactoryConfig.toBuilder() : null;
                                BufferFactoryConfig bufferFactoryConfig2 = (BufferFactoryConfig) pVar.B(BufferFactoryConfig.parser(), f0Var);
                                this.bufferFactoryConfig_ = bufferFactoryConfig2;
                                if (builder2 != null) {
                                    builder2.g0(bufferFactoryConfig2);
                                    this.bufferFactoryConfig_ = builder2.I();
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
                    this.resourceMonitors_ = Collections.unmodifiableList(this.resourceMonitors_);
                }
                if (z11 & true) {
                    this.actions_ = Collections.unmodifiableList(this.actions_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static OverloadManager parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (OverloadManager) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static OverloadManager parseFrom(p pVar) throws IOException {
        return (OverloadManager) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static OverloadManager parseFrom(p pVar, f0 f0Var) throws IOException {
        return (OverloadManager) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
