package io.opencensus.proto.agent.trace.v1;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.c;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import io.opencensus.proto.agent.common.v1.Node;
import io.opencensus.proto.trace.v1.TraceConfig;
import io.opencensus.proto.trace.v1.h;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class UpdatedLibraryConfig extends GeneratedMessageV3 implements r1 {
    public static final int CONFIG_FIELD_NUMBER = 2;
    public static final int NODE_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private TraceConfig config_;
    private byte memoizedIsInitialized;
    private Node node_;
    private static final UpdatedLibraryConfig DEFAULT_INSTANCE = new UpdatedLibraryConfig();
    private static final e2<UpdatedLibraryConfig> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static class a extends c<UpdatedLibraryConfig> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public UpdatedLibraryConfig m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new UpdatedLibraryConfig(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private Node f50955e;

        /* renamed from: f  reason: collision with root package name */
        private q2<Node, Node.c, io.opencensus.proto.agent.common.v1.c> f50956f;

        /* renamed from: g  reason: collision with root package name */
        private TraceConfig f50957g;

        /* renamed from: h  reason: collision with root package name */
        private q2<TraceConfig, TraceConfig.c, h> f50958h;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return io.opencensus.proto.agent.trace.v1.a.f50962d.d(UpdatedLibraryConfig.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public UpdatedLibraryConfig build() {
            UpdatedLibraryConfig I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public UpdatedLibraryConfig I() {
            UpdatedLibraryConfig updatedLibraryConfig = new UpdatedLibraryConfig(this, (a) null);
            q2<Node, Node.c, io.opencensus.proto.agent.common.v1.c> q2Var = this.f50956f;
            if (q2Var == null) {
                updatedLibraryConfig.node_ = this.f50955e;
            } else {
                updatedLibraryConfig.node_ = q2Var.b();
            }
            q2<TraceConfig, TraceConfig.c, h> q2Var2 = this.f50958h;
            if (q2Var2 == null) {
                updatedLibraryConfig.config_ = this.f50957g;
            } else {
                updatedLibraryConfig.config_ = q2Var2.b();
            }
            Q();
            return updatedLibraryConfig;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public UpdatedLibraryConfig getDefaultInstanceForType() {
            return UpdatedLibraryConfig.getDefaultInstance();
        }

        public b d0(TraceConfig traceConfig) {
            q2<TraceConfig, TraceConfig.c, h> q2Var = this.f50958h;
            if (q2Var == null) {
                TraceConfig traceConfig2 = this.f50957g;
                if (traceConfig2 != null) {
                    this.f50957g = TraceConfig.newBuilder(traceConfig2).h0(traceConfig).I();
                } else {
                    this.f50957g = traceConfig;
                }
                R();
            } else {
                q2Var.e(traceConfig);
            }
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.opencensus.proto.agent.trace.v1.UpdatedLibraryConfig.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.opencensus.proto.agent.trace.v1.UpdatedLibraryConfig.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.opencensus.proto.agent.trace.v1.UpdatedLibraryConfig r3 = (io.opencensus.proto.agent.trace.v1.UpdatedLibraryConfig) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.opencensus.proto.agent.trace.v1.UpdatedLibraryConfig r4 = (io.opencensus.proto.agent.trace.v1.UpdatedLibraryConfig) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.opencensus.proto.agent.trace.v1.UpdatedLibraryConfig.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.opencensus.proto.agent.trace.v1.UpdatedLibraryConfig$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof UpdatedLibraryConfig) {
                return h0((UpdatedLibraryConfig) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return io.opencensus.proto.agent.trace.v1.a.f50961c;
        }

        public b h0(UpdatedLibraryConfig updatedLibraryConfig) {
            if (updatedLibraryConfig == UpdatedLibraryConfig.getDefaultInstance()) {
                return this;
            }
            if (updatedLibraryConfig.hasNode()) {
                i0(updatedLibraryConfig.getNode());
            }
            if (updatedLibraryConfig.hasConfig()) {
                d0(updatedLibraryConfig.getConfig());
            }
            z(((GeneratedMessageV3) updatedLibraryConfig).unknownFields);
            R();
            return this;
        }

        public b i0(Node node) {
            q2<Node, Node.c, io.opencensus.proto.agent.common.v1.c> q2Var = this.f50956f;
            if (q2Var == null) {
                Node node2 = this.f50955e;
                if (node2 != null) {
                    this.f50955e = Node.newBuilder(node2).i0(node).I();
                } else {
                    this.f50955e = node;
                }
                R();
            } else {
                q2Var.e(node);
            }
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
            return (b) super.V(h3Var);
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            this.f50955e = null;
            this.f50957g = null;
            b0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f50955e = null;
            this.f50957g = null;
            b0();
        }
    }

    /* synthetic */ UpdatedLibraryConfig(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static UpdatedLibraryConfig getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return io.opencensus.proto.agent.trace.v1.a.f50961c;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static UpdatedLibraryConfig parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (UpdatedLibraryConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static UpdatedLibraryConfig parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<UpdatedLibraryConfig> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof UpdatedLibraryConfig)) {
            return super.equals(obj);
        }
        UpdatedLibraryConfig updatedLibraryConfig = (UpdatedLibraryConfig) obj;
        boolean z10 = hasNode() == updatedLibraryConfig.hasNode();
        if (hasNode()) {
            z10 = z10 && getNode().equals(updatedLibraryConfig.getNode());
        }
        boolean z11 = z10 && hasConfig() == updatedLibraryConfig.hasConfig();
        if (hasConfig()) {
            z11 = z11 && getConfig().equals(updatedLibraryConfig.getConfig());
        }
        return z11 && this.unknownFields.equals(updatedLibraryConfig.unknownFields);
    }

    public TraceConfig getConfig() {
        TraceConfig traceConfig = this.config_;
        return traceConfig == null ? TraceConfig.getDefaultInstance() : traceConfig;
    }

    public h getConfigOrBuilder() {
        return getConfig();
    }

    public Node getNode() {
        Node node = this.node_;
        return node == null ? Node.getDefaultInstance() : node;
    }

    public io.opencensus.proto.agent.common.v1.c getNodeOrBuilder() {
        return getNode();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<UpdatedLibraryConfig> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.node_ != null ? 0 + CodedOutputStream.G(1, getNode()) : 0;
        if (this.config_ != null) {
            G += CodedOutputStream.G(2, getConfig());
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasConfig() {
        return this.config_ != null;
    }

    public boolean hasNode() {
        return this.node_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasNode()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getNode().hashCode();
        }
        if (hasConfig()) {
            hashCode = (((hashCode * 37) + 2) * 53) + getConfig().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return io.opencensus.proto.agent.trace.v1.a.f50962d.d(UpdatedLibraryConfig.class, b.class);
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

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.node_ != null) {
            codedOutputStream.L0(1, getNode());
        }
        if (this.config_ != null) {
            codedOutputStream.L0(2, getConfig());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ UpdatedLibraryConfig(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(UpdatedLibraryConfig updatedLibraryConfig) {
        return DEFAULT_INSTANCE.toBuilder().h0(updatedLibraryConfig);
    }

    public static UpdatedLibraryConfig parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private UpdatedLibraryConfig(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static UpdatedLibraryConfig parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (UpdatedLibraryConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static UpdatedLibraryConfig parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public UpdatedLibraryConfig getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).h0(this);
    }

    public static UpdatedLibraryConfig parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private UpdatedLibraryConfig() {
        this.memoizedIsInitialized = (byte) -1;
    }

    public static UpdatedLibraryConfig parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static UpdatedLibraryConfig parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    private UpdatedLibraryConfig(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    int L = pVar.L();
                    if (L != 0) {
                        if (L == 10) {
                            Node node = this.node_;
                            Node.c builder = node != null ? node.toBuilder() : null;
                            Node node2 = (Node) pVar.B(Node.parser(), f0Var);
                            this.node_ = node2;
                            if (builder != null) {
                                builder.i0(node2);
                                this.node_ = builder.I();
                            }
                        } else if (L != 18) {
                            if (!parseUnknownFieldProto3(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            TraceConfig traceConfig = this.config_;
                            TraceConfig.c builder2 = traceConfig != null ? traceConfig.toBuilder() : null;
                            TraceConfig traceConfig2 = (TraceConfig) pVar.B(TraceConfig.parser(), f0Var);
                            this.config_ = traceConfig2;
                            if (builder2 != null) {
                                builder2.h0(traceConfig2);
                                this.config_ = builder2.I();
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
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static UpdatedLibraryConfig parseFrom(InputStream inputStream) throws IOException {
        return (UpdatedLibraryConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static UpdatedLibraryConfig parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (UpdatedLibraryConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static UpdatedLibraryConfig parseFrom(p pVar) throws IOException {
        return (UpdatedLibraryConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static UpdatedLibraryConfig parseFrom(p pVar, f0 f0Var) throws IOException {
        return (UpdatedLibraryConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
