package io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3;

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
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.DataSource;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.n;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class TlsSessionTicketKeys extends GeneratedMessageV3 implements m {
    public static final int KEYS_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private List<DataSource> keys_;
    private byte memoizedIsInitialized;
    private static final TlsSessionTicketKeys DEFAULT_INSTANCE = new TlsSessionTicketKeys();
    private static final e2<TlsSessionTicketKeys> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<TlsSessionTicketKeys> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public TlsSessionTicketKeys m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new TlsSessionTicketKeys(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements m {

        /* renamed from: e  reason: collision with root package name */
        private int f50014e;

        /* renamed from: f  reason: collision with root package name */
        private List<DataSource> f50015f;

        /* renamed from: g  reason: collision with root package name */
        private l2<DataSource, DataSource.c, n> f50016g;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f50014e & 1) == 0) {
                this.f50015f = new ArrayList(this.f50015f);
                this.f50014e |= 1;
            }
        }

        private l2<DataSource, DataSource.c, n> d0() {
            if (this.f50016g == null) {
                this.f50016g = new l2<>(this.f50015f, (this.f50014e & 1) != 0, H(), O());
                this.f50015f = null;
            }
            return this.f50016g;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                d0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return c.f50030h.d(TlsSessionTicketKeys.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public TlsSessionTicketKeys build() {
            TlsSessionTicketKeys I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public TlsSessionTicketKeys I() {
            TlsSessionTicketKeys tlsSessionTicketKeys = new TlsSessionTicketKeys(this, (a) null);
            int i9 = this.f50014e;
            l2<DataSource, DataSource.c, n> l2Var = this.f50016g;
            if (l2Var == null) {
                if ((i9 & 1) != 0) {
                    this.f50015f = Collections.unmodifiableList(this.f50015f);
                    this.f50014e &= -2;
                }
                tlsSessionTicketKeys.keys_ = this.f50015f;
            } else {
                tlsSessionTicketKeys.keys_ = l2Var.e();
            }
            Q();
            return tlsSessionTicketKeys;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: b0 */
        public TlsSessionTicketKeys getDefaultInstanceForType() {
            return TlsSessionTicketKeys.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.TlsSessionTicketKeys.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.TlsSessionTicketKeys.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.TlsSessionTicketKeys r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.TlsSessionTicketKeys) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.TlsSessionTicketKeys r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.TlsSessionTicketKeys) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.TlsSessionTicketKeys.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.TlsSessionTicketKeys$b");
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return c.f50029g;
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof TlsSessionTicketKeys) {
                return i0((TlsSessionTicketKeys) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b i0(TlsSessionTicketKeys tlsSessionTicketKeys) {
            if (tlsSessionTicketKeys == TlsSessionTicketKeys.getDefaultInstance()) {
                return this;
            }
            if (this.f50016g == null) {
                if (!tlsSessionTicketKeys.keys_.isEmpty()) {
                    if (this.f50015f.isEmpty()) {
                        this.f50015f = tlsSessionTicketKeys.keys_;
                        this.f50014e &= -2;
                    } else {
                        a0();
                        this.f50015f.addAll(tlsSessionTicketKeys.keys_);
                    }
                    R();
                }
            } else if (!tlsSessionTicketKeys.keys_.isEmpty()) {
                if (this.f50016g.k()) {
                    this.f50016g.f();
                    this.f50016g = null;
                    this.f50015f = tlsSessionTicketKeys.keys_;
                    this.f50014e &= -2;
                    this.f50016g = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                } else {
                    this.f50016g.b(tlsSessionTicketKeys.keys_);
                }
            }
            z(((GeneratedMessageV3) tlsSessionTicketKeys).unknownFields);
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
            this.f50015f = Collections.emptyList();
            e0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f50015f = Collections.emptyList();
            e0();
        }
    }

    /* synthetic */ TlsSessionTicketKeys(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static TlsSessionTicketKeys getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return c.f50029g;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static TlsSessionTicketKeys parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (TlsSessionTicketKeys) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static TlsSessionTicketKeys parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<TlsSessionTicketKeys> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof TlsSessionTicketKeys)) {
            return super.equals(obj);
        }
        TlsSessionTicketKeys tlsSessionTicketKeys = (TlsSessionTicketKeys) obj;
        return getKeysList().equals(tlsSessionTicketKeys.getKeysList()) && this.unknownFields.equals(tlsSessionTicketKeys.unknownFields);
    }

    public DataSource getKeys(int i9) {
        return this.keys_.get(i9);
    }

    public int getKeysCount() {
        return this.keys_.size();
    }

    public List<DataSource> getKeysList() {
        return this.keys_;
    }

    public n getKeysOrBuilder(int i9) {
        return this.keys_.get(i9);
    }

    public List<? extends n> getKeysOrBuilderList() {
        return this.keys_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<TlsSessionTicketKeys> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < this.keys_.size(); i11++) {
            i10 += CodedOutputStream.G(1, this.keys_.get(i11));
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
        if (getKeysCount() > 0) {
            hashCode = (((hashCode * 37) + 1) * 53) + getKeysList().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return c.f50030h.d(TlsSessionTicketKeys.class, b.class);
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
        return new TlsSessionTicketKeys();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        for (int i9 = 0; i9 < this.keys_.size(); i9++) {
            codedOutputStream.L0(1, this.keys_.get(i9));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ TlsSessionTicketKeys(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(TlsSessionTicketKeys tlsSessionTicketKeys) {
        return DEFAULT_INSTANCE.toBuilder().i0(tlsSessionTicketKeys);
    }

    public static TlsSessionTicketKeys parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private TlsSessionTicketKeys(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static TlsSessionTicketKeys parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (TlsSessionTicketKeys) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static TlsSessionTicketKeys parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public TlsSessionTicketKeys getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).i0(this);
    }

    public static TlsSessionTicketKeys parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private TlsSessionTicketKeys() {
        this.memoizedIsInitialized = (byte) -1;
        this.keys_ = Collections.emptyList();
    }

    public static TlsSessionTicketKeys parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static TlsSessionTicketKeys parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static TlsSessionTicketKeys parseFrom(InputStream inputStream) throws IOException {
        return (TlsSessionTicketKeys) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private TlsSessionTicketKeys(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                this.keys_ = new ArrayList();
                                z11 |= true;
                            }
                            this.keys_.add((DataSource) pVar.B(DataSource.parser(), f0Var));
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
                    this.keys_ = Collections.unmodifiableList(this.keys_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static TlsSessionTicketKeys parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (TlsSessionTicketKeys) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static TlsSessionTicketKeys parseFrom(p pVar) throws IOException {
        return (TlsSessionTicketKeys) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static TlsSessionTicketKeys parseFrom(p pVar, f0 f0Var) throws IOException {
        return (TlsSessionTicketKeys) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
