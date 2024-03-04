package io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.accesslog.v2;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.o1;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.u0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.accesslog.v2.AndFilter;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.accesslog.v2.DurationFilter;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.accesslog.v2.ExtensionFilter;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.accesslog.v2.GrpcStatusFilter;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.accesslog.v2.HeaderFilter;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.accesslog.v2.NotHealthCheckFilter;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.accesslog.v2.OrFilter;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.accesslog.v2.ResponseFlagFilter;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.accesslog.v2.RuntimeFilter;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.accesslog.v2.StatusCodeFilter;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.accesslog.v2.TraceableFilter;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class AccessLogFilter extends GeneratedMessageV3 implements io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.accesslog.v2.a {
    public static final int AND_FILTER_FIELD_NUMBER = 6;
    public static final int DURATION_FILTER_FIELD_NUMBER = 2;
    public static final int EXTENSION_FILTER_FIELD_NUMBER = 11;
    public static final int GRPC_STATUS_FILTER_FIELD_NUMBER = 10;
    public static final int HEADER_FILTER_FIELD_NUMBER = 8;
    public static final int NOT_HEALTH_CHECK_FILTER_FIELD_NUMBER = 3;
    public static final int OR_FILTER_FIELD_NUMBER = 7;
    public static final int RESPONSE_FLAG_FILTER_FIELD_NUMBER = 9;
    public static final int RUNTIME_FILTER_FIELD_NUMBER = 5;
    public static final int STATUS_CODE_FILTER_FIELD_NUMBER = 1;
    public static final int TRACEABLE_FILTER_FIELD_NUMBER = 4;
    private static final long serialVersionUID = 0;
    private int filterSpecifierCase_;
    private Object filterSpecifier_;
    private byte memoizedIsInitialized;
    private static final AccessLogFilter DEFAULT_INSTANCE = new AccessLogFilter();
    private static final e2<AccessLogFilter> PARSER = new a();

    /* loaded from: classes6.dex */
    public enum FilterSpecifierCase implements u0.c {
        STATUS_CODE_FILTER(1),
        DURATION_FILTER(2),
        NOT_HEALTH_CHECK_FILTER(3),
        TRACEABLE_FILTER(4),
        RUNTIME_FILTER(5),
        AND_FILTER(6),
        OR_FILTER(7),
        HEADER_FILTER(8),
        RESPONSE_FLAG_FILTER(9),
        GRPC_STATUS_FILTER(10),
        EXTENSION_FILTER(11),
        FILTERSPECIFIER_NOT_SET(0);
        
        private final int value;

        FilterSpecifierCase(int i9) {
            this.value = i9;
        }

        public static FilterSpecifierCase forNumber(int i9) {
            switch (i9) {
                case 0:
                    return FILTERSPECIFIER_NOT_SET;
                case 1:
                    return STATUS_CODE_FILTER;
                case 2:
                    return DURATION_FILTER;
                case 3:
                    return NOT_HEALTH_CHECK_FILTER;
                case 4:
                    return TRACEABLE_FILTER;
                case 5:
                    return RUNTIME_FILTER;
                case 6:
                    return AND_FILTER;
                case 7:
                    return OR_FILTER;
                case 8:
                    return HEADER_FILTER;
                case 9:
                    return RESPONSE_FLAG_FILTER;
                case 10:
                    return GRPC_STATUS_FILTER;
                case 11:
                    return EXTENSION_FILTER;
                default:
                    return null;
            }
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static FilterSpecifierCase valueOf(int i9) {
            return forNumber(i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<AccessLogFilter> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public AccessLogFilter m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new AccessLogFilter(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f48455a;

        static {
            int[] iArr = new int[FilterSpecifierCase.values().length];
            f48455a = iArr;
            try {
                iArr[FilterSpecifierCase.STATUS_CODE_FILTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f48455a[FilterSpecifierCase.DURATION_FILTER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f48455a[FilterSpecifierCase.NOT_HEALTH_CHECK_FILTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f48455a[FilterSpecifierCase.TRACEABLE_FILTER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f48455a[FilterSpecifierCase.RUNTIME_FILTER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f48455a[FilterSpecifierCase.AND_FILTER.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f48455a[FilterSpecifierCase.OR_FILTER.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f48455a[FilterSpecifierCase.HEADER_FILTER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f48455a[FilterSpecifierCase.RESPONSE_FLAG_FILTER.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f48455a[FilterSpecifierCase.GRPC_STATUS_FILTER.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f48455a[FilterSpecifierCase.EXTENSION_FILTER.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f48455a[FilterSpecifierCase.FILTERSPECIFIER_NOT_SET.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.accesslog.v2.a {

        /* renamed from: e  reason: collision with root package name */
        private int f48456e;

        /* renamed from: f  reason: collision with root package name */
        private Object f48457f;

        /* renamed from: g  reason: collision with root package name */
        private q2<StatusCodeFilter, StatusCodeFilter.b, n> f48458g;

        /* renamed from: h  reason: collision with root package name */
        private q2<DurationFilter, DurationFilter.b, f> f48459h;

        /* renamed from: i  reason: collision with root package name */
        private q2<NotHealthCheckFilter, NotHealthCheckFilter.b, j> f48460i;

        /* renamed from: j  reason: collision with root package name */
        private q2<TraceableFilter, TraceableFilter.b, o> f48461j;

        /* renamed from: k  reason: collision with root package name */
        private q2<RuntimeFilter, RuntimeFilter.b, m> f48462k;

        /* renamed from: l  reason: collision with root package name */
        private q2<AndFilter, AndFilter.b, d> f48463l;

        /* renamed from: m  reason: collision with root package name */
        private q2<OrFilter, OrFilter.b, k> f48464m;

        /* renamed from: n  reason: collision with root package name */
        private q2<HeaderFilter, HeaderFilter.b, i> f48465n;

        /* renamed from: o  reason: collision with root package name */
        private q2<ResponseFlagFilter, ResponseFlagFilter.b, l> f48466o;

        /* renamed from: p  reason: collision with root package name */
        private q2<GrpcStatusFilter, GrpcStatusFilter.c, h> f48467p;

        /* renamed from: q  reason: collision with root package name */
        private q2<ExtensionFilter, ExtensionFilter.c, g> f48468q;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.accesslog.v2.c.f48502d.d(AccessLogFilter.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public AccessLogFilter build() {
            AccessLogFilter I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public AccessLogFilter I() {
            AccessLogFilter accessLogFilter = new AccessLogFilter(this, (a) null);
            if (this.f48456e == 1) {
                q2<StatusCodeFilter, StatusCodeFilter.b, n> q2Var = this.f48458g;
                if (q2Var == null) {
                    accessLogFilter.filterSpecifier_ = this.f48457f;
                } else {
                    accessLogFilter.filterSpecifier_ = q2Var.b();
                }
            }
            if (this.f48456e == 2) {
                q2<DurationFilter, DurationFilter.b, f> q2Var2 = this.f48459h;
                if (q2Var2 == null) {
                    accessLogFilter.filterSpecifier_ = this.f48457f;
                } else {
                    accessLogFilter.filterSpecifier_ = q2Var2.b();
                }
            }
            if (this.f48456e == 3) {
                q2<NotHealthCheckFilter, NotHealthCheckFilter.b, j> q2Var3 = this.f48460i;
                if (q2Var3 == null) {
                    accessLogFilter.filterSpecifier_ = this.f48457f;
                } else {
                    accessLogFilter.filterSpecifier_ = q2Var3.b();
                }
            }
            if (this.f48456e == 4) {
                q2<TraceableFilter, TraceableFilter.b, o> q2Var4 = this.f48461j;
                if (q2Var4 == null) {
                    accessLogFilter.filterSpecifier_ = this.f48457f;
                } else {
                    accessLogFilter.filterSpecifier_ = q2Var4.b();
                }
            }
            if (this.f48456e == 5) {
                q2<RuntimeFilter, RuntimeFilter.b, m> q2Var5 = this.f48462k;
                if (q2Var5 == null) {
                    accessLogFilter.filterSpecifier_ = this.f48457f;
                } else {
                    accessLogFilter.filterSpecifier_ = q2Var5.b();
                }
            }
            if (this.f48456e == 6) {
                q2<AndFilter, AndFilter.b, d> q2Var6 = this.f48463l;
                if (q2Var6 == null) {
                    accessLogFilter.filterSpecifier_ = this.f48457f;
                } else {
                    accessLogFilter.filterSpecifier_ = q2Var6.b();
                }
            }
            if (this.f48456e == 7) {
                q2<OrFilter, OrFilter.b, k> q2Var7 = this.f48464m;
                if (q2Var7 == null) {
                    accessLogFilter.filterSpecifier_ = this.f48457f;
                } else {
                    accessLogFilter.filterSpecifier_ = q2Var7.b();
                }
            }
            if (this.f48456e == 8) {
                q2<HeaderFilter, HeaderFilter.b, i> q2Var8 = this.f48465n;
                if (q2Var8 == null) {
                    accessLogFilter.filterSpecifier_ = this.f48457f;
                } else {
                    accessLogFilter.filterSpecifier_ = q2Var8.b();
                }
            }
            if (this.f48456e == 9) {
                q2<ResponseFlagFilter, ResponseFlagFilter.b, l> q2Var9 = this.f48466o;
                if (q2Var9 == null) {
                    accessLogFilter.filterSpecifier_ = this.f48457f;
                } else {
                    accessLogFilter.filterSpecifier_ = q2Var9.b();
                }
            }
            if (this.f48456e == 10) {
                q2<GrpcStatusFilter, GrpcStatusFilter.c, h> q2Var10 = this.f48467p;
                if (q2Var10 == null) {
                    accessLogFilter.filterSpecifier_ = this.f48457f;
                } else {
                    accessLogFilter.filterSpecifier_ = q2Var10.b();
                }
            }
            if (this.f48456e == 11) {
                q2<ExtensionFilter, ExtensionFilter.c, g> q2Var11 = this.f48468q;
                if (q2Var11 == null) {
                    accessLogFilter.filterSpecifier_ = this.f48457f;
                } else {
                    accessLogFilter.filterSpecifier_ = q2Var11.b();
                }
            }
            accessLogFilter.filterSpecifierCase_ = this.f48456e;
            Q();
            return accessLogFilter;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public AccessLogFilter getDefaultInstanceForType() {
            return AccessLogFilter.getDefaultInstance();
        }

        public c d0(AndFilter andFilter) {
            q2<AndFilter, AndFilter.b, d> q2Var = this.f48463l;
            if (q2Var == null) {
                if (this.f48456e == 6 && this.f48457f != AndFilter.getDefaultInstance()) {
                    this.f48457f = AndFilter.newBuilder((AndFilter) this.f48457f).i0(andFilter).I();
                } else {
                    this.f48457f = andFilter;
                }
                R();
            } else {
                if (this.f48456e == 6) {
                    q2Var.e(andFilter);
                }
                this.f48463l.g(andFilter);
            }
            this.f48456e = 6;
            return this;
        }

        public c e0(DurationFilter durationFilter) {
            q2<DurationFilter, DurationFilter.b, f> q2Var = this.f48459h;
            if (q2Var == null) {
                if (this.f48456e == 2 && this.f48457f != DurationFilter.getDefaultInstance()) {
                    this.f48457f = DurationFilter.newBuilder((DurationFilter) this.f48457f).h0(durationFilter).I();
                } else {
                    this.f48457f = durationFilter;
                }
                R();
            } else {
                if (this.f48456e == 2) {
                    q2Var.e(durationFilter);
                }
                this.f48459h.g(durationFilter);
            }
            this.f48456e = 2;
            return this;
        }

        public c g0(ExtensionFilter extensionFilter) {
            q2<ExtensionFilter, ExtensionFilter.c, g> q2Var = this.f48468q;
            if (q2Var == null) {
                if (this.f48456e == 11 && this.f48457f != ExtensionFilter.getDefaultInstance()) {
                    this.f48457f = ExtensionFilter.newBuilder((ExtensionFilter) this.f48457f).h0(extensionFilter).I();
                } else {
                    this.f48457f = extensionFilter;
                }
                R();
            } else {
                if (this.f48456e == 11) {
                    q2Var.e(extensionFilter);
                }
                this.f48468q.g(extensionFilter);
            }
            this.f48456e = 11;
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.accesslog.v2.c.f48501c;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.accesslog.v2.AccessLogFilter.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.accesslog.v2.AccessLogFilter.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.accesslog.v2.AccessLogFilter r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.accesslog.v2.AccessLogFilter) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.accesslog.v2.AccessLogFilter r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.accesslog.v2.AccessLogFilter) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.accesslog.v2.AccessLogFilter.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.accesslog.v2.AccessLogFilter$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public c v(l1 l1Var) {
            if (l1Var instanceof AccessLogFilter) {
                return j0((AccessLogFilter) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public c j0(AccessLogFilter accessLogFilter) {
            if (accessLogFilter == AccessLogFilter.getDefaultInstance()) {
                return this;
            }
            switch (b.f48455a[accessLogFilter.getFilterSpecifierCase().ordinal()]) {
                case 1:
                    r0(accessLogFilter.getStatusCodeFilter());
                    break;
                case 2:
                    e0(accessLogFilter.getDurationFilter());
                    break;
                case 3:
                    m0(accessLogFilter.getNotHealthCheckFilter());
                    break;
                case 4:
                    s0(accessLogFilter.getTraceableFilter());
                    break;
                case 5:
                    q0(accessLogFilter.getRuntimeFilter());
                    break;
                case 6:
                    d0(accessLogFilter.getAndFilter());
                    break;
                case 7:
                    n0(accessLogFilter.getOrFilter());
                    break;
                case 8:
                    l0(accessLogFilter.getHeaderFilter());
                    break;
                case 9:
                    o0(accessLogFilter.getResponseFlagFilter());
                    break;
                case 10:
                    k0(accessLogFilter.getGrpcStatusFilter());
                    break;
                case 11:
                    g0(accessLogFilter.getExtensionFilter());
                    break;
            }
            z(((GeneratedMessageV3) accessLogFilter).unknownFields);
            R();
            return this;
        }

        public c k0(GrpcStatusFilter grpcStatusFilter) {
            q2<GrpcStatusFilter, GrpcStatusFilter.c, h> q2Var = this.f48467p;
            if (q2Var == null) {
                if (this.f48456e == 10 && this.f48457f != GrpcStatusFilter.getDefaultInstance()) {
                    this.f48457f = GrpcStatusFilter.newBuilder((GrpcStatusFilter) this.f48457f).h0(grpcStatusFilter).I();
                } else {
                    this.f48457f = grpcStatusFilter;
                }
                R();
            } else {
                if (this.f48456e == 10) {
                    q2Var.e(grpcStatusFilter);
                }
                this.f48467p.g(grpcStatusFilter);
            }
            this.f48456e = 10;
            return this;
        }

        public c l0(HeaderFilter headerFilter) {
            q2<HeaderFilter, HeaderFilter.b, i> q2Var = this.f48465n;
            if (q2Var == null) {
                if (this.f48456e == 8 && this.f48457f != HeaderFilter.getDefaultInstance()) {
                    this.f48457f = HeaderFilter.newBuilder((HeaderFilter) this.f48457f).g0(headerFilter).I();
                } else {
                    this.f48457f = headerFilter;
                }
                R();
            } else {
                if (this.f48456e == 8) {
                    q2Var.e(headerFilter);
                }
                this.f48465n.g(headerFilter);
            }
            this.f48456e = 8;
            return this;
        }

        public c m0(NotHealthCheckFilter notHealthCheckFilter) {
            q2<NotHealthCheckFilter, NotHealthCheckFilter.b, j> q2Var = this.f48460i;
            if (q2Var == null) {
                if (this.f48456e == 3 && this.f48457f != NotHealthCheckFilter.getDefaultInstance()) {
                    this.f48457f = NotHealthCheckFilter.newBuilder((NotHealthCheckFilter) this.f48457f).g0(notHealthCheckFilter).I();
                } else {
                    this.f48457f = notHealthCheckFilter;
                }
                R();
            } else {
                if (this.f48456e == 3) {
                    q2Var.e(notHealthCheckFilter);
                }
                this.f48460i.g(notHealthCheckFilter);
            }
            this.f48456e = 3;
            return this;
        }

        public c n0(OrFilter orFilter) {
            q2<OrFilter, OrFilter.b, k> q2Var = this.f48464m;
            if (q2Var == null) {
                if (this.f48456e == 7 && this.f48457f != OrFilter.getDefaultInstance()) {
                    this.f48457f = OrFilter.newBuilder((OrFilter) this.f48457f).i0(orFilter).I();
                } else {
                    this.f48457f = orFilter;
                }
                R();
            } else {
                if (this.f48456e == 7) {
                    q2Var.e(orFilter);
                }
                this.f48464m.g(orFilter);
            }
            this.f48456e = 7;
            return this;
        }

        public c o0(ResponseFlagFilter responseFlagFilter) {
            q2<ResponseFlagFilter, ResponseFlagFilter.b, l> q2Var = this.f48466o;
            if (q2Var == null) {
                if (this.f48456e == 9 && this.f48457f != ResponseFlagFilter.getDefaultInstance()) {
                    this.f48457f = ResponseFlagFilter.newBuilder((ResponseFlagFilter) this.f48457f).h0(responseFlagFilter).I();
                } else {
                    this.f48457f = responseFlagFilter;
                }
                R();
            } else {
                if (this.f48456e == 9) {
                    q2Var.e(responseFlagFilter);
                }
                this.f48466o.g(responseFlagFilter);
            }
            this.f48456e = 9;
            return this;
        }

        public c q0(RuntimeFilter runtimeFilter) {
            q2<RuntimeFilter, RuntimeFilter.b, m> q2Var = this.f48462k;
            if (q2Var == null) {
                if (this.f48456e == 5 && this.f48457f != RuntimeFilter.getDefaultInstance()) {
                    this.f48457f = RuntimeFilter.newBuilder((RuntimeFilter) this.f48457f).g0(runtimeFilter).I();
                } else {
                    this.f48457f = runtimeFilter;
                }
                R();
            } else {
                if (this.f48456e == 5) {
                    q2Var.e(runtimeFilter);
                }
                this.f48462k.g(runtimeFilter);
            }
            this.f48456e = 5;
            return this;
        }

        public c r0(StatusCodeFilter statusCodeFilter) {
            q2<StatusCodeFilter, StatusCodeFilter.b, n> q2Var = this.f48458g;
            if (q2Var == null) {
                if (this.f48456e == 1 && this.f48457f != StatusCodeFilter.getDefaultInstance()) {
                    this.f48457f = StatusCodeFilter.newBuilder((StatusCodeFilter) this.f48457f).h0(statusCodeFilter).I();
                } else {
                    this.f48457f = statusCodeFilter;
                }
                R();
            } else {
                if (this.f48456e == 1) {
                    q2Var.e(statusCodeFilter);
                }
                this.f48458g.g(statusCodeFilter);
            }
            this.f48456e = 1;
            return this;
        }

        public c s0(TraceableFilter traceableFilter) {
            q2<TraceableFilter, TraceableFilter.b, o> q2Var = this.f48461j;
            if (q2Var == null) {
                if (this.f48456e == 4 && this.f48457f != TraceableFilter.getDefaultInstance()) {
                    this.f48457f = TraceableFilter.newBuilder((TraceableFilter) this.f48457f).g0(traceableFilter).I();
                } else {
                    this.f48457f = traceableFilter;
                }
                R();
            } else {
                if (this.f48456e == 4) {
                    q2Var.e(traceableFilter);
                }
                this.f48461j.g(traceableFilter);
            }
            this.f48456e = 4;
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: t0 */
        public final c z(h3 h3Var) {
            return (c) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: u0 */
        public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.c(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: v0 */
        public final c f1(h3 h3Var) {
            return (c) super.f1(h3Var);
        }

        /* synthetic */ c(a aVar) {
            this();
        }

        private c() {
            this.f48456e = 0;
            b0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f48456e = 0;
            b0();
        }
    }

    /* synthetic */ AccessLogFilter(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static AccessLogFilter getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.accesslog.v2.c.f48501c;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static AccessLogFilter parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (AccessLogFilter) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static AccessLogFilter parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<AccessLogFilter> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AccessLogFilter)) {
            return super.equals(obj);
        }
        AccessLogFilter accessLogFilter = (AccessLogFilter) obj;
        if (getFilterSpecifierCase().equals(accessLogFilter.getFilterSpecifierCase())) {
            switch (this.filterSpecifierCase_) {
                case 1:
                    if (!getStatusCodeFilter().equals(accessLogFilter.getStatusCodeFilter())) {
                        return false;
                    }
                    break;
                case 2:
                    if (!getDurationFilter().equals(accessLogFilter.getDurationFilter())) {
                        return false;
                    }
                    break;
                case 3:
                    if (!getNotHealthCheckFilter().equals(accessLogFilter.getNotHealthCheckFilter())) {
                        return false;
                    }
                    break;
                case 4:
                    if (!getTraceableFilter().equals(accessLogFilter.getTraceableFilter())) {
                        return false;
                    }
                    break;
                case 5:
                    if (!getRuntimeFilter().equals(accessLogFilter.getRuntimeFilter())) {
                        return false;
                    }
                    break;
                case 6:
                    if (!getAndFilter().equals(accessLogFilter.getAndFilter())) {
                        return false;
                    }
                    break;
                case 7:
                    if (!getOrFilter().equals(accessLogFilter.getOrFilter())) {
                        return false;
                    }
                    break;
                case 8:
                    if (!getHeaderFilter().equals(accessLogFilter.getHeaderFilter())) {
                        return false;
                    }
                    break;
                case 9:
                    if (!getResponseFlagFilter().equals(accessLogFilter.getResponseFlagFilter())) {
                        return false;
                    }
                    break;
                case 10:
                    if (!getGrpcStatusFilter().equals(accessLogFilter.getGrpcStatusFilter())) {
                        return false;
                    }
                    break;
                case 11:
                    if (!getExtensionFilter().equals(accessLogFilter.getExtensionFilter())) {
                        return false;
                    }
                    break;
            }
            return this.unknownFields.equals(accessLogFilter.unknownFields);
        }
        return false;
    }

    public AndFilter getAndFilter() {
        if (this.filterSpecifierCase_ == 6) {
            return (AndFilter) this.filterSpecifier_;
        }
        return AndFilter.getDefaultInstance();
    }

    public d getAndFilterOrBuilder() {
        if (this.filterSpecifierCase_ == 6) {
            return (AndFilter) this.filterSpecifier_;
        }
        return AndFilter.getDefaultInstance();
    }

    public DurationFilter getDurationFilter() {
        if (this.filterSpecifierCase_ == 2) {
            return (DurationFilter) this.filterSpecifier_;
        }
        return DurationFilter.getDefaultInstance();
    }

    public f getDurationFilterOrBuilder() {
        if (this.filterSpecifierCase_ == 2) {
            return (DurationFilter) this.filterSpecifier_;
        }
        return DurationFilter.getDefaultInstance();
    }

    public ExtensionFilter getExtensionFilter() {
        if (this.filterSpecifierCase_ == 11) {
            return (ExtensionFilter) this.filterSpecifier_;
        }
        return ExtensionFilter.getDefaultInstance();
    }

    public g getExtensionFilterOrBuilder() {
        if (this.filterSpecifierCase_ == 11) {
            return (ExtensionFilter) this.filterSpecifier_;
        }
        return ExtensionFilter.getDefaultInstance();
    }

    public FilterSpecifierCase getFilterSpecifierCase() {
        return FilterSpecifierCase.forNumber(this.filterSpecifierCase_);
    }

    public GrpcStatusFilter getGrpcStatusFilter() {
        if (this.filterSpecifierCase_ == 10) {
            return (GrpcStatusFilter) this.filterSpecifier_;
        }
        return GrpcStatusFilter.getDefaultInstance();
    }

    public h getGrpcStatusFilterOrBuilder() {
        if (this.filterSpecifierCase_ == 10) {
            return (GrpcStatusFilter) this.filterSpecifier_;
        }
        return GrpcStatusFilter.getDefaultInstance();
    }

    public HeaderFilter getHeaderFilter() {
        if (this.filterSpecifierCase_ == 8) {
            return (HeaderFilter) this.filterSpecifier_;
        }
        return HeaderFilter.getDefaultInstance();
    }

    public i getHeaderFilterOrBuilder() {
        if (this.filterSpecifierCase_ == 8) {
            return (HeaderFilter) this.filterSpecifier_;
        }
        return HeaderFilter.getDefaultInstance();
    }

    public NotHealthCheckFilter getNotHealthCheckFilter() {
        if (this.filterSpecifierCase_ == 3) {
            return (NotHealthCheckFilter) this.filterSpecifier_;
        }
        return NotHealthCheckFilter.getDefaultInstance();
    }

    public j getNotHealthCheckFilterOrBuilder() {
        if (this.filterSpecifierCase_ == 3) {
            return (NotHealthCheckFilter) this.filterSpecifier_;
        }
        return NotHealthCheckFilter.getDefaultInstance();
    }

    public OrFilter getOrFilter() {
        if (this.filterSpecifierCase_ == 7) {
            return (OrFilter) this.filterSpecifier_;
        }
        return OrFilter.getDefaultInstance();
    }

    public k getOrFilterOrBuilder() {
        if (this.filterSpecifierCase_ == 7) {
            return (OrFilter) this.filterSpecifier_;
        }
        return OrFilter.getDefaultInstance();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<AccessLogFilter> getParserForType() {
        return PARSER;
    }

    public ResponseFlagFilter getResponseFlagFilter() {
        if (this.filterSpecifierCase_ == 9) {
            return (ResponseFlagFilter) this.filterSpecifier_;
        }
        return ResponseFlagFilter.getDefaultInstance();
    }

    public l getResponseFlagFilterOrBuilder() {
        if (this.filterSpecifierCase_ == 9) {
            return (ResponseFlagFilter) this.filterSpecifier_;
        }
        return ResponseFlagFilter.getDefaultInstance();
    }

    public RuntimeFilter getRuntimeFilter() {
        if (this.filterSpecifierCase_ == 5) {
            return (RuntimeFilter) this.filterSpecifier_;
        }
        return RuntimeFilter.getDefaultInstance();
    }

    public m getRuntimeFilterOrBuilder() {
        if (this.filterSpecifierCase_ == 5) {
            return (RuntimeFilter) this.filterSpecifier_;
        }
        return RuntimeFilter.getDefaultInstance();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.filterSpecifierCase_ == 1 ? 0 + CodedOutputStream.G(1, (StatusCodeFilter) this.filterSpecifier_) : 0;
        if (this.filterSpecifierCase_ == 2) {
            G += CodedOutputStream.G(2, (DurationFilter) this.filterSpecifier_);
        }
        if (this.filterSpecifierCase_ == 3) {
            G += CodedOutputStream.G(3, (NotHealthCheckFilter) this.filterSpecifier_);
        }
        if (this.filterSpecifierCase_ == 4) {
            G += CodedOutputStream.G(4, (TraceableFilter) this.filterSpecifier_);
        }
        if (this.filterSpecifierCase_ == 5) {
            G += CodedOutputStream.G(5, (RuntimeFilter) this.filterSpecifier_);
        }
        if (this.filterSpecifierCase_ == 6) {
            G += CodedOutputStream.G(6, (AndFilter) this.filterSpecifier_);
        }
        if (this.filterSpecifierCase_ == 7) {
            G += CodedOutputStream.G(7, (OrFilter) this.filterSpecifier_);
        }
        if (this.filterSpecifierCase_ == 8) {
            G += CodedOutputStream.G(8, (HeaderFilter) this.filterSpecifier_);
        }
        if (this.filterSpecifierCase_ == 9) {
            G += CodedOutputStream.G(9, (ResponseFlagFilter) this.filterSpecifier_);
        }
        if (this.filterSpecifierCase_ == 10) {
            G += CodedOutputStream.G(10, (GrpcStatusFilter) this.filterSpecifier_);
        }
        if (this.filterSpecifierCase_ == 11) {
            G += CodedOutputStream.G(11, (ExtensionFilter) this.filterSpecifier_);
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public StatusCodeFilter getStatusCodeFilter() {
        if (this.filterSpecifierCase_ == 1) {
            return (StatusCodeFilter) this.filterSpecifier_;
        }
        return StatusCodeFilter.getDefaultInstance();
    }

    public n getStatusCodeFilterOrBuilder() {
        if (this.filterSpecifierCase_ == 1) {
            return (StatusCodeFilter) this.filterSpecifier_;
        }
        return StatusCodeFilter.getDefaultInstance();
    }

    public TraceableFilter getTraceableFilter() {
        if (this.filterSpecifierCase_ == 4) {
            return (TraceableFilter) this.filterSpecifier_;
        }
        return TraceableFilter.getDefaultInstance();
    }

    public o getTraceableFilterOrBuilder() {
        if (this.filterSpecifierCase_ == 4) {
            return (TraceableFilter) this.filterSpecifier_;
        }
        return TraceableFilter.getDefaultInstance();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasAndFilter() {
        return this.filterSpecifierCase_ == 6;
    }

    public boolean hasDurationFilter() {
        return this.filterSpecifierCase_ == 2;
    }

    public boolean hasExtensionFilter() {
        return this.filterSpecifierCase_ == 11;
    }

    public boolean hasGrpcStatusFilter() {
        return this.filterSpecifierCase_ == 10;
    }

    public boolean hasHeaderFilter() {
        return this.filterSpecifierCase_ == 8;
    }

    public boolean hasNotHealthCheckFilter() {
        return this.filterSpecifierCase_ == 3;
    }

    public boolean hasOrFilter() {
        return this.filterSpecifierCase_ == 7;
    }

    public boolean hasResponseFlagFilter() {
        return this.filterSpecifierCase_ == 9;
    }

    public boolean hasRuntimeFilter() {
        return this.filterSpecifierCase_ == 5;
    }

    public boolean hasStatusCodeFilter() {
        return this.filterSpecifierCase_ == 1;
    }

    public boolean hasTraceableFilter() {
        return this.filterSpecifierCase_ == 4;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9;
        int hashCode;
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int hashCode2 = 779 + getDescriptor().hashCode();
        switch (this.filterSpecifierCase_) {
            case 1:
                i9 = ((hashCode2 * 37) + 1) * 53;
                hashCode = getStatusCodeFilter().hashCode();
                hashCode2 = i9 + hashCode;
                int hashCode3 = (hashCode2 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode3;
                return hashCode3;
            case 2:
                i9 = ((hashCode2 * 37) + 2) * 53;
                hashCode = getDurationFilter().hashCode();
                hashCode2 = i9 + hashCode;
                int hashCode32 = (hashCode2 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode32;
                return hashCode32;
            case 3:
                i9 = ((hashCode2 * 37) + 3) * 53;
                hashCode = getNotHealthCheckFilter().hashCode();
                hashCode2 = i9 + hashCode;
                int hashCode322 = (hashCode2 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode322;
                return hashCode322;
            case 4:
                i9 = ((hashCode2 * 37) + 4) * 53;
                hashCode = getTraceableFilter().hashCode();
                hashCode2 = i9 + hashCode;
                int hashCode3222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode3222;
                return hashCode3222;
            case 5:
                i9 = ((hashCode2 * 37) + 5) * 53;
                hashCode = getRuntimeFilter().hashCode();
                hashCode2 = i9 + hashCode;
                int hashCode32222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode32222;
                return hashCode32222;
            case 6:
                i9 = ((hashCode2 * 37) + 6) * 53;
                hashCode = getAndFilter().hashCode();
                hashCode2 = i9 + hashCode;
                int hashCode322222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode322222;
                return hashCode322222;
            case 7:
                i9 = ((hashCode2 * 37) + 7) * 53;
                hashCode = getOrFilter().hashCode();
                hashCode2 = i9 + hashCode;
                int hashCode3222222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode3222222;
                return hashCode3222222;
            case 8:
                i9 = ((hashCode2 * 37) + 8) * 53;
                hashCode = getHeaderFilter().hashCode();
                hashCode2 = i9 + hashCode;
                int hashCode32222222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode32222222;
                return hashCode32222222;
            case 9:
                i9 = ((hashCode2 * 37) + 9) * 53;
                hashCode = getResponseFlagFilter().hashCode();
                hashCode2 = i9 + hashCode;
                int hashCode322222222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode322222222;
                return hashCode322222222;
            case 10:
                i9 = ((hashCode2 * 37) + 10) * 53;
                hashCode = getGrpcStatusFilter().hashCode();
                hashCode2 = i9 + hashCode;
                int hashCode3222222222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode3222222222;
                return hashCode3222222222;
            case 11:
                i9 = ((hashCode2 * 37) + 11) * 53;
                hashCode = getExtensionFilter().hashCode();
                hashCode2 = i9 + hashCode;
                int hashCode32222222222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode32222222222;
                return hashCode32222222222;
            default:
                int hashCode322222222222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode322222222222;
                return hashCode322222222222;
        }
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.accesslog.v2.c.f48502d.d(AccessLogFilter.class, c.class);
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
        return new AccessLogFilter();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.filterSpecifierCase_ == 1) {
            codedOutputStream.L0(1, (StatusCodeFilter) this.filterSpecifier_);
        }
        if (this.filterSpecifierCase_ == 2) {
            codedOutputStream.L0(2, (DurationFilter) this.filterSpecifier_);
        }
        if (this.filterSpecifierCase_ == 3) {
            codedOutputStream.L0(3, (NotHealthCheckFilter) this.filterSpecifier_);
        }
        if (this.filterSpecifierCase_ == 4) {
            codedOutputStream.L0(4, (TraceableFilter) this.filterSpecifier_);
        }
        if (this.filterSpecifierCase_ == 5) {
            codedOutputStream.L0(5, (RuntimeFilter) this.filterSpecifier_);
        }
        if (this.filterSpecifierCase_ == 6) {
            codedOutputStream.L0(6, (AndFilter) this.filterSpecifier_);
        }
        if (this.filterSpecifierCase_ == 7) {
            codedOutputStream.L0(7, (OrFilter) this.filterSpecifier_);
        }
        if (this.filterSpecifierCase_ == 8) {
            codedOutputStream.L0(8, (HeaderFilter) this.filterSpecifier_);
        }
        if (this.filterSpecifierCase_ == 9) {
            codedOutputStream.L0(9, (ResponseFlagFilter) this.filterSpecifier_);
        }
        if (this.filterSpecifierCase_ == 10) {
            codedOutputStream.L0(10, (GrpcStatusFilter) this.filterSpecifier_);
        }
        if (this.filterSpecifierCase_ == 11) {
            codedOutputStream.L0(11, (ExtensionFilter) this.filterSpecifier_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ AccessLogFilter(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(AccessLogFilter accessLogFilter) {
        return DEFAULT_INSTANCE.toBuilder().j0(accessLogFilter);
    }

    public static AccessLogFilter parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private AccessLogFilter(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.filterSpecifierCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static AccessLogFilter parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (AccessLogFilter) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static AccessLogFilter parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public AccessLogFilter getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).j0(this);
    }

    public static AccessLogFilter parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    public static AccessLogFilter parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    private AccessLogFilter() {
        this.filterSpecifierCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static AccessLogFilter parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static AccessLogFilter parseFrom(InputStream inputStream) throws IOException {
        return (AccessLogFilter) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private AccessLogFilter(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    int L = pVar.L();
                    switch (L) {
                        case 0:
                            break;
                        case 10:
                            StatusCodeFilter.b builder = this.filterSpecifierCase_ == 1 ? ((StatusCodeFilter) this.filterSpecifier_).toBuilder() : null;
                            o1 B = pVar.B(StatusCodeFilter.parser(), f0Var);
                            this.filterSpecifier_ = B;
                            if (builder != null) {
                                builder.h0((StatusCodeFilter) B);
                                this.filterSpecifier_ = builder.I();
                            }
                            this.filterSpecifierCase_ = 1;
                            continue;
                        case 18:
                            DurationFilter.b builder2 = this.filterSpecifierCase_ == 2 ? ((DurationFilter) this.filterSpecifier_).toBuilder() : null;
                            o1 B2 = pVar.B(DurationFilter.parser(), f0Var);
                            this.filterSpecifier_ = B2;
                            if (builder2 != null) {
                                builder2.h0((DurationFilter) B2);
                                this.filterSpecifier_ = builder2.I();
                            }
                            this.filterSpecifierCase_ = 2;
                            continue;
                        case 26:
                            NotHealthCheckFilter.b builder3 = this.filterSpecifierCase_ == 3 ? ((NotHealthCheckFilter) this.filterSpecifier_).toBuilder() : null;
                            o1 B3 = pVar.B(NotHealthCheckFilter.parser(), f0Var);
                            this.filterSpecifier_ = B3;
                            if (builder3 != null) {
                                builder3.g0((NotHealthCheckFilter) B3);
                                this.filterSpecifier_ = builder3.I();
                            }
                            this.filterSpecifierCase_ = 3;
                            continue;
                        case 34:
                            TraceableFilter.b builder4 = this.filterSpecifierCase_ == 4 ? ((TraceableFilter) this.filterSpecifier_).toBuilder() : null;
                            o1 B4 = pVar.B(TraceableFilter.parser(), f0Var);
                            this.filterSpecifier_ = B4;
                            if (builder4 != null) {
                                builder4.g0((TraceableFilter) B4);
                                this.filterSpecifier_ = builder4.I();
                            }
                            this.filterSpecifierCase_ = 4;
                            continue;
                        case 42:
                            RuntimeFilter.b builder5 = this.filterSpecifierCase_ == 5 ? ((RuntimeFilter) this.filterSpecifier_).toBuilder() : null;
                            o1 B5 = pVar.B(RuntimeFilter.parser(), f0Var);
                            this.filterSpecifier_ = B5;
                            if (builder5 != null) {
                                builder5.g0((RuntimeFilter) B5);
                                this.filterSpecifier_ = builder5.I();
                            }
                            this.filterSpecifierCase_ = 5;
                            continue;
                        case 50:
                            AndFilter.b builder6 = this.filterSpecifierCase_ == 6 ? ((AndFilter) this.filterSpecifier_).toBuilder() : null;
                            o1 B6 = pVar.B(AndFilter.parser(), f0Var);
                            this.filterSpecifier_ = B6;
                            if (builder6 != null) {
                                builder6.i0((AndFilter) B6);
                                this.filterSpecifier_ = builder6.I();
                            }
                            this.filterSpecifierCase_ = 6;
                            continue;
                        case 58:
                            OrFilter.b builder7 = this.filterSpecifierCase_ == 7 ? ((OrFilter) this.filterSpecifier_).toBuilder() : null;
                            o1 B7 = pVar.B(OrFilter.parser(), f0Var);
                            this.filterSpecifier_ = B7;
                            if (builder7 != null) {
                                builder7.i0((OrFilter) B7);
                                this.filterSpecifier_ = builder7.I();
                            }
                            this.filterSpecifierCase_ = 7;
                            continue;
                        case 66:
                            HeaderFilter.b builder8 = this.filterSpecifierCase_ == 8 ? ((HeaderFilter) this.filterSpecifier_).toBuilder() : null;
                            o1 B8 = pVar.B(HeaderFilter.parser(), f0Var);
                            this.filterSpecifier_ = B8;
                            if (builder8 != null) {
                                builder8.g0((HeaderFilter) B8);
                                this.filterSpecifier_ = builder8.I();
                            }
                            this.filterSpecifierCase_ = 8;
                            continue;
                        case 74:
                            ResponseFlagFilter.b builder9 = this.filterSpecifierCase_ == 9 ? ((ResponseFlagFilter) this.filterSpecifier_).toBuilder() : null;
                            o1 B9 = pVar.B(ResponseFlagFilter.parser(), f0Var);
                            this.filterSpecifier_ = B9;
                            if (builder9 != null) {
                                builder9.h0((ResponseFlagFilter) B9);
                                this.filterSpecifier_ = builder9.I();
                            }
                            this.filterSpecifierCase_ = 9;
                            continue;
                        case 82:
                            GrpcStatusFilter.c builder10 = this.filterSpecifierCase_ == 10 ? ((GrpcStatusFilter) this.filterSpecifier_).toBuilder() : null;
                            o1 B10 = pVar.B(GrpcStatusFilter.parser(), f0Var);
                            this.filterSpecifier_ = B10;
                            if (builder10 != null) {
                                builder10.h0((GrpcStatusFilter) B10);
                                this.filterSpecifier_ = builder10.I();
                            }
                            this.filterSpecifierCase_ = 10;
                            continue;
                        case 90:
                            ExtensionFilter.c builder11 = this.filterSpecifierCase_ == 11 ? ((ExtensionFilter) this.filterSpecifier_).toBuilder() : null;
                            o1 B11 = pVar.B(ExtensionFilter.parser(), f0Var);
                            this.filterSpecifier_ = B11;
                            if (builder11 != null) {
                                builder11.h0((ExtensionFilter) B11);
                                this.filterSpecifier_ = builder11.I();
                            }
                            this.filterSpecifierCase_ = 11;
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
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static AccessLogFilter parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (AccessLogFilter) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static AccessLogFilter parseFrom(p pVar) throws IOException {
        return (AccessLogFilter) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static AccessLogFilter parseFrom(p pVar, f0 f0Var) throws IOException {
        return (AccessLogFilter) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
