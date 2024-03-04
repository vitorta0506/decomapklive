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
import io.grpc.channelz.v1.Channel;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class GetTopChannelsResponse extends GeneratedMessageV3 implements r1 {
    public static final int CHANNEL_FIELD_NUMBER = 1;
    public static final int END_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private List<Channel> channel_;
    private boolean end_;
    private byte memoizedIsInitialized;
    private static final GetTopChannelsResponse DEFAULT_INSTANCE = new GetTopChannelsResponse();
    private static final e2<GetTopChannelsResponse> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends com.google.protobuf.c<GetTopChannelsResponse> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public GetTopChannelsResponse m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new GetTopChannelsResponse(pVar, f0Var, null);
        }
    }

    /* loaded from: classes5.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private int f42143e;

        /* renamed from: f  reason: collision with root package name */
        private List<Channel> f42144f;

        /* renamed from: g  reason: collision with root package name */
        private l2<Channel, Channel.b, d> f42145g;

        /* renamed from: h  reason: collision with root package name */
        private boolean f42146h;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f42143e & 1) == 0) {
                this.f42144f = new ArrayList(this.f42144f);
                this.f42143e |= 1;
            }
        }

        private l2<Channel, Channel.b, d> b0() {
            if (this.f42145g == null) {
                this.f42145g = new l2<>(this.f42144f, (this.f42143e & 1) != 0, H(), O());
                this.f42144f = null;
            }
            return this.f42145g;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                b0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return h.f42257b0.d(GetTopChannelsResponse.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public GetTopChannelsResponse build() {
            GetTopChannelsResponse I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public GetTopChannelsResponse I() {
            GetTopChannelsResponse getTopChannelsResponse = new GetTopChannelsResponse(this, (a) null);
            int i9 = this.f42143e;
            l2<Channel, Channel.b, d> l2Var = this.f42145g;
            if (l2Var == null) {
                if ((i9 & 1) != 0) {
                    this.f42144f = Collections.unmodifiableList(this.f42144f);
                    this.f42143e &= -2;
                }
                getTopChannelsResponse.channel_ = this.f42144f;
            } else {
                getTopChannelsResponse.channel_ = l2Var.e();
            }
            getTopChannelsResponse.end_ = this.f42146h;
            Q();
            return getTopChannelsResponse;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: d0 */
        public GetTopChannelsResponse getDefaultInstanceForType() {
            return GetTopChannelsResponse.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.channelz.v1.GetTopChannelsResponse.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.channelz.v1.GetTopChannelsResponse.access$800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.channelz.v1.GetTopChannelsResponse r3 = (io.grpc.channelz.v1.GetTopChannelsResponse) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.channelz.v1.GetTopChannelsResponse r4 = (io.grpc.channelz.v1.GetTopChannelsResponse) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.channelz.v1.GetTopChannelsResponse.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.channelz.v1.GetTopChannelsResponse$b");
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return h.f42255a0;
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof GetTopChannelsResponse) {
                return i0((GetTopChannelsResponse) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b i0(GetTopChannelsResponse getTopChannelsResponse) {
            if (getTopChannelsResponse == GetTopChannelsResponse.getDefaultInstance()) {
                return this;
            }
            if (this.f42145g == null) {
                if (!getTopChannelsResponse.channel_.isEmpty()) {
                    if (this.f42144f.isEmpty()) {
                        this.f42144f = getTopChannelsResponse.channel_;
                        this.f42143e &= -2;
                    } else {
                        a0();
                        this.f42144f.addAll(getTopChannelsResponse.channel_);
                    }
                    R();
                }
            } else if (!getTopChannelsResponse.channel_.isEmpty()) {
                if (this.f42145g.k()) {
                    this.f42145g.f();
                    this.f42145g = null;
                    this.f42144f = getTopChannelsResponse.channel_;
                    this.f42143e &= -2;
                    this.f42145g = GeneratedMessageV3.alwaysUseFieldBuilders ? b0() : null;
                } else {
                    this.f42145g.b(getTopChannelsResponse.channel_);
                }
            }
            if (getTopChannelsResponse.getEnd()) {
                k0(getTopChannelsResponse.getEnd());
            }
            z(((GeneratedMessageV3) getTopChannelsResponse).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: j0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        public b k0(boolean z10) {
            this.f42146h = z10;
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
            this.f42144f = Collections.emptyList();
            e0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f42144f = Collections.emptyList();
            e0();
        }
    }

    /* synthetic */ GetTopChannelsResponse(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static GetTopChannelsResponse getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return h.f42255a0;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static GetTopChannelsResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (GetTopChannelsResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static GetTopChannelsResponse parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<GetTopChannelsResponse> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof GetTopChannelsResponse)) {
            return super.equals(obj);
        }
        GetTopChannelsResponse getTopChannelsResponse = (GetTopChannelsResponse) obj;
        return getChannelList().equals(getTopChannelsResponse.getChannelList()) && getEnd() == getTopChannelsResponse.getEnd() && this.unknownFields.equals(getTopChannelsResponse.unknownFields);
    }

    public Channel getChannel(int i9) {
        return this.channel_.get(i9);
    }

    public int getChannelCount() {
        return this.channel_.size();
    }

    public List<Channel> getChannelList() {
        return this.channel_;
    }

    public d getChannelOrBuilder(int i9) {
        return this.channel_.get(i9);
    }

    public List<? extends d> getChannelOrBuilderList() {
        return this.channel_;
    }

    public boolean getEnd() {
        return this.end_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<GetTopChannelsResponse> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < this.channel_.size(); i11++) {
            i10 += CodedOutputStream.G(1, this.channel_.get(i11));
        }
        boolean z10 = this.end_;
        if (z10) {
            i10 += CodedOutputStream.e(2, z10);
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
        if (getChannelCount() > 0) {
            hashCode = (((hashCode * 37) + 1) * 53) + getChannelList().hashCode();
        }
        int d10 = (((((hashCode * 37) + 2) * 53) + u0.d(getEnd())) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = d10;
        return d10;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return h.f42257b0.d(GetTopChannelsResponse.class, b.class);
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
        return new GetTopChannelsResponse();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        for (int i9 = 0; i9 < this.channel_.size(); i9++) {
            codedOutputStream.L0(1, this.channel_.get(i9));
        }
        boolean z10 = this.end_;
        if (z10) {
            codedOutputStream.n0(2, z10);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ GetTopChannelsResponse(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(GetTopChannelsResponse getTopChannelsResponse) {
        return DEFAULT_INSTANCE.toBuilder().i0(getTopChannelsResponse);
    }

    public static GetTopChannelsResponse parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private GetTopChannelsResponse(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static GetTopChannelsResponse parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (GetTopChannelsResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static GetTopChannelsResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public GetTopChannelsResponse getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).i0(this);
    }

    public static GetTopChannelsResponse parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private GetTopChannelsResponse() {
        this.memoizedIsInitialized = (byte) -1;
        this.channel_ = Collections.emptyList();
    }

    public static GetTopChannelsResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static GetTopChannelsResponse parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static GetTopChannelsResponse parseFrom(InputStream inputStream) throws IOException {
        return (GetTopChannelsResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private GetTopChannelsResponse(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                this.channel_ = new ArrayList();
                                z11 |= true;
                            }
                            this.channel_.add((Channel) pVar.B(Channel.parser(), f0Var));
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
                    this.channel_ = Collections.unmodifiableList(this.channel_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static GetTopChannelsResponse parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (GetTopChannelsResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static GetTopChannelsResponse parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (GetTopChannelsResponse) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static GetTopChannelsResponse parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
        return (GetTopChannelsResponse) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
