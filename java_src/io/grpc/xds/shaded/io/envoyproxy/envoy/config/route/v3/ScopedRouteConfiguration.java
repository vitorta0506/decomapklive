package io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3;

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
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import com.google.protobuf.u0;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class ScopedRouteConfiguration extends GeneratedMessageV3 implements t {
    public static final int KEY_FIELD_NUMBER = 3;
    public static final int NAME_FIELD_NUMBER = 1;
    public static final int ON_DEMAND_FIELD_NUMBER = 4;
    public static final int ROUTE_CONFIGURATION_NAME_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private Key key_;
    private byte memoizedIsInitialized;
    private volatile Object name_;
    private boolean onDemand_;
    private volatile Object routeConfigurationName_;
    private static final ScopedRouteConfiguration DEFAULT_INSTANCE = new ScopedRouteConfiguration();
    private static final e2<ScopedRouteConfiguration> PARSER = new a();

    /* loaded from: classes6.dex */
    public static final class Key extends GeneratedMessageV3 implements d {
        public static final int FRAGMENTS_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private List<Fragment> fragments_;
        private byte memoizedIsInitialized;
        private static final Key DEFAULT_INSTANCE = new Key();
        private static final e2<Key> PARSER = new a();

        /* loaded from: classes6.dex */
        public static final class Fragment extends GeneratedMessageV3 implements c {
            private static final Fragment DEFAULT_INSTANCE = new Fragment();
            private static final e2<Fragment> PARSER = new a();
            public static final int STRING_KEY_FIELD_NUMBER = 1;
            private static final long serialVersionUID = 0;
            private byte memoizedIsInitialized;
            private int typeCase_;
            private Object type_;

            /* loaded from: classes6.dex */
            public enum TypeCase implements u0.c {
                STRING_KEY(1),
                TYPE_NOT_SET(0);
                
                private final int value;

                TypeCase(int i9) {
                    this.value = i9;
                }

                public static TypeCase forNumber(int i9) {
                    if (i9 != 0) {
                        if (i9 != 1) {
                            return null;
                        }
                        return STRING_KEY;
                    }
                    return TYPE_NOT_SET;
                }

                @Override // com.google.protobuf.u0.c
                public int getNumber() {
                    return this.value;
                }

                @Deprecated
                public static TypeCase valueOf(int i9) {
                    return forNumber(i9);
                }
            }

            /* loaded from: classes6.dex */
            class a extends com.google.protobuf.c<Fragment> {
                a() {
                }

                @Override // com.google.protobuf.e2
                /* renamed from: G */
                public Fragment m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                    return new Fragment(pVar, f0Var, null);
                }
            }

            /* loaded from: classes6.dex */
            public static final class b extends GeneratedMessageV3.b<b> implements c {

                /* renamed from: e  reason: collision with root package name */
                private int f49390e;

                /* renamed from: f  reason: collision with root package name */
                private Object f49391f;

                /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                    this(cVar);
                }

                private void b0() {
                    boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e K() {
                    return u.f49529f.d(Fragment.class, b.class);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
                /* renamed from: W */
                public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (b) super.L(fieldDescriptor, obj);
                }

                @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                /* renamed from: X */
                public Fragment build() {
                    Fragment I = I();
                    if (I.isInitialized()) {
                        return I;
                    }
                    throw a.AbstractC0142a.A(I);
                }

                @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                /* renamed from: Y */
                public Fragment I() {
                    Fragment fragment = new Fragment(this, (a) null);
                    if (this.f49390e == 1) {
                        fragment.type_ = this.f49391f;
                    }
                    fragment.typeCase_ = this.f49390e;
                    Q();
                    return fragment;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
                /* renamed from: Z */
                public b n() {
                    return (b) super.n();
                }

                @Override // com.google.protobuf.p1, com.google.protobuf.r1
                /* renamed from: a0 */
                public Fragment getDefaultInstanceForType() {
                    return Fragment.getDefaultInstance();
                }

                /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: d0 */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.ScopedRouteConfiguration.Key.Fragment.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.ScopedRouteConfiguration.Key.Fragment.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.ScopedRouteConfiguration$Key$Fragment r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.ScopedRouteConfiguration.Key.Fragment) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                        io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.ScopedRouteConfiguration$Key$Fragment r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.ScopedRouteConfiguration.Key.Fragment) r4     // Catch: java.lang.Throwable -> L11
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
                    throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.ScopedRouteConfiguration.Key.Fragment.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.ScopedRouteConfiguration$Key$Fragment$b");
                }

                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: e0 */
                public b v(l1 l1Var) {
                    if (l1Var instanceof Fragment) {
                        return g0((Fragment) l1Var);
                    }
                    super.P0(l1Var);
                    return this;
                }

                public b g0(Fragment fragment) {
                    if (fragment == Fragment.getDefaultInstance()) {
                        return this;
                    }
                    if (b.f49395a[fragment.getTypeCase().ordinal()] == 1) {
                        this.f49390e = 1;
                        this.f49391f = fragment.type_;
                        R();
                    }
                    z(((GeneratedMessageV3) fragment).unknownFields);
                    R();
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
                public Descriptors.b getDescriptorForType() {
                    return u.f49528e;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
                /* renamed from: h0 */
                public final b z(h3 h3Var) {
                    return (b) super.z(h3Var);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
                /* renamed from: i0 */
                public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (b) super.c(fieldDescriptor, obj);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
                /* renamed from: j0 */
                public final b f1(h3 h3Var) {
                    return (b) super.f1(h3Var);
                }

                /* synthetic */ b(a aVar) {
                    this();
                }

                private b() {
                    this.f49390e = 0;
                    b0();
                }

                private b(GeneratedMessageV3.c cVar) {
                    super(cVar);
                    this.f49390e = 0;
                    b0();
                }
            }

            /* synthetic */ Fragment(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
                this(pVar, f0Var);
            }

            public static Fragment getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.b getDescriptor() {
                return u.f49528e;
            }

            public static b newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static Fragment parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (Fragment) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static Fragment parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.l(byteBuffer);
            }

            public static e2<Fragment> parser() {
                return PARSER;
            }

            @Override // com.google.protobuf.a
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof Fragment)) {
                    return super.equals(obj);
                }
                Fragment fragment = (Fragment) obj;
                if (getTypeCase().equals(fragment.getTypeCase())) {
                    return (this.typeCase_ != 1 || getStringKey().equals(fragment.getStringKey())) && this.unknownFields.equals(fragment.unknownFields);
                }
                return false;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public e2<Fragment> getParserForType() {
                return PARSER;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
            public int getSerializedSize() {
                int i9 = this.memoizedSize;
                if (i9 != -1) {
                    return i9;
                }
                int computeStringSize = (this.typeCase_ == 1 ? 0 + GeneratedMessageV3.computeStringSize(1, this.type_) : 0) + this.unknownFields.getSerializedSize();
                this.memoizedSize = computeStringSize;
                return computeStringSize;
            }

            public String getStringKey() {
                String str = this.typeCase_ == 1 ? this.type_ : "";
                if (str instanceof String) {
                    return (String) str;
                }
                String stringUtf8 = ((ByteString) str).toStringUtf8();
                if (this.typeCase_ == 1) {
                    this.type_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getStringKeyBytes() {
                String str = this.typeCase_ == 1 ? this.type_ : "";
                if (str instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) str);
                    if (this.typeCase_ == 1) {
                        this.type_ = copyFromUtf8;
                    }
                    return copyFromUtf8;
                }
                return (ByteString) str;
            }

            public TypeCase getTypeCase() {
                return TypeCase.forNumber(this.typeCase_);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
            public final h3 getUnknownFields() {
                return this.unknownFields;
            }

            public boolean hasStringKey() {
                return this.typeCase_ == 1;
            }

            @Override // com.google.protobuf.a
            public int hashCode() {
                int i9 = this.memoizedHashCode;
                if (i9 != 0) {
                    return i9;
                }
                int hashCode = 779 + getDescriptor().hashCode();
                if (this.typeCase_ == 1) {
                    hashCode = (((hashCode * 37) + 1) * 53) + getStringKey().hashCode();
                }
                int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode2;
                return hashCode2;
            }

            @Override // com.google.protobuf.GeneratedMessageV3
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return u.f49529f.d(Fragment.class, b.class);
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
                return new Fragment();
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
            public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                if (this.typeCase_ == 1) {
                    GeneratedMessageV3.writeString(codedOutputStream, 1, this.type_);
                }
                this.unknownFields.writeTo(codedOutputStream);
            }

            /* synthetic */ Fragment(GeneratedMessageV3.b bVar, a aVar) {
                this(bVar);
            }

            public static b newBuilder(Fragment fragment) {
                return DEFAULT_INSTANCE.toBuilder().g0(fragment);
            }

            public static Fragment parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.f(byteBuffer, f0Var);
            }

            private Fragment(GeneratedMessageV3.b<?> bVar) {
                super(bVar);
                this.typeCase_ = 0;
                this.memoizedIsInitialized = (byte) -1;
            }

            public static Fragment parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
                return (Fragment) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
            }

            public static Fragment parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.c(byteString);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
            public Fragment getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public b toBuilder() {
                return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
            }

            public static Fragment parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.b(byteString, f0Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public b newBuilderForType() {
                return newBuilder();
            }

            public static Fragment parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.a(bArr);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.protobuf.GeneratedMessageV3
            public b newBuilderForType(GeneratedMessageV3.c cVar) {
                return new b(cVar, null);
            }

            private Fragment() {
                this.typeCase_ = 0;
                this.memoizedIsInitialized = (byte) -1;
            }

            public static Fragment parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.g(bArr, f0Var);
            }

            public static Fragment parseFrom(InputStream inputStream) throws IOException {
                return (Fragment) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            private Fragment(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                this();
                Objects.requireNonNull(f0Var);
                h3.b h10 = h3.h();
                boolean z10 = false;
                while (!z10) {
                    try {
                        try {
                            int L = pVar.L();
                            if (L != 0) {
                                if (L != 10) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    String K = pVar.K();
                                    this.typeCase_ = 1;
                                    this.type_ = K;
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

            public static Fragment parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
                return (Fragment) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
            }

            public static Fragment parseFrom(com.google.protobuf.p pVar) throws IOException {
                return (Fragment) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
            }

            public static Fragment parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
                return (Fragment) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
            }
        }

        /* loaded from: classes6.dex */
        class a extends com.google.protobuf.c<Key> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public Key m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new Key(pVar, f0Var, null);
            }
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements d {

            /* renamed from: e  reason: collision with root package name */
            private int f49392e;

            /* renamed from: f  reason: collision with root package name */
            private List<Fragment> f49393f;

            /* renamed from: g  reason: collision with root package name */
            private l2<Fragment, Fragment.b, c> f49394g;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void a0() {
                if ((this.f49392e & 1) == 0) {
                    this.f49393f = new ArrayList(this.f49393f);
                    this.f49392e |= 1;
                }
            }

            private l2<Fragment, Fragment.b, c> d0() {
                if (this.f49394g == null) {
                    this.f49394g = new l2<>(this.f49393f, (this.f49392e & 1) != 0, H(), O());
                    this.f49393f = null;
                }
                return this.f49394g;
            }

            private void e0() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    d0();
                }
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return u.f49527d.d(Key.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public Key build() {
                Key I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public Key I() {
                Key key = new Key(this, (a) null);
                int i9 = this.f49392e;
                l2<Fragment, Fragment.b, c> l2Var = this.f49394g;
                if (l2Var == null) {
                    if ((i9 & 1) != 0) {
                        this.f49393f = Collections.unmodifiableList(this.f49393f);
                        this.f49392e &= -2;
                    }
                    key.fragments_ = this.f49393f;
                } else {
                    key.fragments_ = l2Var.e();
                }
                Q();
                return key;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: b0 */
            public Key getDefaultInstanceForType() {
                return Key.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: g0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.ScopedRouteConfiguration.Key.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.ScopedRouteConfiguration.Key.access$1700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.ScopedRouteConfiguration$Key r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.ScopedRouteConfiguration.Key) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.ScopedRouteConfiguration$Key r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.ScopedRouteConfiguration.Key) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.ScopedRouteConfiguration.Key.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.ScopedRouteConfiguration$Key$b");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return u.f49526c;
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: h0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof Key) {
                    return i0((Key) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b i0(Key key) {
                if (key == Key.getDefaultInstance()) {
                    return this;
                }
                if (this.f49394g == null) {
                    if (!key.fragments_.isEmpty()) {
                        if (this.f49393f.isEmpty()) {
                            this.f49393f = key.fragments_;
                            this.f49392e &= -2;
                        } else {
                            a0();
                            this.f49393f.addAll(key.fragments_);
                        }
                        R();
                    }
                } else if (!key.fragments_.isEmpty()) {
                    if (this.f49394g.k()) {
                        this.f49394g.f();
                        this.f49394g = null;
                        this.f49393f = key.fragments_;
                        this.f49392e &= -2;
                        this.f49394g = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                    } else {
                        this.f49394g.b(key.fragments_);
                    }
                }
                z(((GeneratedMessageV3) key).unknownFields);
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
                this.f49393f = Collections.emptyList();
                e0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f49393f = Collections.emptyList();
                e0();
            }
        }

        /* loaded from: classes6.dex */
        public interface c extends r1 {
        }

        /* synthetic */ Key(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static Key getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return u.f49526c;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Key parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Key) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Key parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<Key> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Key)) {
                return super.equals(obj);
            }
            Key key = (Key) obj;
            return getFragmentsList().equals(key.getFragmentsList()) && this.unknownFields.equals(key.unknownFields);
        }

        public Fragment getFragments(int i9) {
            return this.fragments_.get(i9);
        }

        public int getFragmentsCount() {
            return this.fragments_.size();
        }

        public List<Fragment> getFragmentsList() {
            return this.fragments_;
        }

        public c getFragmentsOrBuilder(int i9) {
            return this.fragments_.get(i9);
        }

        public List<? extends c> getFragmentsOrBuilderList() {
            return this.fragments_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<Key> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int i10 = 0;
            for (int i11 = 0; i11 < this.fragments_.size(); i11++) {
                i10 += CodedOutputStream.G(1, this.fragments_.get(i11));
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
            if (getFragmentsCount() > 0) {
                hashCode = (((hashCode * 37) + 1) * 53) + getFragmentsList().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return u.f49527d.d(Key.class, b.class);
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
            return new Key();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            for (int i9 = 0; i9 < this.fragments_.size(); i9++) {
                codedOutputStream.L0(1, this.fragments_.get(i9));
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ Key(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(Key key) {
            return DEFAULT_INSTANCE.toBuilder().i0(key);
        }

        public static Key parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private Key(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Key parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Key) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static Key parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public Key getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).i0(this);
        }

        public static Key parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private Key() {
            this.memoizedIsInitialized = (byte) -1;
            this.fragments_ = Collections.emptyList();
        }

        public static Key parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static Key parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static Key parseFrom(InputStream inputStream) throws IOException {
            return (Key) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private Key(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                    this.fragments_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.fragments_.add((Fragment) pVar.B(Fragment.parser(), f0Var));
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
                        this.fragments_ = Collections.unmodifiableList(this.fragments_);
                    }
                    this.unknownFields = h10.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static Key parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Key) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static Key parseFrom(com.google.protobuf.p pVar) throws IOException {
            return (Key) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static Key parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
            return (Key) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<ScopedRouteConfiguration> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public ScopedRouteConfiguration m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new ScopedRouteConfiguration(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f49395a;

        static {
            int[] iArr = new int[Key.Fragment.TypeCase.values().length];
            f49395a = iArr;
            try {
                iArr[Key.Fragment.TypeCase.STRING_KEY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f49395a[Key.Fragment.TypeCase.TYPE_NOT_SET.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements t {

        /* renamed from: e  reason: collision with root package name */
        private boolean f49396e;

        /* renamed from: f  reason: collision with root package name */
        private Object f49397f;

        /* renamed from: g  reason: collision with root package name */
        private Object f49398g;

        /* renamed from: h  reason: collision with root package name */
        private Key f49399h;

        /* renamed from: i  reason: collision with root package name */
        private q2<Key, Key.b, d> f49400i;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return u.f49525b.d(ScopedRouteConfiguration.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public ScopedRouteConfiguration build() {
            ScopedRouteConfiguration I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public ScopedRouteConfiguration I() {
            ScopedRouteConfiguration scopedRouteConfiguration = new ScopedRouteConfiguration(this, (a) null);
            scopedRouteConfiguration.onDemand_ = this.f49396e;
            scopedRouteConfiguration.name_ = this.f49397f;
            scopedRouteConfiguration.routeConfigurationName_ = this.f49398g;
            q2<Key, Key.b, d> q2Var = this.f49400i;
            if (q2Var == null) {
                scopedRouteConfiguration.key_ = this.f49399h;
            } else {
                scopedRouteConfiguration.key_ = q2Var.b();
            }
            Q();
            return scopedRouteConfiguration;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public ScopedRouteConfiguration getDefaultInstanceForType() {
            return ScopedRouteConfiguration.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.ScopedRouteConfiguration.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.ScopedRouteConfiguration.access$2800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.ScopedRouteConfiguration r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.ScopedRouteConfiguration) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.ScopedRouteConfiguration r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.ScopedRouteConfiguration) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.ScopedRouteConfiguration.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.ScopedRouteConfiguration$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public c v(l1 l1Var) {
            if (l1Var instanceof ScopedRouteConfiguration) {
                return g0((ScopedRouteConfiguration) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public c g0(ScopedRouteConfiguration scopedRouteConfiguration) {
            if (scopedRouteConfiguration == ScopedRouteConfiguration.getDefaultInstance()) {
                return this;
            }
            if (scopedRouteConfiguration.getOnDemand()) {
                k0(scopedRouteConfiguration.getOnDemand());
            }
            if (!scopedRouteConfiguration.getName().isEmpty()) {
                this.f49397f = scopedRouteConfiguration.name_;
                R();
            }
            if (!scopedRouteConfiguration.getRouteConfigurationName().isEmpty()) {
                this.f49398g = scopedRouteConfiguration.routeConfigurationName_;
                R();
            }
            if (scopedRouteConfiguration.hasKey()) {
                h0(scopedRouteConfiguration.getKey());
            }
            z(((GeneratedMessageV3) scopedRouteConfiguration).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return u.f49524a;
        }

        public c h0(Key key) {
            q2<Key, Key.b, d> q2Var = this.f49400i;
            if (q2Var == null) {
                Key key2 = this.f49399h;
                if (key2 != null) {
                    this.f49399h = Key.newBuilder(key2).i0(key).I();
                } else {
                    this.f49399h = key;
                }
                R();
            } else {
                q2Var.e(key);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public final c z(h3 h3Var) {
            return (c) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: j0 */
        public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.c(fieldDescriptor, obj);
        }

        public c k0(boolean z10) {
            this.f49396e = z10;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: l0 */
        public final c f1(h3 h3Var) {
            return (c) super.f1(h3Var);
        }

        /* synthetic */ c(a aVar) {
            this();
        }

        private c() {
            this.f49397f = "";
            this.f49398g = "";
            b0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f49397f = "";
            this.f49398g = "";
            b0();
        }
    }

    /* loaded from: classes6.dex */
    public interface d extends r1 {
    }

    /* synthetic */ ScopedRouteConfiguration(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static ScopedRouteConfiguration getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return u.f49524a;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static ScopedRouteConfiguration parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (ScopedRouteConfiguration) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static ScopedRouteConfiguration parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<ScopedRouteConfiguration> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ScopedRouteConfiguration)) {
            return super.equals(obj);
        }
        ScopedRouteConfiguration scopedRouteConfiguration = (ScopedRouteConfiguration) obj;
        if (getOnDemand() == scopedRouteConfiguration.getOnDemand() && getName().equals(scopedRouteConfiguration.getName()) && getRouteConfigurationName().equals(scopedRouteConfiguration.getRouteConfigurationName()) && hasKey() == scopedRouteConfiguration.hasKey()) {
            return (!hasKey() || getKey().equals(scopedRouteConfiguration.getKey())) && this.unknownFields.equals(scopedRouteConfiguration.unknownFields);
        }
        return false;
    }

    public Key getKey() {
        Key key = this.key_;
        return key == null ? Key.getDefaultInstance() : key;
    }

    public d getKeyOrBuilder() {
        return getKey();
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

    public boolean getOnDemand() {
        return this.onDemand_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<ScopedRouteConfiguration> getParserForType() {
        return PARSER;
    }

    public String getRouteConfigurationName() {
        Object obj = this.routeConfigurationName_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.routeConfigurationName_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getRouteConfigurationNameBytes() {
        Object obj = this.routeConfigurationName_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.routeConfigurationName_ = copyFromUtf8;
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
        int computeStringSize = GeneratedMessageV3.isStringEmpty(this.name_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.name_);
        if (!GeneratedMessageV3.isStringEmpty(this.routeConfigurationName_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(2, this.routeConfigurationName_);
        }
        if (this.key_ != null) {
            computeStringSize += CodedOutputStream.G(3, getKey());
        }
        boolean z10 = this.onDemand_;
        if (z10) {
            computeStringSize += CodedOutputStream.e(4, z10);
        }
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasKey() {
        return this.key_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = ((((((((((((779 + getDescriptor().hashCode()) * 37) + 4) * 53) + u0.d(getOnDemand())) * 37) + 1) * 53) + getName().hashCode()) * 37) + 2) * 53) + getRouteConfigurationName().hashCode();
        if (hasKey()) {
            hashCode = (((hashCode * 37) + 3) * 53) + getKey().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return u.f49525b.d(ScopedRouteConfiguration.class, c.class);
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
        return new ScopedRouteConfiguration();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.name_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.name_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.routeConfigurationName_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.routeConfigurationName_);
        }
        if (this.key_ != null) {
            codedOutputStream.L0(3, getKey());
        }
        boolean z10 = this.onDemand_;
        if (z10) {
            codedOutputStream.n0(4, z10);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ ScopedRouteConfiguration(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(ScopedRouteConfiguration scopedRouteConfiguration) {
        return DEFAULT_INSTANCE.toBuilder().g0(scopedRouteConfiguration);
    }

    public static ScopedRouteConfiguration parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private ScopedRouteConfiguration(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static ScopedRouteConfiguration parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ScopedRouteConfiguration) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static ScopedRouteConfiguration parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public ScopedRouteConfiguration getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).g0(this);
    }

    public static ScopedRouteConfiguration parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    private ScopedRouteConfiguration() {
        this.memoizedIsInitialized = (byte) -1;
        this.name_ = "";
        this.routeConfigurationName_ = "";
    }

    public static ScopedRouteConfiguration parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    public static ScopedRouteConfiguration parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static ScopedRouteConfiguration parseFrom(InputStream inputStream) throws IOException {
        return (ScopedRouteConfiguration) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private ScopedRouteConfiguration(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            if (L == 10) {
                                this.name_ = pVar.K();
                            } else if (L == 18) {
                                this.routeConfigurationName_ = pVar.K();
                            } else if (L == 26) {
                                Key key = this.key_;
                                Key.b builder = key != null ? key.toBuilder() : null;
                                Key key2 = (Key) pVar.B(Key.parser(), f0Var);
                                this.key_ = key2;
                                if (builder != null) {
                                    builder.i0(key2);
                                    this.key_ = builder.I();
                                }
                            } else if (L != 32) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                this.onDemand_ = pVar.r();
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

    public static ScopedRouteConfiguration parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ScopedRouteConfiguration) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static ScopedRouteConfiguration parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (ScopedRouteConfiguration) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static ScopedRouteConfiguration parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
        return (ScopedRouteConfiguration) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
