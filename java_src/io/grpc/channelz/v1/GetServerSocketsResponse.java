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
import io.grpc.channelz.v1.SocketRef;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class GetServerSocketsResponse extends GeneratedMessageV3 implements r1 {
    public static final int END_FIELD_NUMBER = 2;
    public static final int SOCKET_REF_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private boolean end_;
    private byte memoizedIsInitialized;
    private List<SocketRef> socketRef_;
    private static final GetServerSocketsResponse DEFAULT_INSTANCE = new GetServerSocketsResponse();
    private static final e2<GetServerSocketsResponse> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends com.google.protobuf.c<GetServerSocketsResponse> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public GetServerSocketsResponse m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new GetServerSocketsResponse(pVar, f0Var, null);
        }
    }

    /* loaded from: classes5.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private int f42124e;

        /* renamed from: f  reason: collision with root package name */
        private List<SocketRef> f42125f;

        /* renamed from: g  reason: collision with root package name */
        private l2<SocketRef, SocketRef.b, p> f42126g;

        /* renamed from: h  reason: collision with root package name */
        private boolean f42127h;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f42124e & 1) == 0) {
                this.f42125f = new ArrayList(this.f42125f);
                this.f42124e |= 1;
            }
        }

        private l2<SocketRef, SocketRef.b, p> d0() {
            if (this.f42126g == null) {
                this.f42126g = new l2<>(this.f42125f, (this.f42124e & 1) != 0, H(), O());
                this.f42125f = null;
            }
            return this.f42126g;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                d0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return h.f42281n0.d(GetServerSocketsResponse.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public GetServerSocketsResponse build() {
            GetServerSocketsResponse I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public GetServerSocketsResponse I() {
            GetServerSocketsResponse getServerSocketsResponse = new GetServerSocketsResponse(this, (a) null);
            int i9 = this.f42124e;
            l2<SocketRef, SocketRef.b, p> l2Var = this.f42126g;
            if (l2Var == null) {
                if ((i9 & 1) != 0) {
                    this.f42125f = Collections.unmodifiableList(this.f42125f);
                    this.f42124e &= -2;
                }
                getServerSocketsResponse.socketRef_ = this.f42125f;
            } else {
                getServerSocketsResponse.socketRef_ = l2Var.e();
            }
            getServerSocketsResponse.end_ = this.f42127h;
            Q();
            return getServerSocketsResponse;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: b0 */
        public GetServerSocketsResponse getDefaultInstanceForType() {
            return GetServerSocketsResponse.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.channelz.v1.GetServerSocketsResponse.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.channelz.v1.GetServerSocketsResponse.access$800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.channelz.v1.GetServerSocketsResponse r3 = (io.grpc.channelz.v1.GetServerSocketsResponse) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.channelz.v1.GetServerSocketsResponse r4 = (io.grpc.channelz.v1.GetServerSocketsResponse) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.channelz.v1.GetServerSocketsResponse.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.channelz.v1.GetServerSocketsResponse$b");
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return h.f42279m0;
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof GetServerSocketsResponse) {
                return i0((GetServerSocketsResponse) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b i0(GetServerSocketsResponse getServerSocketsResponse) {
            if (getServerSocketsResponse == GetServerSocketsResponse.getDefaultInstance()) {
                return this;
            }
            if (this.f42126g == null) {
                if (!getServerSocketsResponse.socketRef_.isEmpty()) {
                    if (this.f42125f.isEmpty()) {
                        this.f42125f = getServerSocketsResponse.socketRef_;
                        this.f42124e &= -2;
                    } else {
                        a0();
                        this.f42125f.addAll(getServerSocketsResponse.socketRef_);
                    }
                    R();
                }
            } else if (!getServerSocketsResponse.socketRef_.isEmpty()) {
                if (this.f42126g.k()) {
                    this.f42126g.f();
                    this.f42126g = null;
                    this.f42125f = getServerSocketsResponse.socketRef_;
                    this.f42124e &= -2;
                    this.f42126g = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                } else {
                    this.f42126g.b(getServerSocketsResponse.socketRef_);
                }
            }
            if (getServerSocketsResponse.getEnd()) {
                k0(getServerSocketsResponse.getEnd());
            }
            z(((GeneratedMessageV3) getServerSocketsResponse).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: j0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        public b k0(boolean z10) {
            this.f42127h = z10;
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
            this.f42125f = Collections.emptyList();
            e0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f42125f = Collections.emptyList();
            e0();
        }
    }

    /* synthetic */ GetServerSocketsResponse(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static GetServerSocketsResponse getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return h.f42279m0;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static GetServerSocketsResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (GetServerSocketsResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static GetServerSocketsResponse parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<GetServerSocketsResponse> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof GetServerSocketsResponse)) {
            return super.equals(obj);
        }
        GetServerSocketsResponse getServerSocketsResponse = (GetServerSocketsResponse) obj;
        return getSocketRefList().equals(getServerSocketsResponse.getSocketRefList()) && getEnd() == getServerSocketsResponse.getEnd() && this.unknownFields.equals(getServerSocketsResponse.unknownFields);
    }

    public boolean getEnd() {
        return this.end_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<GetServerSocketsResponse> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < this.socketRef_.size(); i11++) {
            i10 += CodedOutputStream.G(1, this.socketRef_.get(i11));
        }
        boolean z10 = this.end_;
        if (z10) {
            i10 += CodedOutputStream.e(2, z10);
        }
        int serializedSize = i10 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public SocketRef getSocketRef(int i9) {
        return this.socketRef_.get(i9);
    }

    public int getSocketRefCount() {
        return this.socketRef_.size();
    }

    public List<SocketRef> getSocketRefList() {
        return this.socketRef_;
    }

    public p getSocketRefOrBuilder(int i9) {
        return this.socketRef_.get(i9);
    }

    public List<? extends p> getSocketRefOrBuilderList() {
        return this.socketRef_;
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
        if (getSocketRefCount() > 0) {
            hashCode = (((hashCode * 37) + 1) * 53) + getSocketRefList().hashCode();
        }
        int d10 = (((((hashCode * 37) + 2) * 53) + u0.d(getEnd())) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = d10;
        return d10;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return h.f42281n0.d(GetServerSocketsResponse.class, b.class);
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
        return new GetServerSocketsResponse();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        for (int i9 = 0; i9 < this.socketRef_.size(); i9++) {
            codedOutputStream.L0(1, this.socketRef_.get(i9));
        }
        boolean z10 = this.end_;
        if (z10) {
            codedOutputStream.n0(2, z10);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ GetServerSocketsResponse(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(GetServerSocketsResponse getServerSocketsResponse) {
        return DEFAULT_INSTANCE.toBuilder().i0(getServerSocketsResponse);
    }

    public static GetServerSocketsResponse parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private GetServerSocketsResponse(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static GetServerSocketsResponse parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (GetServerSocketsResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static GetServerSocketsResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public GetServerSocketsResponse getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).i0(this);
    }

    public static GetServerSocketsResponse parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private GetServerSocketsResponse() {
        this.memoizedIsInitialized = (byte) -1;
        this.socketRef_ = Collections.emptyList();
    }

    public static GetServerSocketsResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static GetServerSocketsResponse parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static GetServerSocketsResponse parseFrom(InputStream inputStream) throws IOException {
        return (GetServerSocketsResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private GetServerSocketsResponse(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                this.socketRef_ = new ArrayList();
                                z11 |= true;
                            }
                            this.socketRef_.add((SocketRef) pVar.B(SocketRef.parser(), f0Var));
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
                    this.socketRef_ = Collections.unmodifiableList(this.socketRef_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static GetServerSocketsResponse parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (GetServerSocketsResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static GetServerSocketsResponse parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (GetServerSocketsResponse) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static GetServerSocketsResponse parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
        return (GetServerSocketsResponse) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
