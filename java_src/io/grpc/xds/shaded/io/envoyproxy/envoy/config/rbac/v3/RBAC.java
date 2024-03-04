package io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.WireFormat;
import com.google.protobuf.a;
import com.google.protobuf.e1;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.g1;
import com.google.protobuf.h2;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.p;
import com.google.protobuf.u0;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class RBAC extends GeneratedMessageV3 implements io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.c {
    public static final int ACTION_FIELD_NUMBER = 1;
    private static final RBAC DEFAULT_INSTANCE = new RBAC();
    private static final e2<RBAC> PARSER = new a();
    public static final int POLICIES_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private int action_;
    private byte memoizedIsInitialized;
    private g1<String, Policy> policies_;

    /* loaded from: classes6.dex */
    public enum Action implements h2 {
        ALLOW(0),
        DENY(1),
        LOG(2),
        UNRECOGNIZED(-1);
        
        public static final int ALLOW_VALUE = 0;
        public static final int DENY_VALUE = 1;
        public static final int LOG_VALUE = 2;
        private final int value;
        private static final u0.d<Action> internalValueMap = new a();
        private static final Action[] VALUES = values();

        /* loaded from: classes6.dex */
        class a implements u0.d<Action> {
            a() {
            }

            @Override // com.google.protobuf.u0.d
            /* renamed from: b */
            public Action a(int i9) {
                return Action.forNumber(i9);
            }
        }

        Action(int i9) {
            this.value = i9;
        }

        public static Action forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 != 2) {
                        return null;
                    }
                    return LOG;
                }
                return DENY;
            }
            return ALLOW;
        }

        public static final Descriptors.d getDescriptor() {
            return RBAC.getDescriptor().k().get(0);
        }

        public static u0.d<Action> internalGetValueMap() {
            return internalValueMap;
        }

        public final Descriptors.d getDescriptorForType() {
            return getDescriptor();
        }

        @Override // com.google.protobuf.u0.c
        public final int getNumber() {
            if (this != UNRECOGNIZED) {
                return this.value;
            }
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }

        public final Descriptors.e getValueDescriptor() {
            if (this != UNRECOGNIZED) {
                return getDescriptor().k().get(ordinal());
            }
            throw new IllegalStateException("Can't get the descriptor of an unrecognized enum value.");
        }

        @Deprecated
        public static Action valueOf(int i9) {
            return forNumber(i9);
        }

        public static Action valueOf(Descriptors.e eVar) {
            if (eVar.h() == getDescriptor()) {
                if (eVar.g() == -1) {
                    return UNRECOGNIZED;
                }
                return VALUES[eVar.g()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<RBAC> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public RBAC m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new RBAC(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.c {

        /* renamed from: e  reason: collision with root package name */
        private int f49089e;

        /* renamed from: f  reason: collision with root package name */
        private g1<String, Policy> f49090f;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private g1<String, Policy> b0() {
            R();
            if (this.f49090f == null) {
                this.f49090f = g1.p(c.f49091a);
            }
            if (!this.f49090f.m()) {
                this.f49090f = this.f49090f.f();
            }
            return this.f49090f;
        }

        private g1<String, Policy> d0() {
            g1<String, Policy> g1Var = this.f49090f;
            return g1Var == null ? g1.g(c.f49091a) : g1Var;
        }

        private void e0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return d.f49093b.d(RBAC.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected g1 M(int i9) {
            if (i9 == 2) {
                return d0();
            }
            throw new RuntimeException("Invalid map field number: " + i9);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected g1 N(int i9) {
            if (i9 == 2) {
                return b0();
            }
            throw new RuntimeException("Invalid map field number: " + i9);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public RBAC build() {
            RBAC I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public RBAC I() {
            RBAC rbac = new RBAC(this, (a) null);
            rbac.action_ = this.f49089e;
            rbac.policies_ = d0();
            rbac.policies_.n();
            Q();
            return rbac;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public RBAC getDefaultInstanceForType() {
            return RBAC.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.RBAC.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.RBAC.access$800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.RBAC r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.RBAC) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.RBAC r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.RBAC) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.RBAC.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.RBAC$b");
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return d.f49092a;
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof RBAC) {
                return i0((RBAC) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b i0(RBAC rbac) {
            if (rbac == RBAC.getDefaultInstance()) {
                return this;
            }
            if (rbac.action_ != 0) {
                k0(rbac.getActionValue());
            }
            b0().o(rbac.internalGetPolicies());
            z(((GeneratedMessageV3) rbac).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: j0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        public b k0(int i9) {
            this.f49089e = i9;
            R();
            return this;
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
            this.f49089e = 0;
            e0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f49089e = 0;
            e0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        static final e1<String, Policy> f49091a = e1.k(d.f49094c, WireFormat.FieldType.STRING, "", WireFormat.FieldType.MESSAGE, Policy.getDefaultInstance());
    }

    /* synthetic */ RBAC(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static RBAC getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return d.f49092a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public g1<String, Policy> internalGetPolicies() {
        g1<String, Policy> g1Var = this.policies_;
        return g1Var == null ? g1.g(c.f49091a) : g1Var;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static RBAC parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (RBAC) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static RBAC parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<RBAC> parser() {
        return PARSER;
    }

    public boolean containsPolicies(String str) {
        Objects.requireNonNull(str, "map key");
        return internalGetPolicies().i().containsKey(str);
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof RBAC)) {
            return super.equals(obj);
        }
        RBAC rbac = (RBAC) obj;
        return this.action_ == rbac.action_ && internalGetPolicies().equals(rbac.internalGetPolicies()) && this.unknownFields.equals(rbac.unknownFields);
    }

    public Action getAction() {
        Action valueOf = Action.valueOf(this.action_);
        return valueOf == null ? Action.UNRECOGNIZED : valueOf;
    }

    public int getActionValue() {
        return this.action_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<RBAC> getParserForType() {
        return PARSER;
    }

    @Deprecated
    public Map<String, Policy> getPolicies() {
        return getPoliciesMap();
    }

    public int getPoliciesCount() {
        return internalGetPolicies().i().size();
    }

    public Map<String, Policy> getPoliciesMap() {
        return internalGetPolicies().i();
    }

    public Policy getPoliciesOrDefault(String str, Policy policy) {
        Objects.requireNonNull(str, "map key");
        Map<String, Policy> i9 = internalGetPolicies().i();
        return i9.containsKey(str) ? i9.get(str) : policy;
    }

    public Policy getPoliciesOrThrow(String str) {
        Objects.requireNonNull(str, "map key");
        Map<String, Policy> i9 = internalGetPolicies().i();
        if (i9.containsKey(str)) {
            return i9.get(str);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int l10 = this.action_ != Action.ALLOW.getNumber() ? 0 + CodedOutputStream.l(1, this.action_) : 0;
        for (Map.Entry<String, Policy> entry : internalGetPolicies().i().entrySet()) {
            l10 += CodedOutputStream.G(2, c.f49091a.newBuilderForType().N(entry.getKey()).P(entry.getValue()).build());
        }
        int serializedSize = l10 + this.unknownFields.getSerializedSize();
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
        int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + this.action_;
        if (!internalGetPolicies().i().isEmpty()) {
            hashCode = (((hashCode * 37) + 2) * 53) + internalGetPolicies().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return d.f49093b.d(RBAC.class, b.class);
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected g1 internalGetMapField(int i9) {
        if (i9 == 2) {
            return internalGetPolicies();
        }
        throw new RuntimeException("Invalid map field number: " + i9);
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
        return new RBAC();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.action_ != Action.ALLOW.getNumber()) {
            codedOutputStream.v0(1, this.action_);
        }
        GeneratedMessageV3.serializeStringMapTo(codedOutputStream, internalGetPolicies(), c.f49091a, 2);
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ RBAC(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(RBAC rbac) {
        return DEFAULT_INSTANCE.toBuilder().i0(rbac);
    }

    public static RBAC parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private RBAC(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static RBAC parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (RBAC) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static RBAC parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public RBAC getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).i0(this);
    }

    public static RBAC parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private RBAC() {
        this.memoizedIsInitialized = (byte) -1;
        this.action_ = 0;
    }

    public static RBAC parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static RBAC parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static RBAC parseFrom(InputStream inputStream) throws IOException {
        return (RBAC) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private RBAC(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                        if (L == 8) {
                            this.action_ = pVar.u();
                        } else if (L != 18) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            if (!(z11 & true)) {
                                this.policies_ = g1.p(c.f49091a);
                                z11 |= true;
                            }
                            e1 e1Var = (e1) pVar.B(c.f49091a.getParserForType(), f0Var);
                            this.policies_.l().put((String) e1Var.f(), (Policy) e1Var.h());
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

    public static RBAC parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (RBAC) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static RBAC parseFrom(p pVar) throws IOException {
        return (RBAC) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static RBAC parseFrom(p pVar, f0 f0Var) throws IOException {
        return (RBAC) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
