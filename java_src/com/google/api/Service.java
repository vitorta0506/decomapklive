package com.google.api;

import com.google.api.Authentication;
import com.google.api.Backend;
import com.google.api.Billing;
import com.google.api.Context;
import com.google.api.Control;
import com.google.api.Documentation;
import com.google.api.Endpoint;
import com.google.api.Http;
import com.google.api.LogDescriptor;
import com.google.api.Logging;
import com.google.api.MetricDescriptor;
import com.google.api.MonitoredResourceDescriptor;
import com.google.api.Monitoring;
import com.google.api.Quota;
import com.google.api.SourceInfo;
import com.google.api.SystemParameters;
import com.google.api.Usage;
import com.google.protobuf.Api;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.Enum;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Type;
import com.google.protobuf.UInt32Value;
import com.google.protobuf.a;
import com.google.protobuf.b3;
import com.google.protobuf.e2;
import com.google.protobuf.e3;
import com.google.protobuf.h3;
import com.google.protobuf.l2;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import com.tencent.thumbplayer.api.TPOptionalID;
import com.tencent.thumbplayer.core.common.TPCodecParamers;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class Service extends GeneratedMessageV3 implements r1 {
    public static final int APIS_FIELD_NUMBER = 3;
    public static final int AUTHENTICATION_FIELD_NUMBER = 11;
    public static final int BACKEND_FIELD_NUMBER = 8;
    public static final int BILLING_FIELD_NUMBER = 26;
    public static final int CONFIG_VERSION_FIELD_NUMBER = 20;
    public static final int CONTEXT_FIELD_NUMBER = 12;
    public static final int CONTROL_FIELD_NUMBER = 21;
    public static final int DOCUMENTATION_FIELD_NUMBER = 6;
    public static final int ENDPOINTS_FIELD_NUMBER = 18;
    public static final int ENUMS_FIELD_NUMBER = 5;
    public static final int HTTP_FIELD_NUMBER = 9;
    public static final int ID_FIELD_NUMBER = 33;
    public static final int LOGGING_FIELD_NUMBER = 27;
    public static final int LOGS_FIELD_NUMBER = 23;
    public static final int METRICS_FIELD_NUMBER = 24;
    public static final int MONITORED_RESOURCES_FIELD_NUMBER = 25;
    public static final int MONITORING_FIELD_NUMBER = 28;
    public static final int NAME_FIELD_NUMBER = 1;
    public static final int PRODUCER_PROJECT_ID_FIELD_NUMBER = 22;
    public static final int QUOTA_FIELD_NUMBER = 10;
    public static final int SOURCE_INFO_FIELD_NUMBER = 37;
    public static final int SYSTEM_PARAMETERS_FIELD_NUMBER = 29;
    public static final int TITLE_FIELD_NUMBER = 2;
    public static final int TYPES_FIELD_NUMBER = 4;
    public static final int USAGE_FIELD_NUMBER = 15;
    private static final long serialVersionUID = 0;
    private List<Api> apis_;
    private Authentication authentication_;
    private Backend backend_;
    private Billing billing_;
    private UInt32Value configVersion_;
    private Context context_;
    private Control control_;
    private Documentation documentation_;
    private List<Endpoint> endpoints_;
    private List<Enum> enums_;
    private Http http_;
    private volatile Object id_;
    private Logging logging_;
    private List<LogDescriptor> logs_;
    private byte memoizedIsInitialized;
    private List<MetricDescriptor> metrics_;
    private List<MonitoredResourceDescriptor> monitoredResources_;
    private Monitoring monitoring_;
    private volatile Object name_;
    private volatile Object producerProjectId_;
    private Quota quota_;
    private SourceInfo sourceInfo_;
    private SystemParameters systemParameters_;
    private volatile Object title_;
    private List<Type> types_;
    private Usage usage_;
    private static final Service DEFAULT_INSTANCE = new Service();
    private static final e2<Service> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a extends com.google.protobuf.c<Service> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public Service m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return new Service(pVar, f0Var, null);
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements r1 {
        private q2<Context, Context.b, p> A;
        private Usage B;
        private q2<SourceInfo, SourceInfo.b, g1> B3;
        private q2<Usage, Usage.b, m1> C;
        private q2<UInt32Value, UInt32Value.b, e3> C4;
        private List<Endpoint> D;
        private l2<Endpoint, Endpoint.b, z> E;
        private Control F;
        private q2<Control, Control.b, s> G;
        private List<LogDescriptor> H;
        private l2<LogDescriptor, LogDescriptor.b, l0> I;
        private List<MetricDescriptor> J;
        private l2<MetricDescriptor, MetricDescriptor.b, p0> K;
        private List<MonitoredResourceDescriptor> L;
        private l2<MonitoredResourceDescriptor, MonitoredResourceDescriptor.b, s0> M;
        private Billing N;
        private q2<Billing, Billing.c, k> O;
        private Logging P;
        private q2<Logging, Logging.b, n0> Q;
        private Monitoring R;
        private SystemParameters V1;
        private SourceInfo V2;
        private UInt32Value V3;

        /* renamed from: a1  reason: collision with root package name */
        private q2<Monitoring, Monitoring.b, u0> f10888a1;

        /* renamed from: a2  reason: collision with root package name */
        private q2<SystemParameters, SystemParameters.b, l1> f10889a2;

        /* renamed from: e  reason: collision with root package name */
        private int f10890e;

        /* renamed from: f  reason: collision with root package name */
        private Object f10891f;

        /* renamed from: g  reason: collision with root package name */
        private Object f10892g;

        /* renamed from: h  reason: collision with root package name */
        private Object f10893h;

        /* renamed from: i  reason: collision with root package name */
        private Object f10894i;

        /* renamed from: j  reason: collision with root package name */
        private List<Api> f10895j;

        /* renamed from: k  reason: collision with root package name */
        private l2<Api, Api.b, com.google.protobuf.h> f10896k;

        /* renamed from: l  reason: collision with root package name */
        private List<Type> f10897l;

        /* renamed from: m  reason: collision with root package name */
        private l2<Type, Type.b, b3> f10898m;

        /* renamed from: n  reason: collision with root package name */
        private List<Enum> f10899n;

        /* renamed from: o  reason: collision with root package name */
        private l2<Enum, Enum.b, com.google.protobuf.a0> f10900o;

        /* renamed from: p  reason: collision with root package name */
        private Documentation f10901p;

        /* renamed from: q  reason: collision with root package name */
        private q2<Documentation, Documentation.b, w> f10902q;

        /* renamed from: r  reason: collision with root package name */
        private Backend f10903r;

        /* renamed from: s  reason: collision with root package name */
        private q2<Backend, Backend.b, h> f10904s;

        /* renamed from: t  reason: collision with root package name */
        private Http f10905t;

        /* renamed from: u  reason: collision with root package name */
        private q2<Http, Http.b, e0> f10906u;

        /* renamed from: v  reason: collision with root package name */
        private Quota f10907v;

        /* renamed from: w  reason: collision with root package name */
        private q2<Quota, Quota.b, a1> f10908w;

        /* renamed from: x  reason: collision with root package name */
        private Authentication f10909x;

        /* renamed from: y  reason: collision with root package name */
        private q2<Authentication, Authentication.b, f> f10910y;

        /* renamed from: z  reason: collision with root package name */
        private Context f10911z;

        /* synthetic */ b(a aVar) {
            this();
        }

        private void a0() {
            if ((this.f10890e & 1) == 0) {
                this.f10895j = new ArrayList(this.f10895j);
                this.f10890e |= 1;
            }
        }

        private void b0() {
            if ((this.f10890e & 8) == 0) {
                this.D = new ArrayList(this.D);
                this.f10890e |= 8;
            }
        }

        private void d0() {
            if ((this.f10890e & 4) == 0) {
                this.f10899n = new ArrayList(this.f10899n);
                this.f10890e |= 4;
            }
        }

        private void e0() {
            if ((this.f10890e & 16) == 0) {
                this.H = new ArrayList(this.H);
                this.f10890e |= 16;
            }
        }

        private void g0() {
            if ((this.f10890e & 32) == 0) {
                this.J = new ArrayList(this.J);
                this.f10890e |= 32;
            }
        }

        private void h0() {
            if ((this.f10890e & 64) == 0) {
                this.L = new ArrayList(this.L);
                this.f10890e |= 64;
            }
        }

        private void i0() {
            if ((this.f10890e & 2) == 0) {
                this.f10897l = new ArrayList(this.f10897l);
                this.f10890e |= 2;
            }
        }

        private l2<Api, Api.b, com.google.protobuf.h> j0() {
            if (this.f10896k == null) {
                this.f10896k = new l2<>(this.f10895j, (this.f10890e & 1) != 0, H(), O());
                this.f10895j = null;
            }
            return this.f10896k;
        }

        private l2<Endpoint, Endpoint.b, z> l0() {
            if (this.E == null) {
                this.E = new l2<>(this.D, (this.f10890e & 8) != 0, H(), O());
                this.D = null;
            }
            return this.E;
        }

        private l2<Enum, Enum.b, com.google.protobuf.a0> m0() {
            if (this.f10900o == null) {
                this.f10900o = new l2<>(this.f10899n, (this.f10890e & 4) != 0, H(), O());
                this.f10899n = null;
            }
            return this.f10900o;
        }

        private l2<LogDescriptor, LogDescriptor.b, l0> n0() {
            if (this.I == null) {
                this.I = new l2<>(this.H, (this.f10890e & 16) != 0, H(), O());
                this.H = null;
            }
            return this.I;
        }

        private l2<MetricDescriptor, MetricDescriptor.b, p0> o0() {
            if (this.K == null) {
                this.K = new l2<>(this.J, (this.f10890e & 32) != 0, H(), O());
                this.J = null;
            }
            return this.K;
        }

        private l2<MonitoredResourceDescriptor, MonitoredResourceDescriptor.b, s0> q0() {
            if (this.M == null) {
                this.M = new l2<>(this.L, (this.f10890e & 64) != 0, H(), O());
                this.L = null;
            }
            return this.M;
        }

        private l2<Type, Type.b, b3> r0() {
            if (this.f10898m == null) {
                this.f10898m = new l2<>(this.f10897l, (this.f10890e & 2) != 0, H(), O());
                this.f10897l = null;
            }
            return this.f10898m;
        }

        private void s0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                j0();
                r0();
                m0();
                l0();
                n0();
                o0();
                q0();
            }
        }

        public b B0(Documentation documentation) {
            q2<Documentation, Documentation.b, w> q2Var = this.f10902q;
            if (q2Var == null) {
                Documentation documentation2 = this.f10901p;
                if (documentation2 != null) {
                    this.f10901p = Documentation.newBuilder(documentation2).i0(documentation).I();
                } else {
                    this.f10901p = documentation;
                }
                R();
            } else {
                q2Var.e(documentation);
            }
            return this;
        }

        public b D0(Service service) {
            if (service == Service.getDefaultInstance()) {
                return this;
            }
            if (!service.getName().isEmpty()) {
                this.f10891f = service.name_;
                R();
            }
            if (!service.getTitle().isEmpty()) {
                this.f10892g = service.title_;
                R();
            }
            if (!service.getProducerProjectId().isEmpty()) {
                this.f10893h = service.producerProjectId_;
                R();
            }
            if (!service.getId().isEmpty()) {
                this.f10894i = service.id_;
                R();
            }
            if (this.f10896k == null) {
                if (!service.apis_.isEmpty()) {
                    if (this.f10895j.isEmpty()) {
                        this.f10895j = service.apis_;
                        this.f10890e &= -2;
                    } else {
                        a0();
                        this.f10895j.addAll(service.apis_);
                    }
                    R();
                }
            } else if (!service.apis_.isEmpty()) {
                if (this.f10896k.k()) {
                    this.f10896k.f();
                    this.f10896k = null;
                    this.f10895j = service.apis_;
                    this.f10890e &= -2;
                    this.f10896k = GeneratedMessageV3.alwaysUseFieldBuilders ? j0() : null;
                } else {
                    this.f10896k.b(service.apis_);
                }
            }
            if (this.f10898m == null) {
                if (!service.types_.isEmpty()) {
                    if (this.f10897l.isEmpty()) {
                        this.f10897l = service.types_;
                        this.f10890e &= -3;
                    } else {
                        i0();
                        this.f10897l.addAll(service.types_);
                    }
                    R();
                }
            } else if (!service.types_.isEmpty()) {
                if (this.f10898m.k()) {
                    this.f10898m.f();
                    this.f10898m = null;
                    this.f10897l = service.types_;
                    this.f10890e &= -3;
                    this.f10898m = GeneratedMessageV3.alwaysUseFieldBuilders ? r0() : null;
                } else {
                    this.f10898m.b(service.types_);
                }
            }
            if (this.f10900o == null) {
                if (!service.enums_.isEmpty()) {
                    if (this.f10899n.isEmpty()) {
                        this.f10899n = service.enums_;
                        this.f10890e &= -5;
                    } else {
                        d0();
                        this.f10899n.addAll(service.enums_);
                    }
                    R();
                }
            } else if (!service.enums_.isEmpty()) {
                if (this.f10900o.k()) {
                    this.f10900o.f();
                    this.f10900o = null;
                    this.f10899n = service.enums_;
                    this.f10890e &= -5;
                    this.f10900o = GeneratedMessageV3.alwaysUseFieldBuilders ? m0() : null;
                } else {
                    this.f10900o.b(service.enums_);
                }
            }
            if (service.hasDocumentation()) {
                B0(service.getDocumentation());
            }
            if (service.hasBackend()) {
                u0(service.getBackend());
            }
            if (service.hasHttp()) {
                J0(service.getHttp());
            }
            if (service.hasQuota()) {
                M0(service.getQuota());
            }
            if (service.hasAuthentication()) {
                t0(service.getAuthentication());
            }
            if (service.hasContext()) {
                y0(service.getContext());
            }
            if (service.hasUsage()) {
                S0(service.getUsage());
            }
            if (this.E == null) {
                if (!service.endpoints_.isEmpty()) {
                    if (this.D.isEmpty()) {
                        this.D = service.endpoints_;
                        this.f10890e &= -9;
                    } else {
                        b0();
                        this.D.addAll(service.endpoints_);
                    }
                    R();
                }
            } else if (!service.endpoints_.isEmpty()) {
                if (this.E.k()) {
                    this.E.f();
                    this.E = null;
                    this.D = service.endpoints_;
                    this.f10890e &= -9;
                    this.E = GeneratedMessageV3.alwaysUseFieldBuilders ? l0() : null;
                } else {
                    this.E.b(service.endpoints_);
                }
            }
            if (service.hasControl()) {
                z0(service.getControl());
            }
            if (this.I == null) {
                if (!service.logs_.isEmpty()) {
                    if (this.H.isEmpty()) {
                        this.H = service.logs_;
                        this.f10890e &= -17;
                    } else {
                        e0();
                        this.H.addAll(service.logs_);
                    }
                    R();
                }
            } else if (!service.logs_.isEmpty()) {
                if (this.I.k()) {
                    this.I.f();
                    this.I = null;
                    this.H = service.logs_;
                    this.f10890e &= -17;
                    this.I = GeneratedMessageV3.alwaysUseFieldBuilders ? n0() : null;
                } else {
                    this.I.b(service.logs_);
                }
            }
            if (this.K == null) {
                if (!service.metrics_.isEmpty()) {
                    if (this.J.isEmpty()) {
                        this.J = service.metrics_;
                        this.f10890e &= -33;
                    } else {
                        g0();
                        this.J.addAll(service.metrics_);
                    }
                    R();
                }
            } else if (!service.metrics_.isEmpty()) {
                if (this.K.k()) {
                    this.K.f();
                    this.K = null;
                    this.J = service.metrics_;
                    this.f10890e &= -33;
                    this.K = GeneratedMessageV3.alwaysUseFieldBuilders ? o0() : null;
                } else {
                    this.K.b(service.metrics_);
                }
            }
            if (this.M == null) {
                if (!service.monitoredResources_.isEmpty()) {
                    if (this.L.isEmpty()) {
                        this.L = service.monitoredResources_;
                        this.f10890e &= -65;
                    } else {
                        h0();
                        this.L.addAll(service.monitoredResources_);
                    }
                    R();
                }
            } else if (!service.monitoredResources_.isEmpty()) {
                if (this.M.k()) {
                    this.M.f();
                    this.M = null;
                    this.L = service.monitoredResources_;
                    this.f10890e &= -65;
                    this.M = GeneratedMessageV3.alwaysUseFieldBuilders ? q0() : null;
                } else {
                    this.M.b(service.monitoredResources_);
                }
            }
            if (service.hasBilling()) {
                v0(service.getBilling());
            }
            if (service.hasLogging()) {
                K0(service.getLogging());
            }
            if (service.hasMonitoring()) {
                L0(service.getMonitoring());
            }
            if (service.hasSystemParameters()) {
                O0(service.getSystemParameters());
            }
            if (service.hasSourceInfo()) {
                N0(service.getSourceInfo());
            }
            if (service.hasConfigVersion()) {
                x0(service.getConfigVersion());
            }
            z(((GeneratedMessageV3) service).unknownFields);
            R();
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: H0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.api.Service.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.api.Service.access$3700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.api.Service r3 = (com.google.api.Service) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.D0(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                com.google.api.Service r4 = (com.google.api.Service) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.D0(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.api.Service.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.api.Service$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: I0 */
        public b v(com.google.protobuf.l1 l1Var) {
            if (l1Var instanceof Service) {
                return D0((Service) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b J0(Http http) {
            q2<Http, Http.b, e0> q2Var = this.f10906u;
            if (q2Var == null) {
                Http http2 = this.f10905t;
                if (http2 != null) {
                    this.f10905t = Http.newBuilder(http2).g0(http).I();
                } else {
                    this.f10905t = http;
                }
                R();
            } else {
                q2Var.e(http);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return f1.f11208b.d(Service.class, b.class);
        }

        public b K0(Logging logging) {
            q2<Logging, Logging.b, n0> q2Var = this.Q;
            if (q2Var == null) {
                Logging logging2 = this.P;
                if (logging2 != null) {
                    this.P = Logging.newBuilder(logging2).i0(logging).I();
                } else {
                    this.P = logging;
                }
                R();
            } else {
                q2Var.e(logging);
            }
            return this;
        }

        public b L0(Monitoring monitoring) {
            q2<Monitoring, Monitoring.b, u0> q2Var = this.f10888a1;
            if (q2Var == null) {
                Monitoring monitoring2 = this.R;
                if (monitoring2 != null) {
                    this.R = Monitoring.newBuilder(monitoring2).i0(monitoring).I();
                } else {
                    this.R = monitoring;
                }
                R();
            } else {
                q2Var.e(monitoring);
            }
            return this;
        }

        public b M0(Quota quota) {
            q2<Quota, Quota.b, a1> q2Var = this.f10908w;
            if (q2Var == null) {
                Quota quota2 = this.f10907v;
                if (quota2 != null) {
                    this.f10907v = Quota.newBuilder(quota2).i0(quota).I();
                } else {
                    this.f10907v = quota;
                }
                R();
            } else {
                q2Var.e(quota);
            }
            return this;
        }

        public b N0(SourceInfo sourceInfo) {
            q2<SourceInfo, SourceInfo.b, g1> q2Var = this.B3;
            if (q2Var == null) {
                SourceInfo sourceInfo2 = this.V2;
                if (sourceInfo2 != null) {
                    this.V2 = SourceInfo.newBuilder(sourceInfo2).g0(sourceInfo).I();
                } else {
                    this.V2 = sourceInfo;
                }
                R();
            } else {
                q2Var.e(sourceInfo);
            }
            return this;
        }

        public b O0(SystemParameters systemParameters) {
            q2<SystemParameters, SystemParameters.b, l1> q2Var = this.f10889a2;
            if (q2Var == null) {
                SystemParameters systemParameters2 = this.V1;
                if (systemParameters2 != null) {
                    this.V1 = SystemParameters.newBuilder(systemParameters2).g0(systemParameters).I();
                } else {
                    this.V1 = systemParameters;
                }
                R();
            } else {
                q2Var.e(systemParameters);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Q0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        public b S0(Usage usage) {
            q2<Usage, Usage.b, m1> q2Var = this.C;
            if (q2Var == null) {
                Usage usage2 = this.B;
                if (usage2 != null) {
                    this.B = Usage.newBuilder(usage2).h0(usage).I();
                } else {
                    this.B = usage;
                }
                R();
            } else {
                q2Var.e(usage);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: T0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: U0 */
        public final b f1(h3 h3Var) {
            return (b) super.f1(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public Service build() {
            Service I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public Service I() {
            Service service = new Service(this, (a) null);
            service.name_ = this.f10891f;
            service.title_ = this.f10892g;
            service.producerProjectId_ = this.f10893h;
            service.id_ = this.f10894i;
            l2<Api, Api.b, com.google.protobuf.h> l2Var = this.f10896k;
            if (l2Var == null) {
                if ((this.f10890e & 1) != 0) {
                    this.f10895j = Collections.unmodifiableList(this.f10895j);
                    this.f10890e &= -2;
                }
                service.apis_ = this.f10895j;
            } else {
                service.apis_ = l2Var.e();
            }
            l2<Type, Type.b, b3> l2Var2 = this.f10898m;
            if (l2Var2 == null) {
                if ((this.f10890e & 2) != 0) {
                    this.f10897l = Collections.unmodifiableList(this.f10897l);
                    this.f10890e &= -3;
                }
                service.types_ = this.f10897l;
            } else {
                service.types_ = l2Var2.e();
            }
            l2<Enum, Enum.b, com.google.protobuf.a0> l2Var3 = this.f10900o;
            if (l2Var3 == null) {
                if ((this.f10890e & 4) != 0) {
                    this.f10899n = Collections.unmodifiableList(this.f10899n);
                    this.f10890e &= -5;
                }
                service.enums_ = this.f10899n;
            } else {
                service.enums_ = l2Var3.e();
            }
            q2<Documentation, Documentation.b, w> q2Var = this.f10902q;
            if (q2Var == null) {
                service.documentation_ = this.f10901p;
            } else {
                service.documentation_ = q2Var.b();
            }
            q2<Backend, Backend.b, h> q2Var2 = this.f10904s;
            if (q2Var2 == null) {
                service.backend_ = this.f10903r;
            } else {
                service.backend_ = q2Var2.b();
            }
            q2<Http, Http.b, e0> q2Var3 = this.f10906u;
            if (q2Var3 == null) {
                service.http_ = this.f10905t;
            } else {
                service.http_ = q2Var3.b();
            }
            q2<Quota, Quota.b, a1> q2Var4 = this.f10908w;
            if (q2Var4 == null) {
                service.quota_ = this.f10907v;
            } else {
                service.quota_ = q2Var4.b();
            }
            q2<Authentication, Authentication.b, f> q2Var5 = this.f10910y;
            if (q2Var5 == null) {
                service.authentication_ = this.f10909x;
            } else {
                service.authentication_ = q2Var5.b();
            }
            q2<Context, Context.b, p> q2Var6 = this.A;
            if (q2Var6 == null) {
                service.context_ = this.f10911z;
            } else {
                service.context_ = q2Var6.b();
            }
            q2<Usage, Usage.b, m1> q2Var7 = this.C;
            if (q2Var7 == null) {
                service.usage_ = this.B;
            } else {
                service.usage_ = q2Var7.b();
            }
            l2<Endpoint, Endpoint.b, z> l2Var4 = this.E;
            if (l2Var4 == null) {
                if ((this.f10890e & 8) != 0) {
                    this.D = Collections.unmodifiableList(this.D);
                    this.f10890e &= -9;
                }
                service.endpoints_ = this.D;
            } else {
                service.endpoints_ = l2Var4.e();
            }
            q2<Control, Control.b, s> q2Var8 = this.G;
            if (q2Var8 == null) {
                service.control_ = this.F;
            } else {
                service.control_ = q2Var8.b();
            }
            l2<LogDescriptor, LogDescriptor.b, l0> l2Var5 = this.I;
            if (l2Var5 == null) {
                if ((this.f10890e & 16) != 0) {
                    this.H = Collections.unmodifiableList(this.H);
                    this.f10890e &= -17;
                }
                service.logs_ = this.H;
            } else {
                service.logs_ = l2Var5.e();
            }
            l2<MetricDescriptor, MetricDescriptor.b, p0> l2Var6 = this.K;
            if (l2Var6 == null) {
                if ((this.f10890e & 32) != 0) {
                    this.J = Collections.unmodifiableList(this.J);
                    this.f10890e &= -33;
                }
                service.metrics_ = this.J;
            } else {
                service.metrics_ = l2Var6.e();
            }
            l2<MonitoredResourceDescriptor, MonitoredResourceDescriptor.b, s0> l2Var7 = this.M;
            if (l2Var7 == null) {
                if ((this.f10890e & 64) != 0) {
                    this.L = Collections.unmodifiableList(this.L);
                    this.f10890e &= -65;
                }
                service.monitoredResources_ = this.L;
            } else {
                service.monitoredResources_ = l2Var7.e();
            }
            q2<Billing, Billing.c, k> q2Var9 = this.O;
            if (q2Var9 == null) {
                service.billing_ = this.N;
            } else {
                service.billing_ = q2Var9.b();
            }
            q2<Logging, Logging.b, n0> q2Var10 = this.Q;
            if (q2Var10 == null) {
                service.logging_ = this.P;
            } else {
                service.logging_ = q2Var10.b();
            }
            q2<Monitoring, Monitoring.b, u0> q2Var11 = this.f10888a1;
            if (q2Var11 == null) {
                service.monitoring_ = this.R;
            } else {
                service.monitoring_ = q2Var11.b();
            }
            q2<SystemParameters, SystemParameters.b, l1> q2Var12 = this.f10889a2;
            if (q2Var12 == null) {
                service.systemParameters_ = this.V1;
            } else {
                service.systemParameters_ = q2Var12.b();
            }
            q2<SourceInfo, SourceInfo.b, g1> q2Var13 = this.B3;
            if (q2Var13 == null) {
                service.sourceInfo_ = this.V2;
            } else {
                service.sourceInfo_ = q2Var13.b();
            }
            q2<UInt32Value, UInt32Value.b, e3> q2Var14 = this.C4;
            if (q2Var14 == null) {
                service.configVersion_ = this.V3;
            } else {
                service.configVersion_ = q2Var14.b();
            }
            Q();
            return service;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return f1.f11207a;
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: k0 */
        public Service getDefaultInstanceForType() {
            return Service.getDefaultInstance();
        }

        public b t0(Authentication authentication) {
            q2<Authentication, Authentication.b, f> q2Var = this.f10910y;
            if (q2Var == null) {
                Authentication authentication2 = this.f10909x;
                if (authentication2 != null) {
                    this.f10909x = Authentication.newBuilder(authentication2).i0(authentication).I();
                } else {
                    this.f10909x = authentication;
                }
                R();
            } else {
                q2Var.e(authentication);
            }
            return this;
        }

        public b u0(Backend backend) {
            q2<Backend, Backend.b, h> q2Var = this.f10904s;
            if (q2Var == null) {
                Backend backend2 = this.f10903r;
                if (backend2 != null) {
                    this.f10903r = Backend.newBuilder(backend2).g0(backend).I();
                } else {
                    this.f10903r = backend;
                }
                R();
            } else {
                q2Var.e(backend);
            }
            return this;
        }

        public b v0(Billing billing) {
            q2<Billing, Billing.c, k> q2Var = this.O;
            if (q2Var == null) {
                Billing billing2 = this.N;
                if (billing2 != null) {
                    this.N = Billing.newBuilder(billing2).g0(billing).I();
                } else {
                    this.N = billing;
                }
                R();
            } else {
                q2Var.e(billing);
            }
            return this;
        }

        @Deprecated
        public b x0(UInt32Value uInt32Value) {
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.C4;
            if (q2Var == null) {
                UInt32Value uInt32Value2 = this.V3;
                if (uInt32Value2 != null) {
                    this.V3 = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                } else {
                    this.V3 = uInt32Value;
                }
                R();
            } else {
                q2Var.e(uInt32Value);
            }
            return this;
        }

        public b y0(Context context) {
            q2<Context, Context.b, p> q2Var = this.A;
            if (q2Var == null) {
                Context context2 = this.f10911z;
                if (context2 != null) {
                    this.f10911z = Context.newBuilder(context2).g0(context).I();
                } else {
                    this.f10911z = context;
                }
                R();
            } else {
                q2Var.e(context);
            }
            return this;
        }

        public b z0(Control control) {
            q2<Control, Control.b, s> q2Var = this.G;
            if (q2Var == null) {
                Control control2 = this.F;
                if (control2 != null) {
                    this.F = Control.newBuilder(control2).d0(control).I();
                } else {
                    this.F = control;
                }
                R();
            } else {
                q2Var.e(control);
            }
            return this;
        }

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private b() {
            this.f10891f = "";
            this.f10892g = "";
            this.f10893h = "";
            this.f10894i = "";
            this.f10895j = Collections.emptyList();
            this.f10897l = Collections.emptyList();
            this.f10899n = Collections.emptyList();
            this.D = Collections.emptyList();
            this.H = Collections.emptyList();
            this.J = Collections.emptyList();
            this.L = Collections.emptyList();
            s0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f10891f = "";
            this.f10892g = "";
            this.f10893h = "";
            this.f10894i = "";
            this.f10895j = Collections.emptyList();
            this.f10897l = Collections.emptyList();
            this.f10899n = Collections.emptyList();
            this.D = Collections.emptyList();
            this.H = Collections.emptyList();
            this.J = Collections.emptyList();
            this.L = Collections.emptyList();
            s0();
        }
    }

    /* synthetic */ Service(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static Service getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return f1.f11207a;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Service parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Service) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Service parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<Service> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Service)) {
            return super.equals(obj);
        }
        Service service = (Service) obj;
        if (getName().equals(service.getName()) && getTitle().equals(service.getTitle()) && getProducerProjectId().equals(service.getProducerProjectId()) && getId().equals(service.getId()) && getApisList().equals(service.getApisList()) && getTypesList().equals(service.getTypesList()) && getEnumsList().equals(service.getEnumsList()) && hasDocumentation() == service.hasDocumentation()) {
            if ((!hasDocumentation() || getDocumentation().equals(service.getDocumentation())) && hasBackend() == service.hasBackend()) {
                if ((!hasBackend() || getBackend().equals(service.getBackend())) && hasHttp() == service.hasHttp()) {
                    if ((!hasHttp() || getHttp().equals(service.getHttp())) && hasQuota() == service.hasQuota()) {
                        if ((!hasQuota() || getQuota().equals(service.getQuota())) && hasAuthentication() == service.hasAuthentication()) {
                            if ((!hasAuthentication() || getAuthentication().equals(service.getAuthentication())) && hasContext() == service.hasContext()) {
                                if ((!hasContext() || getContext().equals(service.getContext())) && hasUsage() == service.hasUsage()) {
                                    if ((!hasUsage() || getUsage().equals(service.getUsage())) && getEndpointsList().equals(service.getEndpointsList()) && hasControl() == service.hasControl()) {
                                        if ((!hasControl() || getControl().equals(service.getControl())) && getLogsList().equals(service.getLogsList()) && getMetricsList().equals(service.getMetricsList()) && getMonitoredResourcesList().equals(service.getMonitoredResourcesList()) && hasBilling() == service.hasBilling()) {
                                            if ((!hasBilling() || getBilling().equals(service.getBilling())) && hasLogging() == service.hasLogging()) {
                                                if ((!hasLogging() || getLogging().equals(service.getLogging())) && hasMonitoring() == service.hasMonitoring()) {
                                                    if ((!hasMonitoring() || getMonitoring().equals(service.getMonitoring())) && hasSystemParameters() == service.hasSystemParameters()) {
                                                        if ((!hasSystemParameters() || getSystemParameters().equals(service.getSystemParameters())) && hasSourceInfo() == service.hasSourceInfo()) {
                                                            if ((!hasSourceInfo() || getSourceInfo().equals(service.getSourceInfo())) && hasConfigVersion() == service.hasConfigVersion()) {
                                                                return (!hasConfigVersion() || getConfigVersion().equals(service.getConfigVersion())) && this.unknownFields.equals(service.unknownFields);
                                                            }
                                                            return false;
                                                        }
                                                        return false;
                                                    }
                                                    return false;
                                                }
                                                return false;
                                            }
                                            return false;
                                        }
                                        return false;
                                    }
                                    return false;
                                }
                                return false;
                            }
                            return false;
                        }
                        return false;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    public Api getApis(int i9) {
        return this.apis_.get(i9);
    }

    public int getApisCount() {
        return this.apis_.size();
    }

    public List<Api> getApisList() {
        return this.apis_;
    }

    public com.google.protobuf.h getApisOrBuilder(int i9) {
        return this.apis_.get(i9);
    }

    public List<? extends com.google.protobuf.h> getApisOrBuilderList() {
        return this.apis_;
    }

    public Authentication getAuthentication() {
        Authentication authentication = this.authentication_;
        return authentication == null ? Authentication.getDefaultInstance() : authentication;
    }

    public f getAuthenticationOrBuilder() {
        return getAuthentication();
    }

    public Backend getBackend() {
        Backend backend = this.backend_;
        return backend == null ? Backend.getDefaultInstance() : backend;
    }

    public h getBackendOrBuilder() {
        return getBackend();
    }

    public Billing getBilling() {
        Billing billing = this.billing_;
        return billing == null ? Billing.getDefaultInstance() : billing;
    }

    public k getBillingOrBuilder() {
        return getBilling();
    }

    @Deprecated
    public UInt32Value getConfigVersion() {
        UInt32Value uInt32Value = this.configVersion_;
        return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
    }

    @Deprecated
    public e3 getConfigVersionOrBuilder() {
        return getConfigVersion();
    }

    public Context getContext() {
        Context context = this.context_;
        return context == null ? Context.getDefaultInstance() : context;
    }

    public p getContextOrBuilder() {
        return getContext();
    }

    public Control getControl() {
        Control control = this.control_;
        return control == null ? Control.getDefaultInstance() : control;
    }

    public s getControlOrBuilder() {
        return getControl();
    }

    public Documentation getDocumentation() {
        Documentation documentation = this.documentation_;
        return documentation == null ? Documentation.getDefaultInstance() : documentation;
    }

    public w getDocumentationOrBuilder() {
        return getDocumentation();
    }

    public Endpoint getEndpoints(int i9) {
        return this.endpoints_.get(i9);
    }

    public int getEndpointsCount() {
        return this.endpoints_.size();
    }

    public List<Endpoint> getEndpointsList() {
        return this.endpoints_;
    }

    public z getEndpointsOrBuilder(int i9) {
        return this.endpoints_.get(i9);
    }

    public List<? extends z> getEndpointsOrBuilderList() {
        return this.endpoints_;
    }

    public Enum getEnums(int i9) {
        return this.enums_.get(i9);
    }

    public int getEnumsCount() {
        return this.enums_.size();
    }

    public List<Enum> getEnumsList() {
        return this.enums_;
    }

    public com.google.protobuf.a0 getEnumsOrBuilder(int i9) {
        return this.enums_.get(i9);
    }

    public List<? extends com.google.protobuf.a0> getEnumsOrBuilderList() {
        return this.enums_;
    }

    public Http getHttp() {
        Http http = this.http_;
        return http == null ? Http.getDefaultInstance() : http;
    }

    public e0 getHttpOrBuilder() {
        return getHttp();
    }

    public String getId() {
        Object obj = this.id_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.id_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getIdBytes() {
        Object obj = this.id_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.id_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public Logging getLogging() {
        Logging logging = this.logging_;
        return logging == null ? Logging.getDefaultInstance() : logging;
    }

    public n0 getLoggingOrBuilder() {
        return getLogging();
    }

    public LogDescriptor getLogs(int i9) {
        return this.logs_.get(i9);
    }

    public int getLogsCount() {
        return this.logs_.size();
    }

    public List<LogDescriptor> getLogsList() {
        return this.logs_;
    }

    public l0 getLogsOrBuilder(int i9) {
        return this.logs_.get(i9);
    }

    public List<? extends l0> getLogsOrBuilderList() {
        return this.logs_;
    }

    public MetricDescriptor getMetrics(int i9) {
        return this.metrics_.get(i9);
    }

    public int getMetricsCount() {
        return this.metrics_.size();
    }

    public List<MetricDescriptor> getMetricsList() {
        return this.metrics_;
    }

    public p0 getMetricsOrBuilder(int i9) {
        return this.metrics_.get(i9);
    }

    public List<? extends p0> getMetricsOrBuilderList() {
        return this.metrics_;
    }

    public MonitoredResourceDescriptor getMonitoredResources(int i9) {
        return this.monitoredResources_.get(i9);
    }

    public int getMonitoredResourcesCount() {
        return this.monitoredResources_.size();
    }

    public List<MonitoredResourceDescriptor> getMonitoredResourcesList() {
        return this.monitoredResources_;
    }

    public s0 getMonitoredResourcesOrBuilder(int i9) {
        return this.monitoredResources_.get(i9);
    }

    public List<? extends s0> getMonitoredResourcesOrBuilderList() {
        return this.monitoredResources_;
    }

    public Monitoring getMonitoring() {
        Monitoring monitoring = this.monitoring_;
        return monitoring == null ? Monitoring.getDefaultInstance() : monitoring;
    }

    public u0 getMonitoringOrBuilder() {
        return getMonitoring();
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
    public e2<Service> getParserForType() {
        return PARSER;
    }

    public String getProducerProjectId() {
        Object obj = this.producerProjectId_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.producerProjectId_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getProducerProjectIdBytes() {
        Object obj = this.producerProjectId_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.producerProjectId_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public Quota getQuota() {
        Quota quota = this.quota_;
        return quota == null ? Quota.getDefaultInstance() : quota;
    }

    public a1 getQuotaOrBuilder() {
        return getQuota();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = !GeneratedMessageV3.isStringEmpty(this.name_) ? GeneratedMessageV3.computeStringSize(1, this.name_) + 0 : 0;
        if (!GeneratedMessageV3.isStringEmpty(this.title_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(2, this.title_);
        }
        for (int i10 = 0; i10 < this.apis_.size(); i10++) {
            computeStringSize += CodedOutputStream.G(3, this.apis_.get(i10));
        }
        for (int i11 = 0; i11 < this.types_.size(); i11++) {
            computeStringSize += CodedOutputStream.G(4, this.types_.get(i11));
        }
        for (int i12 = 0; i12 < this.enums_.size(); i12++) {
            computeStringSize += CodedOutputStream.G(5, this.enums_.get(i12));
        }
        if (this.documentation_ != null) {
            computeStringSize += CodedOutputStream.G(6, getDocumentation());
        }
        if (this.backend_ != null) {
            computeStringSize += CodedOutputStream.G(8, getBackend());
        }
        if (this.http_ != null) {
            computeStringSize += CodedOutputStream.G(9, getHttp());
        }
        if (this.quota_ != null) {
            computeStringSize += CodedOutputStream.G(10, getQuota());
        }
        if (this.authentication_ != null) {
            computeStringSize += CodedOutputStream.G(11, getAuthentication());
        }
        if (this.context_ != null) {
            computeStringSize += CodedOutputStream.G(12, getContext());
        }
        if (this.usage_ != null) {
            computeStringSize += CodedOutputStream.G(15, getUsage());
        }
        for (int i13 = 0; i13 < this.endpoints_.size(); i13++) {
            computeStringSize += CodedOutputStream.G(18, this.endpoints_.get(i13));
        }
        if (this.configVersion_ != null) {
            computeStringSize += CodedOutputStream.G(20, getConfigVersion());
        }
        if (this.control_ != null) {
            computeStringSize += CodedOutputStream.G(21, getControl());
        }
        if (!GeneratedMessageV3.isStringEmpty(this.producerProjectId_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(22, this.producerProjectId_);
        }
        for (int i14 = 0; i14 < this.logs_.size(); i14++) {
            computeStringSize += CodedOutputStream.G(23, this.logs_.get(i14));
        }
        for (int i15 = 0; i15 < this.metrics_.size(); i15++) {
            computeStringSize += CodedOutputStream.G(24, this.metrics_.get(i15));
        }
        for (int i16 = 0; i16 < this.monitoredResources_.size(); i16++) {
            computeStringSize += CodedOutputStream.G(25, this.monitoredResources_.get(i16));
        }
        if (this.billing_ != null) {
            computeStringSize += CodedOutputStream.G(26, getBilling());
        }
        if (this.logging_ != null) {
            computeStringSize += CodedOutputStream.G(27, getLogging());
        }
        if (this.monitoring_ != null) {
            computeStringSize += CodedOutputStream.G(28, getMonitoring());
        }
        if (this.systemParameters_ != null) {
            computeStringSize += CodedOutputStream.G(29, getSystemParameters());
        }
        if (!GeneratedMessageV3.isStringEmpty(this.id_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(33, this.id_);
        }
        if (this.sourceInfo_ != null) {
            computeStringSize += CodedOutputStream.G(37, getSourceInfo());
        }
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public SourceInfo getSourceInfo() {
        SourceInfo sourceInfo = this.sourceInfo_;
        return sourceInfo == null ? SourceInfo.getDefaultInstance() : sourceInfo;
    }

    public g1 getSourceInfoOrBuilder() {
        return getSourceInfo();
    }

    public SystemParameters getSystemParameters() {
        SystemParameters systemParameters = this.systemParameters_;
        return systemParameters == null ? SystemParameters.getDefaultInstance() : systemParameters;
    }

    public l1 getSystemParametersOrBuilder() {
        return getSystemParameters();
    }

    public String getTitle() {
        Object obj = this.title_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.title_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getTitleBytes() {
        Object obj = this.title_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.title_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public Type getTypes(int i9) {
        return this.types_.get(i9);
    }

    public int getTypesCount() {
        return this.types_.size();
    }

    public List<Type> getTypesList() {
        return this.types_;
    }

    public b3 getTypesOrBuilder(int i9) {
        return this.types_.get(i9);
    }

    public List<? extends b3> getTypesOrBuilderList() {
        return this.types_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public Usage getUsage() {
        Usage usage = this.usage_;
        return usage == null ? Usage.getDefaultInstance() : usage;
    }

    public m1 getUsageOrBuilder() {
        return getUsage();
    }

    public boolean hasAuthentication() {
        return this.authentication_ != null;
    }

    public boolean hasBackend() {
        return this.backend_ != null;
    }

    public boolean hasBilling() {
        return this.billing_ != null;
    }

    @Deprecated
    public boolean hasConfigVersion() {
        return this.configVersion_ != null;
    }

    public boolean hasContext() {
        return this.context_ != null;
    }

    public boolean hasControl() {
        return this.control_ != null;
    }

    public boolean hasDocumentation() {
        return this.documentation_ != null;
    }

    public boolean hasHttp() {
        return this.http_ != null;
    }

    public boolean hasLogging() {
        return this.logging_ != null;
    }

    public boolean hasMonitoring() {
        return this.monitoring_ != null;
    }

    public boolean hasQuota() {
        return this.quota_ != null;
    }

    public boolean hasSourceInfo() {
        return this.sourceInfo_ != null;
    }

    public boolean hasSystemParameters() {
        return this.systemParameters_ != null;
    }

    public boolean hasUsage() {
        return this.usage_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = ((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode()) * 37) + 2) * 53) + getTitle().hashCode()) * 37) + 22) * 53) + getProducerProjectId().hashCode()) * 37) + 33) * 53) + getId().hashCode();
        if (getApisCount() > 0) {
            hashCode = (((hashCode * 37) + 3) * 53) + getApisList().hashCode();
        }
        if (getTypesCount() > 0) {
            hashCode = (((hashCode * 37) + 4) * 53) + getTypesList().hashCode();
        }
        if (getEnumsCount() > 0) {
            hashCode = (((hashCode * 37) + 5) * 53) + getEnumsList().hashCode();
        }
        if (hasDocumentation()) {
            hashCode = (((hashCode * 37) + 6) * 53) + getDocumentation().hashCode();
        }
        if (hasBackend()) {
            hashCode = (((hashCode * 37) + 8) * 53) + getBackend().hashCode();
        }
        if (hasHttp()) {
            hashCode = (((hashCode * 37) + 9) * 53) + getHttp().hashCode();
        }
        if (hasQuota()) {
            hashCode = (((hashCode * 37) + 10) * 53) + getQuota().hashCode();
        }
        if (hasAuthentication()) {
            hashCode = (((hashCode * 37) + 11) * 53) + getAuthentication().hashCode();
        }
        if (hasContext()) {
            hashCode = (((hashCode * 37) + 12) * 53) + getContext().hashCode();
        }
        if (hasUsage()) {
            hashCode = (((hashCode * 37) + 15) * 53) + getUsage().hashCode();
        }
        if (getEndpointsCount() > 0) {
            hashCode = (((hashCode * 37) + 18) * 53) + getEndpointsList().hashCode();
        }
        if (hasControl()) {
            hashCode = (((hashCode * 37) + 21) * 53) + getControl().hashCode();
        }
        if (getLogsCount() > 0) {
            hashCode = (((hashCode * 37) + 23) * 53) + getLogsList().hashCode();
        }
        if (getMetricsCount() > 0) {
            hashCode = (((hashCode * 37) + 24) * 53) + getMetricsList().hashCode();
        }
        if (getMonitoredResourcesCount() > 0) {
            hashCode = (((hashCode * 37) + 25) * 53) + getMonitoredResourcesList().hashCode();
        }
        if (hasBilling()) {
            hashCode = (((hashCode * 37) + 26) * 53) + getBilling().hashCode();
        }
        if (hasLogging()) {
            hashCode = (((hashCode * 37) + 27) * 53) + getLogging().hashCode();
        }
        if (hasMonitoring()) {
            hashCode = (((hashCode * 37) + 28) * 53) + getMonitoring().hashCode();
        }
        if (hasSystemParameters()) {
            hashCode = (((hashCode * 37) + 29) * 53) + getSystemParameters().hashCode();
        }
        if (hasSourceInfo()) {
            hashCode = (((hashCode * 37) + 37) * 53) + getSourceInfo().hashCode();
        }
        if (hasConfigVersion()) {
            hashCode = (((hashCode * 37) + 20) * 53) + getConfigVersion().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return f1.f11208b.d(Service.class, b.class);
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
        return new Service();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.name_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.name_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.title_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.title_);
        }
        for (int i9 = 0; i9 < this.apis_.size(); i9++) {
            codedOutputStream.L0(3, this.apis_.get(i9));
        }
        for (int i10 = 0; i10 < this.types_.size(); i10++) {
            codedOutputStream.L0(4, this.types_.get(i10));
        }
        for (int i11 = 0; i11 < this.enums_.size(); i11++) {
            codedOutputStream.L0(5, this.enums_.get(i11));
        }
        if (this.documentation_ != null) {
            codedOutputStream.L0(6, getDocumentation());
        }
        if (this.backend_ != null) {
            codedOutputStream.L0(8, getBackend());
        }
        if (this.http_ != null) {
            codedOutputStream.L0(9, getHttp());
        }
        if (this.quota_ != null) {
            codedOutputStream.L0(10, getQuota());
        }
        if (this.authentication_ != null) {
            codedOutputStream.L0(11, getAuthentication());
        }
        if (this.context_ != null) {
            codedOutputStream.L0(12, getContext());
        }
        if (this.usage_ != null) {
            codedOutputStream.L0(15, getUsage());
        }
        for (int i12 = 0; i12 < this.endpoints_.size(); i12++) {
            codedOutputStream.L0(18, this.endpoints_.get(i12));
        }
        if (this.configVersion_ != null) {
            codedOutputStream.L0(20, getConfigVersion());
        }
        if (this.control_ != null) {
            codedOutputStream.L0(21, getControl());
        }
        if (!GeneratedMessageV3.isStringEmpty(this.producerProjectId_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 22, this.producerProjectId_);
        }
        for (int i13 = 0; i13 < this.logs_.size(); i13++) {
            codedOutputStream.L0(23, this.logs_.get(i13));
        }
        for (int i14 = 0; i14 < this.metrics_.size(); i14++) {
            codedOutputStream.L0(24, this.metrics_.get(i14));
        }
        for (int i15 = 0; i15 < this.monitoredResources_.size(); i15++) {
            codedOutputStream.L0(25, this.monitoredResources_.get(i15));
        }
        if (this.billing_ != null) {
            codedOutputStream.L0(26, getBilling());
        }
        if (this.logging_ != null) {
            codedOutputStream.L0(27, getLogging());
        }
        if (this.monitoring_ != null) {
            codedOutputStream.L0(28, getMonitoring());
        }
        if (this.systemParameters_ != null) {
            codedOutputStream.L0(29, getSystemParameters());
        }
        if (!GeneratedMessageV3.isStringEmpty(this.id_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 33, this.id_);
        }
        if (this.sourceInfo_ != null) {
            codedOutputStream.L0(37, getSourceInfo());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ Service(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(Service service) {
        return DEFAULT_INSTANCE.toBuilder().D0(service);
    }

    public static Service parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (Service) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static Service parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private Service(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Service parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public Service getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).D0(this);
    }

    public static Service parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private Service() {
        this.memoizedIsInitialized = (byte) -1;
        this.name_ = "";
        this.title_ = "";
        this.producerProjectId_ = "";
        this.id_ = "";
        this.apis_ = Collections.emptyList();
        this.types_ = Collections.emptyList();
        this.enums_ = Collections.emptyList();
        this.endpoints_ = Collections.emptyList();
        this.logs_ = Collections.emptyList();
        this.metrics_ = Collections.emptyList();
        this.monitoredResources_ = Collections.emptyList();
    }

    public static Service parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static Service parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static Service parseFrom(InputStream inputStream) throws IOException {
        return (Service) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static Service parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (Service) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static Service parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (Service) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static Service parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
        return (Service) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Service(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                        switch (L) {
                            case 0:
                                break;
                            case 10:
                                this.name_ = pVar.K();
                                continue;
                            case 18:
                                this.title_ = pVar.K();
                                continue;
                            case 26:
                                if (!(z11 & true)) {
                                    this.apis_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.apis_.add(pVar.B(Api.parser(), f0Var));
                                continue;
                            case 34:
                                if (!(z11 & true)) {
                                    this.types_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.types_.add(pVar.B(Type.parser(), f0Var));
                                continue;
                            case 42:
                                if (!(z11 & true)) {
                                    this.enums_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.enums_.add(pVar.B(Enum.parser(), f0Var));
                                continue;
                            case 50:
                                Documentation documentation = this.documentation_;
                                Documentation.b builder = documentation != null ? documentation.toBuilder() : null;
                                Documentation documentation2 = (Documentation) pVar.B(Documentation.parser(), f0Var);
                                this.documentation_ = documentation2;
                                if (builder != null) {
                                    builder.i0(documentation2);
                                    this.documentation_ = builder.I();
                                } else {
                                    continue;
                                }
                            case 66:
                                Backend backend = this.backend_;
                                Backend.b builder2 = backend != null ? backend.toBuilder() : null;
                                Backend backend2 = (Backend) pVar.B(Backend.parser(), f0Var);
                                this.backend_ = backend2;
                                if (builder2 != null) {
                                    builder2.g0(backend2);
                                    this.backend_ = builder2.I();
                                } else {
                                    continue;
                                }
                            case 74:
                                Http http = this.http_;
                                Http.b builder3 = http != null ? http.toBuilder() : null;
                                Http http2 = (Http) pVar.B(Http.parser(), f0Var);
                                this.http_ = http2;
                                if (builder3 != null) {
                                    builder3.g0(http2);
                                    this.http_ = builder3.I();
                                } else {
                                    continue;
                                }
                            case 82:
                                Quota quota = this.quota_;
                                Quota.b builder4 = quota != null ? quota.toBuilder() : null;
                                Quota quota2 = (Quota) pVar.B(Quota.parser(), f0Var);
                                this.quota_ = quota2;
                                if (builder4 != null) {
                                    builder4.i0(quota2);
                                    this.quota_ = builder4.I();
                                } else {
                                    continue;
                                }
                            case 90:
                                Authentication authentication = this.authentication_;
                                Authentication.b builder5 = authentication != null ? authentication.toBuilder() : null;
                                Authentication authentication2 = (Authentication) pVar.B(Authentication.parser(), f0Var);
                                this.authentication_ = authentication2;
                                if (builder5 != null) {
                                    builder5.i0(authentication2);
                                    this.authentication_ = builder5.I();
                                } else {
                                    continue;
                                }
                            case 98:
                                Context context = this.context_;
                                Context.b builder6 = context != null ? context.toBuilder() : null;
                                Context context2 = (Context) pVar.B(Context.parser(), f0Var);
                                this.context_ = context2;
                                if (builder6 != null) {
                                    builder6.g0(context2);
                                    this.context_ = builder6.I();
                                } else {
                                    continue;
                                }
                            case 122:
                                Usage usage = this.usage_;
                                Usage.b builder7 = usage != null ? usage.toBuilder() : null;
                                Usage usage2 = (Usage) pVar.B(Usage.parser(), f0Var);
                                this.usage_ = usage2;
                                if (builder7 != null) {
                                    builder7.h0(usage2);
                                    this.usage_ = builder7.I();
                                } else {
                                    continue;
                                }
                            case TPOptionalID.OPTION_ID_BEFORE_BOOL_ENABLE_IGNORE_VIDEO_STREAM_IN_COMMON_AUDIO_FORMATS /* 146 */:
                                if (!(z11 & true)) {
                                    this.endpoints_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.endpoints_.add(pVar.B(Endpoint.parser(), f0Var));
                                continue;
                            case 162:
                                UInt32Value uInt32Value = this.configVersion_;
                                UInt32Value.b builder8 = uInt32Value != null ? uInt32Value.toBuilder() : null;
                                UInt32Value uInt32Value2 = (UInt32Value) pVar.B(UInt32Value.parser(), f0Var);
                                this.configVersion_ = uInt32Value2;
                                if (builder8 != null) {
                                    builder8.g0(uInt32Value2);
                                    this.configVersion_ = builder8.I();
                                } else {
                                    continue;
                                }
                            case 170:
                                Control control = this.control_;
                                Control.b builder9 = control != null ? control.toBuilder() : null;
                                Control control2 = (Control) pVar.B(Control.parser(), f0Var);
                                this.control_ = control2;
                                if (builder9 != null) {
                                    builder9.d0(control2);
                                    this.control_ = builder9.I();
                                } else {
                                    continue;
                                }
                            case EventTrackingUtils.EVENT_TRACKING_RESULT_CODE /* 178 */:
                                this.producerProjectId_ = pVar.K();
                                continue;
                            case 186:
                                if (!(z11 & true)) {
                                    this.logs_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.logs_.add(pVar.B(LogDescriptor.parser(), f0Var));
                                continue;
                            case TPCodecParamers.TP_PROFILE_MJPEG_HUFFMAN_PROGRESSIVE_DCT /* 194 */:
                                if (!(z11 & true)) {
                                    this.metrics_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.metrics_.add(pVar.B(MetricDescriptor.parser(), f0Var));
                                continue;
                            case 202:
                                if (!(z11 & true)) {
                                    this.monitoredResources_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.monitoredResources_.add(pVar.B(MonitoredResourceDescriptor.parser(), f0Var));
                                continue;
                            case 210:
                                Billing billing = this.billing_;
                                Billing.c builder10 = billing != null ? billing.toBuilder() : null;
                                Billing billing2 = (Billing) pVar.B(Billing.parser(), f0Var);
                                this.billing_ = billing2;
                                if (builder10 != null) {
                                    builder10.g0(billing2);
                                    this.billing_ = builder10.I();
                                } else {
                                    continue;
                                }
                            case 218:
                                Logging logging = this.logging_;
                                Logging.b builder11 = logging != null ? logging.toBuilder() : null;
                                Logging logging2 = (Logging) pVar.B(Logging.parser(), f0Var);
                                this.logging_ = logging2;
                                if (builder11 != null) {
                                    builder11.i0(logging2);
                                    this.logging_ = builder11.I();
                                } else {
                                    continue;
                                }
                            case 226:
                                Monitoring monitoring = this.monitoring_;
                                Monitoring.b builder12 = monitoring != null ? monitoring.toBuilder() : null;
                                Monitoring monitoring2 = (Monitoring) pVar.B(Monitoring.parser(), f0Var);
                                this.monitoring_ = monitoring2;
                                if (builder12 != null) {
                                    builder12.i0(monitoring2);
                                    this.monitoring_ = builder12.I();
                                } else {
                                    continue;
                                }
                            case 234:
                                SystemParameters systemParameters = this.systemParameters_;
                                SystemParameters.b builder13 = systemParameters != null ? systemParameters.toBuilder() : null;
                                SystemParameters systemParameters2 = (SystemParameters) pVar.B(SystemParameters.parser(), f0Var);
                                this.systemParameters_ = systemParameters2;
                                if (builder13 != null) {
                                    builder13.g0(systemParameters2);
                                    this.systemParameters_ = builder13.I();
                                } else {
                                    continue;
                                }
                            case 266:
                                this.id_ = pVar.K();
                                continue;
                            case 298:
                                SourceInfo sourceInfo = this.sourceInfo_;
                                SourceInfo.b builder14 = sourceInfo != null ? sourceInfo.toBuilder() : null;
                                SourceInfo sourceInfo2 = (SourceInfo) pVar.B(SourceInfo.parser(), f0Var);
                                this.sourceInfo_ = sourceInfo2;
                                if (builder14 != null) {
                                    builder14.g0(sourceInfo2);
                                    this.sourceInfo_ = builder14.I();
                                } else {
                                    continue;
                                }
                            default:
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    break;
                                } else {
                                    continue;
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
                if (z11 & true) {
                    this.apis_ = Collections.unmodifiableList(this.apis_);
                }
                if (z11 & true) {
                    this.types_ = Collections.unmodifiableList(this.types_);
                }
                if (z11 & true) {
                    this.enums_ = Collections.unmodifiableList(this.enums_);
                }
                if (z11 & true) {
                    this.endpoints_ = Collections.unmodifiableList(this.endpoints_);
                }
                if (z11 & true) {
                    this.logs_ = Collections.unmodifiableList(this.logs_);
                }
                if (z11 & true) {
                    this.metrics_ = Collections.unmodifiableList(this.metrics_);
                }
                if (z11 & true) {
                    this.monitoredResources_ = Collections.unmodifiableList(this.monitoredResources_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }
}
