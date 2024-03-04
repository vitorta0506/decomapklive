package io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.http.fault.v2;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.UInt32Value;
import com.google.protobuf.a;
import com.google.protobuf.c;
import com.google.protobuf.e2;
import com.google.protobuf.e3;
import com.google.protobuf.f0;
import com.google.protobuf.h3;
import com.google.protobuf.i2;
import com.google.protobuf.l1;
import com.google.protobuf.l2;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import com.google.protobuf.y0;
import com.google.protobuf.z0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.HeaderMatcher;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.e;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.fault.v2.FaultDelay;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.fault.v2.FaultRateLimit;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.http.fault.v2.FaultAbort;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class HTTPFault extends GeneratedMessageV3 implements r1 {
    public static final int ABORT_FIELD_NUMBER = 2;
    public static final int ABORT_HTTP_STATUS_RUNTIME_FIELD_NUMBER = 11;
    public static final int ABORT_PERCENT_RUNTIME_FIELD_NUMBER = 9;
    public static final int DELAY_DURATION_RUNTIME_FIELD_NUMBER = 10;
    public static final int DELAY_FIELD_NUMBER = 1;
    public static final int DELAY_PERCENT_RUNTIME_FIELD_NUMBER = 8;
    public static final int DOWNSTREAM_NODES_FIELD_NUMBER = 5;
    public static final int HEADERS_FIELD_NUMBER = 4;
    public static final int MAX_ACTIVE_FAULTS_FIELD_NUMBER = 6;
    public static final int MAX_ACTIVE_FAULTS_RUNTIME_FIELD_NUMBER = 12;
    public static final int RESPONSE_RATE_LIMIT_FIELD_NUMBER = 7;
    public static final int RESPONSE_RATE_LIMIT_PERCENT_RUNTIME_FIELD_NUMBER = 13;
    public static final int UPSTREAM_CLUSTER_FIELD_NUMBER = 3;
    private static final long serialVersionUID = 0;
    private volatile Object abortHttpStatusRuntime_;
    private volatile Object abortPercentRuntime_;
    private FaultAbort abort_;
    private volatile Object delayDurationRuntime_;
    private volatile Object delayPercentRuntime_;
    private FaultDelay delay_;
    private z0 downstreamNodes_;
    private List<HeaderMatcher> headers_;
    private volatile Object maxActiveFaultsRuntime_;
    private UInt32Value maxActiveFaults_;
    private byte memoizedIsInitialized;
    private volatile Object responseRateLimitPercentRuntime_;
    private FaultRateLimit responseRateLimit_;
    private volatile Object upstreamCluster_;
    private static final HTTPFault DEFAULT_INSTANCE = new HTTPFault();
    private static final e2<HTTPFault> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends c<HTTPFault> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public HTTPFault m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new HTTPFault(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private int f48558e;

        /* renamed from: f  reason: collision with root package name */
        private FaultDelay f48559f;

        /* renamed from: g  reason: collision with root package name */
        private q2<FaultDelay, FaultDelay.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.fault.v2.a> f48560g;

        /* renamed from: h  reason: collision with root package name */
        private FaultAbort f48561h;

        /* renamed from: i  reason: collision with root package name */
        private q2<FaultAbort, FaultAbort.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.http.fault.v2.a> f48562i;

        /* renamed from: j  reason: collision with root package name */
        private Object f48563j;

        /* renamed from: k  reason: collision with root package name */
        private List<HeaderMatcher> f48564k;

        /* renamed from: l  reason: collision with root package name */
        private l2<HeaderMatcher, HeaderMatcher.c, e> f48565l;

        /* renamed from: m  reason: collision with root package name */
        private z0 f48566m;

        /* renamed from: n  reason: collision with root package name */
        private UInt32Value f48567n;

        /* renamed from: o  reason: collision with root package name */
        private q2<UInt32Value, UInt32Value.b, e3> f48568o;

        /* renamed from: p  reason: collision with root package name */
        private FaultRateLimit f48569p;

        /* renamed from: q  reason: collision with root package name */
        private q2<FaultRateLimit, FaultRateLimit.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.fault.v2.c> f48570q;

        /* renamed from: r  reason: collision with root package name */
        private Object f48571r;

        /* renamed from: s  reason: collision with root package name */
        private Object f48572s;

        /* renamed from: t  reason: collision with root package name */
        private Object f48573t;

        /* renamed from: u  reason: collision with root package name */
        private Object f48574u;

        /* renamed from: v  reason: collision with root package name */
        private Object f48575v;

        /* renamed from: w  reason: collision with root package name */
        private Object f48576w;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f48558e & 2) == 0) {
                this.f48566m = new y0(this.f48566m);
                this.f48558e |= 2;
            }
        }

        private void b0() {
            if ((this.f48558e & 1) == 0) {
                this.f48564k = new ArrayList(this.f48564k);
                this.f48558e |= 1;
            }
        }

        private l2<HeaderMatcher, HeaderMatcher.c, e> e0() {
            if (this.f48565l == null) {
                this.f48565l = new l2<>(this.f48564k, (this.f48558e & 1) != 0, H(), O());
                this.f48564k = null;
            }
            return this.f48565l;
        }

        private void g0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                e0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.http.fault.v2.b.f48582f.d(HTTPFault.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public HTTPFault build() {
            HTTPFault I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public HTTPFault I() {
            HTTPFault hTTPFault = new HTTPFault(this, (a) null);
            q2<FaultDelay, FaultDelay.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.fault.v2.a> q2Var = this.f48560g;
            if (q2Var == null) {
                hTTPFault.delay_ = this.f48559f;
            } else {
                hTTPFault.delay_ = q2Var.b();
            }
            q2<FaultAbort, FaultAbort.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.http.fault.v2.a> q2Var2 = this.f48562i;
            if (q2Var2 == null) {
                hTTPFault.abort_ = this.f48561h;
            } else {
                hTTPFault.abort_ = q2Var2.b();
            }
            hTTPFault.upstreamCluster_ = this.f48563j;
            l2<HeaderMatcher, HeaderMatcher.c, e> l2Var = this.f48565l;
            if (l2Var == null) {
                if ((this.f48558e & 1) != 0) {
                    this.f48564k = Collections.unmodifiableList(this.f48564k);
                    this.f48558e &= -2;
                }
                hTTPFault.headers_ = this.f48564k;
            } else {
                hTTPFault.headers_ = l2Var.e();
            }
            if ((this.f48558e & 2) != 0) {
                this.f48566m = this.f48566m.V0();
                this.f48558e &= -3;
            }
            hTTPFault.downstreamNodes_ = this.f48566m;
            q2<UInt32Value, UInt32Value.b, e3> q2Var3 = this.f48568o;
            if (q2Var3 == null) {
                hTTPFault.maxActiveFaults_ = this.f48567n;
            } else {
                hTTPFault.maxActiveFaults_ = q2Var3.b();
            }
            q2<FaultRateLimit, FaultRateLimit.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.fault.v2.c> q2Var4 = this.f48570q;
            if (q2Var4 == null) {
                hTTPFault.responseRateLimit_ = this.f48569p;
            } else {
                hTTPFault.responseRateLimit_ = q2Var4.b();
            }
            hTTPFault.delayPercentRuntime_ = this.f48571r;
            hTTPFault.abortPercentRuntime_ = this.f48572s;
            hTTPFault.delayDurationRuntime_ = this.f48573t;
            hTTPFault.abortHttpStatusRuntime_ = this.f48574u;
            hTTPFault.maxActiveFaultsRuntime_ = this.f48575v;
            hTTPFault.responseRateLimitPercentRuntime_ = this.f48576w;
            Q();
            return hTTPFault;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: d0 */
        public HTTPFault getDefaultInstanceForType() {
            return HTTPFault.getDefaultInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.http.fault.v2.b.f48581e;
        }

        public b h0(FaultAbort faultAbort) {
            q2<FaultAbort, FaultAbort.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.http.fault.v2.a> q2Var = this.f48562i;
            if (q2Var == null) {
                FaultAbort faultAbort2 = this.f48561h;
                if (faultAbort2 != null) {
                    this.f48561h = FaultAbort.newBuilder(faultAbort2).g0(faultAbort).I();
                } else {
                    this.f48561h = faultAbort;
                }
                R();
            } else {
                q2Var.e(faultAbort);
            }
            return this;
        }

        public b i0(FaultDelay faultDelay) {
            q2<FaultDelay, FaultDelay.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.fault.v2.a> q2Var = this.f48560g;
            if (q2Var == null) {
                FaultDelay faultDelay2 = this.f48559f;
                if (faultDelay2 != null) {
                    this.f48559f = FaultDelay.newBuilder(faultDelay2).h0(faultDelay).I();
                } else {
                    this.f48559f = faultDelay;
                }
                R();
            } else {
                q2Var.e(faultDelay);
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
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.http.fault.v2.HTTPFault.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.http.fault.v2.HTTPFault.access$1900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.http.fault.v2.HTTPFault r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.http.fault.v2.HTTPFault) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.http.fault.v2.HTTPFault r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.http.fault.v2.HTTPFault) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.http.fault.v2.HTTPFault.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.http.fault.v2.HTTPFault$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: k0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof HTTPFault) {
                return l0((HTTPFault) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b l0(HTTPFault hTTPFault) {
            if (hTTPFault == HTTPFault.getDefaultInstance()) {
                return this;
            }
            if (hTTPFault.hasDelay()) {
                i0(hTTPFault.getDelay());
            }
            if (hTTPFault.hasAbort()) {
                h0(hTTPFault.getAbort());
            }
            if (!hTTPFault.getUpstreamCluster().isEmpty()) {
                this.f48563j = hTTPFault.upstreamCluster_;
                R();
            }
            if (this.f48565l == null) {
                if (!hTTPFault.headers_.isEmpty()) {
                    if (this.f48564k.isEmpty()) {
                        this.f48564k = hTTPFault.headers_;
                        this.f48558e &= -2;
                    } else {
                        b0();
                        this.f48564k.addAll(hTTPFault.headers_);
                    }
                    R();
                }
            } else if (!hTTPFault.headers_.isEmpty()) {
                if (this.f48565l.k()) {
                    this.f48565l.f();
                    this.f48565l = null;
                    this.f48564k = hTTPFault.headers_;
                    this.f48558e &= -2;
                    this.f48565l = GeneratedMessageV3.alwaysUseFieldBuilders ? e0() : null;
                } else {
                    this.f48565l.b(hTTPFault.headers_);
                }
            }
            if (!hTTPFault.downstreamNodes_.isEmpty()) {
                if (this.f48566m.isEmpty()) {
                    this.f48566m = hTTPFault.downstreamNodes_;
                    this.f48558e &= -3;
                } else {
                    a0();
                    this.f48566m.addAll(hTTPFault.downstreamNodes_);
                }
                R();
            }
            if (hTTPFault.hasMaxActiveFaults()) {
                m0(hTTPFault.getMaxActiveFaults());
            }
            if (hTTPFault.hasResponseRateLimit()) {
                n0(hTTPFault.getResponseRateLimit());
            }
            if (!hTTPFault.getDelayPercentRuntime().isEmpty()) {
                this.f48571r = hTTPFault.delayPercentRuntime_;
                R();
            }
            if (!hTTPFault.getAbortPercentRuntime().isEmpty()) {
                this.f48572s = hTTPFault.abortPercentRuntime_;
                R();
            }
            if (!hTTPFault.getDelayDurationRuntime().isEmpty()) {
                this.f48573t = hTTPFault.delayDurationRuntime_;
                R();
            }
            if (!hTTPFault.getAbortHttpStatusRuntime().isEmpty()) {
                this.f48574u = hTTPFault.abortHttpStatusRuntime_;
                R();
            }
            if (!hTTPFault.getMaxActiveFaultsRuntime().isEmpty()) {
                this.f48575v = hTTPFault.maxActiveFaultsRuntime_;
                R();
            }
            if (!hTTPFault.getResponseRateLimitPercentRuntime().isEmpty()) {
                this.f48576w = hTTPFault.responseRateLimitPercentRuntime_;
                R();
            }
            z(((GeneratedMessageV3) hTTPFault).unknownFields);
            R();
            return this;
        }

        public b m0(UInt32Value uInt32Value) {
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f48568o;
            if (q2Var == null) {
                UInt32Value uInt32Value2 = this.f48567n;
                if (uInt32Value2 != null) {
                    this.f48567n = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                } else {
                    this.f48567n = uInt32Value;
                }
                R();
            } else {
                q2Var.e(uInt32Value);
            }
            return this;
        }

        public b n0(FaultRateLimit faultRateLimit) {
            q2<FaultRateLimit, FaultRateLimit.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.fault.v2.c> q2Var = this.f48570q;
            if (q2Var == null) {
                FaultRateLimit faultRateLimit2 = this.f48569p;
                if (faultRateLimit2 != null) {
                    this.f48569p = FaultRateLimit.newBuilder(faultRateLimit2).h0(faultRateLimit).I();
                } else {
                    this.f48569p = faultRateLimit;
                }
                R();
            } else {
                q2Var.e(faultRateLimit);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: o0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: q0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: r0 */
        public final b f1(h3 h3Var) {
            return (b) super.f1(h3Var);
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            this.f48563j = "";
            this.f48564k = Collections.emptyList();
            this.f48566m = y0.f15344d;
            this.f48571r = "";
            this.f48572s = "";
            this.f48573t = "";
            this.f48574u = "";
            this.f48575v = "";
            this.f48576w = "";
            g0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f48563j = "";
            this.f48564k = Collections.emptyList();
            this.f48566m = y0.f15344d;
            this.f48571r = "";
            this.f48572s = "";
            this.f48573t = "";
            this.f48574u = "";
            this.f48575v = "";
            this.f48576w = "";
            g0();
        }
    }

    /* synthetic */ HTTPFault(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static HTTPFault getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.http.fault.v2.b.f48581e;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static HTTPFault parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (HTTPFault) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static HTTPFault parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<HTTPFault> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof HTTPFault)) {
            return super.equals(obj);
        }
        HTTPFault hTTPFault = (HTTPFault) obj;
        if (hasDelay() != hTTPFault.hasDelay()) {
            return false;
        }
        if ((!hasDelay() || getDelay().equals(hTTPFault.getDelay())) && hasAbort() == hTTPFault.hasAbort()) {
            if ((!hasAbort() || getAbort().equals(hTTPFault.getAbort())) && getUpstreamCluster().equals(hTTPFault.getUpstreamCluster()) && getHeadersList().equals(hTTPFault.getHeadersList()) && m1618getDownstreamNodesList().equals(hTTPFault.m1618getDownstreamNodesList()) && hasMaxActiveFaults() == hTTPFault.hasMaxActiveFaults()) {
                if ((!hasMaxActiveFaults() || getMaxActiveFaults().equals(hTTPFault.getMaxActiveFaults())) && hasResponseRateLimit() == hTTPFault.hasResponseRateLimit()) {
                    return (!hasResponseRateLimit() || getResponseRateLimit().equals(hTTPFault.getResponseRateLimit())) && getDelayPercentRuntime().equals(hTTPFault.getDelayPercentRuntime()) && getAbortPercentRuntime().equals(hTTPFault.getAbortPercentRuntime()) && getDelayDurationRuntime().equals(hTTPFault.getDelayDurationRuntime()) && getAbortHttpStatusRuntime().equals(hTTPFault.getAbortHttpStatusRuntime()) && getMaxActiveFaultsRuntime().equals(hTTPFault.getMaxActiveFaultsRuntime()) && getResponseRateLimitPercentRuntime().equals(hTTPFault.getResponseRateLimitPercentRuntime()) && this.unknownFields.equals(hTTPFault.unknownFields);
                }
                return false;
            }
            return false;
        }
        return false;
    }

    public FaultAbort getAbort() {
        FaultAbort faultAbort = this.abort_;
        return faultAbort == null ? FaultAbort.getDefaultInstance() : faultAbort;
    }

    public String getAbortHttpStatusRuntime() {
        Object obj = this.abortHttpStatusRuntime_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.abortHttpStatusRuntime_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getAbortHttpStatusRuntimeBytes() {
        Object obj = this.abortHttpStatusRuntime_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.abortHttpStatusRuntime_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.http.fault.v2.a getAbortOrBuilder() {
        return getAbort();
    }

    public String getAbortPercentRuntime() {
        Object obj = this.abortPercentRuntime_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.abortPercentRuntime_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getAbortPercentRuntimeBytes() {
        Object obj = this.abortPercentRuntime_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.abortPercentRuntime_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public FaultDelay getDelay() {
        FaultDelay faultDelay = this.delay_;
        return faultDelay == null ? FaultDelay.getDefaultInstance() : faultDelay;
    }

    public String getDelayDurationRuntime() {
        Object obj = this.delayDurationRuntime_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.delayDurationRuntime_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getDelayDurationRuntimeBytes() {
        Object obj = this.delayDurationRuntime_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.delayDurationRuntime_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.fault.v2.a getDelayOrBuilder() {
        return getDelay();
    }

    public String getDelayPercentRuntime() {
        Object obj = this.delayPercentRuntime_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.delayPercentRuntime_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getDelayPercentRuntimeBytes() {
        Object obj = this.delayPercentRuntime_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.delayPercentRuntime_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public String getDownstreamNodes(int i9) {
        return this.downstreamNodes_.get(i9);
    }

    public ByteString getDownstreamNodesBytes(int i9) {
        return this.downstreamNodes_.j0(i9);
    }

    public int getDownstreamNodesCount() {
        return this.downstreamNodes_.size();
    }

    public HeaderMatcher getHeaders(int i9) {
        return this.headers_.get(i9);
    }

    public int getHeadersCount() {
        return this.headers_.size();
    }

    public List<HeaderMatcher> getHeadersList() {
        return this.headers_;
    }

    public e getHeadersOrBuilder(int i9) {
        return this.headers_.get(i9);
    }

    public List<? extends e> getHeadersOrBuilderList() {
        return this.headers_;
    }

    public UInt32Value getMaxActiveFaults() {
        UInt32Value uInt32Value = this.maxActiveFaults_;
        return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
    }

    public e3 getMaxActiveFaultsOrBuilder() {
        return getMaxActiveFaults();
    }

    public String getMaxActiveFaultsRuntime() {
        Object obj = this.maxActiveFaultsRuntime_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.maxActiveFaultsRuntime_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getMaxActiveFaultsRuntimeBytes() {
        Object obj = this.maxActiveFaultsRuntime_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.maxActiveFaultsRuntime_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<HTTPFault> getParserForType() {
        return PARSER;
    }

    public FaultRateLimit getResponseRateLimit() {
        FaultRateLimit faultRateLimit = this.responseRateLimit_;
        return faultRateLimit == null ? FaultRateLimit.getDefaultInstance() : faultRateLimit;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.fault.v2.c getResponseRateLimitOrBuilder() {
        return getResponseRateLimit();
    }

    public String getResponseRateLimitPercentRuntime() {
        Object obj = this.responseRateLimitPercentRuntime_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.responseRateLimitPercentRuntime_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getResponseRateLimitPercentRuntimeBytes() {
        Object obj = this.responseRateLimitPercentRuntime_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.responseRateLimitPercentRuntime_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.delay_ != null ? CodedOutputStream.G(1, getDelay()) + 0 : 0;
        if (this.abort_ != null) {
            G += CodedOutputStream.G(2, getAbort());
        }
        if (!GeneratedMessageV3.isStringEmpty(this.upstreamCluster_)) {
            G += GeneratedMessageV3.computeStringSize(3, this.upstreamCluster_);
        }
        for (int i10 = 0; i10 < this.headers_.size(); i10++) {
            G += CodedOutputStream.G(4, this.headers_.get(i10));
        }
        int i11 = 0;
        for (int i12 = 0; i12 < this.downstreamNodes_.size(); i12++) {
            i11 += GeneratedMessageV3.computeStringSizeNoTag(this.downstreamNodes_.c1(i12));
        }
        int size = G + i11 + (m1618getDownstreamNodesList().size() * 1);
        if (this.maxActiveFaults_ != null) {
            size += CodedOutputStream.G(6, getMaxActiveFaults());
        }
        if (this.responseRateLimit_ != null) {
            size += CodedOutputStream.G(7, getResponseRateLimit());
        }
        if (!GeneratedMessageV3.isStringEmpty(this.delayPercentRuntime_)) {
            size += GeneratedMessageV3.computeStringSize(8, this.delayPercentRuntime_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.abortPercentRuntime_)) {
            size += GeneratedMessageV3.computeStringSize(9, this.abortPercentRuntime_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.delayDurationRuntime_)) {
            size += GeneratedMessageV3.computeStringSize(10, this.delayDurationRuntime_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.abortHttpStatusRuntime_)) {
            size += GeneratedMessageV3.computeStringSize(11, this.abortHttpStatusRuntime_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.maxActiveFaultsRuntime_)) {
            size += GeneratedMessageV3.computeStringSize(12, this.maxActiveFaultsRuntime_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.responseRateLimitPercentRuntime_)) {
            size += GeneratedMessageV3.computeStringSize(13, this.responseRateLimitPercentRuntime_);
        }
        int serializedSize = size + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public String getUpstreamCluster() {
        Object obj = this.upstreamCluster_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.upstreamCluster_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getUpstreamClusterBytes() {
        Object obj = this.upstreamCluster_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.upstreamCluster_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public boolean hasAbort() {
        return this.abort_ != null;
    }

    public boolean hasDelay() {
        return this.delay_ != null;
    }

    public boolean hasMaxActiveFaults() {
        return this.maxActiveFaults_ != null;
    }

    public boolean hasResponseRateLimit() {
        return this.responseRateLimit_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasDelay()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getDelay().hashCode();
        }
        if (hasAbort()) {
            hashCode = (((hashCode * 37) + 2) * 53) + getAbort().hashCode();
        }
        int hashCode2 = (((hashCode * 37) + 3) * 53) + getUpstreamCluster().hashCode();
        if (getHeadersCount() > 0) {
            hashCode2 = (((hashCode2 * 37) + 4) * 53) + getHeadersList().hashCode();
        }
        if (getDownstreamNodesCount() > 0) {
            hashCode2 = (((hashCode2 * 37) + 5) * 53) + m1618getDownstreamNodesList().hashCode();
        }
        if (hasMaxActiveFaults()) {
            hashCode2 = (((hashCode2 * 37) + 6) * 53) + getMaxActiveFaults().hashCode();
        }
        if (hasResponseRateLimit()) {
            hashCode2 = (((hashCode2 * 37) + 7) * 53) + getResponseRateLimit().hashCode();
        }
        int hashCode3 = (((((((((((((((((((((((((hashCode2 * 37) + 8) * 53) + getDelayPercentRuntime().hashCode()) * 37) + 9) * 53) + getAbortPercentRuntime().hashCode()) * 37) + 10) * 53) + getDelayDurationRuntime().hashCode()) * 37) + 11) * 53) + getAbortHttpStatusRuntime().hashCode()) * 37) + 12) * 53) + getMaxActiveFaultsRuntime().hashCode()) * 37) + 13) * 53) + getResponseRateLimitPercentRuntime().hashCode()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode3;
        return hashCode3;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.http.fault.v2.b.f48582f.d(HTTPFault.class, b.class);
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
        return new HTTPFault();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.delay_ != null) {
            codedOutputStream.L0(1, getDelay());
        }
        if (this.abort_ != null) {
            codedOutputStream.L0(2, getAbort());
        }
        if (!GeneratedMessageV3.isStringEmpty(this.upstreamCluster_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 3, this.upstreamCluster_);
        }
        for (int i9 = 0; i9 < this.headers_.size(); i9++) {
            codedOutputStream.L0(4, this.headers_.get(i9));
        }
        for (int i10 = 0; i10 < this.downstreamNodes_.size(); i10++) {
            GeneratedMessageV3.writeString(codedOutputStream, 5, this.downstreamNodes_.c1(i10));
        }
        if (this.maxActiveFaults_ != null) {
            codedOutputStream.L0(6, getMaxActiveFaults());
        }
        if (this.responseRateLimit_ != null) {
            codedOutputStream.L0(7, getResponseRateLimit());
        }
        if (!GeneratedMessageV3.isStringEmpty(this.delayPercentRuntime_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 8, this.delayPercentRuntime_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.abortPercentRuntime_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 9, this.abortPercentRuntime_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.delayDurationRuntime_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 10, this.delayDurationRuntime_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.abortHttpStatusRuntime_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 11, this.abortHttpStatusRuntime_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.maxActiveFaultsRuntime_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 12, this.maxActiveFaultsRuntime_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.responseRateLimitPercentRuntime_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 13, this.responseRateLimitPercentRuntime_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ HTTPFault(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(HTTPFault hTTPFault) {
        return DEFAULT_INSTANCE.toBuilder().l0(hTTPFault);
    }

    public static HTTPFault parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    /* renamed from: getDownstreamNodesList */
    public i2 m1618getDownstreamNodesList() {
        return this.downstreamNodes_;
    }

    private HTTPFault(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static HTTPFault parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (HTTPFault) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static HTTPFault parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public HTTPFault getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).l0(this);
    }

    public static HTTPFault parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private HTTPFault() {
        this.memoizedIsInitialized = (byte) -1;
        this.upstreamCluster_ = "";
        this.headers_ = Collections.emptyList();
        this.downstreamNodes_ = y0.f15344d;
        this.delayPercentRuntime_ = "";
        this.abortPercentRuntime_ = "";
        this.delayDurationRuntime_ = "";
        this.abortHttpStatusRuntime_ = "";
        this.maxActiveFaultsRuntime_ = "";
        this.responseRateLimitPercentRuntime_ = "";
    }

    public static HTTPFault parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static HTTPFault parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static HTTPFault parseFrom(InputStream inputStream) throws IOException {
        return (HTTPFault) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static HTTPFault parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (HTTPFault) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static HTTPFault parseFrom(p pVar) throws IOException {
        return (HTTPFault) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static HTTPFault parseFrom(p pVar, f0 f0Var) throws IOException {
        return (HTTPFault) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }

    private HTTPFault(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        boolean z11 = false;
        while (!z10) {
            try {
                try {
                    int L = pVar.L();
                    switch (L) {
                        case 0:
                            break;
                        case 10:
                            FaultDelay faultDelay = this.delay_;
                            FaultDelay.c builder = faultDelay != null ? faultDelay.toBuilder() : null;
                            FaultDelay faultDelay2 = (FaultDelay) pVar.B(FaultDelay.parser(), f0Var);
                            this.delay_ = faultDelay2;
                            if (builder != null) {
                                builder.h0(faultDelay2);
                                this.delay_ = builder.I();
                            } else {
                                continue;
                            }
                        case 18:
                            FaultAbort faultAbort = this.abort_;
                            FaultAbort.c builder2 = faultAbort != null ? faultAbort.toBuilder() : null;
                            FaultAbort faultAbort2 = (FaultAbort) pVar.B(FaultAbort.parser(), f0Var);
                            this.abort_ = faultAbort2;
                            if (builder2 != null) {
                                builder2.g0(faultAbort2);
                                this.abort_ = builder2.I();
                            } else {
                                continue;
                            }
                        case 26:
                            this.upstreamCluster_ = pVar.K();
                            continue;
                        case 34:
                            if (!(z11 & true)) {
                                this.headers_ = new ArrayList();
                                z11 |= true;
                            }
                            this.headers_.add((HeaderMatcher) pVar.B(HeaderMatcher.parser(), f0Var));
                            continue;
                        case 42:
                            String K = pVar.K();
                            if (!(z11 & true)) {
                                this.downstreamNodes_ = new y0();
                                z11 |= true;
                            }
                            this.downstreamNodes_.add(K);
                            continue;
                        case 50:
                            UInt32Value uInt32Value = this.maxActiveFaults_;
                            UInt32Value.b builder3 = uInt32Value != null ? uInt32Value.toBuilder() : null;
                            UInt32Value uInt32Value2 = (UInt32Value) pVar.B(UInt32Value.parser(), f0Var);
                            this.maxActiveFaults_ = uInt32Value2;
                            if (builder3 != null) {
                                builder3.g0(uInt32Value2);
                                this.maxActiveFaults_ = builder3.I();
                            } else {
                                continue;
                            }
                        case 58:
                            FaultRateLimit faultRateLimit = this.responseRateLimit_;
                            FaultRateLimit.c builder4 = faultRateLimit != null ? faultRateLimit.toBuilder() : null;
                            FaultRateLimit faultRateLimit2 = (FaultRateLimit) pVar.B(FaultRateLimit.parser(), f0Var);
                            this.responseRateLimit_ = faultRateLimit2;
                            if (builder4 != null) {
                                builder4.h0(faultRateLimit2);
                                this.responseRateLimit_ = builder4.I();
                            } else {
                                continue;
                            }
                        case 66:
                            this.delayPercentRuntime_ = pVar.K();
                            continue;
                        case 74:
                            this.abortPercentRuntime_ = pVar.K();
                            continue;
                        case 82:
                            this.delayDurationRuntime_ = pVar.K();
                            continue;
                        case 90:
                            this.abortHttpStatusRuntime_ = pVar.K();
                            continue;
                        case 98:
                            this.maxActiveFaultsRuntime_ = pVar.K();
                            continue;
                        case 106:
                            this.responseRateLimitPercentRuntime_ = pVar.K();
                            continue;
                        default:
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                break;
                            } else {
                                continue;
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
                    this.headers_ = Collections.unmodifiableList(this.headers_);
                }
                if (z11 & true) {
                    this.downstreamNodes_ = this.downstreamNodes_.V0();
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }
}
