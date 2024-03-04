package io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v2;

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
import com.google.protobuf.l2;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Expr;
import io.grpc.xds.shaded.com.google.api.expr.v1alpha1.d;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v2.Permission;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v2.Principal;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class Policy extends GeneratedMessageV3 implements r1 {
    public static final int CONDITION_FIELD_NUMBER = 3;
    private static final Policy DEFAULT_INSTANCE = new Policy();
    private static final e2<Policy> PARSER = new a();
    public static final int PERMISSIONS_FIELD_NUMBER = 1;
    public static final int PRINCIPALS_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private Expr condition_;
    private byte memoizedIsInitialized;
    private List<Permission> permissions_;
    private List<Principal> principals_;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<Policy> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public Policy m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new Policy(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private int f49002e;

        /* renamed from: f  reason: collision with root package name */
        private List<Permission> f49003f;

        /* renamed from: g  reason: collision with root package name */
        private l2<Permission, Permission.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v2.a> f49004g;

        /* renamed from: h  reason: collision with root package name */
        private List<Principal> f49005h;

        /* renamed from: i  reason: collision with root package name */
        private l2<Principal, Principal.d, io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v2.b> f49006i;

        /* renamed from: j  reason: collision with root package name */
        private Expr f49007j;

        /* renamed from: k  reason: collision with root package name */
        private q2<Expr, Expr.c, d> f49008k;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f49002e & 1) == 0) {
                this.f49003f = new ArrayList(this.f49003f);
                this.f49002e |= 1;
            }
        }

        private void b0() {
            if ((this.f49002e & 2) == 0) {
                this.f49005h = new ArrayList(this.f49005h);
                this.f49002e |= 2;
            }
        }

        private l2<Permission, Permission.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v2.a> e0() {
            if (this.f49004g == null) {
                this.f49004g = new l2<>(this.f49003f, (this.f49002e & 1) != 0, H(), O());
                this.f49003f = null;
            }
            return this.f49004g;
        }

        private l2<Principal, Principal.d, io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v2.b> g0() {
            if (this.f49006i == null) {
                this.f49006i = new l2<>(this.f49005h, (this.f49002e & 2) != 0, H(), O());
                this.f49005h = null;
            }
            return this.f49006i;
        }

        private void h0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                e0();
                g0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return c.f49035f.d(Policy.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public Policy build() {
            Policy I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public Policy I() {
            Policy policy = new Policy(this, (a) null);
            int i9 = this.f49002e;
            l2<Permission, Permission.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v2.a> l2Var = this.f49004g;
            if (l2Var == null) {
                if ((i9 & 1) != 0) {
                    this.f49003f = Collections.unmodifiableList(this.f49003f);
                    this.f49002e &= -2;
                }
                policy.permissions_ = this.f49003f;
            } else {
                policy.permissions_ = l2Var.e();
            }
            l2<Principal, Principal.d, io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v2.b> l2Var2 = this.f49006i;
            if (l2Var2 == null) {
                if ((this.f49002e & 2) != 0) {
                    this.f49005h = Collections.unmodifiableList(this.f49005h);
                    this.f49002e &= -3;
                }
                policy.principals_ = this.f49005h;
            } else {
                policy.principals_ = l2Var2.e();
            }
            q2<Expr, Expr.c, d> q2Var = this.f49008k;
            if (q2Var == null) {
                policy.condition_ = this.f49007j;
            } else {
                policy.condition_ = q2Var.b();
            }
            Q();
            return policy;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: d0 */
        public Policy getDefaultInstanceForType() {
            return Policy.getDefaultInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return c.f49034e;
        }

        public b i0(Expr expr) {
            q2<Expr, Expr.c, d> q2Var = this.f49008k;
            if (q2Var == null) {
                Expr expr2 = this.f49007j;
                if (expr2 != null) {
                    this.f49007j = Expr.newBuilder(expr2).j0(expr).I();
                } else {
                    this.f49007j = expr;
                }
                R();
            } else {
                q2Var.e(expr);
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
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v2.Policy.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v2.Policy.access$1000()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v2.Policy r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v2.Policy) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v2.Policy r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v2.Policy) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v2.Policy.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v2.Policy$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: k0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof Policy) {
                return l0((Policy) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b l0(Policy policy) {
            if (policy == Policy.getDefaultInstance()) {
                return this;
            }
            if (this.f49004g == null) {
                if (!policy.permissions_.isEmpty()) {
                    if (this.f49003f.isEmpty()) {
                        this.f49003f = policy.permissions_;
                        this.f49002e &= -2;
                    } else {
                        a0();
                        this.f49003f.addAll(policy.permissions_);
                    }
                    R();
                }
            } else if (!policy.permissions_.isEmpty()) {
                if (this.f49004g.k()) {
                    this.f49004g.f();
                    this.f49004g = null;
                    this.f49003f = policy.permissions_;
                    this.f49002e &= -2;
                    this.f49004g = GeneratedMessageV3.alwaysUseFieldBuilders ? e0() : null;
                } else {
                    this.f49004g.b(policy.permissions_);
                }
            }
            if (this.f49006i == null) {
                if (!policy.principals_.isEmpty()) {
                    if (this.f49005h.isEmpty()) {
                        this.f49005h = policy.principals_;
                        this.f49002e &= -3;
                    } else {
                        b0();
                        this.f49005h.addAll(policy.principals_);
                    }
                    R();
                }
            } else if (!policy.principals_.isEmpty()) {
                if (this.f49006i.k()) {
                    this.f49006i.f();
                    this.f49006i = null;
                    this.f49005h = policy.principals_;
                    this.f49002e &= -3;
                    this.f49006i = GeneratedMessageV3.alwaysUseFieldBuilders ? g0() : null;
                } else {
                    this.f49006i.b(policy.principals_);
                }
            }
            if (policy.hasCondition()) {
                i0(policy.getCondition());
            }
            z(((GeneratedMessageV3) policy).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: m0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
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
            this.f49003f = Collections.emptyList();
            this.f49005h = Collections.emptyList();
            h0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f49003f = Collections.emptyList();
            this.f49005h = Collections.emptyList();
            h0();
        }
    }

    /* synthetic */ Policy(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static Policy getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return c.f49034e;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Policy parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Policy) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Policy parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<Policy> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Policy)) {
            return super.equals(obj);
        }
        Policy policy = (Policy) obj;
        if (getPermissionsList().equals(policy.getPermissionsList()) && getPrincipalsList().equals(policy.getPrincipalsList()) && hasCondition() == policy.hasCondition()) {
            return (!hasCondition() || getCondition().equals(policy.getCondition())) && this.unknownFields.equals(policy.unknownFields);
        }
        return false;
    }

    public Expr getCondition() {
        Expr expr = this.condition_;
        return expr == null ? Expr.getDefaultInstance() : expr;
    }

    public d getConditionOrBuilder() {
        return getCondition();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<Policy> getParserForType() {
        return PARSER;
    }

    public Permission getPermissions(int i9) {
        return this.permissions_.get(i9);
    }

    public int getPermissionsCount() {
        return this.permissions_.size();
    }

    public List<Permission> getPermissionsList() {
        return this.permissions_;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v2.a getPermissionsOrBuilder(int i9) {
        return this.permissions_.get(i9);
    }

    public List<? extends io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v2.a> getPermissionsOrBuilderList() {
        return this.permissions_;
    }

    public Principal getPrincipals(int i9) {
        return this.principals_.get(i9);
    }

    public int getPrincipalsCount() {
        return this.principals_.size();
    }

    public List<Principal> getPrincipalsList() {
        return this.principals_;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v2.b getPrincipalsOrBuilder(int i9) {
        return this.principals_.get(i9);
    }

    public List<? extends io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v2.b> getPrincipalsOrBuilderList() {
        return this.principals_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < this.permissions_.size(); i11++) {
            i10 += CodedOutputStream.G(1, this.permissions_.get(i11));
        }
        for (int i12 = 0; i12 < this.principals_.size(); i12++) {
            i10 += CodedOutputStream.G(2, this.principals_.get(i12));
        }
        if (this.condition_ != null) {
            i10 += CodedOutputStream.G(3, getCondition());
        }
        int serializedSize = i10 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasCondition() {
        return this.condition_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (getPermissionsCount() > 0) {
            hashCode = (((hashCode * 37) + 1) * 53) + getPermissionsList().hashCode();
        }
        if (getPrincipalsCount() > 0) {
            hashCode = (((hashCode * 37) + 2) * 53) + getPrincipalsList().hashCode();
        }
        if (hasCondition()) {
            hashCode = (((hashCode * 37) + 3) * 53) + getCondition().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return c.f49035f.d(Policy.class, b.class);
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
        return new Policy();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        for (int i9 = 0; i9 < this.permissions_.size(); i9++) {
            codedOutputStream.L0(1, this.permissions_.get(i9));
        }
        for (int i10 = 0; i10 < this.principals_.size(); i10++) {
            codedOutputStream.L0(2, this.principals_.get(i10));
        }
        if (this.condition_ != null) {
            codedOutputStream.L0(3, getCondition());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ Policy(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(Policy policy) {
        return DEFAULT_INSTANCE.toBuilder().l0(policy);
    }

    public static Policy parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private Policy(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Policy parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Policy) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static Policy parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public Policy getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).l0(this);
    }

    public static Policy parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private Policy() {
        this.memoizedIsInitialized = (byte) -1;
        this.permissions_ = Collections.emptyList();
        this.principals_ = Collections.emptyList();
    }

    public static Policy parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static Policy parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static Policy parseFrom(InputStream inputStream) throws IOException {
        return (Policy) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private Policy(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            if (!(z11 & true)) {
                                this.permissions_ = new ArrayList();
                                z11 |= true;
                            }
                            this.permissions_.add((Permission) pVar.B(Permission.parser(), f0Var));
                        } else if (L == 18) {
                            if (!(z11 & true)) {
                                this.principals_ = new ArrayList();
                                z11 |= true;
                            }
                            this.principals_.add((Principal) pVar.B(Principal.parser(), f0Var));
                        } else if (L != 26) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            Expr expr = this.condition_;
                            Expr.c builder = expr != null ? expr.toBuilder() : null;
                            Expr expr2 = (Expr) pVar.B(Expr.parser(), f0Var);
                            this.condition_ = expr2;
                            if (builder != null) {
                                builder.j0(expr2);
                                this.condition_ = builder.I();
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
                    this.permissions_ = Collections.unmodifiableList(this.permissions_);
                }
                if (z11 & true) {
                    this.principals_ = Collections.unmodifiableList(this.principals_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static Policy parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Policy) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static Policy parseFrom(p pVar) throws IOException {
        return (Policy) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static Policy parseFrom(p pVar, f0 f0Var) throws IOException {
        return (Policy) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
