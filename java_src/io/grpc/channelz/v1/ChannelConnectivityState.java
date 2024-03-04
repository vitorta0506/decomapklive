package io.grpc.channelz.v1;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.h2;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.u0;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class ChannelConnectivityState extends GeneratedMessageV3 implements io.grpc.channelz.v1.b {
    private static final ChannelConnectivityState DEFAULT_INSTANCE = new ChannelConnectivityState();
    private static final e2<ChannelConnectivityState> PARSER = new a();
    public static final int STATE_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private int state_;

    /* loaded from: classes5.dex */
    public enum State implements h2 {
        UNKNOWN(0),
        IDLE(1),
        CONNECTING(2),
        READY(3),
        TRANSIENT_FAILURE(4),
        SHUTDOWN(5),
        UNRECOGNIZED(-1);
        
        public static final int CONNECTING_VALUE = 2;
        public static final int IDLE_VALUE = 1;
        public static final int READY_VALUE = 3;
        public static final int SHUTDOWN_VALUE = 5;
        public static final int TRANSIENT_FAILURE_VALUE = 4;
        public static final int UNKNOWN_VALUE = 0;
        private final int value;
        private static final u0.d<State> internalValueMap = new a();
        private static final State[] VALUES = values();

        /* loaded from: classes5.dex */
        class a implements u0.d<State> {
            a() {
            }

            @Override // com.google.protobuf.u0.d
            /* renamed from: b */
            public State a(int i9) {
                return State.forNumber(i9);
            }
        }

        State(int i9) {
            this.value = i9;
        }

        public static State forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 != 2) {
                        if (i9 != 3) {
                            if (i9 != 4) {
                                if (i9 != 5) {
                                    return null;
                                }
                                return SHUTDOWN;
                            }
                            return TRANSIENT_FAILURE;
                        }
                        return READY;
                    }
                    return CONNECTING;
                }
                return IDLE;
            }
            return UNKNOWN;
        }

        public static final Descriptors.d getDescriptor() {
            return ChannelConnectivityState.getDescriptor().k().get(0);
        }

        public static u0.d<State> internalGetValueMap() {
            return internalValueMap;
        }

        public final Descriptors.d getDescriptorForType() {
            return getDescriptor();
        }

        @Override // com.google.protobuf.u0.c
        public final int getNumber() {
            if (this != UNRECOGNIZED) {
                return this.value;
            }
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }

        public final Descriptors.e getValueDescriptor() {
            if (this != UNRECOGNIZED) {
                return getDescriptor().k().get(ordinal());
            }
            throw new IllegalStateException("Can't get the descriptor of an unrecognized enum value.");
        }

        @Deprecated
        public static State valueOf(int i9) {
            return forNumber(i9);
        }

        public static State valueOf(Descriptors.e eVar) {
            if (eVar.h() == getDescriptor()) {
                if (eVar.g() == -1) {
                    return UNRECOGNIZED;
                }
                return VALUES[eVar.g()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends com.google.protobuf.c<ChannelConnectivityState> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public ChannelConnectivityState m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new ChannelConnectivityState(pVar, f0Var, null);
        }
    }

    /* loaded from: classes5.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements io.grpc.channelz.v1.b {

        /* renamed from: e  reason: collision with root package name */
        private int f42087e;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return h.f42264f.d(ChannelConnectivityState.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public ChannelConnectivityState build() {
            ChannelConnectivityState I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public ChannelConnectivityState I() {
            ChannelConnectivityState channelConnectivityState = new ChannelConnectivityState(this, (a) null);
            channelConnectivityState.state_ = this.f42087e;
            Q();
            return channelConnectivityState;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public ChannelConnectivityState getDefaultInstanceForType() {
            return ChannelConnectivityState.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.channelz.v1.ChannelConnectivityState.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.channelz.v1.ChannelConnectivityState.access$600()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.channelz.v1.ChannelConnectivityState r3 = (io.grpc.channelz.v1.ChannelConnectivityState) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.channelz.v1.ChannelConnectivityState r4 = (io.grpc.channelz.v1.ChannelConnectivityState) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.channelz.v1.ChannelConnectivityState.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.channelz.v1.ChannelConnectivityState$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof ChannelConnectivityState) {
                return g0((ChannelConnectivityState) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b g0(ChannelConnectivityState channelConnectivityState) {
            if (channelConnectivityState == ChannelConnectivityState.getDefaultInstance()) {
                return this;
            }
            if (channelConnectivityState.state_ != 0) {
                j0(channelConnectivityState.getStateValue());
            }
            z(((GeneratedMessageV3) channelConnectivityState).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return h.f42262e;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: i0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
        }

        public b j0(int i9) {
            this.f42087e = i9;
            R();
            return this;
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
            this.f42087e = 0;
            b0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f42087e = 0;
            b0();
        }
    }

    /* synthetic */ ChannelConnectivityState(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static ChannelConnectivityState getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return h.f42262e;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static ChannelConnectivityState parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (ChannelConnectivityState) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static ChannelConnectivityState parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<ChannelConnectivityState> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ChannelConnectivityState)) {
            return super.equals(obj);
        }
        ChannelConnectivityState channelConnectivityState = (ChannelConnectivityState) obj;
        return this.state_ == channelConnectivityState.state_ && this.unknownFields.equals(channelConnectivityState.unknownFields);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<ChannelConnectivityState> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int l10 = (this.state_ != State.UNKNOWN.getNumber() ? 0 + CodedOutputStream.l(1, this.state_) : 0) + this.unknownFields.getSerializedSize();
        this.memoizedSize = l10;
        return l10;
    }

    public State getState() {
        State valueOf = State.valueOf(this.state_);
        return valueOf == null ? State.UNRECOGNIZED : valueOf;
    }

    public int getStateValue() {
        return this.state_;
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
        int hashCode = ((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + this.state_) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode;
        return hashCode;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return h.f42264f.d(ChannelConnectivityState.class, b.class);
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
        return new ChannelConnectivityState();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.state_ != State.UNKNOWN.getNumber()) {
            codedOutputStream.v0(1, this.state_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ ChannelConnectivityState(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(ChannelConnectivityState channelConnectivityState) {
        return DEFAULT_INSTANCE.toBuilder().g0(channelConnectivityState);
    }

    public static ChannelConnectivityState parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private ChannelConnectivityState(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static ChannelConnectivityState parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ChannelConnectivityState) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static ChannelConnectivityState parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public ChannelConnectivityState getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static ChannelConnectivityState parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private ChannelConnectivityState() {
        this.memoizedIsInitialized = (byte) -1;
        this.state_ = 0;
    }

    public static ChannelConnectivityState parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static ChannelConnectivityState parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static ChannelConnectivityState parseFrom(InputStream inputStream) throws IOException {
        return (ChannelConnectivityState) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private ChannelConnectivityState(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    int L = pVar.L();
                    if (L != 0) {
                        if (L != 8) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            this.state_ = pVar.u();
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

    public static ChannelConnectivityState parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ChannelConnectivityState) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static ChannelConnectivityState parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (ChannelConnectivityState) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static ChannelConnectivityState parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
        return (ChannelConnectivityState) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
