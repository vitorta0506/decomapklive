package io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3;

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
import com.google.protobuf.o1;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import com.google.protobuf.u0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.CidrRange;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.j;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.HeaderMatcher;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.f;
import io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.MetadataMatcher;
import io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.PathMatcher;
import io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.StringMatcher;
import io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.i;
import io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.n;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class Principal extends GeneratedMessageV3 implements io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.b {
    public static final int AND_IDS_FIELD_NUMBER = 1;
    public static final int ANY_FIELD_NUMBER = 3;
    public static final int AUTHENTICATED_FIELD_NUMBER = 4;
    public static final int DIRECT_REMOTE_IP_FIELD_NUMBER = 10;
    public static final int HEADER_FIELD_NUMBER = 6;
    public static final int METADATA_FIELD_NUMBER = 7;
    public static final int NOT_ID_FIELD_NUMBER = 8;
    public static final int OR_IDS_FIELD_NUMBER = 2;
    public static final int REMOTE_IP_FIELD_NUMBER = 11;
    public static final int SOURCE_IP_FIELD_NUMBER = 5;
    public static final int URL_PATH_FIELD_NUMBER = 9;
    private static final long serialVersionUID = 0;
    private int identifierCase_;
    private Object identifier_;
    private byte memoizedIsInitialized;
    private static final Principal DEFAULT_INSTANCE = new Principal();
    private static final e2<Principal> PARSER = new a();

    /* loaded from: classes6.dex */
    public static final class Authenticated extends GeneratedMessageV3 implements c {
        private static final Authenticated DEFAULT_INSTANCE = new Authenticated();
        private static final e2<Authenticated> PARSER = new a();
        public static final int PRINCIPAL_NAME_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private StringMatcher principalName_;

        /* loaded from: classes6.dex */
        class a extends com.google.protobuf.c<Authenticated> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public Authenticated m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new Authenticated(pVar, f0Var, null);
            }
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements c {

            /* renamed from: e  reason: collision with root package name */
            private StringMatcher f49071e;

            /* renamed from: f  reason: collision with root package name */
            private q2<StringMatcher, StringMatcher.c, n> f49072f;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.d.f49107p.d(Authenticated.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public Authenticated build() {
                Authenticated I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public Authenticated I() {
                Authenticated authenticated = new Authenticated(this, (a) null);
                q2<StringMatcher, StringMatcher.c, n> q2Var = this.f49072f;
                if (q2Var == null) {
                    authenticated.principalName_ = this.f49071e;
                } else {
                    authenticated.principalName_ = q2Var.b();
                }
                Q();
                return authenticated;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public Authenticated getDefaultInstanceForType() {
                return Authenticated.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: d0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.Principal.Authenticated.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.Principal.Authenticated.access$1500()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.Principal$Authenticated r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.Principal.Authenticated) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.Principal$Authenticated r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.Principal.Authenticated) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.Principal.Authenticated.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.Principal$Authenticated$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof Authenticated) {
                    return g0((Authenticated) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b g0(Authenticated authenticated) {
                if (authenticated == Authenticated.getDefaultInstance()) {
                    return this;
                }
                if (authenticated.hasPrincipalName()) {
                    h0(authenticated.getPrincipalName());
                }
                z(((GeneratedMessageV3) authenticated).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.d.f49106o;
            }

            public b h0(StringMatcher stringMatcher) {
                q2<StringMatcher, StringMatcher.c, n> q2Var = this.f49072f;
                if (q2Var == null) {
                    StringMatcher stringMatcher2 = this.f49071e;
                    if (stringMatcher2 != null) {
                        this.f49071e = StringMatcher.newBuilder(stringMatcher2).g0(stringMatcher).I();
                    } else {
                        this.f49071e = stringMatcher;
                    }
                    R();
                } else {
                    q2Var.e(stringMatcher);
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: i0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: j0 */
            public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.c(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: k0 */
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

        /* synthetic */ Authenticated(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static Authenticated getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.d.f49106o;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Authenticated parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Authenticated) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Authenticated parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<Authenticated> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Authenticated)) {
                return super.equals(obj);
            }
            Authenticated authenticated = (Authenticated) obj;
            if (hasPrincipalName() != authenticated.hasPrincipalName()) {
                return false;
            }
            return (!hasPrincipalName() || getPrincipalName().equals(authenticated.getPrincipalName())) && this.unknownFields.equals(authenticated.unknownFields);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<Authenticated> getParserForType() {
            return PARSER;
        }

        public StringMatcher getPrincipalName() {
            StringMatcher stringMatcher = this.principalName_;
            return stringMatcher == null ? StringMatcher.getDefaultInstance() : stringMatcher;
        }

        public n getPrincipalNameOrBuilder() {
            return getPrincipalName();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int G = (this.principalName_ != null ? 0 + CodedOutputStream.G(2, getPrincipalName()) : 0) + this.unknownFields.getSerializedSize();
            this.memoizedSize = G;
            return G;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasPrincipalName() {
            return this.principalName_ != null;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (hasPrincipalName()) {
                hashCode = (((hashCode * 37) + 2) * 53) + getPrincipalName().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.d.f49107p.d(Authenticated.class, b.class);
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
            return new Authenticated();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (this.principalName_ != null) {
                codedOutputStream.L0(2, getPrincipalName());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ Authenticated(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(Authenticated authenticated) {
            return DEFAULT_INSTANCE.toBuilder().g0(authenticated);
        }

        public static Authenticated parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private Authenticated(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Authenticated parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Authenticated) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static Authenticated parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public Authenticated getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
        }

        public static Authenticated parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private Authenticated() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Authenticated parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static Authenticated parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        private Authenticated(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                if (L != 18) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    StringMatcher stringMatcher = this.principalName_;
                                    StringMatcher.c builder = stringMatcher != null ? stringMatcher.toBuilder() : null;
                                    StringMatcher stringMatcher2 = (StringMatcher) pVar.B(StringMatcher.parser(), f0Var);
                                    this.principalName_ = stringMatcher2;
                                    if (builder != null) {
                                        builder.g0(stringMatcher2);
                                        this.principalName_ = builder.I();
                                    }
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

        public static Authenticated parseFrom(InputStream inputStream) throws IOException {
            return (Authenticated) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static Authenticated parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Authenticated) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static Authenticated parseFrom(p pVar) throws IOException {
            return (Authenticated) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static Authenticated parseFrom(p pVar, f0 f0Var) throws IOException {
            return (Authenticated) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes6.dex */
    public enum IdentifierCase implements u0.c {
        AND_IDS(1),
        OR_IDS(2),
        ANY(3),
        AUTHENTICATED(4),
        SOURCE_IP(5),
        DIRECT_REMOTE_IP(10),
        REMOTE_IP(11),
        HEADER(6),
        URL_PATH(9),
        METADATA(7),
        NOT_ID(8),
        IDENTIFIER_NOT_SET(0);
        
        private final int value;

        IdentifierCase(int i9) {
            this.value = i9;
        }

        public static IdentifierCase forNumber(int i9) {
            switch (i9) {
                case 0:
                    return IDENTIFIER_NOT_SET;
                case 1:
                    return AND_IDS;
                case 2:
                    return OR_IDS;
                case 3:
                    return ANY;
                case 4:
                    return AUTHENTICATED;
                case 5:
                    return SOURCE_IP;
                case 6:
                    return HEADER;
                case 7:
                    return METADATA;
                case 8:
                    return NOT_ID;
                case 9:
                    return URL_PATH;
                case 10:
                    return DIRECT_REMOTE_IP;
                case 11:
                    return REMOTE_IP;
                default:
                    return null;
            }
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static IdentifierCase valueOf(int i9) {
            return forNumber(i9);
        }
    }

    /* loaded from: classes6.dex */
    public static final class Set extends GeneratedMessageV3 implements e {
        public static final int IDS_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private List<Principal> ids_;
        private byte memoizedIsInitialized;
        private static final Set DEFAULT_INSTANCE = new Set();
        private static final e2<Set> PARSER = new a();

        /* loaded from: classes6.dex */
        class a extends com.google.protobuf.c<Set> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public Set m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new Set(pVar, f0Var, null);
            }
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements e {

            /* renamed from: e  reason: collision with root package name */
            private int f49073e;

            /* renamed from: f  reason: collision with root package name */
            private List<Principal> f49074f;

            /* renamed from: g  reason: collision with root package name */
            private l2<Principal, d, io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.b> f49075g;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void a0() {
                if ((this.f49073e & 1) == 0) {
                    this.f49074f = new ArrayList(this.f49074f);
                    this.f49073e |= 1;
                }
            }

            private l2<Principal, d, io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.b> d0() {
                if (this.f49075g == null) {
                    this.f49075g = new l2<>(this.f49074f, (this.f49073e & 1) != 0, H(), O());
                    this.f49074f = null;
                }
                return this.f49075g;
            }

            private void e0() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    d0();
                }
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.d.f49105n.d(Set.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public Set build() {
                Set I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public Set I() {
                Set set = new Set(this, (a) null);
                int i9 = this.f49073e;
                l2<Principal, d, io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.b> l2Var = this.f49075g;
                if (l2Var == null) {
                    if ((i9 & 1) != 0) {
                        this.f49074f = Collections.unmodifiableList(this.f49074f);
                        this.f49073e &= -2;
                    }
                    set.ids_ = this.f49074f;
                } else {
                    set.ids_ = l2Var.e();
                }
                Q();
                return set;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: b0 */
            public Set getDefaultInstanceForType() {
                return Set.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: g0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.Principal.Set.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.Principal.Set.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.Principal$Set r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.Principal.Set) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.Principal$Set r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.Principal.Set) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.Principal.Set.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.Principal$Set$b");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.d.f49104m;
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: h0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof Set) {
                    return i0((Set) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b i0(Set set) {
                if (set == Set.getDefaultInstance()) {
                    return this;
                }
                if (this.f49075g == null) {
                    if (!set.ids_.isEmpty()) {
                        if (this.f49074f.isEmpty()) {
                            this.f49074f = set.ids_;
                            this.f49073e &= -2;
                        } else {
                            a0();
                            this.f49074f.addAll(set.ids_);
                        }
                        R();
                    }
                } else if (!set.ids_.isEmpty()) {
                    if (this.f49075g.k()) {
                        this.f49075g.f();
                        this.f49075g = null;
                        this.f49074f = set.ids_;
                        this.f49073e &= -2;
                        this.f49075g = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                    } else {
                        this.f49075g.b(set.ids_);
                    }
                }
                z(((GeneratedMessageV3) set).unknownFields);
                R();
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
                this.f49074f = Collections.emptyList();
                e0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f49074f = Collections.emptyList();
                e0();
            }
        }

        /* synthetic */ Set(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static Set getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.d.f49104m;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Set parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Set) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Set parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<Set> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Set)) {
                return super.equals(obj);
            }
            Set set = (Set) obj;
            return getIdsList().equals(set.getIdsList()) && this.unknownFields.equals(set.unknownFields);
        }

        public Principal getIds(int i9) {
            return this.ids_.get(i9);
        }

        public int getIdsCount() {
            return this.ids_.size();
        }

        public List<Principal> getIdsList() {
            return this.ids_;
        }

        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.b getIdsOrBuilder(int i9) {
            return this.ids_.get(i9);
        }

        public List<? extends io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.b> getIdsOrBuilderList() {
            return this.ids_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<Set> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int i10 = 0;
            for (int i11 = 0; i11 < this.ids_.size(); i11++) {
                i10 += CodedOutputStream.G(1, this.ids_.get(i11));
            }
            int serializedSize = i10 + this.unknownFields.getSerializedSize();
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
            int hashCode = 779 + getDescriptor().hashCode();
            if (getIdsCount() > 0) {
                hashCode = (((hashCode * 37) + 1) * 53) + getIdsList().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.d.f49105n.d(Set.class, b.class);
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
            return new Set();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            for (int i9 = 0; i9 < this.ids_.size(); i9++) {
                codedOutputStream.L0(1, this.ids_.get(i9));
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ Set(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(Set set) {
            return DEFAULT_INSTANCE.toBuilder().i0(set);
        }

        public static Set parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private Set(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Set parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Set) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static Set parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public Set getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).i0(this);
        }

        public static Set parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private Set() {
            this.memoizedIsInitialized = (byte) -1;
            this.ids_ = Collections.emptyList();
        }

        public static Set parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static Set parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static Set parseFrom(InputStream inputStream) throws IOException {
            return (Set) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private Set(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            if (L != 10) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                if (!(z11 & true)) {
                                    this.ids_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.ids_.add((Principal) pVar.B(Principal.parser(), f0Var));
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
                        this.ids_ = Collections.unmodifiableList(this.ids_);
                    }
                    this.unknownFields = h10.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static Set parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Set) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static Set parseFrom(p pVar) throws IOException {
            return (Set) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static Set parseFrom(p pVar, f0 f0Var) throws IOException {
            return (Set) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<Principal> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public Principal m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new Principal(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f49076a;

        static {
            int[] iArr = new int[IdentifierCase.values().length];
            f49076a = iArr;
            try {
                iArr[IdentifierCase.AND_IDS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f49076a[IdentifierCase.OR_IDS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f49076a[IdentifierCase.ANY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f49076a[IdentifierCase.AUTHENTICATED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f49076a[IdentifierCase.SOURCE_IP.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f49076a[IdentifierCase.DIRECT_REMOTE_IP.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f49076a[IdentifierCase.REMOTE_IP.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f49076a[IdentifierCase.HEADER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f49076a[IdentifierCase.URL_PATH.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f49076a[IdentifierCase.METADATA.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f49076a[IdentifierCase.NOT_ID.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f49076a[IdentifierCase.IDENTIFIER_NOT_SET.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public interface c extends r1 {
    }

    /* loaded from: classes6.dex */
    public static final class d extends GeneratedMessageV3.b<d> implements io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.b {

        /* renamed from: e  reason: collision with root package name */
        private int f49077e;

        /* renamed from: f  reason: collision with root package name */
        private Object f49078f;

        /* renamed from: g  reason: collision with root package name */
        private q2<Set, Set.b, e> f49079g;

        /* renamed from: h  reason: collision with root package name */
        private q2<Set, Set.b, e> f49080h;

        /* renamed from: i  reason: collision with root package name */
        private q2<Authenticated, Authenticated.b, c> f49081i;

        /* renamed from: j  reason: collision with root package name */
        private q2<CidrRange, CidrRange.b, j> f49082j;

        /* renamed from: k  reason: collision with root package name */
        private q2<CidrRange, CidrRange.b, j> f49083k;

        /* renamed from: l  reason: collision with root package name */
        private q2<CidrRange, CidrRange.b, j> f49084l;

        /* renamed from: m  reason: collision with root package name */
        private q2<HeaderMatcher, HeaderMatcher.c, f> f49085m;

        /* renamed from: n  reason: collision with root package name */
        private q2<PathMatcher, PathMatcher.c, i> f49086n;

        /* renamed from: o  reason: collision with root package name */
        private q2<MetadataMatcher, MetadataMatcher.c, io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.d> f49087o;

        /* renamed from: p  reason: collision with root package name */
        private q2<Principal, d, io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.b> f49088p;

        /* synthetic */ d(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.d.f49103l.d(Principal.class, d.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public d L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (d) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public Principal build() {
            Principal I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public Principal I() {
            Principal principal = new Principal(this, (a) null);
            if (this.f49077e == 1) {
                q2<Set, Set.b, e> q2Var = this.f49079g;
                if (q2Var == null) {
                    principal.identifier_ = this.f49078f;
                } else {
                    principal.identifier_ = q2Var.b();
                }
            }
            if (this.f49077e == 2) {
                q2<Set, Set.b, e> q2Var2 = this.f49080h;
                if (q2Var2 == null) {
                    principal.identifier_ = this.f49078f;
                } else {
                    principal.identifier_ = q2Var2.b();
                }
            }
            if (this.f49077e == 3) {
                principal.identifier_ = this.f49078f;
            }
            if (this.f49077e == 4) {
                q2<Authenticated, Authenticated.b, c> q2Var3 = this.f49081i;
                if (q2Var3 == null) {
                    principal.identifier_ = this.f49078f;
                } else {
                    principal.identifier_ = q2Var3.b();
                }
            }
            if (this.f49077e == 5) {
                q2<CidrRange, CidrRange.b, j> q2Var4 = this.f49082j;
                if (q2Var4 == null) {
                    principal.identifier_ = this.f49078f;
                } else {
                    principal.identifier_ = q2Var4.b();
                }
            }
            if (this.f49077e == 10) {
                q2<CidrRange, CidrRange.b, j> q2Var5 = this.f49083k;
                if (q2Var5 == null) {
                    principal.identifier_ = this.f49078f;
                } else {
                    principal.identifier_ = q2Var5.b();
                }
            }
            if (this.f49077e == 11) {
                q2<CidrRange, CidrRange.b, j> q2Var6 = this.f49084l;
                if (q2Var6 == null) {
                    principal.identifier_ = this.f49078f;
                } else {
                    principal.identifier_ = q2Var6.b();
                }
            }
            if (this.f49077e == 6) {
                q2<HeaderMatcher, HeaderMatcher.c, f> q2Var7 = this.f49085m;
                if (q2Var7 == null) {
                    principal.identifier_ = this.f49078f;
                } else {
                    principal.identifier_ = q2Var7.b();
                }
            }
            if (this.f49077e == 9) {
                q2<PathMatcher, PathMatcher.c, i> q2Var8 = this.f49086n;
                if (q2Var8 == null) {
                    principal.identifier_ = this.f49078f;
                } else {
                    principal.identifier_ = q2Var8.b();
                }
            }
            if (this.f49077e == 7) {
                q2<MetadataMatcher, MetadataMatcher.c, io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.d> q2Var9 = this.f49087o;
                if (q2Var9 == null) {
                    principal.identifier_ = this.f49078f;
                } else {
                    principal.identifier_ = q2Var9.b();
                }
            }
            if (this.f49077e == 8) {
                q2<Principal, d, io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.b> q2Var10 = this.f49088p;
                if (q2Var10 == null) {
                    principal.identifier_ = this.f49078f;
                } else {
                    principal.identifier_ = q2Var10.b();
                }
            }
            principal.identifierCase_ = this.f49077e;
            Q();
            return principal;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public d n() {
            return (d) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public Principal getDefaultInstanceForType() {
            return Principal.getDefaultInstance();
        }

        public d d0(Set set) {
            q2<Set, Set.b, e> q2Var = this.f49079g;
            if (q2Var == null) {
                if (this.f49077e == 1 && this.f49078f != Set.getDefaultInstance()) {
                    this.f49078f = Set.newBuilder((Set) this.f49078f).i0(set).I();
                } else {
                    this.f49078f = set;
                }
                R();
            } else {
                if (this.f49077e == 1) {
                    q2Var.e(set);
                }
                this.f49079g.g(set);
            }
            this.f49077e = 1;
            return this;
        }

        public d e0(Authenticated authenticated) {
            q2<Authenticated, Authenticated.b, c> q2Var = this.f49081i;
            if (q2Var == null) {
                if (this.f49077e == 4 && this.f49078f != Authenticated.getDefaultInstance()) {
                    this.f49078f = Authenticated.newBuilder((Authenticated) this.f49078f).g0(authenticated).I();
                } else {
                    this.f49078f = authenticated;
                }
                R();
            } else {
                if (this.f49077e == 4) {
                    q2Var.e(authenticated);
                }
                this.f49081i.g(authenticated);
            }
            this.f49077e = 4;
            return this;
        }

        public d g0(CidrRange cidrRange) {
            q2<CidrRange, CidrRange.b, j> q2Var = this.f49083k;
            if (q2Var == null) {
                if (this.f49077e == 10 && this.f49078f != CidrRange.getDefaultInstance()) {
                    this.f49078f = CidrRange.newBuilder((CidrRange) this.f49078f).g0(cidrRange).I();
                } else {
                    this.f49078f = cidrRange;
                }
                R();
            } else {
                if (this.f49077e == 10) {
                    q2Var.e(cidrRange);
                }
                this.f49083k.g(cidrRange);
            }
            this.f49077e = 10;
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.d.f49102k;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.Principal.d u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.Principal.access$2400()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.Principal r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.Principal) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.Principal r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.Principal) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.Principal.d.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.Principal$d");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public d v(l1 l1Var) {
            if (l1Var instanceof Principal) {
                return j0((Principal) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public d j0(Principal principal) {
            if (principal == Principal.getDefaultInstance()) {
                return this;
            }
            switch (b.f49076a[principal.getIdentifierCase().ordinal()]) {
                case 1:
                    d0(principal.getAndIds());
                    break;
                case 2:
                    n0(principal.getOrIds());
                    break;
                case 3:
                    t0(principal.getAny());
                    break;
                case 4:
                    e0(principal.getAuthenticated());
                    break;
                case 5:
                    q0(principal.getSourceIp());
                    break;
                case 6:
                    g0(principal.getDirectRemoteIp());
                    break;
                case 7:
                    o0(principal.getRemoteIp());
                    break;
                case 8:
                    k0(principal.getHeader());
                    break;
                case 9:
                    s0(principal.getUrlPath());
                    break;
                case 10:
                    l0(principal.getMetadata());
                    break;
                case 11:
                    m0(principal.getNotId());
                    break;
            }
            z(((GeneratedMessageV3) principal).unknownFields);
            R();
            return this;
        }

        public d k0(HeaderMatcher headerMatcher) {
            q2<HeaderMatcher, HeaderMatcher.c, f> q2Var = this.f49085m;
            if (q2Var == null) {
                if (this.f49077e == 6 && this.f49078f != HeaderMatcher.getDefaultInstance()) {
                    this.f49078f = HeaderMatcher.newBuilder((HeaderMatcher) this.f49078f).g0(headerMatcher).I();
                } else {
                    this.f49078f = headerMatcher;
                }
                R();
            } else {
                if (this.f49077e == 6) {
                    q2Var.e(headerMatcher);
                }
                this.f49085m.g(headerMatcher);
            }
            this.f49077e = 6;
            return this;
        }

        public d l0(MetadataMatcher metadataMatcher) {
            q2<MetadataMatcher, MetadataMatcher.c, io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.d> q2Var = this.f49087o;
            if (q2Var == null) {
                if (this.f49077e == 7 && this.f49078f != MetadataMatcher.getDefaultInstance()) {
                    this.f49078f = MetadataMatcher.newBuilder((MetadataMatcher) this.f49078f).i0(metadataMatcher).I();
                } else {
                    this.f49078f = metadataMatcher;
                }
                R();
            } else {
                if (this.f49077e == 7) {
                    q2Var.e(metadataMatcher);
                }
                this.f49087o.g(metadataMatcher);
            }
            this.f49077e = 7;
            return this;
        }

        public d m0(Principal principal) {
            q2<Principal, d, io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.b> q2Var = this.f49088p;
            if (q2Var == null) {
                if (this.f49077e == 8 && this.f49078f != Principal.getDefaultInstance()) {
                    this.f49078f = Principal.newBuilder((Principal) this.f49078f).j0(principal).I();
                } else {
                    this.f49078f = principal;
                }
                R();
            } else {
                if (this.f49077e == 8) {
                    q2Var.e(principal);
                }
                this.f49088p.g(principal);
            }
            this.f49077e = 8;
            return this;
        }

        public d n0(Set set) {
            q2<Set, Set.b, e> q2Var = this.f49080h;
            if (q2Var == null) {
                if (this.f49077e == 2 && this.f49078f != Set.getDefaultInstance()) {
                    this.f49078f = Set.newBuilder((Set) this.f49078f).i0(set).I();
                } else {
                    this.f49078f = set;
                }
                R();
            } else {
                if (this.f49077e == 2) {
                    q2Var.e(set);
                }
                this.f49080h.g(set);
            }
            this.f49077e = 2;
            return this;
        }

        public d o0(CidrRange cidrRange) {
            q2<CidrRange, CidrRange.b, j> q2Var = this.f49084l;
            if (q2Var == null) {
                if (this.f49077e == 11 && this.f49078f != CidrRange.getDefaultInstance()) {
                    this.f49078f = CidrRange.newBuilder((CidrRange) this.f49078f).g0(cidrRange).I();
                } else {
                    this.f49078f = cidrRange;
                }
                R();
            } else {
                if (this.f49077e == 11) {
                    q2Var.e(cidrRange);
                }
                this.f49084l.g(cidrRange);
            }
            this.f49077e = 11;
            return this;
        }

        @Deprecated
        public d q0(CidrRange cidrRange) {
            q2<CidrRange, CidrRange.b, j> q2Var = this.f49082j;
            if (q2Var == null) {
                if (this.f49077e == 5 && this.f49078f != CidrRange.getDefaultInstance()) {
                    this.f49078f = CidrRange.newBuilder((CidrRange) this.f49078f).g0(cidrRange).I();
                } else {
                    this.f49078f = cidrRange;
                }
                R();
            } else {
                if (this.f49077e == 5) {
                    q2Var.e(cidrRange);
                }
                this.f49082j.g(cidrRange);
            }
            this.f49077e = 5;
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: r0 */
        public final d z(h3 h3Var) {
            return (d) super.z(h3Var);
        }

        public d s0(PathMatcher pathMatcher) {
            q2<PathMatcher, PathMatcher.c, i> q2Var = this.f49086n;
            if (q2Var == null) {
                if (this.f49077e == 9 && this.f49078f != PathMatcher.getDefaultInstance()) {
                    this.f49078f = PathMatcher.newBuilder((PathMatcher) this.f49078f).g0(pathMatcher).I();
                } else {
                    this.f49078f = pathMatcher;
                }
                R();
            } else {
                if (this.f49077e == 9) {
                    q2Var.e(pathMatcher);
                }
                this.f49086n.g(pathMatcher);
            }
            this.f49077e = 9;
            return this;
        }

        public d t0(boolean z10) {
            this.f49077e = 3;
            this.f49078f = Boolean.valueOf(z10);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: u0 */
        public d c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (d) super.c(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: v0 */
        public final d f1(h3 h3Var) {
            return (d) super.f1(h3Var);
        }

        /* synthetic */ d(a aVar) {
            this();
        }

        private d() {
            this.f49077e = 0;
            b0();
        }

        private d(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f49077e = 0;
            b0();
        }
    }

    /* loaded from: classes6.dex */
    public interface e extends r1 {
    }

    /* synthetic */ Principal(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static Principal getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.d.f49102k;
    }

    public static d newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Principal parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Principal) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Principal parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<Principal> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Principal)) {
            return super.equals(obj);
        }
        Principal principal = (Principal) obj;
        if (getIdentifierCase().equals(principal.getIdentifierCase())) {
            switch (this.identifierCase_) {
                case 1:
                    if (!getAndIds().equals(principal.getAndIds())) {
                        return false;
                    }
                    break;
                case 2:
                    if (!getOrIds().equals(principal.getOrIds())) {
                        return false;
                    }
                    break;
                case 3:
                    if (getAny() != principal.getAny()) {
                        return false;
                    }
                    break;
                case 4:
                    if (!getAuthenticated().equals(principal.getAuthenticated())) {
                        return false;
                    }
                    break;
                case 5:
                    if (!getSourceIp().equals(principal.getSourceIp())) {
                        return false;
                    }
                    break;
                case 6:
                    if (!getHeader().equals(principal.getHeader())) {
                        return false;
                    }
                    break;
                case 7:
                    if (!getMetadata().equals(principal.getMetadata())) {
                        return false;
                    }
                    break;
                case 8:
                    if (!getNotId().equals(principal.getNotId())) {
                        return false;
                    }
                    break;
                case 9:
                    if (!getUrlPath().equals(principal.getUrlPath())) {
                        return false;
                    }
                    break;
                case 10:
                    if (!getDirectRemoteIp().equals(principal.getDirectRemoteIp())) {
                        return false;
                    }
                    break;
                case 11:
                    if (!getRemoteIp().equals(principal.getRemoteIp())) {
                        return false;
                    }
                    break;
            }
            return this.unknownFields.equals(principal.unknownFields);
        }
        return false;
    }

    public Set getAndIds() {
        if (this.identifierCase_ == 1) {
            return (Set) this.identifier_;
        }
        return Set.getDefaultInstance();
    }

    public e getAndIdsOrBuilder() {
        if (this.identifierCase_ == 1) {
            return (Set) this.identifier_;
        }
        return Set.getDefaultInstance();
    }

    public boolean getAny() {
        if (this.identifierCase_ == 3) {
            return ((Boolean) this.identifier_).booleanValue();
        }
        return false;
    }

    public Authenticated getAuthenticated() {
        if (this.identifierCase_ == 4) {
            return (Authenticated) this.identifier_;
        }
        return Authenticated.getDefaultInstance();
    }

    public c getAuthenticatedOrBuilder() {
        if (this.identifierCase_ == 4) {
            return (Authenticated) this.identifier_;
        }
        return Authenticated.getDefaultInstance();
    }

    public CidrRange getDirectRemoteIp() {
        if (this.identifierCase_ == 10) {
            return (CidrRange) this.identifier_;
        }
        return CidrRange.getDefaultInstance();
    }

    public j getDirectRemoteIpOrBuilder() {
        if (this.identifierCase_ == 10) {
            return (CidrRange) this.identifier_;
        }
        return CidrRange.getDefaultInstance();
    }

    public HeaderMatcher getHeader() {
        if (this.identifierCase_ == 6) {
            return (HeaderMatcher) this.identifier_;
        }
        return HeaderMatcher.getDefaultInstance();
    }

    public f getHeaderOrBuilder() {
        if (this.identifierCase_ == 6) {
            return (HeaderMatcher) this.identifier_;
        }
        return HeaderMatcher.getDefaultInstance();
    }

    public IdentifierCase getIdentifierCase() {
        return IdentifierCase.forNumber(this.identifierCase_);
    }

    public MetadataMatcher getMetadata() {
        if (this.identifierCase_ == 7) {
            return (MetadataMatcher) this.identifier_;
        }
        return MetadataMatcher.getDefaultInstance();
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.d getMetadataOrBuilder() {
        if (this.identifierCase_ == 7) {
            return (MetadataMatcher) this.identifier_;
        }
        return MetadataMatcher.getDefaultInstance();
    }

    public Principal getNotId() {
        if (this.identifierCase_ == 8) {
            return (Principal) this.identifier_;
        }
        return getDefaultInstance();
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.b getNotIdOrBuilder() {
        if (this.identifierCase_ == 8) {
            return (Principal) this.identifier_;
        }
        return getDefaultInstance();
    }

    public Set getOrIds() {
        if (this.identifierCase_ == 2) {
            return (Set) this.identifier_;
        }
        return Set.getDefaultInstance();
    }

    public e getOrIdsOrBuilder() {
        if (this.identifierCase_ == 2) {
            return (Set) this.identifier_;
        }
        return Set.getDefaultInstance();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<Principal> getParserForType() {
        return PARSER;
    }

    public CidrRange getRemoteIp() {
        if (this.identifierCase_ == 11) {
            return (CidrRange) this.identifier_;
        }
        return CidrRange.getDefaultInstance();
    }

    public j getRemoteIpOrBuilder() {
        if (this.identifierCase_ == 11) {
            return (CidrRange) this.identifier_;
        }
        return CidrRange.getDefaultInstance();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.identifierCase_ == 1 ? 0 + CodedOutputStream.G(1, (Set) this.identifier_) : 0;
        if (this.identifierCase_ == 2) {
            G += CodedOutputStream.G(2, (Set) this.identifier_);
        }
        if (this.identifierCase_ == 3) {
            G += CodedOutputStream.e(3, ((Boolean) this.identifier_).booleanValue());
        }
        if (this.identifierCase_ == 4) {
            G += CodedOutputStream.G(4, (Authenticated) this.identifier_);
        }
        if (this.identifierCase_ == 5) {
            G += CodedOutputStream.G(5, (CidrRange) this.identifier_);
        }
        if (this.identifierCase_ == 6) {
            G += CodedOutputStream.G(6, (HeaderMatcher) this.identifier_);
        }
        if (this.identifierCase_ == 7) {
            G += CodedOutputStream.G(7, (MetadataMatcher) this.identifier_);
        }
        if (this.identifierCase_ == 8) {
            G += CodedOutputStream.G(8, (Principal) this.identifier_);
        }
        if (this.identifierCase_ == 9) {
            G += CodedOutputStream.G(9, (PathMatcher) this.identifier_);
        }
        if (this.identifierCase_ == 10) {
            G += CodedOutputStream.G(10, (CidrRange) this.identifier_);
        }
        if (this.identifierCase_ == 11) {
            G += CodedOutputStream.G(11, (CidrRange) this.identifier_);
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Deprecated
    public CidrRange getSourceIp() {
        if (this.identifierCase_ == 5) {
            return (CidrRange) this.identifier_;
        }
        return CidrRange.getDefaultInstance();
    }

    @Deprecated
    public j getSourceIpOrBuilder() {
        if (this.identifierCase_ == 5) {
            return (CidrRange) this.identifier_;
        }
        return CidrRange.getDefaultInstance();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public PathMatcher getUrlPath() {
        if (this.identifierCase_ == 9) {
            return (PathMatcher) this.identifier_;
        }
        return PathMatcher.getDefaultInstance();
    }

    public i getUrlPathOrBuilder() {
        if (this.identifierCase_ == 9) {
            return (PathMatcher) this.identifier_;
        }
        return PathMatcher.getDefaultInstance();
    }

    public boolean hasAndIds() {
        return this.identifierCase_ == 1;
    }

    public boolean hasAny() {
        return this.identifierCase_ == 3;
    }

    public boolean hasAuthenticated() {
        return this.identifierCase_ == 4;
    }

    public boolean hasDirectRemoteIp() {
        return this.identifierCase_ == 10;
    }

    public boolean hasHeader() {
        return this.identifierCase_ == 6;
    }

    public boolean hasMetadata() {
        return this.identifierCase_ == 7;
    }

    public boolean hasNotId() {
        return this.identifierCase_ == 8;
    }

    public boolean hasOrIds() {
        return this.identifierCase_ == 2;
    }

    public boolean hasRemoteIp() {
        return this.identifierCase_ == 11;
    }

    @Deprecated
    public boolean hasSourceIp() {
        return this.identifierCase_ == 5;
    }

    public boolean hasUrlPath() {
        return this.identifierCase_ == 9;
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
        switch (this.identifierCase_) {
            case 1:
                i9 = ((hashCode2 * 37) + 1) * 53;
                hashCode = getAndIds().hashCode();
                hashCode2 = i9 + hashCode;
                int hashCode3 = (hashCode2 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode3;
                return hashCode3;
            case 2:
                i9 = ((hashCode2 * 37) + 2) * 53;
                hashCode = getOrIds().hashCode();
                hashCode2 = i9 + hashCode;
                int hashCode32 = (hashCode2 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode32;
                return hashCode32;
            case 3:
                i9 = ((hashCode2 * 37) + 3) * 53;
                hashCode = u0.d(getAny());
                hashCode2 = i9 + hashCode;
                int hashCode322 = (hashCode2 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode322;
                return hashCode322;
            case 4:
                i9 = ((hashCode2 * 37) + 4) * 53;
                hashCode = getAuthenticated().hashCode();
                hashCode2 = i9 + hashCode;
                int hashCode3222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode3222;
                return hashCode3222;
            case 5:
                i9 = ((hashCode2 * 37) + 5) * 53;
                hashCode = getSourceIp().hashCode();
                hashCode2 = i9 + hashCode;
                int hashCode32222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode32222;
                return hashCode32222;
            case 6:
                i9 = ((hashCode2 * 37) + 6) * 53;
                hashCode = getHeader().hashCode();
                hashCode2 = i9 + hashCode;
                int hashCode322222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode322222;
                return hashCode322222;
            case 7:
                i9 = ((hashCode2 * 37) + 7) * 53;
                hashCode = getMetadata().hashCode();
                hashCode2 = i9 + hashCode;
                int hashCode3222222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode3222222;
                return hashCode3222222;
            case 8:
                i9 = ((hashCode2 * 37) + 8) * 53;
                hashCode = getNotId().hashCode();
                hashCode2 = i9 + hashCode;
                int hashCode32222222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode32222222;
                return hashCode32222222;
            case 9:
                i9 = ((hashCode2 * 37) + 9) * 53;
                hashCode = getUrlPath().hashCode();
                hashCode2 = i9 + hashCode;
                int hashCode322222222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode322222222;
                return hashCode322222222;
            case 10:
                i9 = ((hashCode2 * 37) + 10) * 53;
                hashCode = getDirectRemoteIp().hashCode();
                hashCode2 = i9 + hashCode;
                int hashCode3222222222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode3222222222;
                return hashCode3222222222;
            case 11:
                i9 = ((hashCode2 * 37) + 11) * 53;
                hashCode = getRemoteIp().hashCode();
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
        return io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.d.f49103l.d(Principal.class, d.class);
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
        return new Principal();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.identifierCase_ == 1) {
            codedOutputStream.L0(1, (Set) this.identifier_);
        }
        if (this.identifierCase_ == 2) {
            codedOutputStream.L0(2, (Set) this.identifier_);
        }
        if (this.identifierCase_ == 3) {
            codedOutputStream.n0(3, ((Boolean) this.identifier_).booleanValue());
        }
        if (this.identifierCase_ == 4) {
            codedOutputStream.L0(4, (Authenticated) this.identifier_);
        }
        if (this.identifierCase_ == 5) {
            codedOutputStream.L0(5, (CidrRange) this.identifier_);
        }
        if (this.identifierCase_ == 6) {
            codedOutputStream.L0(6, (HeaderMatcher) this.identifier_);
        }
        if (this.identifierCase_ == 7) {
            codedOutputStream.L0(7, (MetadataMatcher) this.identifier_);
        }
        if (this.identifierCase_ == 8) {
            codedOutputStream.L0(8, (Principal) this.identifier_);
        }
        if (this.identifierCase_ == 9) {
            codedOutputStream.L0(9, (PathMatcher) this.identifier_);
        }
        if (this.identifierCase_ == 10) {
            codedOutputStream.L0(10, (CidrRange) this.identifier_);
        }
        if (this.identifierCase_ == 11) {
            codedOutputStream.L0(11, (CidrRange) this.identifier_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ Principal(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static d newBuilder(Principal principal) {
        return DEFAULT_INSTANCE.toBuilder().j0(principal);
    }

    public static Principal parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private Principal(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.identifierCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Principal parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Principal) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static Principal parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public Principal getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public d toBuilder() {
        return this == DEFAULT_INSTANCE ? new d((a) null) : new d((a) null).j0(this);
    }

    public static Principal parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public d newBuilderForType() {
        return newBuilder();
    }

    public static Principal parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public d newBuilderForType(GeneratedMessageV3.c cVar) {
        return new d(cVar, null);
    }

    private Principal() {
        this.identifierCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Principal parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static Principal parseFrom(InputStream inputStream) throws IOException {
        return (Principal) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private Principal(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                Set.b builder = this.identifierCase_ == 1 ? ((Set) this.identifier_).toBuilder() : null;
                                o1 B = pVar.B(Set.parser(), f0Var);
                                this.identifier_ = B;
                                if (builder != null) {
                                    builder.i0((Set) B);
                                    this.identifier_ = builder.I();
                                }
                                this.identifierCase_ = 1;
                                continue;
                            case 18:
                                Set.b builder2 = this.identifierCase_ == 2 ? ((Set) this.identifier_).toBuilder() : null;
                                o1 B2 = pVar.B(Set.parser(), f0Var);
                                this.identifier_ = B2;
                                if (builder2 != null) {
                                    builder2.i0((Set) B2);
                                    this.identifier_ = builder2.I();
                                }
                                this.identifierCase_ = 2;
                                continue;
                            case 24:
                                this.identifier_ = Boolean.valueOf(pVar.r());
                                this.identifierCase_ = 3;
                                continue;
                            case 34:
                                Authenticated.b builder3 = this.identifierCase_ == 4 ? ((Authenticated) this.identifier_).toBuilder() : null;
                                o1 B3 = pVar.B(Authenticated.parser(), f0Var);
                                this.identifier_ = B3;
                                if (builder3 != null) {
                                    builder3.g0((Authenticated) B3);
                                    this.identifier_ = builder3.I();
                                }
                                this.identifierCase_ = 4;
                                continue;
                            case 42:
                                CidrRange.b builder4 = this.identifierCase_ == 5 ? ((CidrRange) this.identifier_).toBuilder() : null;
                                o1 B4 = pVar.B(CidrRange.parser(), f0Var);
                                this.identifier_ = B4;
                                if (builder4 != null) {
                                    builder4.g0((CidrRange) B4);
                                    this.identifier_ = builder4.I();
                                }
                                this.identifierCase_ = 5;
                                continue;
                            case 50:
                                HeaderMatcher.c builder5 = this.identifierCase_ == 6 ? ((HeaderMatcher) this.identifier_).toBuilder() : null;
                                o1 B5 = pVar.B(HeaderMatcher.parser(), f0Var);
                                this.identifier_ = B5;
                                if (builder5 != null) {
                                    builder5.g0((HeaderMatcher) B5);
                                    this.identifier_ = builder5.I();
                                }
                                this.identifierCase_ = 6;
                                continue;
                            case 58:
                                MetadataMatcher.c builder6 = this.identifierCase_ == 7 ? ((MetadataMatcher) this.identifier_).toBuilder() : null;
                                o1 B6 = pVar.B(MetadataMatcher.parser(), f0Var);
                                this.identifier_ = B6;
                                if (builder6 != null) {
                                    builder6.i0((MetadataMatcher) B6);
                                    this.identifier_ = builder6.I();
                                }
                                this.identifierCase_ = 7;
                                continue;
                            case 66:
                                d builder7 = this.identifierCase_ == 8 ? ((Principal) this.identifier_).toBuilder() : null;
                                o1 B7 = pVar.B(parser(), f0Var);
                                this.identifier_ = B7;
                                if (builder7 != null) {
                                    builder7.j0((Principal) B7);
                                    this.identifier_ = builder7.I();
                                }
                                this.identifierCase_ = 8;
                                continue;
                            case 74:
                                PathMatcher.c builder8 = this.identifierCase_ == 9 ? ((PathMatcher) this.identifier_).toBuilder() : null;
                                o1 B8 = pVar.B(PathMatcher.parser(), f0Var);
                                this.identifier_ = B8;
                                if (builder8 != null) {
                                    builder8.g0((PathMatcher) B8);
                                    this.identifier_ = builder8.I();
                                }
                                this.identifierCase_ = 9;
                                continue;
                            case 82:
                                CidrRange.b builder9 = this.identifierCase_ == 10 ? ((CidrRange) this.identifier_).toBuilder() : null;
                                o1 B9 = pVar.B(CidrRange.parser(), f0Var);
                                this.identifier_ = B9;
                                if (builder9 != null) {
                                    builder9.g0((CidrRange) B9);
                                    this.identifier_ = builder9.I();
                                }
                                this.identifierCase_ = 10;
                                continue;
                            case 90:
                                CidrRange.b builder10 = this.identifierCase_ == 11 ? ((CidrRange) this.identifier_).toBuilder() : null;
                                o1 B10 = pVar.B(CidrRange.parser(), f0Var);
                                this.identifier_ = B10;
                                if (builder10 != null) {
                                    builder10.g0((CidrRange) B10);
                                    this.identifier_ = builder10.I();
                                }
                                this.identifierCase_ = 11;
                                continue;
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
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static Principal parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Principal) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static Principal parseFrom(p pVar) throws IOException {
        return (Principal) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static Principal parseFrom(p pVar, f0 f0Var) throws IOException {
        return (Principal) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
