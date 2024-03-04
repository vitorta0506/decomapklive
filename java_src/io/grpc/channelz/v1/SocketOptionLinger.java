package io.grpc.channelz.v1;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.Duration;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import com.google.protobuf.u0;
import com.google.protobuf.v;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class SocketOptionLinger extends GeneratedMessageV3 implements r1 {
    public static final int ACTIVE_FIELD_NUMBER = 1;
    public static final int DURATION_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private boolean active_;
    private Duration duration_;
    private byte memoizedIsInitialized;
    private static final SocketOptionLinger DEFAULT_INSTANCE = new SocketOptionLinger();
    private static final e2<SocketOptionLinger> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends com.google.protobuf.c<SocketOptionLinger> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public SocketOptionLinger m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new SocketOptionLinger(pVar, f0Var, null);
        }
    }

    /* loaded from: classes5.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private boolean f42212e;

        /* renamed from: f  reason: collision with root package name */
        private Duration f42213f;

        /* renamed from: g  reason: collision with root package name */
        private q2<Duration, Duration.b, v> f42214g;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return h.V.d(SocketOptionLinger.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public SocketOptionLinger build() {
            SocketOptionLinger I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public SocketOptionLinger I() {
            SocketOptionLinger socketOptionLinger = new SocketOptionLinger(this, (a) null);
            socketOptionLinger.active_ = this.f42212e;
            q2<Duration, Duration.b, v> q2Var = this.f42214g;
            if (q2Var == null) {
                socketOptionLinger.duration_ = this.f42213f;
            } else {
                socketOptionLinger.duration_ = q2Var.b();
            }
            Q();
            return socketOptionLinger;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public SocketOptionLinger getDefaultInstanceForType() {
            return SocketOptionLinger.getDefaultInstance();
        }

        public b d0(Duration duration) {
            q2<Duration, Duration.b, v> q2Var = this.f42214g;
            if (q2Var == null) {
                Duration duration2 = this.f42213f;
                if (duration2 != null) {
                    this.f42213f = Duration.newBuilder(duration2).e0(duration).I();
                } else {
                    this.f42213f = duration;
                }
                R();
            } else {
                q2Var.e(duration);
            }
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.channelz.v1.SocketOptionLinger.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.channelz.v1.SocketOptionLinger.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.channelz.v1.SocketOptionLinger r3 = (io.grpc.channelz.v1.SocketOptionLinger) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.channelz.v1.SocketOptionLinger r4 = (io.grpc.channelz.v1.SocketOptionLinger) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.channelz.v1.SocketOptionLinger.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.channelz.v1.SocketOptionLinger$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof SocketOptionLinger) {
                return h0((SocketOptionLinger) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return h.U;
        }

        public b h0(SocketOptionLinger socketOptionLinger) {
            if (socketOptionLinger == SocketOptionLinger.getDefaultInstance()) {
                return this;
            }
            if (socketOptionLinger.getActive()) {
                j0(socketOptionLinger.getActive());
            }
            if (socketOptionLinger.hasDuration()) {
                d0(socketOptionLinger.getDuration());
            }
            z(((GeneratedMessageV3) socketOptionLinger).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        public b j0(boolean z10) {
            this.f42212e = z10;
            R();
            return this;
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
            b0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            b0();
        }
    }

    /* synthetic */ SocketOptionLinger(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static SocketOptionLinger getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return h.U;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static SocketOptionLinger parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (SocketOptionLinger) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static SocketOptionLinger parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<SocketOptionLinger> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SocketOptionLinger)) {
            return super.equals(obj);
        }
        SocketOptionLinger socketOptionLinger = (SocketOptionLinger) obj;
        if (getActive() == socketOptionLinger.getActive() && hasDuration() == socketOptionLinger.hasDuration()) {
            return (!hasDuration() || getDuration().equals(socketOptionLinger.getDuration())) && this.unknownFields.equals(socketOptionLinger.unknownFields);
        }
        return false;
    }

    public boolean getActive() {
        return this.active_;
    }

    public Duration getDuration() {
        Duration duration = this.duration_;
        return duration == null ? Duration.getDefaultInstance() : duration;
    }

    public v getDurationOrBuilder() {
        return getDuration();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<SocketOptionLinger> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        boolean z10 = this.active_;
        int e10 = z10 ? 0 + CodedOutputStream.e(1, z10) : 0;
        if (this.duration_ != null) {
            e10 += CodedOutputStream.G(2, getDuration());
        }
        int serializedSize = e10 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasDuration() {
        return this.duration_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + u0.d(getActive());
        if (hasDuration()) {
            hashCode = (((hashCode * 37) + 2) * 53) + getDuration().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return h.V.d(SocketOptionLinger.class, b.class);
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
        return new SocketOptionLinger();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        boolean z10 = this.active_;
        if (z10) {
            codedOutputStream.n0(1, z10);
        }
        if (this.duration_ != null) {
            codedOutputStream.L0(2, getDuration());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ SocketOptionLinger(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(SocketOptionLinger socketOptionLinger) {
        return DEFAULT_INSTANCE.toBuilder().h0(socketOptionLinger);
    }

    public static SocketOptionLinger parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private SocketOptionLinger(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static SocketOptionLinger parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (SocketOptionLinger) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static SocketOptionLinger parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public SocketOptionLinger getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).h0(this);
    }

    public static SocketOptionLinger parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private SocketOptionLinger() {
        this.memoizedIsInitialized = (byte) -1;
    }

    public static SocketOptionLinger parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static SocketOptionLinger parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    private SocketOptionLinger(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    int L = pVar.L();
                    if (L != 0) {
                        if (L == 8) {
                            this.active_ = pVar.r();
                        } else if (L != 18) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            Duration duration = this.duration_;
                            Duration.b builder = duration != null ? duration.toBuilder() : null;
                            Duration duration2 = (Duration) pVar.B(Duration.parser(), f0Var);
                            this.duration_ = duration2;
                            if (builder != null) {
                                builder.e0(duration2);
                                this.duration_ = builder.I();
                            }
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

    public static SocketOptionLinger parseFrom(InputStream inputStream) throws IOException {
        return (SocketOptionLinger) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static SocketOptionLinger parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (SocketOptionLinger) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static SocketOptionLinger parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (SocketOptionLinger) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static SocketOptionLinger parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
        return (SocketOptionLinger) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
