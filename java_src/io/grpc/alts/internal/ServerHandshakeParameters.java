package io.grpc.alts.internal;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.h3;
import com.google.protobuf.i2;
import com.google.protobuf.l1;
import com.google.protobuf.l2;
import com.google.protobuf.r1;
import com.google.protobuf.y0;
import com.google.protobuf.z0;
import io.grpc.alts.internal.Identity;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class ServerHandshakeParameters extends GeneratedMessageV3 implements r1 {
    public static final int LOCAL_IDENTITIES_FIELD_NUMBER = 2;
    public static final int RECORD_PROTOCOLS_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private List<Identity> localIdentities_;
    private byte memoizedIsInitialized;
    private z0 recordProtocols_;
    private static final ServerHandshakeParameters DEFAULT_INSTANCE = new ServerHandshakeParameters();
    private static final e2<ServerHandshakeParameters> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends com.google.protobuf.c<ServerHandshakeParameters> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public ServerHandshakeParameters m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return new ServerHandshakeParameters(pVar, f0Var, null);
        }
    }

    /* loaded from: classes5.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private int f41800e;

        /* renamed from: f  reason: collision with root package name */
        private z0 f41801f;

        /* renamed from: g  reason: collision with root package name */
        private List<Identity> f41802g;

        /* renamed from: h  reason: collision with root package name */
        private l2<Identity, Identity.d, v> f41803h;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            if ((this.f41800e & 2) == 0) {
                this.f41802g = new ArrayList(this.f41802g);
                this.f41800e |= 2;
            }
        }

        private void d0() {
            if ((this.f41800e & 1) == 0) {
                this.f41801f = new y0(this.f41801f);
                this.f41800e |= 1;
            }
        }

        private l2<Identity, Identity.d, v> g0() {
            if (this.f41803h == null) {
                this.f41803h = new l2<>(this.f41802g, (this.f41800e & 2) != 0, H(), O());
                this.f41802g = null;
            }
            return this.f41803h;
        }

        private void h0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                g0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return r.f41955j.d(ServerHandshakeParameters.class, b.class);
        }

        public b W(String str) {
            Objects.requireNonNull(str);
            d0();
            this.f41801f.add(str);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: X */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public ServerHandshakeParameters build() {
            ServerHandshakeParameters I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Z */
        public ServerHandshakeParameters I() {
            ServerHandshakeParameters serverHandshakeParameters = new ServerHandshakeParameters(this, (a) null);
            if ((this.f41800e & 1) != 0) {
                this.f41801f = this.f41801f.V0();
                this.f41800e &= -2;
            }
            serverHandshakeParameters.recordProtocols_ = this.f41801f;
            l2<Identity, Identity.d, v> l2Var = this.f41803h;
            if (l2Var == null) {
                if ((this.f41800e & 2) != 0) {
                    this.f41802g = Collections.unmodifiableList(this.f41802g);
                    this.f41800e &= -3;
                }
                serverHandshakeParameters.localIdentities_ = this.f41802g;
            } else {
                serverHandshakeParameters.localIdentities_ = l2Var.e();
            }
            Q();
            return serverHandshakeParameters;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: a0 */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: e0 */
        public ServerHandshakeParameters getDefaultInstanceForType() {
            return ServerHandshakeParameters.getDefaultInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return r.f41954i;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.alts.internal.ServerHandshakeParameters.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.alts.internal.ServerHandshakeParameters.access$800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.alts.internal.ServerHandshakeParameters r3 = (io.grpc.alts.internal.ServerHandshakeParameters) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.k0(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                io.grpc.alts.internal.ServerHandshakeParameters r4 = (io.grpc.alts.internal.ServerHandshakeParameters) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.k0(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.alts.internal.ServerHandshakeParameters.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.alts.internal.ServerHandshakeParameters$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: j0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof ServerHandshakeParameters) {
                return k0((ServerHandshakeParameters) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b k0(ServerHandshakeParameters serverHandshakeParameters) {
            if (serverHandshakeParameters == ServerHandshakeParameters.getDefaultInstance()) {
                return this;
            }
            if (!serverHandshakeParameters.recordProtocols_.isEmpty()) {
                if (this.f41801f.isEmpty()) {
                    this.f41801f = serverHandshakeParameters.recordProtocols_;
                    this.f41800e &= -2;
                } else {
                    d0();
                    this.f41801f.addAll(serverHandshakeParameters.recordProtocols_);
                }
                R();
            }
            if (this.f41803h == null) {
                if (!serverHandshakeParameters.localIdentities_.isEmpty()) {
                    if (this.f41802g.isEmpty()) {
                        this.f41802g = serverHandshakeParameters.localIdentities_;
                        this.f41800e &= -3;
                    } else {
                        b0();
                        this.f41802g.addAll(serverHandshakeParameters.localIdentities_);
                    }
                    R();
                }
            } else if (!serverHandshakeParameters.localIdentities_.isEmpty()) {
                if (this.f41803h.k()) {
                    this.f41803h.f();
                    this.f41803h = null;
                    this.f41802g = serverHandshakeParameters.localIdentities_;
                    this.f41800e &= -3;
                    this.f41803h = GeneratedMessageV3.alwaysUseFieldBuilders ? g0() : null;
                } else {
                    this.f41803h.b(serverHandshakeParameters.localIdentities_);
                }
            }
            z(((GeneratedMessageV3) serverHandshakeParameters).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: l0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: m0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: n0 */
        public final b f1(h3 h3Var) {
            return (b) super.f1(h3Var);
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            this.f41801f = y0.f15344d;
            this.f41802g = Collections.emptyList();
            h0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f41801f = y0.f15344d;
            this.f41802g = Collections.emptyList();
            h0();
        }
    }

    /* synthetic */ ServerHandshakeParameters(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static ServerHandshakeParameters getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return r.f41954i;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static ServerHandshakeParameters parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (ServerHandshakeParameters) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static ServerHandshakeParameters parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<ServerHandshakeParameters> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ServerHandshakeParameters)) {
            return super.equals(obj);
        }
        ServerHandshakeParameters serverHandshakeParameters = (ServerHandshakeParameters) obj;
        return m1546getRecordProtocolsList().equals(serverHandshakeParameters.m1546getRecordProtocolsList()) && getLocalIdentitiesList().equals(serverHandshakeParameters.getLocalIdentitiesList()) && this.unknownFields.equals(serverHandshakeParameters.unknownFields);
    }

    public Identity getLocalIdentities(int i9) {
        return this.localIdentities_.get(i9);
    }

    public int getLocalIdentitiesCount() {
        return this.localIdentities_.size();
    }

    public List<Identity> getLocalIdentitiesList() {
        return this.localIdentities_;
    }

    public v getLocalIdentitiesOrBuilder(int i9) {
        return this.localIdentities_.get(i9);
    }

    public List<? extends v> getLocalIdentitiesOrBuilderList() {
        return this.localIdentities_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<ServerHandshakeParameters> getParserForType() {
        return PARSER;
    }

    public String getRecordProtocols(int i9) {
        return this.recordProtocols_.get(i9);
    }

    public ByteString getRecordProtocolsBytes(int i9) {
        return this.recordProtocols_.j0(i9);
    }

    public int getRecordProtocolsCount() {
        return this.recordProtocols_.size();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < this.recordProtocols_.size(); i11++) {
            i10 += GeneratedMessageV3.computeStringSizeNoTag(this.recordProtocols_.c1(i11));
        }
        int size = i10 + 0 + (m1546getRecordProtocolsList().size() * 1);
        for (int i12 = 0; i12 < this.localIdentities_.size(); i12++) {
            size += CodedOutputStream.G(2, this.localIdentities_.get(i12));
        }
        int serializedSize = size + this.unknownFields.getSerializedSize();
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
        if (getRecordProtocolsCount() > 0) {
            hashCode = (((hashCode * 37) + 1) * 53) + m1546getRecordProtocolsList().hashCode();
        }
        if (getLocalIdentitiesCount() > 0) {
            hashCode = (((hashCode * 37) + 2) * 53) + getLocalIdentitiesList().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return r.f41955j.d(ServerHandshakeParameters.class, b.class);
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
        return new ServerHandshakeParameters();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        for (int i9 = 0; i9 < this.recordProtocols_.size(); i9++) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.recordProtocols_.c1(i9));
        }
        for (int i10 = 0; i10 < this.localIdentities_.size(); i10++) {
            codedOutputStream.L0(2, this.localIdentities_.get(i10));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ ServerHandshakeParameters(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(ServerHandshakeParameters serverHandshakeParameters) {
        return DEFAULT_INSTANCE.toBuilder().k0(serverHandshakeParameters);
    }

    public static ServerHandshakeParameters parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    /* renamed from: getRecordProtocolsList */
    public i2 m1546getRecordProtocolsList() {
        return this.recordProtocols_;
    }

    private ServerHandshakeParameters(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static ServerHandshakeParameters parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (ServerHandshakeParameters) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static ServerHandshakeParameters parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public ServerHandshakeParameters getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).k0(this);
    }

    public static ServerHandshakeParameters parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private ServerHandshakeParameters() {
        this.memoizedIsInitialized = (byte) -1;
        this.recordProtocols_ = y0.f15344d;
        this.localIdentities_ = Collections.emptyList();
    }

    public static ServerHandshakeParameters parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static ServerHandshakeParameters parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static ServerHandshakeParameters parseFrom(InputStream inputStream) throws IOException {
        return (ServerHandshakeParameters) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private ServerHandshakeParameters(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                        if (L == 10) {
                            String K = pVar.K();
                            if (!(z11 & true)) {
                                this.recordProtocols_ = new y0();
                                z11 |= true;
                            }
                            this.recordProtocols_.add(K);
                        } else if (L != 18) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            if (!(z11 & true)) {
                                this.localIdentities_ = new ArrayList();
                                z11 |= true;
                            }
                            this.localIdentities_.add((Identity) pVar.B(Identity.parser(), f0Var));
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
                    this.recordProtocols_ = this.recordProtocols_.V0();
                }
                if (z11 & true) {
                    this.localIdentities_ = Collections.unmodifiableList(this.localIdentities_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static ServerHandshakeParameters parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (ServerHandshakeParameters) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static ServerHandshakeParameters parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (ServerHandshakeParameters) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static ServerHandshakeParameters parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
        return (ServerHandshakeParameters) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
