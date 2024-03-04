package io.grpc.lb.v1;

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
import com.google.protobuf.o1;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import com.google.protobuf.u0;
import io.grpc.lb.v1.ClientStats;
import io.grpc.lb.v1.InitialLoadBalanceRequest;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class LoadBalanceRequest extends GeneratedMessageV3 implements r1 {
    public static final int CLIENT_STATS_FIELD_NUMBER = 2;
    public static final int INITIAL_REQUEST_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private int loadBalanceRequestTypeCase_;
    private Object loadBalanceRequestType_;
    private byte memoizedIsInitialized;
    private static final LoadBalanceRequest DEFAULT_INSTANCE = new LoadBalanceRequest();
    private static final e2<LoadBalanceRequest> PARSER = new a();

    /* loaded from: classes5.dex */
    public enum LoadBalanceRequestTypeCase implements u0.c {
        INITIAL_REQUEST(1),
        CLIENT_STATS(2),
        LOADBALANCEREQUESTTYPE_NOT_SET(0);
        
        private final int value;

        LoadBalanceRequestTypeCase(int i9) {
            this.value = i9;
        }

        public static LoadBalanceRequestTypeCase forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 != 2) {
                        return null;
                    }
                    return CLIENT_STATS;
                }
                return INITIAL_REQUEST;
            }
            return LOADBALANCEREQUESTTYPE_NOT_SET;
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static LoadBalanceRequestTypeCase valueOf(int i9) {
            return forNumber(i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends com.google.protobuf.c<LoadBalanceRequest> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public LoadBalanceRequest m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new LoadBalanceRequest(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f43367a;

        static {
            int[] iArr = new int[LoadBalanceRequestTypeCase.values().length];
            f43367a = iArr;
            try {
                iArr[LoadBalanceRequestTypeCase.INITIAL_REQUEST.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f43367a[LoadBalanceRequestTypeCase.CLIENT_STATS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f43367a[LoadBalanceRequestTypeCase.LOADBALANCEREQUESTTYPE_NOT_SET.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* loaded from: classes5.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private int f43368e;

        /* renamed from: f  reason: collision with root package name */
        private Object f43369f;

        /* renamed from: g  reason: collision with root package name */
        private q2<InitialLoadBalanceRequest, InitialLoadBalanceRequest.b, d> f43370g;

        /* renamed from: h  reason: collision with root package name */
        private q2<ClientStats, ClientStats.b, io.grpc.lb.v1.a> f43371h;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return g.f43388b.d(LoadBalanceRequest.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public LoadBalanceRequest build() {
            LoadBalanceRequest I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public LoadBalanceRequest I() {
            LoadBalanceRequest loadBalanceRequest = new LoadBalanceRequest(this, (a) null);
            if (this.f43368e == 1) {
                q2<InitialLoadBalanceRequest, InitialLoadBalanceRequest.b, d> q2Var = this.f43370g;
                if (q2Var == null) {
                    loadBalanceRequest.loadBalanceRequestType_ = this.f43369f;
                } else {
                    loadBalanceRequest.loadBalanceRequestType_ = q2Var.b();
                }
            }
            if (this.f43368e == 2) {
                q2<ClientStats, ClientStats.b, io.grpc.lb.v1.a> q2Var2 = this.f43371h;
                if (q2Var2 == null) {
                    loadBalanceRequest.loadBalanceRequestType_ = this.f43369f;
                } else {
                    loadBalanceRequest.loadBalanceRequestType_ = q2Var2.b();
                }
            }
            loadBalanceRequest.loadBalanceRequestTypeCase_ = this.f43368e;
            Q();
            return loadBalanceRequest;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public LoadBalanceRequest getDefaultInstanceForType() {
            return LoadBalanceRequest.getDefaultInstance();
        }

        public c d0(ClientStats clientStats) {
            q2<ClientStats, ClientStats.b, io.grpc.lb.v1.a> q2Var = this.f43371h;
            if (q2Var == null) {
                if (this.f43368e == 2 && this.f43369f != ClientStats.getDefaultInstance()) {
                    this.f43369f = ClientStats.newBuilder((ClientStats) this.f43369f).j0(clientStats).I();
                } else {
                    this.f43369f = clientStats;
                }
                R();
            } else {
                if (this.f43368e == 2) {
                    q2Var.e(clientStats);
                }
                this.f43371h.g(clientStats);
            }
            this.f43368e = 2;
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.lb.v1.LoadBalanceRequest.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.lb.v1.LoadBalanceRequest.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.lb.v1.LoadBalanceRequest r3 = (io.grpc.lb.v1.LoadBalanceRequest) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.lb.v1.LoadBalanceRequest r4 = (io.grpc.lb.v1.LoadBalanceRequest) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.lb.v1.LoadBalanceRequest.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.lb.v1.LoadBalanceRequest$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        public c v(l1 l1Var) {
            if (l1Var instanceof LoadBalanceRequest) {
                return h0((LoadBalanceRequest) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return g.f43387a;
        }

        public c h0(LoadBalanceRequest loadBalanceRequest) {
            if (loadBalanceRequest == LoadBalanceRequest.getDefaultInstance()) {
                return this;
            }
            int i9 = b.f43367a[loadBalanceRequest.getLoadBalanceRequestTypeCase().ordinal()];
            if (i9 == 1) {
                i0(loadBalanceRequest.getInitialRequest());
            } else if (i9 == 2) {
                d0(loadBalanceRequest.getClientStats());
            }
            z(((GeneratedMessageV3) loadBalanceRequest).unknownFields);
            R();
            return this;
        }

        public c i0(InitialLoadBalanceRequest initialLoadBalanceRequest) {
            q2<InitialLoadBalanceRequest, InitialLoadBalanceRequest.b, d> q2Var = this.f43370g;
            if (q2Var == null) {
                if (this.f43368e == 1 && this.f43369f != InitialLoadBalanceRequest.getDefaultInstance()) {
                    this.f43369f = InitialLoadBalanceRequest.newBuilder((InitialLoadBalanceRequest) this.f43369f).g0(initialLoadBalanceRequest).I();
                } else {
                    this.f43369f = initialLoadBalanceRequest;
                }
                R();
            } else {
                if (this.f43368e == 1) {
                    q2Var.e(initialLoadBalanceRequest);
                }
                this.f43370g.g(initialLoadBalanceRequest);
            }
            this.f43368e = 1;
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: j0 */
        public final c z(h3 h3Var) {
            return (c) super.z(h3Var);
        }

        public c k0(ClientStats clientStats) {
            q2<ClientStats, ClientStats.b, io.grpc.lb.v1.a> q2Var = this.f43371h;
            if (q2Var == null) {
                Objects.requireNonNull(clientStats);
                this.f43369f = clientStats;
                R();
            } else {
                q2Var.g(clientStats);
            }
            this.f43368e = 2;
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: l0 */
        public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.c(fieldDescriptor, obj);
        }

        public c m0(InitialLoadBalanceRequest initialLoadBalanceRequest) {
            q2<InitialLoadBalanceRequest, InitialLoadBalanceRequest.b, d> q2Var = this.f43370g;
            if (q2Var == null) {
                Objects.requireNonNull(initialLoadBalanceRequest);
                this.f43369f = initialLoadBalanceRequest;
                R();
            } else {
                q2Var.g(initialLoadBalanceRequest);
            }
            this.f43368e = 1;
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: n0 */
        public final c f1(h3 h3Var) {
            return (c) super.f1(h3Var);
        }

        /* synthetic */ c(a aVar) {
            this();
        }

        private c() {
            this.f43368e = 0;
            b0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f43368e = 0;
            b0();
        }
    }

    /* synthetic */ LoadBalanceRequest(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static LoadBalanceRequest getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return g.f43387a;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static LoadBalanceRequest parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (LoadBalanceRequest) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static LoadBalanceRequest parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<LoadBalanceRequest> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof LoadBalanceRequest)) {
            return super.equals(obj);
        }
        LoadBalanceRequest loadBalanceRequest = (LoadBalanceRequest) obj;
        if (getLoadBalanceRequestTypeCase().equals(loadBalanceRequest.getLoadBalanceRequestTypeCase())) {
            int i9 = this.loadBalanceRequestTypeCase_;
            if (i9 != 1) {
                if (i9 == 2 && !getClientStats().equals(loadBalanceRequest.getClientStats())) {
                    return false;
                }
            } else if (!getInitialRequest().equals(loadBalanceRequest.getInitialRequest())) {
                return false;
            }
            return this.unknownFields.equals(loadBalanceRequest.unknownFields);
        }
        return false;
    }

    public ClientStats getClientStats() {
        if (this.loadBalanceRequestTypeCase_ == 2) {
            return (ClientStats) this.loadBalanceRequestType_;
        }
        return ClientStats.getDefaultInstance();
    }

    public io.grpc.lb.v1.a getClientStatsOrBuilder() {
        if (this.loadBalanceRequestTypeCase_ == 2) {
            return (ClientStats) this.loadBalanceRequestType_;
        }
        return ClientStats.getDefaultInstance();
    }

    public InitialLoadBalanceRequest getInitialRequest() {
        if (this.loadBalanceRequestTypeCase_ == 1) {
            return (InitialLoadBalanceRequest) this.loadBalanceRequestType_;
        }
        return InitialLoadBalanceRequest.getDefaultInstance();
    }

    public d getInitialRequestOrBuilder() {
        if (this.loadBalanceRequestTypeCase_ == 1) {
            return (InitialLoadBalanceRequest) this.loadBalanceRequestType_;
        }
        return InitialLoadBalanceRequest.getDefaultInstance();
    }

    public LoadBalanceRequestTypeCase getLoadBalanceRequestTypeCase() {
        return LoadBalanceRequestTypeCase.forNumber(this.loadBalanceRequestTypeCase_);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<LoadBalanceRequest> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.loadBalanceRequestTypeCase_ == 1 ? 0 + CodedOutputStream.G(1, (InitialLoadBalanceRequest) this.loadBalanceRequestType_) : 0;
        if (this.loadBalanceRequestTypeCase_ == 2) {
            G += CodedOutputStream.G(2, (ClientStats) this.loadBalanceRequestType_);
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasClientStats() {
        return this.loadBalanceRequestTypeCase_ == 2;
    }

    public boolean hasInitialRequest() {
        return this.loadBalanceRequestTypeCase_ == 1;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9;
        int hashCode;
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int hashCode2 = 779 + getDescriptor().hashCode();
        int i11 = this.loadBalanceRequestTypeCase_;
        if (i11 == 1) {
            i9 = ((hashCode2 * 37) + 1) * 53;
            hashCode = getInitialRequest().hashCode();
        } else {
            if (i11 == 2) {
                i9 = ((hashCode2 * 37) + 2) * 53;
                hashCode = getClientStats().hashCode();
            }
            int hashCode3 = (hashCode2 * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode3;
            return hashCode3;
        }
        hashCode2 = i9 + hashCode;
        int hashCode32 = (hashCode2 * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode32;
        return hashCode32;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return g.f43388b.d(LoadBalanceRequest.class, c.class);
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
        return new LoadBalanceRequest();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.loadBalanceRequestTypeCase_ == 1) {
            codedOutputStream.L0(1, (InitialLoadBalanceRequest) this.loadBalanceRequestType_);
        }
        if (this.loadBalanceRequestTypeCase_ == 2) {
            codedOutputStream.L0(2, (ClientStats) this.loadBalanceRequestType_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ LoadBalanceRequest(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(LoadBalanceRequest loadBalanceRequest) {
        return DEFAULT_INSTANCE.toBuilder().h0(loadBalanceRequest);
    }

    public static LoadBalanceRequest parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private LoadBalanceRequest(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.loadBalanceRequestTypeCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static LoadBalanceRequest parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (LoadBalanceRequest) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static LoadBalanceRequest parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public LoadBalanceRequest getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).h0(this);
    }

    public static LoadBalanceRequest parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    public static LoadBalanceRequest parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    private LoadBalanceRequest() {
        this.loadBalanceRequestTypeCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static LoadBalanceRequest parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static LoadBalanceRequest parseFrom(InputStream inputStream) throws IOException {
        return (LoadBalanceRequest) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private LoadBalanceRequest(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            if (L == 10) {
                                InitialLoadBalanceRequest.b builder = this.loadBalanceRequestTypeCase_ == 1 ? ((InitialLoadBalanceRequest) this.loadBalanceRequestType_).toBuilder() : null;
                                o1 B = pVar.B(InitialLoadBalanceRequest.parser(), f0Var);
                                this.loadBalanceRequestType_ = B;
                                if (builder != null) {
                                    builder.g0((InitialLoadBalanceRequest) B);
                                    this.loadBalanceRequestType_ = builder.I();
                                }
                                this.loadBalanceRequestTypeCase_ = 1;
                            } else if (L != 18) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                ClientStats.b builder2 = this.loadBalanceRequestTypeCase_ == 2 ? ((ClientStats) this.loadBalanceRequestType_).toBuilder() : null;
                                o1 B2 = pVar.B(ClientStats.parser(), f0Var);
                                this.loadBalanceRequestType_ = B2;
                                if (builder2 != null) {
                                    builder2.j0((ClientStats) B2);
                                    this.loadBalanceRequestType_ = builder2.I();
                                }
                                this.loadBalanceRequestTypeCase_ = 2;
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

    public static LoadBalanceRequest parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (LoadBalanceRequest) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static LoadBalanceRequest parseFrom(p pVar) throws IOException {
        return (LoadBalanceRequest) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static LoadBalanceRequest parseFrom(p pVar, f0 f0Var) throws IOException {
        return (LoadBalanceRequest) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
