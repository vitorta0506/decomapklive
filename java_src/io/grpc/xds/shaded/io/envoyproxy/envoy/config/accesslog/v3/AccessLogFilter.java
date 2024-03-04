package io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3;

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
import com.google.protobuf.q2;
import com.google.protobuf.u0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.AndFilter;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.DurationFilter;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.ExtensionFilter;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.GrpcStatusFilter;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.HeaderFilter;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.MetadataFilter;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.NotHealthCheckFilter;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.OrFilter;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.ResponseFlagFilter;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.RuntimeFilter;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.StatusCodeFilter;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.TraceableFilter;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class AccessLogFilter extends GeneratedMessageV3 implements io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.a {
    public static final int AND_FILTER_FIELD_NUMBER = 6;
    public static final int DURATION_FILTER_FIELD_NUMBER = 2;
    public static final int EXTENSION_FILTER_FIELD_NUMBER = 11;
    public static final int GRPC_STATUS_FILTER_FIELD_NUMBER = 10;
    public static final int HEADER_FILTER_FIELD_NUMBER = 8;
    public static final int METADATA_FILTER_FIELD_NUMBER = 12;
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
        METADATA_FILTER(12),
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
                case 12:
                    return METADATA_FILTER;
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
        public AccessLogFilter m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new AccessLogFilter(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f47342a;

        static {
            int[] iArr = new int[FilterSpecifierCase.values().length];
            f47342a = iArr;
            try {
                iArr[FilterSpecifierCase.STATUS_CODE_FILTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f47342a[FilterSpecifierCase.DURATION_FILTER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f47342a[FilterSpecifierCase.NOT_HEALTH_CHECK_FILTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f47342a[FilterSpecifierCase.TRACEABLE_FILTER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f47342a[FilterSpecifierCase.RUNTIME_FILTER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f47342a[FilterSpecifierCase.AND_FILTER.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f47342a[FilterSpecifierCase.OR_FILTER.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f47342a[FilterSpecifierCase.HEADER_FILTER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f47342a[FilterSpecifierCase.RESPONSE_FLAG_FILTER.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f47342a[FilterSpecifierCase.GRPC_STATUS_FILTER.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f47342a[FilterSpecifierCase.EXTENSION_FILTER.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f47342a[FilterSpecifierCase.METADATA_FILTER.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f47342a[FilterSpecifierCase.FILTERSPECIFIER_NOT_SET.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.a {

        /* renamed from: e  reason: collision with root package name */
        private int f47343e;

        /* renamed from: f  reason: collision with root package name */
        private Object f47344f;

        /* renamed from: g  reason: collision with root package name */
        private q2<StatusCodeFilter, StatusCodeFilter.b, o> f47345g;

        /* renamed from: h  reason: collision with root package name */
        private q2<DurationFilter, DurationFilter.b, f> f47346h;

        /* renamed from: i  reason: collision with root package name */
        private q2<NotHealthCheckFilter, NotHealthCheckFilter.b, k> f47347i;

        /* renamed from: j  reason: collision with root package name */
        private q2<TraceableFilter, TraceableFilter.b, p> f47348j;

        /* renamed from: k  reason: collision with root package name */
        private q2<RuntimeFilter, RuntimeFilter.b, n> f47349k;

        /* renamed from: l  reason: collision with root package name */
        private q2<AndFilter, AndFilter.b, d> f47350l;

        /* renamed from: m  reason: collision with root package name */
        private q2<OrFilter, OrFilter.b, l> f47351m;

        /* renamed from: n  reason: collision with root package name */
        private q2<HeaderFilter, HeaderFilter.b, i> f47352n;

        /* renamed from: o  reason: collision with root package name */
        private q2<ResponseFlagFilter, ResponseFlagFilter.b, m> f47353o;

        /* renamed from: p  reason: collision with root package name */
        private q2<GrpcStatusFilter, GrpcStatusFilter.c, h> f47354p;

        /* renamed from: q  reason: collision with root package name */
        private q2<ExtensionFilter, ExtensionFilter.c, g> f47355q;

        /* renamed from: r  reason: collision with root package name */
        private q2<MetadataFilter, MetadataFilter.b, j> f47356r;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.c.f47393d.d(AccessLogFilter.class, c.class);
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
            if (this.f47343e == 1) {
                q2<StatusCodeFilter, StatusCodeFilter.b, o> q2Var = this.f47345g;
                if (q2Var == null) {
                    accessLogFilter.filterSpecifier_ = this.f47344f;
                } else {
                    accessLogFilter.filterSpecifier_ = q2Var.b();
                }
            }
            if (this.f47343e == 2) {
                q2<DurationFilter, DurationFilter.b, f> q2Var2 = this.f47346h;
                if (q2Var2 == null) {
                    accessLogFilter.filterSpecifier_ = this.f47344f;
                } else {
                    accessLogFilter.filterSpecifier_ = q2Var2.b();
                }
            }
            if (this.f47343e == 3) {
                q2<NotHealthCheckFilter, NotHealthCheckFilter.b, k> q2Var3 = this.f47347i;
                if (q2Var3 == null) {
                    accessLogFilter.filterSpecifier_ = this.f47344f;
                } else {
                    accessLogFilter.filterSpecifier_ = q2Var3.b();
                }
            }
            if (this.f47343e == 4) {
                q2<TraceableFilter, TraceableFilter.b, p> q2Var4 = this.f47348j;
                if (q2Var4 == null) {
                    accessLogFilter.filterSpecifier_ = this.f47344f;
                } else {
                    accessLogFilter.filterSpecifier_ = q2Var4.b();
                }
            }
            if (this.f47343e == 5) {
                q2<RuntimeFilter, RuntimeFilter.b, n> q2Var5 = this.f47349k;
                if (q2Var5 == null) {
                    accessLogFilter.filterSpecifier_ = this.f47344f;
                } else {
                    accessLogFilter.filterSpecifier_ = q2Var5.b();
                }
            }
            if (this.f47343e == 6) {
                q2<AndFilter, AndFilter.b, d> q2Var6 = this.f47350l;
                if (q2Var6 == null) {
                    accessLogFilter.filterSpecifier_ = this.f47344f;
                } else {
                    accessLogFilter.filterSpecifier_ = q2Var6.b();
                }
            }
            if (this.f47343e == 7) {
                q2<OrFilter, OrFilter.b, l> q2Var7 = this.f47351m;
                if (q2Var7 == null) {
                    accessLogFilter.filterSpecifier_ = this.f47344f;
                } else {
                    accessLogFilter.filterSpecifier_ = q2Var7.b();
                }
            }
            if (this.f47343e == 8) {
                q2<HeaderFilter, HeaderFilter.b, i> q2Var8 = this.f47352n;
                if (q2Var8 == null) {
                    accessLogFilter.filterSpecifier_ = this.f47344f;
                } else {
                    accessLogFilter.filterSpecifier_ = q2Var8.b();
                }
            }
            if (this.f47343e == 9) {
                q2<ResponseFlagFilter, ResponseFlagFilter.b, m> q2Var9 = this.f47353o;
                if (q2Var9 == null) {
                    accessLogFilter.filterSpecifier_ = this.f47344f;
                } else {
                    accessLogFilter.filterSpecifier_ = q2Var9.b();
                }
            }
            if (this.f47343e == 10) {
                q2<GrpcStatusFilter, GrpcStatusFilter.c, h> q2Var10 = this.f47354p;
                if (q2Var10 == null) {
                    accessLogFilter.filterSpecifier_ = this.f47344f;
                } else {
                    accessLogFilter.filterSpecifier_ = q2Var10.b();
                }
            }
            if (this.f47343e == 11) {
                q2<ExtensionFilter, ExtensionFilter.c, g> q2Var11 = this.f47355q;
                if (q2Var11 == null) {
                    accessLogFilter.filterSpecifier_ = this.f47344f;
                } else {
                    accessLogFilter.filterSpecifier_ = q2Var11.b();
                }
            }
            if (this.f47343e == 12) {
                q2<MetadataFilter, MetadataFilter.b, j> q2Var12 = this.f47356r;
                if (q2Var12 == null) {
                    accessLogFilter.filterSpecifier_ = this.f47344f;
                } else {
                    accessLogFilter.filterSpecifier_ = q2Var12.b();
                }
            }
            accessLogFilter.filterSpecifierCase_ = this.f47343e;
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
            q2<AndFilter, AndFilter.b, d> q2Var = this.f47350l;
            if (q2Var == null) {
                if (this.f47343e == 6 && this.f47344f != AndFilter.getDefaultInstance()) {
                    this.f47344f = AndFilter.newBuilder((AndFilter) this.f47344f).i0(andFilter).I();
                } else {
                    this.f47344f = andFilter;
                }
                R();
            } else {
                if (this.f47343e == 6) {
                    q2Var.e(andFilter);
                }
                this.f47350l.g(andFilter);
            }
            this.f47343e = 6;
            return this;
        }

        public c e0(DurationFilter durationFilter) {
            q2<DurationFilter, DurationFilter.b, f> q2Var = this.f47346h;
            if (q2Var == null) {
                if (this.f47343e == 2 && this.f47344f != DurationFilter.getDefaultInstance()) {
                    this.f47344f = DurationFilter.newBuilder((DurationFilter) this.f47344f).h0(durationFilter).I();
                } else {
                    this.f47344f = durationFilter;
                }
                R();
            } else {
                if (this.f47343e == 2) {
                    q2Var.e(durationFilter);
                }
                this.f47346h.g(durationFilter);
            }
            this.f47343e = 2;
            return this;
        }

        public c g0(ExtensionFilter extensionFilter) {
            q2<ExtensionFilter, ExtensionFilter.c, g> q2Var = this.f47355q;
            if (q2Var == null) {
                if (this.f47343e == 11 && this.f47344f != ExtensionFilter.getDefaultInstance()) {
                    this.f47344f = ExtensionFilter.newBuilder((ExtensionFilter) this.f47344f).g0(extensionFilter).I();
                } else {
                    this.f47344f = extensionFilter;
                }
                R();
            } else {
                if (this.f47343e == 11) {
                    q2Var.e(extensionFilter);
                }
                this.f47355q.g(extensionFilter);
            }
            this.f47343e = 11;
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.c.f47392c;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.AccessLogFilter.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.AccessLogFilter.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.AccessLogFilter r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.AccessLogFilter) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.AccessLogFilter r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.AccessLogFilter) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.AccessLogFilter.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.AccessLogFilter$c");
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
            switch (b.f47342a[accessLogFilter.getFilterSpecifierCase().ordinal()]) {
                case 1:
                    s0(accessLogFilter.getStatusCodeFilter());
                    break;
                case 2:
                    e0(accessLogFilter.getDurationFilter());
                    break;
                case 3:
                    n0(accessLogFilter.getNotHealthCheckFilter());
                    break;
                case 4:
                    t0(accessLogFilter.getTraceableFilter());
                    break;
                case 5:
                    r0(accessLogFilter.getRuntimeFilter());
                    break;
                case 6:
                    d0(accessLogFilter.getAndFilter());
                    break;
                case 7:
                    o0(accessLogFilter.getOrFilter());
                    break;
                case 8:
                    l0(accessLogFilter.getHeaderFilter());
                    break;
                case 9:
                    q0(accessLogFilter.getResponseFlagFilter());
                    break;
                case 10:
                    k0(accessLogFilter.getGrpcStatusFilter());
                    break;
                case 11:
                    g0(accessLogFilter.getExtensionFilter());
                    break;
                case 12:
                    m0(accessLogFilter.getMetadataFilter());
                    break;
            }
            z(((GeneratedMessageV3) accessLogFilter).unknownFields);
            R();
            return this;
        }

        public c k0(GrpcStatusFilter grpcStatusFilter) {
            q2<GrpcStatusFilter, GrpcStatusFilter.c, h> q2Var = this.f47354p;
            if (q2Var == null) {
                if (this.f47343e == 10 && this.f47344f != GrpcStatusFilter.getDefaultInstance()) {
                    this.f47344f = GrpcStatusFilter.newBuilder((GrpcStatusFilter) this.f47344f).h0(grpcStatusFilter).I();
                } else {
                    this.f47344f = grpcStatusFilter;
                }
                R();
            } else {
                if (this.f47343e == 10) {
                    q2Var.e(grpcStatusFilter);
                }
                this.f47354p.g(grpcStatusFilter);
            }
            this.f47343e = 10;
            return this;
        }

        public c l0(HeaderFilter headerFilter) {
            q2<HeaderFilter, HeaderFilter.b, i> q2Var = this.f47352n;
            if (q2Var == null) {
                if (this.f47343e == 8 && this.f47344f != HeaderFilter.getDefaultInstance()) {
                    this.f47344f = HeaderFilter.newBuilder((HeaderFilter) this.f47344f).g0(headerFilter).I();
                } else {
                    this.f47344f = headerFilter;
                }
                R();
            } else {
                if (this.f47343e == 8) {
                    q2Var.e(headerFilter);
                }
                this.f47352n.g(headerFilter);
            }
            this.f47343e = 8;
            return this;
        }

        public c m0(MetadataFilter metadataFilter) {
            q2<MetadataFilter, MetadataFilter.b, j> q2Var = this.f47356r;
            if (q2Var == null) {
                if (this.f47343e == 12 && this.f47344f != MetadataFilter.getDefaultInstance()) {
                    this.f47344f = MetadataFilter.newBuilder((MetadataFilter) this.f47344f).g0(metadataFilter).I();
                } else {
                    this.f47344f = metadataFilter;
                }
                R();
            } else {
                if (this.f47343e == 12) {
                    q2Var.e(metadataFilter);
                }
                this.f47356r.g(metadataFilter);
            }
            this.f47343e = 12;
            return this;
        }

        public c n0(NotHealthCheckFilter notHealthCheckFilter) {
            q2<NotHealthCheckFilter, NotHealthCheckFilter.b, k> q2Var = this.f47347i;
            if (q2Var == null) {
                if (this.f47343e == 3 && this.f47344f != NotHealthCheckFilter.getDefaultInstance()) {
                    this.f47344f = NotHealthCheckFilter.newBuilder((NotHealthCheckFilter) this.f47344f).g0(notHealthCheckFilter).I();
                } else {
                    this.f47344f = notHealthCheckFilter;
                }
                R();
            } else {
                if (this.f47343e == 3) {
                    q2Var.e(notHealthCheckFilter);
                }
                this.f47347i.g(notHealthCheckFilter);
            }
            this.f47343e = 3;
            return this;
        }

        public c o0(OrFilter orFilter) {
            q2<OrFilter, OrFilter.b, l> q2Var = this.f47351m;
            if (q2Var == null) {
                if (this.f47343e == 7 && this.f47344f != OrFilter.getDefaultInstance()) {
                    this.f47344f = OrFilter.newBuilder((OrFilter) this.f47344f).i0(orFilter).I();
                } else {
                    this.f47344f = orFilter;
                }
                R();
            } else {
                if (this.f47343e == 7) {
                    q2Var.e(orFilter);
                }
                this.f47351m.g(orFilter);
            }
            this.f47343e = 7;
            return this;
        }

        public c q0(ResponseFlagFilter responseFlagFilter) {
            q2<ResponseFlagFilter, ResponseFlagFilter.b, m> q2Var = this.f47353o;
            if (q2Var == null) {
                if (this.f47343e == 9 && this.f47344f != ResponseFlagFilter.getDefaultInstance()) {
                    this.f47344f = ResponseFlagFilter.newBuilder((ResponseFlagFilter) this.f47344f).h0(responseFlagFilter).I();
                } else {
                    this.f47344f = responseFlagFilter;
                }
                R();
            } else {
                if (this.f47343e == 9) {
                    q2Var.e(responseFlagFilter);
                }
                this.f47353o.g(responseFlagFilter);
            }
            this.f47343e = 9;
            return this;
        }

        public c r0(RuntimeFilter runtimeFilter) {
            q2<RuntimeFilter, RuntimeFilter.b, n> q2Var = this.f47349k;
            if (q2Var == null) {
                if (this.f47343e == 5 && this.f47344f != RuntimeFilter.getDefaultInstance()) {
                    this.f47344f = RuntimeFilter.newBuilder((RuntimeFilter) this.f47344f).g0(runtimeFilter).I();
                } else {
                    this.f47344f = runtimeFilter;
                }
                R();
            } else {
                if (this.f47343e == 5) {
                    q2Var.e(runtimeFilter);
                }
                this.f47349k.g(runtimeFilter);
            }
            this.f47343e = 5;
            return this;
        }

        public c s0(StatusCodeFilter statusCodeFilter) {
            q2<StatusCodeFilter, StatusCodeFilter.b, o> q2Var = this.f47345g;
            if (q2Var == null) {
                if (this.f47343e == 1 && this.f47344f != StatusCodeFilter.getDefaultInstance()) {
                    this.f47344f = StatusCodeFilter.newBuilder((StatusCodeFilter) this.f47344f).h0(statusCodeFilter).I();
                } else {
                    this.f47344f = statusCodeFilter;
                }
                R();
            } else {
                if (this.f47343e == 1) {
                    q2Var.e(statusCodeFilter);
                }
                this.f47345g.g(statusCodeFilter);
            }
            this.f47343e = 1;
            return this;
        }

        public c t0(TraceableFilter traceableFilter) {
            q2<TraceableFilter, TraceableFilter.b, p> q2Var = this.f47348j;
            if (q2Var == null) {
                if (this.f47343e == 4 && this.f47344f != TraceableFilter.getDefaultInstance()) {
                    this.f47344f = TraceableFilter.newBuilder((TraceableFilter) this.f47344f).g0(traceableFilter).I();
                } else {
                    this.f47344f = traceableFilter;
                }
                R();
            } else {
                if (this.f47343e == 4) {
                    q2Var.e(traceableFilter);
                }
                this.f47348j.g(traceableFilter);
            }
            this.f47343e = 4;
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: u0 */
        public final c z(h3 h3Var) {
            return (c) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: v0 */
        public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.c(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: x0 */
        public final c f1(h3 h3Var) {
            return (c) super.f1(h3Var);
        }

        /* synthetic */ c(a aVar) {
            this();
        }

        private c() {
            this.f47343e = 0;
            b0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f47343e = 0;
            b0();
        }
    }

    /* synthetic */ AccessLogFilter(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static AccessLogFilter getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.c.f47392c;
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
                case 12:
                    if (!getMetadataFilter().equals(accessLogFilter.getMetadataFilter())) {
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

    public MetadataFilter getMetadataFilter() {
        if (this.filterSpecifierCase_ == 12) {
            return (MetadataFilter) this.filterSpecifier_;
        }
        return MetadataFilter.getDefaultInstance();
    }

    public j getMetadataFilterOrBuilder() {
        if (this.filterSpecifierCase_ == 12) {
            return (MetadataFilter) this.filterSpecifier_;
        }
        return MetadataFilter.getDefaultInstance();
    }

    public NotHealthCheckFilter getNotHealthCheckFilter() {
        if (this.filterSpecifierCase_ == 3) {
            return (NotHealthCheckFilter) this.filterSpecifier_;
        }
        return NotHealthCheckFilter.getDefaultInstance();
    }

    public k getNotHealthCheckFilterOrBuilder() {
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

    public l getOrFilterOrBuilder() {
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

    public m getResponseFlagFilterOrBuilder() {
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

    public n getRuntimeFilterOrBuilder() {
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
        if (this.filterSpecifierCase_ == 12) {
            G += CodedOutputStream.G(12, (MetadataFilter) this.filterSpecifier_);
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

    public o getStatusCodeFilterOrBuilder() {
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

    public p getTraceableFilterOrBuilder() {
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

    public boolean hasMetadataFilter() {
        return this.filterSpecifierCase_ == 12;
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
            case 12:
                i9 = ((hashCode2 * 37) + 12) * 53;
                hashCode = getMetadataFilter().hashCode();
                hashCode2 = i9 + hashCode;
                int hashCode322222222222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode322222222222;
                return hashCode322222222222;
            default:
                int hashCode3222222222222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode3222222222222;
                return hashCode3222222222222;
        }
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.c.f47393d.d(AccessLogFilter.class, c.class);
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
        if (this.filterSpecifierCase_ == 12) {
            codedOutputStream.L0(12, (MetadataFilter) this.filterSpecifier_);
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

    private AccessLogFilter(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        while (!z10) {
            try {
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
                                    builder11.g0((ExtensionFilter) B11);
                                    this.filterSpecifier_ = builder11.I();
                                }
                                this.filterSpecifierCase_ = 11;
                                continue;
                            case 98:
                                MetadataFilter.b builder12 = this.filterSpecifierCase_ == 12 ? ((MetadataFilter) this.filterSpecifier_).toBuilder() : null;
                                o1 B12 = pVar.B(MetadataFilter.parser(), f0Var);
                                this.filterSpecifier_ = B12;
                                if (builder12 != null) {
                                    builder12.g0((MetadataFilter) B12);
                                    this.filterSpecifier_ = builder12.I();
                                }
                                this.filterSpecifierCase_ = 12;
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

    public static AccessLogFilter parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (AccessLogFilter) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static AccessLogFilter parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (AccessLogFilter) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static AccessLogFilter parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
        return (AccessLogFilter) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
