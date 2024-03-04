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
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import io.grpc.channelz.v1.Subchannel;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class GetSubchannelResponse extends GeneratedMessageV3 implements r1 {
    private static final GetSubchannelResponse DEFAULT_INSTANCE = new GetSubchannelResponse();
    private static final e2<GetSubchannelResponse> PARSER = new a();
    public static final int SUBCHANNEL_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private Subchannel subchannel_;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends com.google.protobuf.c<GetSubchannelResponse> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public GetSubchannelResponse m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new GetSubchannelResponse(pVar, f0Var, null);
        }
    }

    /* loaded from: classes5.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private Subchannel f42139e;

        /* renamed from: f  reason: collision with root package name */
        private q2<Subchannel, Subchannel.b, q> f42140f;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return h.f42297v0.d(GetSubchannelResponse.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public GetSubchannelResponse build() {
            GetSubchannelResponse I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public GetSubchannelResponse I() {
            GetSubchannelResponse getSubchannelResponse = new GetSubchannelResponse(this, (a) null);
            q2<Subchannel, Subchannel.b, q> q2Var = this.f42140f;
            if (q2Var == null) {
                getSubchannelResponse.subchannel_ = this.f42139e;
            } else {
                getSubchannelResponse.subchannel_ = q2Var.b();
            }
            Q();
            return getSubchannelResponse;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public GetSubchannelResponse getDefaultInstanceForType() {
            return GetSubchannelResponse.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.channelz.v1.GetSubchannelResponse.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.channelz.v1.GetSubchannelResponse.access$600()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.channelz.v1.GetSubchannelResponse r3 = (io.grpc.channelz.v1.GetSubchannelResponse) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.channelz.v1.GetSubchannelResponse r4 = (io.grpc.channelz.v1.GetSubchannelResponse) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.channelz.v1.GetSubchannelResponse.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.channelz.v1.GetSubchannelResponse$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof GetSubchannelResponse) {
                return g0((GetSubchannelResponse) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b g0(GetSubchannelResponse getSubchannelResponse) {
            if (getSubchannelResponse == GetSubchannelResponse.getDefaultInstance()) {
                return this;
            }
            if (getSubchannelResponse.hasSubchannel()) {
                h0(getSubchannelResponse.getSubchannel());
            }
            z(((GeneratedMessageV3) getSubchannelResponse).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return h.f42295u0;
        }

        public b h0(Subchannel subchannel) {
            q2<Subchannel, Subchannel.b, q> q2Var = this.f42140f;
            if (q2Var == null) {
                Subchannel subchannel2 = this.f42139e;
                if (subchannel2 != null) {
                    this.f42139e = Subchannel.newBuilder(subchannel2).n0(subchannel).I();
                } else {
                    this.f42139e = subchannel;
                }
                R();
            } else {
                q2Var.e(subchannel);
            }
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
            b0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            b0();
        }
    }

    /* synthetic */ GetSubchannelResponse(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static GetSubchannelResponse getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return h.f42295u0;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static GetSubchannelResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (GetSubchannelResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static GetSubchannelResponse parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<GetSubchannelResponse> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof GetSubchannelResponse)) {
            return super.equals(obj);
        }
        GetSubchannelResponse getSubchannelResponse = (GetSubchannelResponse) obj;
        if (hasSubchannel() != getSubchannelResponse.hasSubchannel()) {
            return false;
        }
        return (!hasSubchannel() || getSubchannel().equals(getSubchannelResponse.getSubchannel())) && this.unknownFields.equals(getSubchannelResponse.unknownFields);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<GetSubchannelResponse> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = (this.subchannel_ != null ? 0 + CodedOutputStream.G(1, getSubchannel()) : 0) + this.unknownFields.getSerializedSize();
        this.memoizedSize = G;
        return G;
    }

    public Subchannel getSubchannel() {
        Subchannel subchannel = this.subchannel_;
        return subchannel == null ? Subchannel.getDefaultInstance() : subchannel;
    }

    public q getSubchannelOrBuilder() {
        return getSubchannel();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasSubchannel() {
        return this.subchannel_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasSubchannel()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getSubchannel().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return h.f42297v0.d(GetSubchannelResponse.class, b.class);
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
        return new GetSubchannelResponse();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.subchannel_ != null) {
            codedOutputStream.L0(1, getSubchannel());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ GetSubchannelResponse(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(GetSubchannelResponse getSubchannelResponse) {
        return DEFAULT_INSTANCE.toBuilder().g0(getSubchannelResponse);
    }

    public static GetSubchannelResponse parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private GetSubchannelResponse(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static GetSubchannelResponse parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (GetSubchannelResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static GetSubchannelResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public GetSubchannelResponse getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static GetSubchannelResponse parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private GetSubchannelResponse() {
        this.memoizedIsInitialized = (byte) -1;
    }

    public static GetSubchannelResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static GetSubchannelResponse parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    private GetSubchannelResponse(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                Subchannel subchannel = this.subchannel_;
                                Subchannel.b builder = subchannel != null ? subchannel.toBuilder() : null;
                                Subchannel subchannel2 = (Subchannel) pVar.B(Subchannel.parser(), f0Var);
                                this.subchannel_ = subchannel2;
                                if (builder != null) {
                                    builder.n0(subchannel2);
                                    this.subchannel_ = builder.I();
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

    public static GetSubchannelResponse parseFrom(InputStream inputStream) throws IOException {
        return (GetSubchannelResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static GetSubchannelResponse parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (GetSubchannelResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static GetSubchannelResponse parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (GetSubchannelResponse) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static GetSubchannelResponse parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
        return (GetSubchannelResponse) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
