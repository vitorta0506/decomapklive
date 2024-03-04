package io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v3;

import com.google.protobuf.Any;
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
import com.google.protobuf.r1;
import com.google.protobuf.u0;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class Tracing extends GeneratedMessageV3 implements g {
    public static final int HTTP_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private Http http_;
    private byte memoizedIsInitialized;
    private static final Tracing DEFAULT_INSTANCE = new Tracing();
    private static final e2<Tracing> PARSER = new a();

    /* loaded from: classes6.dex */
    public static final class Http extends GeneratedMessageV3 implements d {
        public static final int NAME_FIELD_NUMBER = 1;
        public static final int TYPED_CONFIG_FIELD_NUMBER = 3;
        private static final long serialVersionUID = 0;
        private int configTypeCase_;
        private Object configType_;
        private byte memoizedIsInitialized;
        private volatile Object name_;
        private static final Http DEFAULT_INSTANCE = new Http();
        private static final e2<Http> PARSER = new a();

        /* loaded from: classes6.dex */
        public enum ConfigTypeCase implements u0.c {
            TYPED_CONFIG(3),
            CONFIGTYPE_NOT_SET(0);
            
            private final int value;

            ConfigTypeCase(int i9) {
                this.value = i9;
            }

            public static ConfigTypeCase forNumber(int i9) {
                if (i9 != 0) {
                    if (i9 != 3) {
                        return null;
                    }
                    return TYPED_CONFIG;
                }
                return CONFIGTYPE_NOT_SET;
            }

            @Override // com.google.protobuf.u0.c
            public int getNumber() {
                return this.value;
            }

            @Deprecated
            public static ConfigTypeCase valueOf(int i9) {
                return forNumber(i9);
            }
        }

        /* loaded from: classes6.dex */
        class a extends com.google.protobuf.c<Http> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public Http m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new Http(pVar, f0Var, null);
            }
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements d {

            /* renamed from: e  reason: collision with root package name */
            private int f49626e;

            /* renamed from: f  reason: collision with root package name */
            private Object f49627f;

            /* renamed from: g  reason: collision with root package name */
            private Object f49628g;

            /* renamed from: h  reason: collision with root package name */
            private q2<Any, Any.b, com.google.protobuf.f> f49629h;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v3.c.f49649d.d(Http.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public Http build() {
                Http I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public Http I() {
                Http http = new Http(this, (a) null);
                http.name_ = this.f49628g;
                if (this.f49626e == 3) {
                    q2<Any, Any.b, com.google.protobuf.f> q2Var = this.f49629h;
                    if (q2Var == null) {
                        http.configType_ = this.f49627f;
                    } else {
                        http.configType_ = q2Var.b();
                    }
                }
                http.configTypeCase_ = this.f49626e;
                Q();
                return http;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public Http getDefaultInstanceForType() {
                return Http.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: d0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v3.Tracing.Http.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v3.Tracing.Http.access$800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v3.Tracing$Http r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v3.Tracing.Http) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v3.Tracing$Http r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v3.Tracing.Http) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v3.Tracing.Http.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v3.Tracing$Http$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof Http) {
                    return g0((Http) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b g0(Http http) {
                if (http == Http.getDefaultInstance()) {
                    return this;
                }
                if (!http.getName().isEmpty()) {
                    this.f49628g = http.name_;
                    R();
                }
                if (b.f49630a[http.getConfigTypeCase().ordinal()] == 1) {
                    h0(http.getTypedConfig());
                }
                z(((GeneratedMessageV3) http).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v3.c.f49648c;
            }

            public b h0(Any any) {
                q2<Any, Any.b, com.google.protobuf.f> q2Var = this.f49629h;
                if (q2Var == null) {
                    if (this.f49626e == 3 && this.f49627f != Any.getDefaultInstance()) {
                        this.f49627f = Any.newBuilder((Any) this.f49627f).d0(any).I();
                    } else {
                        this.f49627f = any;
                    }
                    R();
                } else {
                    if (this.f49626e == 3) {
                        q2Var.e(any);
                    }
                    this.f49629h.g(any);
                }
                this.f49626e = 3;
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
                this.f49626e = 0;
                this.f49628g = "";
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f49626e = 0;
                this.f49628g = "";
                b0();
            }
        }

        /* synthetic */ Http(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static Http getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v3.c.f49648c;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Http parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Http) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Http parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<Http> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Http)) {
                return super.equals(obj);
            }
            Http http = (Http) obj;
            if (getName().equals(http.getName()) && getConfigTypeCase().equals(http.getConfigTypeCase())) {
                return (this.configTypeCase_ != 3 || getTypedConfig().equals(http.getTypedConfig())) && this.unknownFields.equals(http.unknownFields);
            }
            return false;
        }

        public ConfigTypeCase getConfigTypeCase() {
            return ConfigTypeCase.forNumber(this.configTypeCase_);
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
        public e2<Http> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int computeStringSize = GeneratedMessageV3.isStringEmpty(this.name_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.name_);
            if (this.configTypeCase_ == 3) {
                computeStringSize += CodedOutputStream.G(3, (Any) this.configType_);
            }
            int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        public Any getTypedConfig() {
            if (this.configTypeCase_ == 3) {
                return (Any) this.configType_;
            }
            return Any.getDefaultInstance();
        }

        public com.google.protobuf.f getTypedConfigOrBuilder() {
            if (this.configTypeCase_ == 3) {
                return (Any) this.configType_;
            }
            return Any.getDefaultInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasTypedConfig() {
            return this.configTypeCase_ == 3;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode();
            if (this.configTypeCase_ == 3) {
                hashCode = (((hashCode * 37) + 3) * 53) + getTypedConfig().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v3.c.f49649d.d(Http.class, b.class);
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
            return new Http();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (!GeneratedMessageV3.isStringEmpty(this.name_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.name_);
            }
            if (this.configTypeCase_ == 3) {
                codedOutputStream.L0(3, (Any) this.configType_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ Http(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(Http http) {
            return DEFAULT_INSTANCE.toBuilder().g0(http);
        }

        public static Http parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private Http(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.configTypeCase_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Http parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Http) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static Http parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public Http getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
        }

        public static Http parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        public static Http parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        private Http() {
            this.configTypeCase_ = 0;
            this.memoizedIsInitialized = (byte) -1;
            this.name_ = "";
        }

        public static Http parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static Http parseFrom(InputStream inputStream) throws IOException {
            return (Http) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static Http parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Http) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        private Http(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                } else if (L != 26) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    Any.b builder = this.configTypeCase_ == 3 ? ((Any) this.configType_).toBuilder() : null;
                                    o1 B = pVar.B(Any.parser(), f0Var);
                                    this.configType_ = B;
                                    if (builder != null) {
                                        builder.d0((Any) B);
                                        this.configType_ = builder.I();
                                    }
                                    this.configTypeCase_ = 3;
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

        public static Http parseFrom(p pVar) throws IOException {
            return (Http) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static Http parseFrom(p pVar, f0 f0Var) throws IOException {
            return (Http) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<Tracing> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public Tracing m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new Tracing(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f49630a;

        static {
            int[] iArr = new int[Http.ConfigTypeCase.values().length];
            f49630a = iArr;
            try {
                iArr[Http.ConfigTypeCase.TYPED_CONFIG.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f49630a[Http.ConfigTypeCase.CONFIGTYPE_NOT_SET.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements g {

        /* renamed from: e  reason: collision with root package name */
        private Http f49631e;

        /* renamed from: f  reason: collision with root package name */
        private q2<Http, Http.b, d> f49632f;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v3.c.f49647b.d(Tracing.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public Tracing build() {
            Tracing I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public Tracing I() {
            Tracing tracing = new Tracing(this, (a) null);
            q2<Http, Http.b, d> q2Var = this.f49632f;
            if (q2Var == null) {
                tracing.http_ = this.f49631e;
            } else {
                tracing.http_ = q2Var.b();
            }
            Q();
            return tracing;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public Tracing getDefaultInstanceForType() {
            return Tracing.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v3.Tracing.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v3.Tracing.access$1700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v3.Tracing r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v3.Tracing) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v3.Tracing r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v3.Tracing) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v3.Tracing.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v3.Tracing$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public c v(l1 l1Var) {
            if (l1Var instanceof Tracing) {
                return g0((Tracing) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public c g0(Tracing tracing) {
            if (tracing == Tracing.getDefaultInstance()) {
                return this;
            }
            if (tracing.hasHttp()) {
                h0(tracing.getHttp());
            }
            z(((GeneratedMessageV3) tracing).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v3.c.f49646a;
        }

        public c h0(Http http) {
            q2<Http, Http.b, d> q2Var = this.f49632f;
            if (q2Var == null) {
                Http http2 = this.f49631e;
                if (http2 != null) {
                    this.f49631e = Http.newBuilder(http2).g0(http).I();
                } else {
                    this.f49631e = http;
                }
                R();
            } else {
                q2Var.e(http);
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

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: k0 */
        public final c f1(h3 h3Var) {
            return (c) super.f1(h3Var);
        }

        /* synthetic */ c(a aVar) {
            this();
        }

        private c() {
            b0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            b0();
        }
    }

    /* loaded from: classes6.dex */
    public interface d extends r1 {
    }

    /* synthetic */ Tracing(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static Tracing getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v3.c.f49646a;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Tracing parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Tracing) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Tracing parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<Tracing> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Tracing)) {
            return super.equals(obj);
        }
        Tracing tracing = (Tracing) obj;
        if (hasHttp() != tracing.hasHttp()) {
            return false;
        }
        return (!hasHttp() || getHttp().equals(tracing.getHttp())) && this.unknownFields.equals(tracing.unknownFields);
    }

    public Http getHttp() {
        Http http = this.http_;
        return http == null ? Http.getDefaultInstance() : http;
    }

    public d getHttpOrBuilder() {
        return getHttp();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<Tracing> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = (this.http_ != null ? 0 + CodedOutputStream.G(1, getHttp()) : 0) + this.unknownFields.getSerializedSize();
        this.memoizedSize = G;
        return G;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasHttp() {
        return this.http_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasHttp()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getHttp().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v3.c.f49647b.d(Tracing.class, c.class);
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
        return new Tracing();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.http_ != null) {
            codedOutputStream.L0(1, getHttp());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ Tracing(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(Tracing tracing) {
        return DEFAULT_INSTANCE.toBuilder().g0(tracing);
    }

    public static Tracing parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private Tracing(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Tracing parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Tracing) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static Tracing parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public Tracing getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).g0(this);
    }

    public static Tracing parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    private Tracing() {
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Tracing parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    public static Tracing parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    private Tracing(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            if (L != 10) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                Http http = this.http_;
                                Http.b builder = http != null ? http.toBuilder() : null;
                                Http http2 = (Http) pVar.B(Http.parser(), f0Var);
                                this.http_ = http2;
                                if (builder != null) {
                                    builder.g0(http2);
                                    this.http_ = builder.I();
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

    public static Tracing parseFrom(InputStream inputStream) throws IOException {
        return (Tracing) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static Tracing parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Tracing) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static Tracing parseFrom(p pVar) throws IOException {
        return (Tracing) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static Tracing parseFrom(p pVar, f0 f0Var) throws IOException {
        return (Tracing) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
