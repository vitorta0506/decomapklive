package io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3;

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
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.SubstitutionFormatString;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.e1;
import io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.ResponseMapper;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class LocalReplyConfig extends GeneratedMessageV3 implements d {
    public static final int BODY_FORMAT_FIELD_NUMBER = 2;
    public static final int MAPPERS_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private SubstitutionFormatString bodyFormat_;
    private List<ResponseMapper> mappers_;
    private byte memoizedIsInitialized;
    private static final LocalReplyConfig DEFAULT_INSTANCE = new LocalReplyConfig();
    private static final e2<LocalReplyConfig> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<LocalReplyConfig> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public LocalReplyConfig m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new LocalReplyConfig(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements d {

        /* renamed from: e  reason: collision with root package name */
        private int f49825e;

        /* renamed from: f  reason: collision with root package name */
        private List<ResponseMapper> f49826f;

        /* renamed from: g  reason: collision with root package name */
        private l2<ResponseMapper, ResponseMapper.b, g> f49827g;

        /* renamed from: h  reason: collision with root package name */
        private SubstitutionFormatString f49828h;

        /* renamed from: i  reason: collision with root package name */
        private q2<SubstitutionFormatString, SubstitutionFormatString.c, e1> f49829i;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f49825e & 1) == 0) {
                this.f49826f = new ArrayList(this.f49826f);
                this.f49825e |= 1;
            }
        }

        private l2<ResponseMapper, ResponseMapper.b, g> d0() {
            if (this.f49827g == null) {
                this.f49827g = new l2<>(this.f49826f, (this.f49825e & 1) != 0, H(), O());
                this.f49826f = null;
            }
            return this.f49827g;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                d0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.b.f49890n.d(LocalReplyConfig.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public LocalReplyConfig build() {
            LocalReplyConfig I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public LocalReplyConfig I() {
            LocalReplyConfig localReplyConfig = new LocalReplyConfig(this, (a) null);
            int i9 = this.f49825e;
            l2<ResponseMapper, ResponseMapper.b, g> l2Var = this.f49827g;
            if (l2Var == null) {
                if ((i9 & 1) != 0) {
                    this.f49826f = Collections.unmodifiableList(this.f49826f);
                    this.f49825e &= -2;
                }
                localReplyConfig.mappers_ = this.f49826f;
            } else {
                localReplyConfig.mappers_ = l2Var.e();
            }
            q2<SubstitutionFormatString, SubstitutionFormatString.c, e1> q2Var = this.f49829i;
            if (q2Var == null) {
                localReplyConfig.bodyFormat_ = this.f49828h;
            } else {
                localReplyConfig.bodyFormat_ = q2Var.b();
            }
            Q();
            return localReplyConfig;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: b0 */
        public LocalReplyConfig getDefaultInstanceForType() {
            return LocalReplyConfig.getDefaultInstance();
        }

        public b g0(SubstitutionFormatString substitutionFormatString) {
            q2<SubstitutionFormatString, SubstitutionFormatString.c, e1> q2Var = this.f49829i;
            if (q2Var == null) {
                SubstitutionFormatString substitutionFormatString2 = this.f49828h;
                if (substitutionFormatString2 != null) {
                    this.f49828h = SubstitutionFormatString.newBuilder(substitutionFormatString2).i0(substitutionFormatString).I();
                } else {
                    this.f49828h = substitutionFormatString;
                }
                R();
            } else {
                q2Var.e(substitutionFormatString);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.b.f49889m;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.LocalReplyConfig.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.LocalReplyConfig.access$800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.LocalReplyConfig r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.LocalReplyConfig) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.LocalReplyConfig r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.LocalReplyConfig) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.LocalReplyConfig.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.LocalReplyConfig$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof LocalReplyConfig) {
                return j0((LocalReplyConfig) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b j0(LocalReplyConfig localReplyConfig) {
            if (localReplyConfig == LocalReplyConfig.getDefaultInstance()) {
                return this;
            }
            if (this.f49827g == null) {
                if (!localReplyConfig.mappers_.isEmpty()) {
                    if (this.f49826f.isEmpty()) {
                        this.f49826f = localReplyConfig.mappers_;
                        this.f49825e &= -2;
                    } else {
                        a0();
                        this.f49826f.addAll(localReplyConfig.mappers_);
                    }
                    R();
                }
            } else if (!localReplyConfig.mappers_.isEmpty()) {
                if (this.f49827g.k()) {
                    this.f49827g.f();
                    this.f49827g = null;
                    this.f49826f = localReplyConfig.mappers_;
                    this.f49825e &= -2;
                    this.f49827g = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                } else {
                    this.f49827g.b(localReplyConfig.mappers_);
                }
            }
            if (localReplyConfig.hasBodyFormat()) {
                g0(localReplyConfig.getBodyFormat());
            }
            z(((GeneratedMessageV3) localReplyConfig).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: k0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
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
            this.f49826f = Collections.emptyList();
            e0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f49826f = Collections.emptyList();
            e0();
        }
    }

    /* synthetic */ LocalReplyConfig(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static LocalReplyConfig getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.b.f49889m;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static LocalReplyConfig parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (LocalReplyConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static LocalReplyConfig parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<LocalReplyConfig> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof LocalReplyConfig)) {
            return super.equals(obj);
        }
        LocalReplyConfig localReplyConfig = (LocalReplyConfig) obj;
        if (getMappersList().equals(localReplyConfig.getMappersList()) && hasBodyFormat() == localReplyConfig.hasBodyFormat()) {
            return (!hasBodyFormat() || getBodyFormat().equals(localReplyConfig.getBodyFormat())) && this.unknownFields.equals(localReplyConfig.unknownFields);
        }
        return false;
    }

    public SubstitutionFormatString getBodyFormat() {
        SubstitutionFormatString substitutionFormatString = this.bodyFormat_;
        return substitutionFormatString == null ? SubstitutionFormatString.getDefaultInstance() : substitutionFormatString;
    }

    public e1 getBodyFormatOrBuilder() {
        return getBodyFormat();
    }

    public ResponseMapper getMappers(int i9) {
        return this.mappers_.get(i9);
    }

    public int getMappersCount() {
        return this.mappers_.size();
    }

    public List<ResponseMapper> getMappersList() {
        return this.mappers_;
    }

    public g getMappersOrBuilder(int i9) {
        return this.mappers_.get(i9);
    }

    public List<? extends g> getMappersOrBuilderList() {
        return this.mappers_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<LocalReplyConfig> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < this.mappers_.size(); i11++) {
            i10 += CodedOutputStream.G(1, this.mappers_.get(i11));
        }
        if (this.bodyFormat_ != null) {
            i10 += CodedOutputStream.G(2, getBodyFormat());
        }
        int serializedSize = i10 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasBodyFormat() {
        return this.bodyFormat_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (getMappersCount() > 0) {
            hashCode = (((hashCode * 37) + 1) * 53) + getMappersList().hashCode();
        }
        if (hasBodyFormat()) {
            hashCode = (((hashCode * 37) + 2) * 53) + getBodyFormat().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.b.f49890n.d(LocalReplyConfig.class, b.class);
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
        return new LocalReplyConfig();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        for (int i9 = 0; i9 < this.mappers_.size(); i9++) {
            codedOutputStream.L0(1, this.mappers_.get(i9));
        }
        if (this.bodyFormat_ != null) {
            codedOutputStream.L0(2, getBodyFormat());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ LocalReplyConfig(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(LocalReplyConfig localReplyConfig) {
        return DEFAULT_INSTANCE.toBuilder().j0(localReplyConfig);
    }

    public static LocalReplyConfig parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private LocalReplyConfig(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static LocalReplyConfig parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (LocalReplyConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static LocalReplyConfig parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public LocalReplyConfig getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).j0(this);
    }

    public static LocalReplyConfig parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private LocalReplyConfig() {
        this.memoizedIsInitialized = (byte) -1;
        this.mappers_ = Collections.emptyList();
    }

    public static LocalReplyConfig parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static LocalReplyConfig parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static LocalReplyConfig parseFrom(InputStream inputStream) throws IOException {
        return (LocalReplyConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private LocalReplyConfig(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                if (!(z11 & true)) {
                                    this.mappers_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.mappers_.add((ResponseMapper) pVar.B(ResponseMapper.parser(), f0Var));
                            } else if (L != 18) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                SubstitutionFormatString substitutionFormatString = this.bodyFormat_;
                                SubstitutionFormatString.c builder = substitutionFormatString != null ? substitutionFormatString.toBuilder() : null;
                                SubstitutionFormatString substitutionFormatString2 = (SubstitutionFormatString) pVar.B(SubstitutionFormatString.parser(), f0Var);
                                this.bodyFormat_ = substitutionFormatString2;
                                if (builder != null) {
                                    builder.i0(substitutionFormatString2);
                                    this.bodyFormat_ = builder.I();
                                }
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
                    this.mappers_ = Collections.unmodifiableList(this.mappers_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static LocalReplyConfig parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (LocalReplyConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static LocalReplyConfig parseFrom(p pVar) throws IOException {
        return (LocalReplyConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static LocalReplyConfig parseFrom(p pVar, f0 f0Var) throws IOException {
        return (LocalReplyConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
