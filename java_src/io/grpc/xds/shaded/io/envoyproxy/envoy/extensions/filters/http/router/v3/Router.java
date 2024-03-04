package io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.http.router.v3;

import com.google.protobuf.BoolValue;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.c;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.h3;
import com.google.protobuf.i2;
import com.google.protobuf.l;
import com.google.protobuf.l1;
import com.google.protobuf.l2;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import com.google.protobuf.u0;
import com.google.protobuf.y0;
import com.google.protobuf.z0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.AccessLog;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class Router extends GeneratedMessageV3 implements r1 {
    public static final int DYNAMIC_STATS_FIELD_NUMBER = 1;
    public static final int RESPECT_EXPECTED_RQ_TIMEOUT_FIELD_NUMBER = 6;
    public static final int START_CHILD_SPAN_FIELD_NUMBER = 2;
    public static final int STRICT_CHECK_HEADERS_FIELD_NUMBER = 5;
    public static final int SUPPRESS_ENVOY_HEADERS_FIELD_NUMBER = 4;
    public static final int SUPPRESS_GRPC_REQUEST_FAILURE_CODE_STATS_FIELD_NUMBER = 7;
    public static final int UPSTREAM_LOG_FIELD_NUMBER = 3;
    private static final long serialVersionUID = 0;
    private BoolValue dynamicStats_;
    private byte memoizedIsInitialized;
    private boolean respectExpectedRqTimeout_;
    private boolean startChildSpan_;
    private z0 strictCheckHeaders_;
    private boolean suppressEnvoyHeaders_;
    private boolean suppressGrpcRequestFailureCodeStats_;
    private List<AccessLog> upstreamLog_;
    private static final Router DEFAULT_INSTANCE = new Router();
    private static final e2<Router> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends c<Router> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public Router m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new Router(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private int f49740e;

        /* renamed from: f  reason: collision with root package name */
        private BoolValue f49741f;

        /* renamed from: g  reason: collision with root package name */
        private q2<BoolValue, BoolValue.b, l> f49742g;

        /* renamed from: h  reason: collision with root package name */
        private boolean f49743h;

        /* renamed from: i  reason: collision with root package name */
        private List<AccessLog> f49744i;

        /* renamed from: j  reason: collision with root package name */
        private l2<AccessLog, AccessLog.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.b> f49745j;

        /* renamed from: k  reason: collision with root package name */
        private boolean f49746k;

        /* renamed from: l  reason: collision with root package name */
        private z0 f49747l;

        /* renamed from: m  reason: collision with root package name */
        private boolean f49748m;

        /* renamed from: n  reason: collision with root package name */
        private boolean f49749n;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f49740e & 2) == 0) {
                this.f49747l = new y0(this.f49747l);
                this.f49740e |= 2;
            }
        }

        private void b0() {
            if ((this.f49740e & 1) == 0) {
                this.f49744i = new ArrayList(this.f49744i);
                this.f49740e |= 1;
            }
        }

        private l2<AccessLog, AccessLog.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.b> e0() {
            if (this.f49745j == null) {
                this.f49745j = new l2<>(this.f49744i, (this.f49740e & 1) != 0, H(), O());
                this.f49744i = null;
            }
            return this.f49745j;
        }

        private void g0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                e0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.http.router.v3.a.f49751b.d(Router.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public Router build() {
            Router I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public Router I() {
            Router router = new Router(this, (a) null);
            q2<BoolValue, BoolValue.b, l> q2Var = this.f49742g;
            if (q2Var == null) {
                router.dynamicStats_ = this.f49741f;
            } else {
                router.dynamicStats_ = q2Var.b();
            }
            router.startChildSpan_ = this.f49743h;
            l2<AccessLog, AccessLog.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.b> l2Var = this.f49745j;
            if (l2Var == null) {
                if ((this.f49740e & 1) != 0) {
                    this.f49744i = Collections.unmodifiableList(this.f49744i);
                    this.f49740e &= -2;
                }
                router.upstreamLog_ = this.f49744i;
            } else {
                router.upstreamLog_ = l2Var.e();
            }
            router.suppressEnvoyHeaders_ = this.f49746k;
            if ((this.f49740e & 2) != 0) {
                this.f49747l = this.f49747l.V0();
                this.f49740e &= -3;
            }
            router.strictCheckHeaders_ = this.f49747l;
            router.respectExpectedRqTimeout_ = this.f49748m;
            router.suppressGrpcRequestFailureCodeStats_ = this.f49749n;
            Q();
            return router;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: d0 */
        public Router getDefaultInstanceForType() {
            return Router.getDefaultInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.http.router.v3.a.f49750a;
        }

        public b h0(BoolValue boolValue) {
            q2<BoolValue, BoolValue.b, l> q2Var = this.f49742g;
            if (q2Var == null) {
                BoolValue boolValue2 = this.f49741f;
                if (boolValue2 != null) {
                    this.f49741f = BoolValue.newBuilder(boolValue2).d0(boolValue).I();
                } else {
                    this.f49741f = boolValue;
                }
                R();
            } else {
                q2Var.e(boolValue);
            }
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.http.router.v3.Router.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.http.router.v3.Router.access$1300()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.http.router.v3.Router r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.http.router.v3.Router) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.http.router.v3.Router r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.http.router.v3.Router) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.http.router.v3.Router.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.http.router.v3.Router$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: j0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof Router) {
                return k0((Router) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b k0(Router router) {
            if (router == Router.getDefaultInstance()) {
                return this;
            }
            if (router.hasDynamicStats()) {
                h0(router.getDynamicStats());
            }
            if (router.getStartChildSpan()) {
                o0(router.getStartChildSpan());
            }
            if (this.f49745j == null) {
                if (!router.upstreamLog_.isEmpty()) {
                    if (this.f49744i.isEmpty()) {
                        this.f49744i = router.upstreamLog_;
                        this.f49740e &= -2;
                    } else {
                        b0();
                        this.f49744i.addAll(router.upstreamLog_);
                    }
                    R();
                }
            } else if (!router.upstreamLog_.isEmpty()) {
                if (this.f49745j.k()) {
                    this.f49745j.f();
                    this.f49745j = null;
                    this.f49744i = router.upstreamLog_;
                    this.f49740e &= -2;
                    this.f49745j = GeneratedMessageV3.alwaysUseFieldBuilders ? e0() : null;
                } else {
                    this.f49745j.b(router.upstreamLog_);
                }
            }
            if (router.getSuppressEnvoyHeaders()) {
                q0(router.getSuppressEnvoyHeaders());
            }
            if (!router.strictCheckHeaders_.isEmpty()) {
                if (this.f49747l.isEmpty()) {
                    this.f49747l = router.strictCheckHeaders_;
                    this.f49740e &= -3;
                } else {
                    a0();
                    this.f49747l.addAll(router.strictCheckHeaders_);
                }
                R();
            }
            if (router.getRespectExpectedRqTimeout()) {
                n0(router.getRespectExpectedRqTimeout());
            }
            if (router.getSuppressGrpcRequestFailureCodeStats()) {
                r0(router.getSuppressGrpcRequestFailureCodeStats());
            }
            z(((GeneratedMessageV3) router).unknownFields);
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

        public b n0(boolean z10) {
            this.f49748m = z10;
            R();
            return this;
        }

        public b o0(boolean z10) {
            this.f49743h = z10;
            R();
            return this;
        }

        public b q0(boolean z10) {
            this.f49746k = z10;
            R();
            return this;
        }

        public b r0(boolean z10) {
            this.f49749n = z10;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: s0 */
        public final b f1(h3 h3Var) {
            return (b) super.f1(h3Var);
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            this.f49744i = Collections.emptyList();
            this.f49747l = y0.f15344d;
            g0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f49744i = Collections.emptyList();
            this.f49747l = y0.f15344d;
            g0();
        }
    }

    /* synthetic */ Router(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static Router getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.http.router.v3.a.f49750a;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Router parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Router) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Router parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<Router> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Router)) {
            return super.equals(obj);
        }
        Router router = (Router) obj;
        if (hasDynamicStats() != router.hasDynamicStats()) {
            return false;
        }
        return (!hasDynamicStats() || getDynamicStats().equals(router.getDynamicStats())) && getStartChildSpan() == router.getStartChildSpan() && getUpstreamLogList().equals(router.getUpstreamLogList()) && getSuppressEnvoyHeaders() == router.getSuppressEnvoyHeaders() && m1635getStrictCheckHeadersList().equals(router.m1635getStrictCheckHeadersList()) && getRespectExpectedRqTimeout() == router.getRespectExpectedRqTimeout() && getSuppressGrpcRequestFailureCodeStats() == router.getSuppressGrpcRequestFailureCodeStats() && this.unknownFields.equals(router.unknownFields);
    }

    public BoolValue getDynamicStats() {
        BoolValue boolValue = this.dynamicStats_;
        return boolValue == null ? BoolValue.getDefaultInstance() : boolValue;
    }

    public l getDynamicStatsOrBuilder() {
        return getDynamicStats();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<Router> getParserForType() {
        return PARSER;
    }

    public boolean getRespectExpectedRqTimeout() {
        return this.respectExpectedRqTimeout_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.dynamicStats_ != null ? CodedOutputStream.G(1, getDynamicStats()) + 0 : 0;
        boolean z10 = this.startChildSpan_;
        if (z10) {
            G += CodedOutputStream.e(2, z10);
        }
        for (int i10 = 0; i10 < this.upstreamLog_.size(); i10++) {
            G += CodedOutputStream.G(3, this.upstreamLog_.get(i10));
        }
        boolean z11 = this.suppressEnvoyHeaders_;
        if (z11) {
            G += CodedOutputStream.e(4, z11);
        }
        int i11 = 0;
        for (int i12 = 0; i12 < this.strictCheckHeaders_.size(); i12++) {
            i11 += GeneratedMessageV3.computeStringSizeNoTag(this.strictCheckHeaders_.c1(i12));
        }
        int size = G + i11 + (m1635getStrictCheckHeadersList().size() * 1);
        boolean z12 = this.respectExpectedRqTimeout_;
        if (z12) {
            size += CodedOutputStream.e(6, z12);
        }
        boolean z13 = this.suppressGrpcRequestFailureCodeStats_;
        if (z13) {
            size += CodedOutputStream.e(7, z13);
        }
        int serializedSize = size + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public boolean getStartChildSpan() {
        return this.startChildSpan_;
    }

    public String getStrictCheckHeaders(int i9) {
        return this.strictCheckHeaders_.get(i9);
    }

    public ByteString getStrictCheckHeadersBytes(int i9) {
        return this.strictCheckHeaders_.j0(i9);
    }

    public int getStrictCheckHeadersCount() {
        return this.strictCheckHeaders_.size();
    }

    public boolean getSuppressEnvoyHeaders() {
        return this.suppressEnvoyHeaders_;
    }

    public boolean getSuppressGrpcRequestFailureCodeStats() {
        return this.suppressGrpcRequestFailureCodeStats_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public AccessLog getUpstreamLog(int i9) {
        return this.upstreamLog_.get(i9);
    }

    public int getUpstreamLogCount() {
        return this.upstreamLog_.size();
    }

    public List<AccessLog> getUpstreamLogList() {
        return this.upstreamLog_;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.b getUpstreamLogOrBuilder(int i9) {
        return this.upstreamLog_.get(i9);
    }

    public List<? extends io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.b> getUpstreamLogOrBuilderList() {
        return this.upstreamLog_;
    }

    public boolean hasDynamicStats() {
        return this.dynamicStats_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasDynamicStats()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getDynamicStats().hashCode();
        }
        int d10 = (((hashCode * 37) + 2) * 53) + u0.d(getStartChildSpan());
        if (getUpstreamLogCount() > 0) {
            d10 = (((d10 * 37) + 3) * 53) + getUpstreamLogList().hashCode();
        }
        int d11 = (((d10 * 37) + 4) * 53) + u0.d(getSuppressEnvoyHeaders());
        if (getStrictCheckHeadersCount() > 0) {
            d11 = (((d11 * 37) + 5) * 53) + m1635getStrictCheckHeadersList().hashCode();
        }
        int d12 = (((((((((d11 * 37) + 6) * 53) + u0.d(getRespectExpectedRqTimeout())) * 37) + 7) * 53) + u0.d(getSuppressGrpcRequestFailureCodeStats())) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = d12;
        return d12;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.http.router.v3.a.f49751b.d(Router.class, b.class);
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
        return new Router();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.dynamicStats_ != null) {
            codedOutputStream.L0(1, getDynamicStats());
        }
        boolean z10 = this.startChildSpan_;
        if (z10) {
            codedOutputStream.n0(2, z10);
        }
        for (int i9 = 0; i9 < this.upstreamLog_.size(); i9++) {
            codedOutputStream.L0(3, this.upstreamLog_.get(i9));
        }
        boolean z11 = this.suppressEnvoyHeaders_;
        if (z11) {
            codedOutputStream.n0(4, z11);
        }
        for (int i10 = 0; i10 < this.strictCheckHeaders_.size(); i10++) {
            GeneratedMessageV3.writeString(codedOutputStream, 5, this.strictCheckHeaders_.c1(i10));
        }
        boolean z12 = this.respectExpectedRqTimeout_;
        if (z12) {
            codedOutputStream.n0(6, z12);
        }
        boolean z13 = this.suppressGrpcRequestFailureCodeStats_;
        if (z13) {
            codedOutputStream.n0(7, z13);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ Router(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(Router router) {
        return DEFAULT_INSTANCE.toBuilder().k0(router);
    }

    public static Router parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    /* renamed from: getStrictCheckHeadersList */
    public i2 m1635getStrictCheckHeadersList() {
        return this.strictCheckHeaders_;
    }

    private Router(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Router parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Router) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static Router parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public Router getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).k0(this);
    }

    public static Router parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private Router() {
        this.memoizedIsInitialized = (byte) -1;
        this.upstreamLog_ = Collections.emptyList();
        this.strictCheckHeaders_ = y0.f15344d;
    }

    public static Router parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static Router parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static Router parseFrom(InputStream inputStream) throws IOException {
        return (Router) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private Router(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            BoolValue boolValue = this.dynamicStats_;
                            BoolValue.b builder = boolValue != null ? boolValue.toBuilder() : null;
                            BoolValue boolValue2 = (BoolValue) pVar.B(BoolValue.parser(), f0Var);
                            this.dynamicStats_ = boolValue2;
                            if (builder != null) {
                                builder.d0(boolValue2);
                                this.dynamicStats_ = builder.I();
                            }
                        } else if (L == 16) {
                            this.startChildSpan_ = pVar.r();
                        } else if (L == 26) {
                            if (!(z11 & true)) {
                                this.upstreamLog_ = new ArrayList();
                                z11 |= true;
                            }
                            this.upstreamLog_.add((AccessLog) pVar.B(AccessLog.parser(), f0Var));
                        } else if (L == 32) {
                            this.suppressEnvoyHeaders_ = pVar.r();
                        } else if (L == 42) {
                            String K = pVar.K();
                            if (!(z11 & true)) {
                                this.strictCheckHeaders_ = new y0();
                                z11 |= true;
                            }
                            this.strictCheckHeaders_.add(K);
                        } else if (L == 48) {
                            this.respectExpectedRqTimeout_ = pVar.r();
                        } else if (L != 56) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            this.suppressGrpcRequestFailureCodeStats_ = pVar.r();
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
                    this.upstreamLog_ = Collections.unmodifiableList(this.upstreamLog_);
                }
                if (z11 & true) {
                    this.strictCheckHeaders_ = this.strictCheckHeaders_.V0();
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static Router parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Router) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static Router parseFrom(p pVar) throws IOException {
        return (Router) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static Router parseFrom(p pVar, f0 f0Var) throws IOException {
        return (Router) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
