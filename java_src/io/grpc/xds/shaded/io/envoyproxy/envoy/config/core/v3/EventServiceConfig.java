package io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.h3;
import com.google.protobuf.o1;
import com.google.protobuf.q2;
import com.google.protobuf.u0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class EventServiceConfig extends GeneratedMessageV3 implements r {
    public static final int GRPC_SERVICE_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private int configSourceSpecifierCase_;
    private Object configSourceSpecifier_;
    private byte memoizedIsInitialized;
    private static final EventServiceConfig DEFAULT_INSTANCE = new EventServiceConfig();
    private static final e2<EventServiceConfig> PARSER = new a();

    /* loaded from: classes6.dex */
    public enum ConfigSourceSpecifierCase implements u0.c {
        GRPC_SERVICE(1),
        CONFIGSOURCESPECIFIER_NOT_SET(0);
        
        private final int value;

        ConfigSourceSpecifierCase(int i9) {
            this.value = i9;
        }

        public static ConfigSourceSpecifierCase forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    return null;
                }
                return GRPC_SERVICE;
            }
            return CONFIGSOURCESPECIFIER_NOT_SET;
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static ConfigSourceSpecifierCase valueOf(int i9) {
            return forNumber(i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<EventServiceConfig> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public EventServiceConfig m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return new EventServiceConfig(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f47835a;

        static {
            int[] iArr = new int[ConfigSourceSpecifierCase.values().length];
            f47835a = iArr;
            try {
                iArr[ConfigSourceSpecifierCase.GRPC_SERVICE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f47835a[ConfigSourceSpecifierCase.CONFIGSOURCESPECIFIER_NOT_SET.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements r {

        /* renamed from: e  reason: collision with root package name */
        private int f47836e;

        /* renamed from: f  reason: collision with root package name */
        private Object f47837f;

        /* renamed from: g  reason: collision with root package name */
        private q2<GrpcService, GrpcService.c, w> f47838g;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return s.f48283b.d(EventServiceConfig.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public EventServiceConfig build() {
            EventServiceConfig I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public EventServiceConfig I() {
            EventServiceConfig eventServiceConfig = new EventServiceConfig(this, (a) null);
            if (this.f47836e == 1) {
                q2<GrpcService, GrpcService.c, w> q2Var = this.f47838g;
                if (q2Var == null) {
                    eventServiceConfig.configSourceSpecifier_ = this.f47837f;
                } else {
                    eventServiceConfig.configSourceSpecifier_ = q2Var.b();
                }
            }
            eventServiceConfig.configSourceSpecifierCase_ = this.f47836e;
            Q();
            return eventServiceConfig;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public EventServiceConfig getDefaultInstanceForType() {
            return EventServiceConfig.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.EventServiceConfig.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.EventServiceConfig.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.EventServiceConfig r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.EventServiceConfig) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.EventServiceConfig r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.EventServiceConfig) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.EventServiceConfig.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.EventServiceConfig$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public c v(com.google.protobuf.l1 l1Var) {
            if (l1Var instanceof EventServiceConfig) {
                return g0((EventServiceConfig) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public c g0(EventServiceConfig eventServiceConfig) {
            if (eventServiceConfig == EventServiceConfig.getDefaultInstance()) {
                return this;
            }
            if (b.f47835a[eventServiceConfig.getConfigSourceSpecifierCase().ordinal()] == 1) {
                h0(eventServiceConfig.getGrpcService());
            }
            z(((GeneratedMessageV3) eventServiceConfig).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return s.f48282a;
        }

        public c h0(GrpcService grpcService) {
            q2<GrpcService, GrpcService.c, w> q2Var = this.f47838g;
            if (q2Var == null) {
                if (this.f47836e == 1 && this.f47837f != GrpcService.getDefaultInstance()) {
                    this.f47837f = GrpcService.newBuilder((GrpcService) this.f47837f).j0(grpcService).I();
                } else {
                    this.f47837f = grpcService;
                }
                R();
            } else {
                if (this.f47836e == 1) {
                    q2Var.e(grpcService);
                }
                this.f47838g.g(grpcService);
            }
            this.f47836e = 1;
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public final c z(h3 h3Var) {
            return (c) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: j0 */
        public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.c(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: k0 */
        public final c f1(h3 h3Var) {
            return (c) super.f1(h3Var);
        }

        /* synthetic */ c(a aVar) {
            this();
        }

        private c() {
            this.f47836e = 0;
            b0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f47836e = 0;
            b0();
        }
    }

    /* synthetic */ EventServiceConfig(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static EventServiceConfig getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return s.f48282a;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static EventServiceConfig parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (EventServiceConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static EventServiceConfig parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<EventServiceConfig> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof EventServiceConfig)) {
            return super.equals(obj);
        }
        EventServiceConfig eventServiceConfig = (EventServiceConfig) obj;
        if (getConfigSourceSpecifierCase().equals(eventServiceConfig.getConfigSourceSpecifierCase())) {
            return (this.configSourceSpecifierCase_ != 1 || getGrpcService().equals(eventServiceConfig.getGrpcService())) && this.unknownFields.equals(eventServiceConfig.unknownFields);
        }
        return false;
    }

    public ConfigSourceSpecifierCase getConfigSourceSpecifierCase() {
        return ConfigSourceSpecifierCase.forNumber(this.configSourceSpecifierCase_);
    }

    public GrpcService getGrpcService() {
        if (this.configSourceSpecifierCase_ == 1) {
            return (GrpcService) this.configSourceSpecifier_;
        }
        return GrpcService.getDefaultInstance();
    }

    public w getGrpcServiceOrBuilder() {
        if (this.configSourceSpecifierCase_ == 1) {
            return (GrpcService) this.configSourceSpecifier_;
        }
        return GrpcService.getDefaultInstance();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<EventServiceConfig> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = (this.configSourceSpecifierCase_ == 1 ? 0 + CodedOutputStream.G(1, (GrpcService) this.configSourceSpecifier_) : 0) + this.unknownFields.getSerializedSize();
        this.memoizedSize = G;
        return G;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasGrpcService() {
        return this.configSourceSpecifierCase_ == 1;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (this.configSourceSpecifierCase_ == 1) {
            hashCode = (((hashCode * 37) + 1) * 53) + getGrpcService().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return s.f48283b.d(EventServiceConfig.class, c.class);
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
        return new EventServiceConfig();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.configSourceSpecifierCase_ == 1) {
            codedOutputStream.L0(1, (GrpcService) this.configSourceSpecifier_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ EventServiceConfig(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(EventServiceConfig eventServiceConfig) {
        return DEFAULT_INSTANCE.toBuilder().g0(eventServiceConfig);
    }

    public static EventServiceConfig parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private EventServiceConfig(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.configSourceSpecifierCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static EventServiceConfig parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (EventServiceConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static EventServiceConfig parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public EventServiceConfig getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).g0(this);
    }

    public static EventServiceConfig parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    public static EventServiceConfig parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    private EventServiceConfig() {
        this.configSourceSpecifierCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static EventServiceConfig parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static EventServiceConfig parseFrom(InputStream inputStream) throws IOException {
        return (EventServiceConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private EventServiceConfig(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    int L = pVar.L();
                    if (L != 0) {
                        if (L != 10) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            GrpcService.c builder = this.configSourceSpecifierCase_ == 1 ? ((GrpcService) this.configSourceSpecifier_).toBuilder() : null;
                            o1 B = pVar.B(GrpcService.parser(), f0Var);
                            this.configSourceSpecifier_ = B;
                            if (builder != null) {
                                builder.j0((GrpcService) B);
                                this.configSourceSpecifier_ = builder.I();
                            }
                            this.configSourceSpecifierCase_ = 1;
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

    public static EventServiceConfig parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (EventServiceConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static EventServiceConfig parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (EventServiceConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static EventServiceConfig parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
        return (EventServiceConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
