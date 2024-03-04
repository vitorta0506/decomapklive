package com.google.cloud.audit;

import com.google.cloud.audit.AuthenticationInfo;
import com.google.cloud.audit.AuthorizationInfo;
import com.google.cloud.audit.RequestMetadata;
import com.google.cloud.audit.ResourceLocation;
import com.google.protobuf.Any;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Struct;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.l2;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import com.google.protobuf.u0;
import com.google.protobuf.u2;
import com.google.rpc.Status;
import com.tencent.thumbplayer.api.TPOptionalID;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class AuditLog extends GeneratedMessageV3 implements r1 {
    public static final int AUTHENTICATION_INFO_FIELD_NUMBER = 3;
    public static final int AUTHORIZATION_INFO_FIELD_NUMBER = 9;
    public static final int METADATA_FIELD_NUMBER = 18;
    public static final int METHOD_NAME_FIELD_NUMBER = 8;
    public static final int NUM_RESPONSE_ITEMS_FIELD_NUMBER = 12;
    public static final int REQUEST_FIELD_NUMBER = 16;
    public static final int REQUEST_METADATA_FIELD_NUMBER = 4;
    public static final int RESOURCE_LOCATION_FIELD_NUMBER = 20;
    public static final int RESOURCE_NAME_FIELD_NUMBER = 11;
    public static final int RESOURCE_ORIGINAL_STATE_FIELD_NUMBER = 19;
    public static final int RESPONSE_FIELD_NUMBER = 17;
    public static final int SERVICE_DATA_FIELD_NUMBER = 15;
    public static final int SERVICE_NAME_FIELD_NUMBER = 7;
    public static final int STATUS_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private AuthenticationInfo authenticationInfo_;
    private List<AuthorizationInfo> authorizationInfo_;
    private byte memoizedIsInitialized;
    private Struct metadata_;
    private volatile Object methodName_;
    private long numResponseItems_;
    private RequestMetadata requestMetadata_;
    private Struct request_;
    private ResourceLocation resourceLocation_;
    private volatile Object resourceName_;
    private Struct resourceOriginalState_;
    private Struct response_;
    private Any serviceData_;
    private volatile Object serviceName_;
    private Status status_;
    private static final AuditLog DEFAULT_INSTANCE = new AuditLog();
    private static final e2<AuditLog> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a extends com.google.protobuf.c<AuditLog> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public AuditLog m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new AuditLog(pVar, f0Var, null);
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements r1 {
        private q2<Struct, Struct.b, u2> A;
        private Any B;
        private q2<Any, Any.b, com.google.protobuf.f> C;

        /* renamed from: e  reason: collision with root package name */
        private int f11723e;

        /* renamed from: f  reason: collision with root package name */
        private Object f11724f;

        /* renamed from: g  reason: collision with root package name */
        private Object f11725g;

        /* renamed from: h  reason: collision with root package name */
        private Object f11726h;

        /* renamed from: i  reason: collision with root package name */
        private ResourceLocation f11727i;

        /* renamed from: j  reason: collision with root package name */
        private q2<ResourceLocation, ResourceLocation.b, e> f11728j;

        /* renamed from: k  reason: collision with root package name */
        private Struct f11729k;

        /* renamed from: l  reason: collision with root package name */
        private q2<Struct, Struct.b, u2> f11730l;

        /* renamed from: m  reason: collision with root package name */
        private long f11731m;

        /* renamed from: n  reason: collision with root package name */
        private Status f11732n;

        /* renamed from: o  reason: collision with root package name */
        private q2<Status, Status.b, com.google.rpc.c> f11733o;

        /* renamed from: p  reason: collision with root package name */
        private AuthenticationInfo f11734p;

        /* renamed from: q  reason: collision with root package name */
        private q2<AuthenticationInfo, AuthenticationInfo.b, com.google.cloud.audit.b> f11735q;

        /* renamed from: r  reason: collision with root package name */
        private List<AuthorizationInfo> f11736r;

        /* renamed from: s  reason: collision with root package name */
        private l2<AuthorizationInfo, AuthorizationInfo.b, c> f11737s;

        /* renamed from: t  reason: collision with root package name */
        private RequestMetadata f11738t;

        /* renamed from: u  reason: collision with root package name */
        private q2<RequestMetadata, RequestMetadata.b, d> f11739u;

        /* renamed from: v  reason: collision with root package name */
        private Struct f11740v;

        /* renamed from: w  reason: collision with root package name */
        private q2<Struct, Struct.b, u2> f11741w;

        /* renamed from: x  reason: collision with root package name */
        private Struct f11742x;

        /* renamed from: y  reason: collision with root package name */
        private q2<Struct, Struct.b, u2> f11743y;

        /* renamed from: z  reason: collision with root package name */
        private Struct f11744z;

        /* synthetic */ b(a aVar) {
            this();
        }

        private void a0() {
            if ((this.f11723e & 1) == 0) {
                this.f11736r = new ArrayList(this.f11736r);
                this.f11723e |= 1;
            }
        }

        private l2<AuthorizationInfo, AuthorizationInfo.b, c> b0() {
            if (this.f11737s == null) {
                this.f11737s = new l2<>(this.f11736r, (this.f11723e & 1) != 0, H(), O());
                this.f11736r = null;
            }
            return this.f11737s;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                b0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return com.google.cloud.audit.a.f11781b.d(AuditLog.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public AuditLog build() {
            AuditLog I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public AuditLog I() {
            AuditLog auditLog = new AuditLog(this, (a) null);
            auditLog.serviceName_ = this.f11724f;
            auditLog.methodName_ = this.f11725g;
            auditLog.resourceName_ = this.f11726h;
            q2<ResourceLocation, ResourceLocation.b, e> q2Var = this.f11728j;
            if (q2Var == null) {
                auditLog.resourceLocation_ = this.f11727i;
            } else {
                auditLog.resourceLocation_ = q2Var.b();
            }
            q2<Struct, Struct.b, u2> q2Var2 = this.f11730l;
            if (q2Var2 == null) {
                auditLog.resourceOriginalState_ = this.f11729k;
            } else {
                auditLog.resourceOriginalState_ = q2Var2.b();
            }
            auditLog.numResponseItems_ = this.f11731m;
            q2<Status, Status.b, com.google.rpc.c> q2Var3 = this.f11733o;
            if (q2Var3 == null) {
                auditLog.status_ = this.f11732n;
            } else {
                auditLog.status_ = q2Var3.b();
            }
            q2<AuthenticationInfo, AuthenticationInfo.b, com.google.cloud.audit.b> q2Var4 = this.f11735q;
            if (q2Var4 == null) {
                auditLog.authenticationInfo_ = this.f11734p;
            } else {
                auditLog.authenticationInfo_ = q2Var4.b();
            }
            l2<AuthorizationInfo, AuthorizationInfo.b, c> l2Var = this.f11737s;
            if (l2Var == null) {
                if ((this.f11723e & 1) != 0) {
                    this.f11736r = Collections.unmodifiableList(this.f11736r);
                    this.f11723e &= -2;
                }
                auditLog.authorizationInfo_ = this.f11736r;
            } else {
                auditLog.authorizationInfo_ = l2Var.e();
            }
            q2<RequestMetadata, RequestMetadata.b, d> q2Var5 = this.f11739u;
            if (q2Var5 == null) {
                auditLog.requestMetadata_ = this.f11738t;
            } else {
                auditLog.requestMetadata_ = q2Var5.b();
            }
            q2<Struct, Struct.b, u2> q2Var6 = this.f11741w;
            if (q2Var6 == null) {
                auditLog.request_ = this.f11740v;
            } else {
                auditLog.request_ = q2Var6.b();
            }
            q2<Struct, Struct.b, u2> q2Var7 = this.f11743y;
            if (q2Var7 == null) {
                auditLog.response_ = this.f11742x;
            } else {
                auditLog.response_ = q2Var7.b();
            }
            q2<Struct, Struct.b, u2> q2Var8 = this.A;
            if (q2Var8 == null) {
                auditLog.metadata_ = this.f11744z;
            } else {
                auditLog.metadata_ = q2Var8.b();
            }
            q2<Any, Any.b, com.google.protobuf.f> q2Var9 = this.C;
            if (q2Var9 == null) {
                auditLog.serviceData_ = this.B;
            } else {
                auditLog.serviceData_ = q2Var9.b();
            }
            Q();
            return auditLog;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: d0 */
        public AuditLog getDefaultInstanceForType() {
            return AuditLog.getDefaultInstance();
        }

        public b g0(AuthenticationInfo authenticationInfo) {
            q2<AuthenticationInfo, AuthenticationInfo.b, com.google.cloud.audit.b> q2Var = this.f11735q;
            if (q2Var == null) {
                AuthenticationInfo authenticationInfo2 = this.f11734p;
                if (authenticationInfo2 != null) {
                    this.f11734p = AuthenticationInfo.newBuilder(authenticationInfo2).g0(authenticationInfo).I();
                } else {
                    this.f11734p = authenticationInfo;
                }
                R();
            } else {
                q2Var.e(authenticationInfo);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return com.google.cloud.audit.a.f11780a;
        }

        public b h0(AuditLog auditLog) {
            if (auditLog == AuditLog.getDefaultInstance()) {
                return this;
            }
            if (!auditLog.getServiceName().isEmpty()) {
                this.f11724f = auditLog.serviceName_;
                R();
            }
            if (!auditLog.getMethodName().isEmpty()) {
                this.f11725g = auditLog.methodName_;
                R();
            }
            if (!auditLog.getResourceName().isEmpty()) {
                this.f11726h = auditLog.resourceName_;
                R();
            }
            if (auditLog.hasResourceLocation()) {
                n0(auditLog.getResourceLocation());
            }
            if (auditLog.hasResourceOriginalState()) {
                o0(auditLog.getResourceOriginalState());
            }
            if (auditLog.getNumResponseItems() != 0) {
                v0(auditLog.getNumResponseItems());
            }
            if (auditLog.hasStatus()) {
                s0(auditLog.getStatus());
            }
            if (auditLog.hasAuthenticationInfo()) {
                g0(auditLog.getAuthenticationInfo());
            }
            if (this.f11737s == null) {
                if (!auditLog.authorizationInfo_.isEmpty()) {
                    if (this.f11736r.isEmpty()) {
                        this.f11736r = auditLog.authorizationInfo_;
                        this.f11723e &= -2;
                    } else {
                        a0();
                        this.f11736r.addAll(auditLog.authorizationInfo_);
                    }
                    R();
                }
            } else if (!auditLog.authorizationInfo_.isEmpty()) {
                if (this.f11737s.k()) {
                    this.f11737s.f();
                    this.f11737s = null;
                    this.f11736r = auditLog.authorizationInfo_;
                    this.f11723e &= -2;
                    this.f11737s = GeneratedMessageV3.alwaysUseFieldBuilders ? b0() : null;
                } else {
                    this.f11737s.b(auditLog.authorizationInfo_);
                }
            }
            if (auditLog.hasRequestMetadata()) {
                m0(auditLog.getRequestMetadata());
            }
            if (auditLog.hasRequest()) {
                l0(auditLog.getRequest());
            }
            if (auditLog.hasResponse()) {
                q0(auditLog.getResponse());
            }
            if (auditLog.hasMetadata()) {
                k0(auditLog.getMetadata());
            }
            if (auditLog.hasServiceData()) {
                r0(auditLog.getServiceData());
            }
            z(((GeneratedMessageV3) auditLog).unknownFields);
            R();
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.cloud.audit.AuditLog.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.cloud.audit.AuditLog.access$2000()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.cloud.audit.AuditLog r3 = (com.google.cloud.audit.AuditLog) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                com.google.cloud.audit.AuditLog r4 = (com.google.cloud.audit.AuditLog) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.cloud.audit.AuditLog.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.cloud.audit.AuditLog$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: j0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof AuditLog) {
                return h0((AuditLog) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b k0(Struct struct) {
            q2<Struct, Struct.b, u2> q2Var = this.A;
            if (q2Var == null) {
                Struct struct2 = this.f11744z;
                if (struct2 != null) {
                    this.f11744z = Struct.newBuilder(struct2).i0(struct).I();
                } else {
                    this.f11744z = struct;
                }
                R();
            } else {
                q2Var.e(struct);
            }
            return this;
        }

        public b l0(Struct struct) {
            q2<Struct, Struct.b, u2> q2Var = this.f11741w;
            if (q2Var == null) {
                Struct struct2 = this.f11740v;
                if (struct2 != null) {
                    this.f11740v = Struct.newBuilder(struct2).i0(struct).I();
                } else {
                    this.f11740v = struct;
                }
                R();
            } else {
                q2Var.e(struct);
            }
            return this;
        }

        public b m0(RequestMetadata requestMetadata) {
            q2<RequestMetadata, RequestMetadata.b, d> q2Var = this.f11739u;
            if (q2Var == null) {
                RequestMetadata requestMetadata2 = this.f11738t;
                if (requestMetadata2 != null) {
                    this.f11738t = RequestMetadata.newBuilder(requestMetadata2).e0(requestMetadata).I();
                } else {
                    this.f11738t = requestMetadata;
                }
                R();
            } else {
                q2Var.e(requestMetadata);
            }
            return this;
        }

        public b n0(ResourceLocation resourceLocation) {
            q2<ResourceLocation, ResourceLocation.b, e> q2Var = this.f11728j;
            if (q2Var == null) {
                ResourceLocation resourceLocation2 = this.f11727i;
                if (resourceLocation2 != null) {
                    this.f11727i = ResourceLocation.newBuilder(resourceLocation2).g0(resourceLocation).I();
                } else {
                    this.f11727i = resourceLocation;
                }
                R();
            } else {
                q2Var.e(resourceLocation);
            }
            return this;
        }

        public b o0(Struct struct) {
            q2<Struct, Struct.b, u2> q2Var = this.f11730l;
            if (q2Var == null) {
                Struct struct2 = this.f11729k;
                if (struct2 != null) {
                    this.f11729k = Struct.newBuilder(struct2).i0(struct).I();
                } else {
                    this.f11729k = struct;
                }
                R();
            } else {
                q2Var.e(struct);
            }
            return this;
        }

        public b q0(Struct struct) {
            q2<Struct, Struct.b, u2> q2Var = this.f11743y;
            if (q2Var == null) {
                Struct struct2 = this.f11742x;
                if (struct2 != null) {
                    this.f11742x = Struct.newBuilder(struct2).i0(struct).I();
                } else {
                    this.f11742x = struct;
                }
                R();
            } else {
                q2Var.e(struct);
            }
            return this;
        }

        @Deprecated
        public b r0(Any any) {
            q2<Any, Any.b, com.google.protobuf.f> q2Var = this.C;
            if (q2Var == null) {
                Any any2 = this.B;
                if (any2 != null) {
                    this.B = Any.newBuilder(any2).d0(any).I();
                } else {
                    this.B = any;
                }
                R();
            } else {
                q2Var.e(any);
            }
            return this;
        }

        public b s0(Status status) {
            q2<Status, Status.b, com.google.rpc.c> q2Var = this.f11733o;
            if (q2Var == null) {
                Status status2 = this.f11732n;
                if (status2 != null) {
                    this.f11732n = Status.newBuilder(status2).i0(status).I();
                } else {
                    this.f11732n = status;
                }
                R();
            } else {
                q2Var.e(status);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: t0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: u0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
        }

        public b v0(long j10) {
            this.f11731m = j10;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: x0 */
        public final b f1(h3 h3Var) {
            return (b) super.f1(h3Var);
        }

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private b() {
            this.f11724f = "";
            this.f11725g = "";
            this.f11726h = "";
            this.f11736r = Collections.emptyList();
            e0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f11724f = "";
            this.f11725g = "";
            this.f11726h = "";
            this.f11736r = Collections.emptyList();
            e0();
        }
    }

    /* synthetic */ AuditLog(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static AuditLog getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return com.google.cloud.audit.a.f11780a;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static AuditLog parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (AuditLog) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static AuditLog parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<AuditLog> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AuditLog)) {
            return super.equals(obj);
        }
        AuditLog auditLog = (AuditLog) obj;
        if (getServiceName().equals(auditLog.getServiceName()) && getMethodName().equals(auditLog.getMethodName()) && getResourceName().equals(auditLog.getResourceName()) && hasResourceLocation() == auditLog.hasResourceLocation()) {
            if ((!hasResourceLocation() || getResourceLocation().equals(auditLog.getResourceLocation())) && hasResourceOriginalState() == auditLog.hasResourceOriginalState()) {
                if ((!hasResourceOriginalState() || getResourceOriginalState().equals(auditLog.getResourceOriginalState())) && getNumResponseItems() == auditLog.getNumResponseItems() && hasStatus() == auditLog.hasStatus()) {
                    if ((!hasStatus() || getStatus().equals(auditLog.getStatus())) && hasAuthenticationInfo() == auditLog.hasAuthenticationInfo()) {
                        if ((!hasAuthenticationInfo() || getAuthenticationInfo().equals(auditLog.getAuthenticationInfo())) && getAuthorizationInfoList().equals(auditLog.getAuthorizationInfoList()) && hasRequestMetadata() == auditLog.hasRequestMetadata()) {
                            if ((!hasRequestMetadata() || getRequestMetadata().equals(auditLog.getRequestMetadata())) && hasRequest() == auditLog.hasRequest()) {
                                if ((!hasRequest() || getRequest().equals(auditLog.getRequest())) && hasResponse() == auditLog.hasResponse()) {
                                    if ((!hasResponse() || getResponse().equals(auditLog.getResponse())) && hasMetadata() == auditLog.hasMetadata()) {
                                        if ((!hasMetadata() || getMetadata().equals(auditLog.getMetadata())) && hasServiceData() == auditLog.hasServiceData()) {
                                            return (!hasServiceData() || getServiceData().equals(auditLog.getServiceData())) && this.unknownFields.equals(auditLog.unknownFields);
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

    public AuthenticationInfo getAuthenticationInfo() {
        AuthenticationInfo authenticationInfo = this.authenticationInfo_;
        return authenticationInfo == null ? AuthenticationInfo.getDefaultInstance() : authenticationInfo;
    }

    public com.google.cloud.audit.b getAuthenticationInfoOrBuilder() {
        return getAuthenticationInfo();
    }

    public AuthorizationInfo getAuthorizationInfo(int i9) {
        return this.authorizationInfo_.get(i9);
    }

    public int getAuthorizationInfoCount() {
        return this.authorizationInfo_.size();
    }

    public List<AuthorizationInfo> getAuthorizationInfoList() {
        return this.authorizationInfo_;
    }

    public c getAuthorizationInfoOrBuilder(int i9) {
        return this.authorizationInfo_.get(i9);
    }

    public List<? extends c> getAuthorizationInfoOrBuilderList() {
        return this.authorizationInfo_;
    }

    public Struct getMetadata() {
        Struct struct = this.metadata_;
        return struct == null ? Struct.getDefaultInstance() : struct;
    }

    public u2 getMetadataOrBuilder() {
        return getMetadata();
    }

    public String getMethodName() {
        Object obj = this.methodName_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.methodName_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getMethodNameBytes() {
        Object obj = this.methodName_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.methodName_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public long getNumResponseItems() {
        return this.numResponseItems_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<AuditLog> getParserForType() {
        return PARSER;
    }

    public Struct getRequest() {
        Struct struct = this.request_;
        return struct == null ? Struct.getDefaultInstance() : struct;
    }

    public RequestMetadata getRequestMetadata() {
        RequestMetadata requestMetadata = this.requestMetadata_;
        return requestMetadata == null ? RequestMetadata.getDefaultInstance() : requestMetadata;
    }

    public d getRequestMetadataOrBuilder() {
        return getRequestMetadata();
    }

    public u2 getRequestOrBuilder() {
        return getRequest();
    }

    public ResourceLocation getResourceLocation() {
        ResourceLocation resourceLocation = this.resourceLocation_;
        return resourceLocation == null ? ResourceLocation.getDefaultInstance() : resourceLocation;
    }

    public e getResourceLocationOrBuilder() {
        return getResourceLocation();
    }

    public String getResourceName() {
        Object obj = this.resourceName_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.resourceName_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getResourceNameBytes() {
        Object obj = this.resourceName_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.resourceName_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public Struct getResourceOriginalState() {
        Struct struct = this.resourceOriginalState_;
        return struct == null ? Struct.getDefaultInstance() : struct;
    }

    public u2 getResourceOriginalStateOrBuilder() {
        return getResourceOriginalState();
    }

    public Struct getResponse() {
        Struct struct = this.response_;
        return struct == null ? Struct.getDefaultInstance() : struct;
    }

    public u2 getResponseOrBuilder() {
        return getResponse();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.status_ != null ? CodedOutputStream.G(2, getStatus()) + 0 : 0;
        if (this.authenticationInfo_ != null) {
            G += CodedOutputStream.G(3, getAuthenticationInfo());
        }
        if (this.requestMetadata_ != null) {
            G += CodedOutputStream.G(4, getRequestMetadata());
        }
        if (!GeneratedMessageV3.isStringEmpty(this.serviceName_)) {
            G += GeneratedMessageV3.computeStringSize(7, this.serviceName_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.methodName_)) {
            G += GeneratedMessageV3.computeStringSize(8, this.methodName_);
        }
        for (int i10 = 0; i10 < this.authorizationInfo_.size(); i10++) {
            G += CodedOutputStream.G(9, this.authorizationInfo_.get(i10));
        }
        if (!GeneratedMessageV3.isStringEmpty(this.resourceName_)) {
            G += GeneratedMessageV3.computeStringSize(11, this.resourceName_);
        }
        long j10 = this.numResponseItems_;
        if (j10 != 0) {
            G += CodedOutputStream.z(12, j10);
        }
        if (this.serviceData_ != null) {
            G += CodedOutputStream.G(15, getServiceData());
        }
        if (this.request_ != null) {
            G += CodedOutputStream.G(16, getRequest());
        }
        if (this.response_ != null) {
            G += CodedOutputStream.G(17, getResponse());
        }
        if (this.metadata_ != null) {
            G += CodedOutputStream.G(18, getMetadata());
        }
        if (this.resourceOriginalState_ != null) {
            G += CodedOutputStream.G(19, getResourceOriginalState());
        }
        if (this.resourceLocation_ != null) {
            G += CodedOutputStream.G(20, getResourceLocation());
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Deprecated
    public Any getServiceData() {
        Any any = this.serviceData_;
        return any == null ? Any.getDefaultInstance() : any;
    }

    @Deprecated
    public com.google.protobuf.f getServiceDataOrBuilder() {
        return getServiceData();
    }

    public String getServiceName() {
        Object obj = this.serviceName_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.serviceName_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getServiceNameBytes() {
        Object obj = this.serviceName_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.serviceName_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public Status getStatus() {
        Status status = this.status_;
        return status == null ? Status.getDefaultInstance() : status;
    }

    public com.google.rpc.c getStatusOrBuilder() {
        return getStatus();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasAuthenticationInfo() {
        return this.authenticationInfo_ != null;
    }

    public boolean hasMetadata() {
        return this.metadata_ != null;
    }

    public boolean hasRequest() {
        return this.request_ != null;
    }

    public boolean hasRequestMetadata() {
        return this.requestMetadata_ != null;
    }

    public boolean hasResourceLocation() {
        return this.resourceLocation_ != null;
    }

    public boolean hasResourceOriginalState() {
        return this.resourceOriginalState_ != null;
    }

    public boolean hasResponse() {
        return this.response_ != null;
    }

    @Deprecated
    public boolean hasServiceData() {
        return this.serviceData_ != null;
    }

    public boolean hasStatus() {
        return this.status_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = ((((((((((((779 + getDescriptor().hashCode()) * 37) + 7) * 53) + getServiceName().hashCode()) * 37) + 8) * 53) + getMethodName().hashCode()) * 37) + 11) * 53) + getResourceName().hashCode();
        if (hasResourceLocation()) {
            hashCode = (((hashCode * 37) + 20) * 53) + getResourceLocation().hashCode();
        }
        if (hasResourceOriginalState()) {
            hashCode = (((hashCode * 37) + 19) * 53) + getResourceOriginalState().hashCode();
        }
        int i10 = (((hashCode * 37) + 12) * 53) + u0.i(getNumResponseItems());
        if (hasStatus()) {
            i10 = (((i10 * 37) + 2) * 53) + getStatus().hashCode();
        }
        if (hasAuthenticationInfo()) {
            i10 = (((i10 * 37) + 3) * 53) + getAuthenticationInfo().hashCode();
        }
        if (getAuthorizationInfoCount() > 0) {
            i10 = (((i10 * 37) + 9) * 53) + getAuthorizationInfoList().hashCode();
        }
        if (hasRequestMetadata()) {
            i10 = (((i10 * 37) + 4) * 53) + getRequestMetadata().hashCode();
        }
        if (hasRequest()) {
            i10 = (((i10 * 37) + 16) * 53) + getRequest().hashCode();
        }
        if (hasResponse()) {
            i10 = (((i10 * 37) + 17) * 53) + getResponse().hashCode();
        }
        if (hasMetadata()) {
            i10 = (((i10 * 37) + 18) * 53) + getMetadata().hashCode();
        }
        if (hasServiceData()) {
            i10 = (((i10 * 37) + 15) * 53) + getServiceData().hashCode();
        }
        int hashCode2 = (i10 * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return com.google.cloud.audit.a.f11781b.d(AuditLog.class, b.class);
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
        return new AuditLog();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.status_ != null) {
            codedOutputStream.L0(2, getStatus());
        }
        if (this.authenticationInfo_ != null) {
            codedOutputStream.L0(3, getAuthenticationInfo());
        }
        if (this.requestMetadata_ != null) {
            codedOutputStream.L0(4, getRequestMetadata());
        }
        if (!GeneratedMessageV3.isStringEmpty(this.serviceName_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 7, this.serviceName_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.methodName_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 8, this.methodName_);
        }
        for (int i9 = 0; i9 < this.authorizationInfo_.size(); i9++) {
            codedOutputStream.L0(9, this.authorizationInfo_.get(i9));
        }
        if (!GeneratedMessageV3.isStringEmpty(this.resourceName_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 11, this.resourceName_);
        }
        long j10 = this.numResponseItems_;
        if (j10 != 0) {
            codedOutputStream.J0(12, j10);
        }
        if (this.serviceData_ != null) {
            codedOutputStream.L0(15, getServiceData());
        }
        if (this.request_ != null) {
            codedOutputStream.L0(16, getRequest());
        }
        if (this.response_ != null) {
            codedOutputStream.L0(17, getResponse());
        }
        if (this.metadata_ != null) {
            codedOutputStream.L0(18, getMetadata());
        }
        if (this.resourceOriginalState_ != null) {
            codedOutputStream.L0(19, getResourceOriginalState());
        }
        if (this.resourceLocation_ != null) {
            codedOutputStream.L0(20, getResourceLocation());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ AuditLog(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(AuditLog auditLog) {
        return DEFAULT_INSTANCE.toBuilder().h0(auditLog);
    }

    public static AuditLog parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (AuditLog) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static AuditLog parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private AuditLog(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static AuditLog parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public AuditLog getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).h0(this);
    }

    public static AuditLog parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private AuditLog() {
        this.memoizedIsInitialized = (byte) -1;
        this.serviceName_ = "";
        this.methodName_ = "";
        this.resourceName_ = "";
        this.authorizationInfo_ = Collections.emptyList();
    }

    public static AuditLog parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static AuditLog parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static AuditLog parseFrom(InputStream inputStream) throws IOException {
        return (AuditLog) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static AuditLog parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (AuditLog) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static AuditLog parseFrom(p pVar) throws IOException {
        return (AuditLog) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static AuditLog parseFrom(p pVar, f0 f0Var) throws IOException {
        return (AuditLog) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private AuditLog(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                        case 18:
                            Status status = this.status_;
                            Status.b builder = status != null ? status.toBuilder() : null;
                            Status status2 = (Status) pVar.B(Status.parser(), f0Var);
                            this.status_ = status2;
                            if (builder != null) {
                                builder.i0(status2);
                                this.status_ = builder.I();
                            } else {
                                continue;
                            }
                        case 26:
                            AuthenticationInfo authenticationInfo = this.authenticationInfo_;
                            AuthenticationInfo.b builder2 = authenticationInfo != null ? authenticationInfo.toBuilder() : null;
                            AuthenticationInfo authenticationInfo2 = (AuthenticationInfo) pVar.B(AuthenticationInfo.parser(), f0Var);
                            this.authenticationInfo_ = authenticationInfo2;
                            if (builder2 != null) {
                                builder2.g0(authenticationInfo2);
                                this.authenticationInfo_ = builder2.I();
                            } else {
                                continue;
                            }
                        case 34:
                            RequestMetadata requestMetadata = this.requestMetadata_;
                            RequestMetadata.b builder3 = requestMetadata != null ? requestMetadata.toBuilder() : null;
                            RequestMetadata requestMetadata2 = (RequestMetadata) pVar.B(RequestMetadata.parser(), f0Var);
                            this.requestMetadata_ = requestMetadata2;
                            if (builder3 != null) {
                                builder3.e0(requestMetadata2);
                                this.requestMetadata_ = builder3.I();
                            } else {
                                continue;
                            }
                        case 58:
                            this.serviceName_ = pVar.K();
                            continue;
                        case 66:
                            this.methodName_ = pVar.K();
                            continue;
                        case 74:
                            if (!(z11 & true)) {
                                this.authorizationInfo_ = new ArrayList();
                                z11 |= true;
                            }
                            this.authorizationInfo_.add(pVar.B(AuthorizationInfo.parser(), f0Var));
                            continue;
                        case 90:
                            this.resourceName_ = pVar.K();
                            continue;
                        case 96:
                            this.numResponseItems_ = pVar.A();
                            continue;
                        case 122:
                            Any any = this.serviceData_;
                            Any.b builder4 = any != null ? any.toBuilder() : null;
                            Any any2 = (Any) pVar.B(Any.parser(), f0Var);
                            this.serviceData_ = any2;
                            if (builder4 != null) {
                                builder4.d0(any2);
                                this.serviceData_ = builder4.I();
                            } else {
                                continue;
                            }
                        case 130:
                            Struct struct = this.request_;
                            Struct.b builder5 = struct != null ? struct.toBuilder() : null;
                            Struct struct2 = (Struct) pVar.B(Struct.parser(), f0Var);
                            this.request_ = struct2;
                            if (builder5 != null) {
                                builder5.i0(struct2);
                                this.request_ = builder5.I();
                            } else {
                                continue;
                            }
                        case 138:
                            Struct struct3 = this.response_;
                            Struct.b builder6 = struct3 != null ? struct3.toBuilder() : null;
                            Struct struct4 = (Struct) pVar.B(Struct.parser(), f0Var);
                            this.response_ = struct4;
                            if (builder6 != null) {
                                builder6.i0(struct4);
                                this.response_ = builder6.I();
                            } else {
                                continue;
                            }
                        case TPOptionalID.OPTION_ID_BEFORE_BOOL_ENABLE_IGNORE_VIDEO_STREAM_IN_COMMON_AUDIO_FORMATS /* 146 */:
                            Struct struct5 = this.metadata_;
                            Struct.b builder7 = struct5 != null ? struct5.toBuilder() : null;
                            Struct struct6 = (Struct) pVar.B(Struct.parser(), f0Var);
                            this.metadata_ = struct6;
                            if (builder7 != null) {
                                builder7.i0(struct6);
                                this.metadata_ = builder7.I();
                            } else {
                                continue;
                            }
                        case 154:
                            Struct struct7 = this.resourceOriginalState_;
                            Struct.b builder8 = struct7 != null ? struct7.toBuilder() : null;
                            Struct struct8 = (Struct) pVar.B(Struct.parser(), f0Var);
                            this.resourceOriginalState_ = struct8;
                            if (builder8 != null) {
                                builder8.i0(struct8);
                                this.resourceOriginalState_ = builder8.I();
                            } else {
                                continue;
                            }
                        case 162:
                            ResourceLocation resourceLocation = this.resourceLocation_;
                            ResourceLocation.b builder9 = resourceLocation != null ? resourceLocation.toBuilder() : null;
                            ResourceLocation resourceLocation2 = (ResourceLocation) pVar.B(ResourceLocation.parser(), f0Var);
                            this.resourceLocation_ = resourceLocation2;
                            if (builder9 != null) {
                                builder9.g0(resourceLocation2);
                                this.resourceLocation_ = builder9.I();
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
                } catch (InvalidProtocolBufferException e10) {
                    throw e10.setUnfinishedMessage(this);
                } catch (IOException e11) {
                    throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                }
            } finally {
                if (z11 & true) {
                    this.authorizationInfo_ = Collections.unmodifiableList(this.authorizationInfo_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }
}
