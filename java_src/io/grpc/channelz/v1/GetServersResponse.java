package io.grpc.channelz.v1;

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
import com.google.protobuf.r1;
import com.google.protobuf.u0;
import io.grpc.channelz.v1.Server;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class GetServersResponse extends GeneratedMessageV3 implements r1 {
    public static final int END_FIELD_NUMBER = 2;
    public static final int SERVER_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private boolean end_;
    private byte memoizedIsInitialized;
    private List<Server> server_;
    private static final GetServersResponse DEFAULT_INSTANCE = new GetServersResponse();
    private static final e2<GetServersResponse> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends com.google.protobuf.c<GetServersResponse> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public GetServersResponse m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new GetServersResponse(pVar, f0Var, null);
        }
    }

    /* loaded from: classes5.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private int f42130e;

        /* renamed from: f  reason: collision with root package name */
        private List<Server> f42131f;

        /* renamed from: g  reason: collision with root package name */
        private l2<Server, Server.b, k> f42132g;

        /* renamed from: h  reason: collision with root package name */
        private boolean f42133h;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f42130e & 1) == 0) {
                this.f42131f = new ArrayList(this.f42131f);
                this.f42130e |= 1;
            }
        }

        private l2<Server, Server.b, k> d0() {
            if (this.f42132g == null) {
                this.f42132g = new l2<>(this.f42131f, (this.f42130e & 1) != 0, H(), O());
                this.f42131f = null;
            }
            return this.f42132g;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                d0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return h.f42265f0.d(GetServersResponse.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public GetServersResponse build() {
            GetServersResponse I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public GetServersResponse I() {
            GetServersResponse getServersResponse = new GetServersResponse(this, (a) null);
            int i9 = this.f42130e;
            l2<Server, Server.b, k> l2Var = this.f42132g;
            if (l2Var == null) {
                if ((i9 & 1) != 0) {
                    this.f42131f = Collections.unmodifiableList(this.f42131f);
                    this.f42130e &= -2;
                }
                getServersResponse.server_ = this.f42131f;
            } else {
                getServersResponse.server_ = l2Var.e();
            }
            getServersResponse.end_ = this.f42133h;
            Q();
            return getServersResponse;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: b0 */
        public GetServersResponse getDefaultInstanceForType() {
            return GetServersResponse.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.channelz.v1.GetServersResponse.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.channelz.v1.GetServersResponse.access$800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.channelz.v1.GetServersResponse r3 = (io.grpc.channelz.v1.GetServersResponse) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.channelz.v1.GetServersResponse r4 = (io.grpc.channelz.v1.GetServersResponse) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.channelz.v1.GetServersResponse.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.channelz.v1.GetServersResponse$b");
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return h.f42263e0;
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof GetServersResponse) {
                return i0((GetServersResponse) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b i0(GetServersResponse getServersResponse) {
            if (getServersResponse == GetServersResponse.getDefaultInstance()) {
                return this;
            }
            if (this.f42132g == null) {
                if (!getServersResponse.server_.isEmpty()) {
                    if (this.f42131f.isEmpty()) {
                        this.f42131f = getServersResponse.server_;
                        this.f42130e &= -2;
                    } else {
                        a0();
                        this.f42131f.addAll(getServersResponse.server_);
                    }
                    R();
                }
            } else if (!getServersResponse.server_.isEmpty()) {
                if (this.f42132g.k()) {
                    this.f42132g.f();
                    this.f42132g = null;
                    this.f42131f = getServersResponse.server_;
                    this.f42130e &= -2;
                    this.f42132g = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                } else {
                    this.f42132g.b(getServersResponse.server_);
                }
            }
            if (getServersResponse.getEnd()) {
                k0(getServersResponse.getEnd());
            }
            z(((GeneratedMessageV3) getServersResponse).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: j0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        public b k0(boolean z10) {
            this.f42133h = z10;
            R();
            return this;
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
            this.f42131f = Collections.emptyList();
            e0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f42131f = Collections.emptyList();
            e0();
        }
    }

    /* synthetic */ GetServersResponse(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static GetServersResponse getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return h.f42263e0;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static GetServersResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (GetServersResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static GetServersResponse parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<GetServersResponse> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof GetServersResponse)) {
            return super.equals(obj);
        }
        GetServersResponse getServersResponse = (GetServersResponse) obj;
        return getServerList().equals(getServersResponse.getServerList()) && getEnd() == getServersResponse.getEnd() && this.unknownFields.equals(getServersResponse.unknownFields);
    }

    public boolean getEnd() {
        return this.end_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<GetServersResponse> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < this.server_.size(); i11++) {
            i10 += CodedOutputStream.G(1, this.server_.get(i11));
        }
        boolean z10 = this.end_;
        if (z10) {
            i10 += CodedOutputStream.e(2, z10);
        }
        int serializedSize = i10 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public Server getServer(int i9) {
        return this.server_.get(i9);
    }

    public int getServerCount() {
        return this.server_.size();
    }

    public List<Server> getServerList() {
        return this.server_;
    }

    public k getServerOrBuilder(int i9) {
        return this.server_.get(i9);
    }

    public List<? extends k> getServerOrBuilderList() {
        return this.server_;
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
        if (getServerCount() > 0) {
            hashCode = (((hashCode * 37) + 1) * 53) + getServerList().hashCode();
        }
        int d10 = (((((hashCode * 37) + 2) * 53) + u0.d(getEnd())) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = d10;
        return d10;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return h.f42265f0.d(GetServersResponse.class, b.class);
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
        return new GetServersResponse();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        for (int i9 = 0; i9 < this.server_.size(); i9++) {
            codedOutputStream.L0(1, this.server_.get(i9));
        }
        boolean z10 = this.end_;
        if (z10) {
            codedOutputStream.n0(2, z10);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ GetServersResponse(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(GetServersResponse getServersResponse) {
        return DEFAULT_INSTANCE.toBuilder().i0(getServersResponse);
    }

    public static GetServersResponse parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private GetServersResponse(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static GetServersResponse parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (GetServersResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static GetServersResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public GetServersResponse getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).i0(this);
    }

    public static GetServersResponse parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private GetServersResponse() {
        this.memoizedIsInitialized = (byte) -1;
        this.server_ = Collections.emptyList();
    }

    public static GetServersResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static GetServersResponse parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static GetServersResponse parseFrom(InputStream inputStream) throws IOException {
        return (GetServersResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private GetServersResponse(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            if (!(z11 & true)) {
                                this.server_ = new ArrayList();
                                z11 |= true;
                            }
                            this.server_.add((Server) pVar.B(Server.parser(), f0Var));
                        } else if (L != 16) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            this.end_ = pVar.r();
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
                    this.server_ = Collections.unmodifiableList(this.server_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static GetServersResponse parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (GetServersResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static GetServersResponse parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (GetServersResponse) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static GetServersResponse parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
        return (GetServersResponse) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
