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
import io.grpc.lb.v1.FallbackResponse;
import io.grpc.lb.v1.InitialLoadBalanceResponse;
import io.grpc.lb.v1.ServerList;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class LoadBalanceResponse extends GeneratedMessageV3 implements r1 {
    public static final int FALLBACK_RESPONSE_FIELD_NUMBER = 3;
    public static final int INITIAL_RESPONSE_FIELD_NUMBER = 1;
    public static final int SERVER_LIST_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private int loadBalanceResponseTypeCase_;
    private Object loadBalanceResponseType_;
    private byte memoizedIsInitialized;
    private static final LoadBalanceResponse DEFAULT_INSTANCE = new LoadBalanceResponse();
    private static final e2<LoadBalanceResponse> PARSER = new a();

    /* loaded from: classes5.dex */
    public enum LoadBalanceResponseTypeCase implements u0.c {
        INITIAL_RESPONSE(1),
        SERVER_LIST(2),
        FALLBACK_RESPONSE(3),
        LOADBALANCERESPONSETYPE_NOT_SET(0);
        
        private final int value;

        LoadBalanceResponseTypeCase(int i9) {
            this.value = i9;
        }

        public static LoadBalanceResponseTypeCase forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 != 2) {
                        if (i9 != 3) {
                            return null;
                        }
                        return FALLBACK_RESPONSE;
                    }
                    return SERVER_LIST;
                }
                return INITIAL_RESPONSE;
            }
            return LOADBALANCERESPONSETYPE_NOT_SET;
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static LoadBalanceResponseTypeCase valueOf(int i9) {
            return forNumber(i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends com.google.protobuf.c<LoadBalanceResponse> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public LoadBalanceResponse m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new LoadBalanceResponse(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f43372a;

        static {
            int[] iArr = new int[LoadBalanceResponseTypeCase.values().length];
            f43372a = iArr;
            try {
                iArr[LoadBalanceResponseTypeCase.INITIAL_RESPONSE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f43372a[LoadBalanceResponseTypeCase.SERVER_LIST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f43372a[LoadBalanceResponseTypeCase.FALLBACK_RESPONSE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f43372a[LoadBalanceResponseTypeCase.LOADBALANCERESPONSETYPE_NOT_SET.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* loaded from: classes5.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private int f43373e;

        /* renamed from: f  reason: collision with root package name */
        private Object f43374f;

        /* renamed from: g  reason: collision with root package name */
        private q2<InitialLoadBalanceResponse, InitialLoadBalanceResponse.b, e> f43375g;

        /* renamed from: h  reason: collision with root package name */
        private q2<ServerList, ServerList.b, h> f43376h;

        /* renamed from: i  reason: collision with root package name */
        private q2<FallbackResponse, FallbackResponse.b, io.grpc.lb.v1.c> f43377i;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return g.f43396j.d(LoadBalanceResponse.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public LoadBalanceResponse build() {
            LoadBalanceResponse I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public LoadBalanceResponse I() {
            LoadBalanceResponse loadBalanceResponse = new LoadBalanceResponse(this, (a) null);
            if (this.f43373e == 1) {
                q2<InitialLoadBalanceResponse, InitialLoadBalanceResponse.b, e> q2Var = this.f43375g;
                if (q2Var == null) {
                    loadBalanceResponse.loadBalanceResponseType_ = this.f43374f;
                } else {
                    loadBalanceResponse.loadBalanceResponseType_ = q2Var.b();
                }
            }
            if (this.f43373e == 2) {
                q2<ServerList, ServerList.b, h> q2Var2 = this.f43376h;
                if (q2Var2 == null) {
                    loadBalanceResponse.loadBalanceResponseType_ = this.f43374f;
                } else {
                    loadBalanceResponse.loadBalanceResponseType_ = q2Var2.b();
                }
            }
            if (this.f43373e == 3) {
                q2<FallbackResponse, FallbackResponse.b, io.grpc.lb.v1.c> q2Var3 = this.f43377i;
                if (q2Var3 == null) {
                    loadBalanceResponse.loadBalanceResponseType_ = this.f43374f;
                } else {
                    loadBalanceResponse.loadBalanceResponseType_ = q2Var3.b();
                }
            }
            loadBalanceResponse.loadBalanceResponseTypeCase_ = this.f43373e;
            Q();
            return loadBalanceResponse;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public LoadBalanceResponse getDefaultInstanceForType() {
            return LoadBalanceResponse.getDefaultInstance();
        }

        public c d0(FallbackResponse fallbackResponse) {
            q2<FallbackResponse, FallbackResponse.b, io.grpc.lb.v1.c> q2Var = this.f43377i;
            if (q2Var == null) {
                if (this.f43373e == 3 && this.f43374f != FallbackResponse.getDefaultInstance()) {
                    this.f43374f = FallbackResponse.newBuilder((FallbackResponse) this.f43374f).g0(fallbackResponse).I();
                } else {
                    this.f43374f = fallbackResponse;
                }
                R();
            } else {
                if (this.f43373e == 3) {
                    q2Var.e(fallbackResponse);
                }
                this.f43377i.g(fallbackResponse);
            }
            this.f43373e = 3;
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.lb.v1.LoadBalanceResponse.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.lb.v1.LoadBalanceResponse.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.lb.v1.LoadBalanceResponse r3 = (io.grpc.lb.v1.LoadBalanceResponse) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.lb.v1.LoadBalanceResponse r4 = (io.grpc.lb.v1.LoadBalanceResponse) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.lb.v1.LoadBalanceResponse.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.lb.v1.LoadBalanceResponse$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        public c v(l1 l1Var) {
            if (l1Var instanceof LoadBalanceResponse) {
                return h0((LoadBalanceResponse) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return g.f43395i;
        }

        public c h0(LoadBalanceResponse loadBalanceResponse) {
            if (loadBalanceResponse == LoadBalanceResponse.getDefaultInstance()) {
                return this;
            }
            int i9 = b.f43372a[loadBalanceResponse.getLoadBalanceResponseTypeCase().ordinal()];
            if (i9 == 1) {
                i0(loadBalanceResponse.getInitialResponse());
            } else if (i9 == 2) {
                j0(loadBalanceResponse.getServerList());
            } else if (i9 == 3) {
                d0(loadBalanceResponse.getFallbackResponse());
            }
            z(((GeneratedMessageV3) loadBalanceResponse).unknownFields);
            R();
            return this;
        }

        public c i0(InitialLoadBalanceResponse initialLoadBalanceResponse) {
            q2<InitialLoadBalanceResponse, InitialLoadBalanceResponse.b, e> q2Var = this.f43375g;
            if (q2Var == null) {
                if (this.f43373e == 1 && this.f43374f != InitialLoadBalanceResponse.getDefaultInstance()) {
                    this.f43374f = InitialLoadBalanceResponse.newBuilder((InitialLoadBalanceResponse) this.f43374f).h0(initialLoadBalanceResponse).I();
                } else {
                    this.f43374f = initialLoadBalanceResponse;
                }
                R();
            } else {
                if (this.f43373e == 1) {
                    q2Var.e(initialLoadBalanceResponse);
                }
                this.f43375g.g(initialLoadBalanceResponse);
            }
            this.f43373e = 1;
            return this;
        }

        public c j0(ServerList serverList) {
            q2<ServerList, ServerList.b, h> q2Var = this.f43376h;
            if (q2Var == null) {
                if (this.f43373e == 2 && this.f43374f != ServerList.getDefaultInstance()) {
                    this.f43374f = ServerList.newBuilder((ServerList) this.f43374f).i0(serverList).I();
                } else {
                    this.f43374f = serverList;
                }
                R();
            } else {
                if (this.f43373e == 2) {
                    q2Var.e(serverList);
                }
                this.f43376h.g(serverList);
            }
            this.f43373e = 2;
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: k0 */
        public final c z(h3 h3Var) {
            return (c) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: l0 */
        public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.c(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: m0 */
        public final c f1(h3 h3Var) {
            return (c) super.f1(h3Var);
        }

        /* synthetic */ c(a aVar) {
            this();
        }

        private c() {
            this.f43373e = 0;
            b0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f43373e = 0;
            b0();
        }
    }

    /* synthetic */ LoadBalanceResponse(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static LoadBalanceResponse getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return g.f43395i;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static LoadBalanceResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (LoadBalanceResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static LoadBalanceResponse parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<LoadBalanceResponse> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof LoadBalanceResponse)) {
            return super.equals(obj);
        }
        LoadBalanceResponse loadBalanceResponse = (LoadBalanceResponse) obj;
        if (getLoadBalanceResponseTypeCase().equals(loadBalanceResponse.getLoadBalanceResponseTypeCase())) {
            int i9 = this.loadBalanceResponseTypeCase_;
            if (i9 != 1) {
                if (i9 != 2) {
                    if (i9 == 3 && !getFallbackResponse().equals(loadBalanceResponse.getFallbackResponse())) {
                        return false;
                    }
                } else if (!getServerList().equals(loadBalanceResponse.getServerList())) {
                    return false;
                }
            } else if (!getInitialResponse().equals(loadBalanceResponse.getInitialResponse())) {
                return false;
            }
            return this.unknownFields.equals(loadBalanceResponse.unknownFields);
        }
        return false;
    }

    public FallbackResponse getFallbackResponse() {
        if (this.loadBalanceResponseTypeCase_ == 3) {
            return (FallbackResponse) this.loadBalanceResponseType_;
        }
        return FallbackResponse.getDefaultInstance();
    }

    public io.grpc.lb.v1.c getFallbackResponseOrBuilder() {
        if (this.loadBalanceResponseTypeCase_ == 3) {
            return (FallbackResponse) this.loadBalanceResponseType_;
        }
        return FallbackResponse.getDefaultInstance();
    }

    public InitialLoadBalanceResponse getInitialResponse() {
        if (this.loadBalanceResponseTypeCase_ == 1) {
            return (InitialLoadBalanceResponse) this.loadBalanceResponseType_;
        }
        return InitialLoadBalanceResponse.getDefaultInstance();
    }

    public e getInitialResponseOrBuilder() {
        if (this.loadBalanceResponseTypeCase_ == 1) {
            return (InitialLoadBalanceResponse) this.loadBalanceResponseType_;
        }
        return InitialLoadBalanceResponse.getDefaultInstance();
    }

    public LoadBalanceResponseTypeCase getLoadBalanceResponseTypeCase() {
        return LoadBalanceResponseTypeCase.forNumber(this.loadBalanceResponseTypeCase_);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<LoadBalanceResponse> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.loadBalanceResponseTypeCase_ == 1 ? 0 + CodedOutputStream.G(1, (InitialLoadBalanceResponse) this.loadBalanceResponseType_) : 0;
        if (this.loadBalanceResponseTypeCase_ == 2) {
            G += CodedOutputStream.G(2, (ServerList) this.loadBalanceResponseType_);
        }
        if (this.loadBalanceResponseTypeCase_ == 3) {
            G += CodedOutputStream.G(3, (FallbackResponse) this.loadBalanceResponseType_);
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public ServerList getServerList() {
        if (this.loadBalanceResponseTypeCase_ == 2) {
            return (ServerList) this.loadBalanceResponseType_;
        }
        return ServerList.getDefaultInstance();
    }

    public h getServerListOrBuilder() {
        if (this.loadBalanceResponseTypeCase_ == 2) {
            return (ServerList) this.loadBalanceResponseType_;
        }
        return ServerList.getDefaultInstance();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasFallbackResponse() {
        return this.loadBalanceResponseTypeCase_ == 3;
    }

    public boolean hasInitialResponse() {
        return this.loadBalanceResponseTypeCase_ == 1;
    }

    public boolean hasServerList() {
        return this.loadBalanceResponseTypeCase_ == 2;
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
        int i11 = this.loadBalanceResponseTypeCase_;
        if (i11 == 1) {
            i9 = ((hashCode2 * 37) + 1) * 53;
            hashCode = getInitialResponse().hashCode();
        } else if (i11 == 2) {
            i9 = ((hashCode2 * 37) + 2) * 53;
            hashCode = getServerList().hashCode();
        } else {
            if (i11 == 3) {
                i9 = ((hashCode2 * 37) + 3) * 53;
                hashCode = getFallbackResponse().hashCode();
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
        return g.f43396j.d(LoadBalanceResponse.class, c.class);
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
        return new LoadBalanceResponse();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.loadBalanceResponseTypeCase_ == 1) {
            codedOutputStream.L0(1, (InitialLoadBalanceResponse) this.loadBalanceResponseType_);
        }
        if (this.loadBalanceResponseTypeCase_ == 2) {
            codedOutputStream.L0(2, (ServerList) this.loadBalanceResponseType_);
        }
        if (this.loadBalanceResponseTypeCase_ == 3) {
            codedOutputStream.L0(3, (FallbackResponse) this.loadBalanceResponseType_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ LoadBalanceResponse(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(LoadBalanceResponse loadBalanceResponse) {
        return DEFAULT_INSTANCE.toBuilder().h0(loadBalanceResponse);
    }

    public static LoadBalanceResponse parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private LoadBalanceResponse(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.loadBalanceResponseTypeCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static LoadBalanceResponse parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (LoadBalanceResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static LoadBalanceResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public LoadBalanceResponse getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).h0(this);
    }

    public static LoadBalanceResponse parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    public static LoadBalanceResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    private LoadBalanceResponse() {
        this.loadBalanceResponseTypeCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static LoadBalanceResponse parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static LoadBalanceResponse parseFrom(InputStream inputStream) throws IOException {
        return (LoadBalanceResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private LoadBalanceResponse(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                InitialLoadBalanceResponse.b builder = this.loadBalanceResponseTypeCase_ == 1 ? ((InitialLoadBalanceResponse) this.loadBalanceResponseType_).toBuilder() : null;
                                o1 B = pVar.B(InitialLoadBalanceResponse.parser(), f0Var);
                                this.loadBalanceResponseType_ = B;
                                if (builder != null) {
                                    builder.h0((InitialLoadBalanceResponse) B);
                                    this.loadBalanceResponseType_ = builder.I();
                                }
                                this.loadBalanceResponseTypeCase_ = 1;
                            } else if (L == 18) {
                                ServerList.b builder2 = this.loadBalanceResponseTypeCase_ == 2 ? ((ServerList) this.loadBalanceResponseType_).toBuilder() : null;
                                o1 B2 = pVar.B(ServerList.parser(), f0Var);
                                this.loadBalanceResponseType_ = B2;
                                if (builder2 != null) {
                                    builder2.i0((ServerList) B2);
                                    this.loadBalanceResponseType_ = builder2.I();
                                }
                                this.loadBalanceResponseTypeCase_ = 2;
                            } else if (L != 26) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                FallbackResponse.b builder3 = this.loadBalanceResponseTypeCase_ == 3 ? ((FallbackResponse) this.loadBalanceResponseType_).toBuilder() : null;
                                o1 B3 = pVar.B(FallbackResponse.parser(), f0Var);
                                this.loadBalanceResponseType_ = B3;
                                if (builder3 != null) {
                                    builder3.g0((FallbackResponse) B3);
                                    this.loadBalanceResponseType_ = builder3.I();
                                }
                                this.loadBalanceResponseTypeCase_ = 3;
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

    public static LoadBalanceResponse parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (LoadBalanceResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static LoadBalanceResponse parseFrom(p pVar) throws IOException {
        return (LoadBalanceResponse) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static LoadBalanceResponse parseFrom(p pVar, f0 f0Var) throws IOException {
        return (LoadBalanceResponse) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
