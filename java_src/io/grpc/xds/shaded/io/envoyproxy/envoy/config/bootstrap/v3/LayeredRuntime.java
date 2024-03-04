package io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3;

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
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.RuntimeLayer;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class LayeredRuntime extends GeneratedMessageV3 implements g {
    public static final int LAYERS_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private List<RuntimeLayer> layers_;
    private byte memoizedIsInitialized;
    private static final LayeredRuntime DEFAULT_INSTANCE = new LayeredRuntime();
    private static final e2<LayeredRuntime> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<LayeredRuntime> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public LayeredRuntime m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new LayeredRuntime(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements g {

        /* renamed from: e  reason: collision with root package name */
        private int f47480e;

        /* renamed from: f  reason: collision with root package name */
        private List<RuntimeLayer> f47481f;

        /* renamed from: g  reason: collision with root package name */
        private l2<RuntimeLayer, RuntimeLayer.d, h> f47482g;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f47480e & 1) == 0) {
                this.f47481f = new ArrayList(this.f47481f);
                this.f47480e |= 1;
            }
        }

        private l2<RuntimeLayer, RuntimeLayer.d, h> d0() {
            if (this.f47482g == null) {
                this.f47482g = new l2<>(this.f47481f, (this.f47480e & 1) != 0, H(), O());
                this.f47481f = null;
            }
            return this.f47482g;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                d0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return c.H.d(LayeredRuntime.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public LayeredRuntime build() {
            LayeredRuntime I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public LayeredRuntime I() {
            LayeredRuntime layeredRuntime = new LayeredRuntime(this, (a) null);
            int i9 = this.f47480e;
            l2<RuntimeLayer, RuntimeLayer.d, h> l2Var = this.f47482g;
            if (l2Var == null) {
                if ((i9 & 1) != 0) {
                    this.f47481f = Collections.unmodifiableList(this.f47481f);
                    this.f47480e &= -2;
                }
                layeredRuntime.layers_ = this.f47481f;
            } else {
                layeredRuntime.layers_ = l2Var.e();
            }
            Q();
            return layeredRuntime;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: b0 */
        public LayeredRuntime getDefaultInstanceForType() {
            return LayeredRuntime.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.LayeredRuntime.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.LayeredRuntime.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.LayeredRuntime r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.LayeredRuntime) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.LayeredRuntime r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.LayeredRuntime) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.LayeredRuntime.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.LayeredRuntime$b");
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return c.G;
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof LayeredRuntime) {
                return i0((LayeredRuntime) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b i0(LayeredRuntime layeredRuntime) {
            if (layeredRuntime == LayeredRuntime.getDefaultInstance()) {
                return this;
            }
            if (this.f47482g == null) {
                if (!layeredRuntime.layers_.isEmpty()) {
                    if (this.f47481f.isEmpty()) {
                        this.f47481f = layeredRuntime.layers_;
                        this.f47480e &= -2;
                    } else {
                        a0();
                        this.f47481f.addAll(layeredRuntime.layers_);
                    }
                    R();
                }
            } else if (!layeredRuntime.layers_.isEmpty()) {
                if (this.f47482g.k()) {
                    this.f47482g.f();
                    this.f47482g = null;
                    this.f47481f = layeredRuntime.layers_;
                    this.f47480e &= -2;
                    this.f47482g = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                } else {
                    this.f47482g.b(layeredRuntime.layers_);
                }
            }
            z(((GeneratedMessageV3) layeredRuntime).unknownFields);
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
            this.f47481f = Collections.emptyList();
            e0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f47481f = Collections.emptyList();
            e0();
        }
    }

    /* synthetic */ LayeredRuntime(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static LayeredRuntime getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return c.G;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static LayeredRuntime parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (LayeredRuntime) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static LayeredRuntime parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<LayeredRuntime> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof LayeredRuntime)) {
            return super.equals(obj);
        }
        LayeredRuntime layeredRuntime = (LayeredRuntime) obj;
        return getLayersList().equals(layeredRuntime.getLayersList()) && this.unknownFields.equals(layeredRuntime.unknownFields);
    }

    public RuntimeLayer getLayers(int i9) {
        return this.layers_.get(i9);
    }

    public int getLayersCount() {
        return this.layers_.size();
    }

    public List<RuntimeLayer> getLayersList() {
        return this.layers_;
    }

    public h getLayersOrBuilder(int i9) {
        return this.layers_.get(i9);
    }

    public List<? extends h> getLayersOrBuilderList() {
        return this.layers_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<LayeredRuntime> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < this.layers_.size(); i11++) {
            i10 += CodedOutputStream.G(1, this.layers_.get(i11));
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
        if (getLayersCount() > 0) {
            hashCode = (((hashCode * 37) + 1) * 53) + getLayersList().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return c.H.d(LayeredRuntime.class, b.class);
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
        return new LayeredRuntime();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        for (int i9 = 0; i9 < this.layers_.size(); i9++) {
            codedOutputStream.L0(1, this.layers_.get(i9));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ LayeredRuntime(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(LayeredRuntime layeredRuntime) {
        return DEFAULT_INSTANCE.toBuilder().i0(layeredRuntime);
    }

    public static LayeredRuntime parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private LayeredRuntime(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static LayeredRuntime parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (LayeredRuntime) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static LayeredRuntime parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public LayeredRuntime getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).i0(this);
    }

    public static LayeredRuntime parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private LayeredRuntime() {
        this.memoizedIsInitialized = (byte) -1;
        this.layers_ = Collections.emptyList();
    }

    public static LayeredRuntime parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static LayeredRuntime parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static LayeredRuntime parseFrom(InputStream inputStream) throws IOException {
        return (LayeredRuntime) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private LayeredRuntime(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                this.layers_ = new ArrayList();
                                z11 |= true;
                            }
                            this.layers_.add((RuntimeLayer) pVar.B(RuntimeLayer.parser(), f0Var));
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
                    this.layers_ = Collections.unmodifiableList(this.layers_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static LayeredRuntime parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (LayeredRuntime) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static LayeredRuntime parseFrom(p pVar) throws IOException {
        return (LayeredRuntime) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static LayeredRuntime parseFrom(p pVar, f0 f0Var) throws IOException {
        return (LayeredRuntime) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
