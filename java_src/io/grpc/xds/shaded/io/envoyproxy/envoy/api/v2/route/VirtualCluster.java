package io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route;

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
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.RequestMethod;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.HeaderMatcher;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class VirtualCluster extends GeneratedMessageV3 implements p {
    public static final int HEADERS_FIELD_NUMBER = 4;
    public static final int METHOD_FIELD_NUMBER = 3;
    public static final int NAME_FIELD_NUMBER = 2;
    public static final int PATTERN_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private List<HeaderMatcher> headers_;
    private byte memoizedIsInitialized;
    private int method_;
    private volatile Object name_;
    private volatile Object pattern_;
    private static final VirtualCluster DEFAULT_INSTANCE = new VirtualCluster();
    private static final e2<VirtualCluster> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<VirtualCluster> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public VirtualCluster m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new VirtualCluster(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements p {

        /* renamed from: e  reason: collision with root package name */
        private int f47231e;

        /* renamed from: f  reason: collision with root package name */
        private Object f47232f;

        /* renamed from: g  reason: collision with root package name */
        private List<HeaderMatcher> f47233g;

        /* renamed from: h  reason: collision with root package name */
        private l2<HeaderMatcher, HeaderMatcher.c, e> f47234h;

        /* renamed from: i  reason: collision with root package name */
        private Object f47235i;

        /* renamed from: j  reason: collision with root package name */
        private int f47236j;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f47231e & 1) == 0) {
                this.f47233g = new ArrayList(this.f47233g);
                this.f47231e |= 1;
            }
        }

        private l2<HeaderMatcher, HeaderMatcher.c, e> d0() {
            if (this.f47234h == null) {
                this.f47234h = new l2<>(this.f47233g, (this.f47231e & 1) != 0, H(), O());
                this.f47233g = null;
            }
            return this.f47234h;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                d0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return l.f47314p0.d(VirtualCluster.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public VirtualCluster build() {
            VirtualCluster I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public VirtualCluster I() {
            VirtualCluster virtualCluster = new VirtualCluster(this, (a) null);
            virtualCluster.pattern_ = this.f47232f;
            l2<HeaderMatcher, HeaderMatcher.c, e> l2Var = this.f47234h;
            if (l2Var == null) {
                if ((this.f47231e & 1) != 0) {
                    this.f47233g = Collections.unmodifiableList(this.f47233g);
                    this.f47231e &= -2;
                }
                virtualCluster.headers_ = this.f47233g;
            } else {
                virtualCluster.headers_ = l2Var.e();
            }
            virtualCluster.name_ = this.f47235i;
            virtualCluster.method_ = this.f47236j;
            Q();
            return virtualCluster;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: b0 */
        public VirtualCluster getDefaultInstanceForType() {
            return VirtualCluster.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.VirtualCluster.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.VirtualCluster.access$1000()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.VirtualCluster r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.VirtualCluster) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.VirtualCluster r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.VirtualCluster) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.VirtualCluster.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.VirtualCluster$b");
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return l.f47312o0;
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof VirtualCluster) {
                return i0((VirtualCluster) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b i0(VirtualCluster virtualCluster) {
            if (virtualCluster == VirtualCluster.getDefaultInstance()) {
                return this;
            }
            if (!virtualCluster.getPattern().isEmpty()) {
                this.f47232f = virtualCluster.pattern_;
                R();
            }
            if (this.f47234h == null) {
                if (!virtualCluster.headers_.isEmpty()) {
                    if (this.f47233g.isEmpty()) {
                        this.f47233g = virtualCluster.headers_;
                        this.f47231e &= -2;
                    } else {
                        a0();
                        this.f47233g.addAll(virtualCluster.headers_);
                    }
                    R();
                }
            } else if (!virtualCluster.headers_.isEmpty()) {
                if (this.f47234h.k()) {
                    this.f47234h.f();
                    this.f47234h = null;
                    this.f47233g = virtualCluster.headers_;
                    this.f47231e &= -2;
                    this.f47234h = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                } else {
                    this.f47234h.b(virtualCluster.headers_);
                }
            }
            if (!virtualCluster.getName().isEmpty()) {
                this.f47235i = virtualCluster.name_;
                R();
            }
            if (virtualCluster.method_ != 0) {
                l0(virtualCluster.getMethodValue());
            }
            z(((GeneratedMessageV3) virtualCluster).unknownFields);
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

        @Deprecated
        public b l0(int i9) {
            this.f47236j = i9;
            R();
            return this;
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
            this.f47232f = "";
            this.f47233g = Collections.emptyList();
            this.f47235i = "";
            this.f47236j = 0;
            e0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f47232f = "";
            this.f47233g = Collections.emptyList();
            this.f47235i = "";
            this.f47236j = 0;
            e0();
        }
    }

    /* synthetic */ VirtualCluster(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static VirtualCluster getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return l.f47312o0;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static VirtualCluster parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (VirtualCluster) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static VirtualCluster parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<VirtualCluster> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof VirtualCluster)) {
            return super.equals(obj);
        }
        VirtualCluster virtualCluster = (VirtualCluster) obj;
        return getPattern().equals(virtualCluster.getPattern()) && getHeadersList().equals(virtualCluster.getHeadersList()) && getName().equals(virtualCluster.getName()) && this.method_ == virtualCluster.method_ && this.unknownFields.equals(virtualCluster.unknownFields);
    }

    public HeaderMatcher getHeaders(int i9) {
        return this.headers_.get(i9);
    }

    public int getHeadersCount() {
        return this.headers_.size();
    }

    public List<HeaderMatcher> getHeadersList() {
        return this.headers_;
    }

    public e getHeadersOrBuilder(int i9) {
        return this.headers_.get(i9);
    }

    public List<? extends e> getHeadersOrBuilderList() {
        return this.headers_;
    }

    @Deprecated
    public RequestMethod getMethod() {
        RequestMethod valueOf = RequestMethod.valueOf(this.method_);
        return valueOf == null ? RequestMethod.UNRECOGNIZED : valueOf;
    }

    @Deprecated
    public int getMethodValue() {
        return this.method_;
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
    public e2<VirtualCluster> getParserForType() {
        return PARSER;
    }

    @Deprecated
    public String getPattern() {
        Object obj = this.pattern_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.pattern_ = stringUtf8;
        return stringUtf8;
    }

    @Deprecated
    public ByteString getPatternBytes() {
        Object obj = this.pattern_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.pattern_ = copyFromUtf8;
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
        int computeStringSize = !GeneratedMessageV3.isStringEmpty(this.pattern_) ? GeneratedMessageV3.computeStringSize(1, this.pattern_) + 0 : 0;
        if (!GeneratedMessageV3.isStringEmpty(this.name_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(2, this.name_);
        }
        if (this.method_ != RequestMethod.METHOD_UNSPECIFIED.getNumber()) {
            computeStringSize += CodedOutputStream.l(3, this.method_);
        }
        for (int i10 = 0; i10 < this.headers_.size(); i10++) {
            computeStringSize += CodedOutputStream.G(4, this.headers_.get(i10));
        }
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
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
        int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getPattern().hashCode();
        if (getHeadersCount() > 0) {
            hashCode = (((hashCode * 37) + 4) * 53) + getHeadersList().hashCode();
        }
        int hashCode2 = (((((((((hashCode * 37) + 2) * 53) + getName().hashCode()) * 37) + 3) * 53) + this.method_) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return l.f47314p0.d(VirtualCluster.class, b.class);
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
        return new VirtualCluster();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.pattern_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.pattern_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.name_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.name_);
        }
        if (this.method_ != RequestMethod.METHOD_UNSPECIFIED.getNumber()) {
            codedOutputStream.v0(3, this.method_);
        }
        for (int i9 = 0; i9 < this.headers_.size(); i9++) {
            codedOutputStream.L0(4, this.headers_.get(i9));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ VirtualCluster(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(VirtualCluster virtualCluster) {
        return DEFAULT_INSTANCE.toBuilder().i0(virtualCluster);
    }

    public static VirtualCluster parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private VirtualCluster(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static VirtualCluster parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (VirtualCluster) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static VirtualCluster parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public VirtualCluster getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).i0(this);
    }

    public static VirtualCluster parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private VirtualCluster() {
        this.memoizedIsInitialized = (byte) -1;
        this.pattern_ = "";
        this.headers_ = Collections.emptyList();
        this.name_ = "";
        this.method_ = 0;
    }

    public static VirtualCluster parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static VirtualCluster parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static VirtualCluster parseFrom(InputStream inputStream) throws IOException {
        return (VirtualCluster) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static VirtualCluster parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (VirtualCluster) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    private VirtualCluster(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                        if (L != 0) {
                            if (L == 10) {
                                this.pattern_ = pVar.K();
                            } else if (L == 18) {
                                this.name_ = pVar.K();
                            } else if (L == 24) {
                                this.method_ = pVar.u();
                            } else if (L != 34) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                if (!(z11 & true)) {
                                    this.headers_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.headers_.add((HeaderMatcher) pVar.B(HeaderMatcher.parser(), f0Var));
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
                if (z11 & true) {
                    this.headers_ = Collections.unmodifiableList(this.headers_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static VirtualCluster parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (VirtualCluster) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static VirtualCluster parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
        return (VirtualCluster) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
