package io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3;

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
import com.google.protobuf.p;
import com.google.protobuf.q2;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.Watchdog;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class Watchdogs extends GeneratedMessageV3 implements j {
    public static final int MAIN_THREAD_WATCHDOG_FIELD_NUMBER = 1;
    public static final int WORKER_WATCHDOG_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private Watchdog mainThreadWatchdog_;
    private byte memoizedIsInitialized;
    private Watchdog workerWatchdog_;
    private static final Watchdogs DEFAULT_INSTANCE = new Watchdogs();
    private static final e2<Watchdogs> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<Watchdogs> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public Watchdogs m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new Watchdogs(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements j {

        /* renamed from: e  reason: collision with root package name */
        private Watchdog f47520e;

        /* renamed from: f  reason: collision with root package name */
        private q2<Watchdog, Watchdog.b, i> f47521f;

        /* renamed from: g  reason: collision with root package name */
        private Watchdog f47522g;

        /* renamed from: h  reason: collision with root package name */
        private q2<Watchdog, Watchdog.b, i> f47523h;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return c.f47539p.d(Watchdogs.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public Watchdogs build() {
            Watchdogs I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public Watchdogs I() {
            Watchdogs watchdogs = new Watchdogs(this, (a) null);
            q2<Watchdog, Watchdog.b, i> q2Var = this.f47521f;
            if (q2Var == null) {
                watchdogs.mainThreadWatchdog_ = this.f47520e;
            } else {
                watchdogs.mainThreadWatchdog_ = q2Var.b();
            }
            q2<Watchdog, Watchdog.b, i> q2Var2 = this.f47523h;
            if (q2Var2 == null) {
                watchdogs.workerWatchdog_ = this.f47522g;
            } else {
                watchdogs.workerWatchdog_ = q2Var2.b();
            }
            Q();
            return watchdogs;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public Watchdogs getDefaultInstanceForType() {
            return Watchdogs.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.Watchdogs.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.Watchdogs.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.Watchdogs r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.Watchdogs) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.Watchdogs r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.Watchdogs) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.Watchdogs.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.Watchdogs$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof Watchdogs) {
                return g0((Watchdogs) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b g0(Watchdogs watchdogs) {
            if (watchdogs == Watchdogs.getDefaultInstance()) {
                return this;
            }
            if (watchdogs.hasMainThreadWatchdog()) {
                h0(watchdogs.getMainThreadWatchdog());
            }
            if (watchdogs.hasWorkerWatchdog()) {
                j0(watchdogs.getWorkerWatchdog());
            }
            z(((GeneratedMessageV3) watchdogs).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return c.f47538o;
        }

        public b h0(Watchdog watchdog) {
            q2<Watchdog, Watchdog.b, i> q2Var = this.f47521f;
            if (q2Var == null) {
                Watchdog watchdog2 = this.f47520e;
                if (watchdog2 != null) {
                    this.f47520e = Watchdog.newBuilder(watchdog2).i0(watchdog).I();
                } else {
                    this.f47520e = watchdog;
                }
                R();
            } else {
                q2Var.e(watchdog);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        public b j0(Watchdog watchdog) {
            q2<Watchdog, Watchdog.b, i> q2Var = this.f47523h;
            if (q2Var == null) {
                Watchdog watchdog2 = this.f47522g;
                if (watchdog2 != null) {
                    this.f47522g = Watchdog.newBuilder(watchdog2).i0(watchdog).I();
                } else {
                    this.f47522g = watchdog;
                }
                R();
            } else {
                q2Var.e(watchdog);
            }
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

    /* synthetic */ Watchdogs(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static Watchdogs getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return c.f47538o;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Watchdogs parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Watchdogs) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Watchdogs parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<Watchdogs> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Watchdogs)) {
            return super.equals(obj);
        }
        Watchdogs watchdogs = (Watchdogs) obj;
        if (hasMainThreadWatchdog() != watchdogs.hasMainThreadWatchdog()) {
            return false;
        }
        if ((!hasMainThreadWatchdog() || getMainThreadWatchdog().equals(watchdogs.getMainThreadWatchdog())) && hasWorkerWatchdog() == watchdogs.hasWorkerWatchdog()) {
            return (!hasWorkerWatchdog() || getWorkerWatchdog().equals(watchdogs.getWorkerWatchdog())) && this.unknownFields.equals(watchdogs.unknownFields);
        }
        return false;
    }

    public Watchdog getMainThreadWatchdog() {
        Watchdog watchdog = this.mainThreadWatchdog_;
        return watchdog == null ? Watchdog.getDefaultInstance() : watchdog;
    }

    public i getMainThreadWatchdogOrBuilder() {
        return getMainThreadWatchdog();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<Watchdogs> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.mainThreadWatchdog_ != null ? 0 + CodedOutputStream.G(1, getMainThreadWatchdog()) : 0;
        if (this.workerWatchdog_ != null) {
            G += CodedOutputStream.G(2, getWorkerWatchdog());
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public Watchdog getWorkerWatchdog() {
        Watchdog watchdog = this.workerWatchdog_;
        return watchdog == null ? Watchdog.getDefaultInstance() : watchdog;
    }

    public i getWorkerWatchdogOrBuilder() {
        return getWorkerWatchdog();
    }

    public boolean hasMainThreadWatchdog() {
        return this.mainThreadWatchdog_ != null;
    }

    public boolean hasWorkerWatchdog() {
        return this.workerWatchdog_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasMainThreadWatchdog()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getMainThreadWatchdog().hashCode();
        }
        if (hasWorkerWatchdog()) {
            hashCode = (((hashCode * 37) + 2) * 53) + getWorkerWatchdog().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return c.f47539p.d(Watchdogs.class, b.class);
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
        return new Watchdogs();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.mainThreadWatchdog_ != null) {
            codedOutputStream.L0(1, getMainThreadWatchdog());
        }
        if (this.workerWatchdog_ != null) {
            codedOutputStream.L0(2, getWorkerWatchdog());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ Watchdogs(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(Watchdogs watchdogs) {
        return DEFAULT_INSTANCE.toBuilder().g0(watchdogs);
    }

    public static Watchdogs parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private Watchdogs(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Watchdogs parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Watchdogs) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static Watchdogs parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public Watchdogs getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static Watchdogs parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private Watchdogs() {
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Watchdogs parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static Watchdogs parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    private Watchdogs(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
        this();
        Watchdog.b builder;
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    int L = pVar.L();
                    if (L != 0) {
                        if (L == 10) {
                            Watchdog watchdog = this.mainThreadWatchdog_;
                            builder = watchdog != null ? watchdog.toBuilder() : null;
                            Watchdog watchdog2 = (Watchdog) pVar.B(Watchdog.parser(), f0Var);
                            this.mainThreadWatchdog_ = watchdog2;
                            if (builder != null) {
                                builder.i0(watchdog2);
                                this.mainThreadWatchdog_ = builder.I();
                            }
                        } else if (L != 18) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            Watchdog watchdog3 = this.workerWatchdog_;
                            builder = watchdog3 != null ? watchdog3.toBuilder() : null;
                            Watchdog watchdog4 = (Watchdog) pVar.B(Watchdog.parser(), f0Var);
                            this.workerWatchdog_ = watchdog4;
                            if (builder != null) {
                                builder.i0(watchdog4);
                                this.workerWatchdog_ = builder.I();
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

    public static Watchdogs parseFrom(InputStream inputStream) throws IOException {
        return (Watchdogs) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static Watchdogs parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Watchdogs) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static Watchdogs parseFrom(p pVar) throws IOException {
        return (Watchdogs) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static Watchdogs parseFrom(p pVar, f0 f0Var) throws IOException {
        return (Watchdogs) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
