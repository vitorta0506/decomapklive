package io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3;

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
import com.google.protobuf.u0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.ExtensionConfigSource;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.t;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class HttpFilter extends GeneratedMessageV3 implements io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.c {
    public static final int CONFIG_DISCOVERY_FIELD_NUMBER = 5;
    public static final int IS_OPTIONAL_FIELD_NUMBER = 6;
    public static final int NAME_FIELD_NUMBER = 1;
    public static final int TYPED_CONFIG_FIELD_NUMBER = 4;
    private static final long serialVersionUID = 0;
    private int configTypeCase_;
    private Object configType_;
    private boolean isOptional_;
    private byte memoizedIsInitialized;
    private volatile Object name_;
    private static final HttpFilter DEFAULT_INSTANCE = new HttpFilter();
    private static final e2<HttpFilter> PARSER = new a();

    /* loaded from: classes6.dex */
    public enum ConfigTypeCase implements u0.c {
        TYPED_CONFIG(4),
        CONFIG_DISCOVERY(5),
        CONFIGTYPE_NOT_SET(0);
        
        private final int value;

        ConfigTypeCase(int i9) {
            this.value = i9;
        }

        public static ConfigTypeCase forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 4) {
                    if (i9 != 5) {
                        return null;
                    }
                    return CONFIG_DISCOVERY;
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<HttpFilter> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public HttpFilter m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new HttpFilter(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f49818a;

        static {
            int[] iArr = new int[ConfigTypeCase.values().length];
            f49818a = iArr;
            try {
                iArr[ConfigTypeCase.TYPED_CONFIG.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f49818a[ConfigTypeCase.CONFIG_DISCOVERY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f49818a[ConfigTypeCase.CONFIGTYPE_NOT_SET.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.c {

        /* renamed from: e  reason: collision with root package name */
        private int f49819e;

        /* renamed from: f  reason: collision with root package name */
        private Object f49820f;

        /* renamed from: g  reason: collision with root package name */
        private Object f49821g;

        /* renamed from: h  reason: collision with root package name */
        private q2<Any, Any.b, com.google.protobuf.f> f49822h;

        /* renamed from: i  reason: collision with root package name */
        private q2<ExtensionConfigSource, ExtensionConfigSource.b, t> f49823i;

        /* renamed from: j  reason: collision with root package name */
        private boolean f49824j;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.b.H.d(HttpFilter.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public HttpFilter build() {
            HttpFilter I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public HttpFilter I() {
            HttpFilter httpFilter = new HttpFilter(this, (a) null);
            httpFilter.name_ = this.f49821g;
            if (this.f49819e == 4) {
                q2<Any, Any.b, com.google.protobuf.f> q2Var = this.f49822h;
                if (q2Var == null) {
                    httpFilter.configType_ = this.f49820f;
                } else {
                    httpFilter.configType_ = q2Var.b();
                }
            }
            if (this.f49819e == 5) {
                q2<ExtensionConfigSource, ExtensionConfigSource.b, t> q2Var2 = this.f49823i;
                if (q2Var2 == null) {
                    httpFilter.configType_ = this.f49820f;
                } else {
                    httpFilter.configType_ = q2Var2.b();
                }
            }
            httpFilter.isOptional_ = this.f49824j;
            httpFilter.configTypeCase_ = this.f49819e;
            Q();
            return httpFilter;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public HttpFilter getDefaultInstanceForType() {
            return HttpFilter.getDefaultInstance();
        }

        public c d0(ExtensionConfigSource extensionConfigSource) {
            q2<ExtensionConfigSource, ExtensionConfigSource.b, t> q2Var = this.f49823i;
            if (q2Var == null) {
                if (this.f49819e == 5 && this.f49820f != ExtensionConfigSource.getDefaultInstance()) {
                    this.f49820f = ExtensionConfigSource.newBuilder((ExtensionConfigSource) this.f49820f).j0(extensionConfigSource).I();
                } else {
                    this.f49820f = extensionConfigSource;
                }
                R();
            } else {
                if (this.f49819e == 5) {
                    q2Var.e(extensionConfigSource);
                }
                this.f49823i.g(extensionConfigSource);
            }
            this.f49819e = 5;
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.HttpFilter.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.HttpFilter.access$900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.HttpFilter r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.HttpFilter) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.HttpFilter r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.HttpFilter) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.HttpFilter.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.HttpFilter$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        public c v(l1 l1Var) {
            if (l1Var instanceof HttpFilter) {
                return h0((HttpFilter) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.b.G;
        }

        public c h0(HttpFilter httpFilter) {
            if (httpFilter == HttpFilter.getDefaultInstance()) {
                return this;
            }
            if (!httpFilter.getName().isEmpty()) {
                this.f49821g = httpFilter.name_;
                R();
            }
            if (httpFilter.getIsOptional()) {
                l0(httpFilter.getIsOptional());
            }
            int i9 = b.f49818a[httpFilter.getConfigTypeCase().ordinal()];
            if (i9 == 1) {
                i0(httpFilter.getTypedConfig());
            } else if (i9 == 2) {
                d0(httpFilter.getConfigDiscovery());
            }
            z(((GeneratedMessageV3) httpFilter).unknownFields);
            R();
            return this;
        }

        public c i0(Any any) {
            q2<Any, Any.b, com.google.protobuf.f> q2Var = this.f49822h;
            if (q2Var == null) {
                if (this.f49819e == 4 && this.f49820f != Any.getDefaultInstance()) {
                    this.f49820f = Any.newBuilder((Any) this.f49820f).d0(any).I();
                } else {
                    this.f49820f = any;
                }
                R();
            } else {
                if (this.f49819e == 4) {
                    q2Var.e(any);
                }
                this.f49822h.g(any);
            }
            this.f49819e = 4;
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: j0 */
        public final c z(h3 h3Var) {
            return (c) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: k0 */
        public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.c(fieldDescriptor, obj);
        }

        public c l0(boolean z10) {
            this.f49824j = z10;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: m0 */
        public final c f1(h3 h3Var) {
            return (c) super.f1(h3Var);
        }

        /* synthetic */ c(a aVar) {
            this();
        }

        private c() {
            this.f49819e = 0;
            this.f49821g = "";
            b0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f49819e = 0;
            this.f49821g = "";
            b0();
        }
    }

    /* synthetic */ HttpFilter(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static HttpFilter getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.b.G;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static HttpFilter parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (HttpFilter) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static HttpFilter parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<HttpFilter> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof HttpFilter)) {
            return super.equals(obj);
        }
        HttpFilter httpFilter = (HttpFilter) obj;
        if (getName().equals(httpFilter.getName()) && getIsOptional() == httpFilter.getIsOptional() && getConfigTypeCase().equals(httpFilter.getConfigTypeCase())) {
            int i9 = this.configTypeCase_;
            if (i9 != 4) {
                if (i9 == 5 && !getConfigDiscovery().equals(httpFilter.getConfigDiscovery())) {
                    return false;
                }
            } else if (!getTypedConfig().equals(httpFilter.getTypedConfig())) {
                return false;
            }
            return this.unknownFields.equals(httpFilter.unknownFields);
        }
        return false;
    }

    public ExtensionConfigSource getConfigDiscovery() {
        if (this.configTypeCase_ == 5) {
            return (ExtensionConfigSource) this.configType_;
        }
        return ExtensionConfigSource.getDefaultInstance();
    }

    public t getConfigDiscoveryOrBuilder() {
        if (this.configTypeCase_ == 5) {
            return (ExtensionConfigSource) this.configType_;
        }
        return ExtensionConfigSource.getDefaultInstance();
    }

    public ConfigTypeCase getConfigTypeCase() {
        return ConfigTypeCase.forNumber(this.configTypeCase_);
    }

    public boolean getIsOptional() {
        return this.isOptional_;
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
    public e2<HttpFilter> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = GeneratedMessageV3.isStringEmpty(this.name_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.name_);
        if (this.configTypeCase_ == 4) {
            computeStringSize += CodedOutputStream.G(4, (Any) this.configType_);
        }
        if (this.configTypeCase_ == 5) {
            computeStringSize += CodedOutputStream.G(5, (ExtensionConfigSource) this.configType_);
        }
        boolean z10 = this.isOptional_;
        if (z10) {
            computeStringSize += CodedOutputStream.e(6, z10);
        }
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public Any getTypedConfig() {
        if (this.configTypeCase_ == 4) {
            return (Any) this.configType_;
        }
        return Any.getDefaultInstance();
    }

    public com.google.protobuf.f getTypedConfigOrBuilder() {
        if (this.configTypeCase_ == 4) {
            return (Any) this.configType_;
        }
        return Any.getDefaultInstance();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasConfigDiscovery() {
        return this.configTypeCase_ == 5;
    }

    public boolean hasTypedConfig() {
        return this.configTypeCase_ == 4;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9;
        int hashCode;
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int hashCode2 = ((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode()) * 37) + 6) * 53) + u0.d(getIsOptional());
        int i11 = this.configTypeCase_;
        if (i11 == 4) {
            i9 = ((hashCode2 * 37) + 4) * 53;
            hashCode = getTypedConfig().hashCode();
        } else {
            if (i11 == 5) {
                i9 = ((hashCode2 * 37) + 5) * 53;
                hashCode = getConfigDiscovery().hashCode();
            }
            int hashCode3 = (hashCode2 * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode3;
            return hashCode3;
        }
        hashCode2 = i9 + hashCode;
        int hashCode32 = (hashCode2 * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode32;
        return hashCode32;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.b.H.d(HttpFilter.class, c.class);
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
        return new HttpFilter();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.name_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.name_);
        }
        if (this.configTypeCase_ == 4) {
            codedOutputStream.L0(4, (Any) this.configType_);
        }
        if (this.configTypeCase_ == 5) {
            codedOutputStream.L0(5, (ExtensionConfigSource) this.configType_);
        }
        boolean z10 = this.isOptional_;
        if (z10) {
            codedOutputStream.n0(6, z10);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ HttpFilter(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(HttpFilter httpFilter) {
        return DEFAULT_INSTANCE.toBuilder().h0(httpFilter);
    }

    public static HttpFilter parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private HttpFilter(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.configTypeCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static HttpFilter parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (HttpFilter) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static HttpFilter parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public HttpFilter getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).h0(this);
    }

    public static HttpFilter parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    public static HttpFilter parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    private HttpFilter() {
        this.configTypeCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
        this.name_ = "";
    }

    public static HttpFilter parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static HttpFilter parseFrom(InputStream inputStream) throws IOException {
        return (HttpFilter) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static HttpFilter parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (HttpFilter) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    private HttpFilter(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            if (L == 34) {
                                Any.b builder = this.configTypeCase_ == 4 ? ((Any) this.configType_).toBuilder() : null;
                                o1 B = pVar.B(Any.parser(), f0Var);
                                this.configType_ = B;
                                if (builder != null) {
                                    builder.d0((Any) B);
                                    this.configType_ = builder.I();
                                }
                                this.configTypeCase_ = 4;
                            } else if (L == 42) {
                                ExtensionConfigSource.b builder2 = this.configTypeCase_ == 5 ? ((ExtensionConfigSource) this.configType_).toBuilder() : null;
                                o1 B2 = pVar.B(ExtensionConfigSource.parser(), f0Var);
                                this.configType_ = B2;
                                if (builder2 != null) {
                                    builder2.j0((ExtensionConfigSource) B2);
                                    this.configType_ = builder2.I();
                                }
                                this.configTypeCase_ = 5;
                            } else if (L != 48) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                this.isOptional_ = pVar.r();
                            }
                        } else {
                            this.name_ = pVar.K();
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

    public static HttpFilter parseFrom(p pVar) throws IOException {
        return (HttpFilter) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static HttpFilter parseFrom(p pVar, f0 f0Var) throws IOException {
        return (HttpFilter) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
