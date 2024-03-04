package io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.fault.v2;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.Duration;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.h2;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.o1;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import com.google.protobuf.u0;
import com.google.protobuf.v;
import io.grpc.xds.shaded.io.envoyproxy.envoy.type.FractionalPercent;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class FaultDelay extends GeneratedMessageV3 implements io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.fault.v2.a {
    public static final int FIXED_DELAY_FIELD_NUMBER = 3;
    public static final int HEADER_DELAY_FIELD_NUMBER = 5;
    public static final int PERCENTAGE_FIELD_NUMBER = 4;
    public static final int TYPE_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private int faultDelaySecifierCase_;
    private Object faultDelaySecifier_;
    private byte memoizedIsInitialized;
    private FractionalPercent percentage_;
    private int type_;
    private static final FaultDelay DEFAULT_INSTANCE = new FaultDelay();
    private static final e2<FaultDelay> PARSER = new a();

    /* loaded from: classes6.dex */
    public enum FaultDelaySecifierCase implements u0.c {
        FIXED_DELAY(3),
        HEADER_DELAY(5),
        FAULTDELAYSECIFIER_NOT_SET(0);
        
        private final int value;

        FaultDelaySecifierCase(int i9) {
            this.value = i9;
        }

        public static FaultDelaySecifierCase forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 3) {
                    if (i9 != 5) {
                        return null;
                    }
                    return HEADER_DELAY;
                }
                return FIXED_DELAY;
            }
            return FAULTDELAYSECIFIER_NOT_SET;
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static FaultDelaySecifierCase valueOf(int i9) {
            return forNumber(i9);
        }
    }

    /* loaded from: classes6.dex */
    public enum FaultDelayType implements h2 {
        FIXED(0),
        UNRECOGNIZED(-1);
        
        public static final int FIXED_VALUE = 0;
        private final int value;
        private static final u0.d<FaultDelayType> internalValueMap = new a();
        private static final FaultDelayType[] VALUES = values();

        /* loaded from: classes6.dex */
        class a implements u0.d<FaultDelayType> {
            a() {
            }

            @Override // com.google.protobuf.u0.d
            /* renamed from: b */
            public FaultDelayType a(int i9) {
                return FaultDelayType.forNumber(i9);
            }
        }

        FaultDelayType(int i9) {
            this.value = i9;
        }

        public static FaultDelayType forNumber(int i9) {
            if (i9 != 0) {
                return null;
            }
            return FIXED;
        }

        public static final Descriptors.d getDescriptor() {
            return FaultDelay.getDescriptor().k().get(0);
        }

        public static u0.d<FaultDelayType> internalGetValueMap() {
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
        public static FaultDelayType valueOf(int i9) {
            return forNumber(i9);
        }

        public static FaultDelayType valueOf(Descriptors.e eVar) {
            if (eVar.h() == getDescriptor()) {
                if (eVar.g() == -1) {
                    return UNRECOGNIZED;
                }
                return VALUES[eVar.g()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    /* loaded from: classes6.dex */
    public static final class HeaderDelay extends GeneratedMessageV3 implements d {
        private static final HeaderDelay DEFAULT_INSTANCE = new HeaderDelay();
        private static final e2<HeaderDelay> PARSER = new a();
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;

        /* loaded from: classes6.dex */
        class a extends com.google.protobuf.c<HeaderDelay> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public HeaderDelay m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new HeaderDelay(pVar, f0Var, null);
            }
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements d {
            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.fault.v2.b.f48544d.d(HeaderDelay.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public HeaderDelay build() {
                HeaderDelay I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public HeaderDelay I() {
                HeaderDelay headerDelay = new HeaderDelay(this, (a) null);
                Q();
                return headerDelay;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public HeaderDelay getDefaultInstanceForType() {
                return HeaderDelay.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: d0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.fault.v2.FaultDelay.HeaderDelay.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.fault.v2.FaultDelay.HeaderDelay.access$500()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.fault.v2.FaultDelay$HeaderDelay r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.fault.v2.FaultDelay.HeaderDelay) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.fault.v2.FaultDelay$HeaderDelay r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.fault.v2.FaultDelay.HeaderDelay) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.fault.v2.FaultDelay.HeaderDelay.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.fault.v2.FaultDelay$HeaderDelay$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof HeaderDelay) {
                    return g0((HeaderDelay) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b g0(HeaderDelay headerDelay) {
                if (headerDelay == HeaderDelay.getDefaultInstance()) {
                    return this;
                }
                z(((GeneratedMessageV3) headerDelay).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.fault.v2.b.f48543c;
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

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: j0 */
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

        /* synthetic */ HeaderDelay(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static HeaderDelay getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.fault.v2.b.f48543c;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static HeaderDelay parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (HeaderDelay) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static HeaderDelay parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<HeaderDelay> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj instanceof HeaderDelay) {
                return this.unknownFields.equals(((HeaderDelay) obj).unknownFields);
            }
            return super.equals(obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<HeaderDelay> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int serializedSize = this.unknownFields.getSerializedSize() + 0;
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
            int hashCode = ((779 + getDescriptor().hashCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode;
            return hashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.fault.v2.b.f48544d.d(HeaderDelay.class, b.class);
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
            return new HeaderDelay();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ HeaderDelay(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(HeaderDelay headerDelay) {
            return DEFAULT_INSTANCE.toBuilder().g0(headerDelay);
        }

        public static HeaderDelay parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private HeaderDelay(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static HeaderDelay parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (HeaderDelay) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static HeaderDelay parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public HeaderDelay getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
        }

        public static HeaderDelay parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private HeaderDelay() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static HeaderDelay parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static HeaderDelay parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        private HeaderDelay(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            this();
            Objects.requireNonNull(f0Var);
            h3.b h10 = h3.h();
            boolean z10 = false;
            while (!z10) {
                try {
                    try {
                        try {
                            int L = pVar.L();
                            if (L == 0 || !parseUnknownField(pVar, h10, f0Var, L)) {
                                z10 = true;
                            }
                        } catch (InvalidProtocolBufferException e10) {
                            throw e10.setUnfinishedMessage(this);
                        }
                    } catch (IOException e11) {
                        throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                    }
                } finally {
                    this.unknownFields = h10.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static HeaderDelay parseFrom(InputStream inputStream) throws IOException {
            return (HeaderDelay) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static HeaderDelay parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (HeaderDelay) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static HeaderDelay parseFrom(p pVar) throws IOException {
            return (HeaderDelay) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static HeaderDelay parseFrom(p pVar, f0 f0Var) throws IOException {
            return (HeaderDelay) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<FaultDelay> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public FaultDelay m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new FaultDelay(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f48525a;

        static {
            int[] iArr = new int[FaultDelaySecifierCase.values().length];
            f48525a = iArr;
            try {
                iArr[FaultDelaySecifierCase.FIXED_DELAY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f48525a[FaultDelaySecifierCase.HEADER_DELAY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f48525a[FaultDelaySecifierCase.FAULTDELAYSECIFIER_NOT_SET.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.fault.v2.a {

        /* renamed from: e  reason: collision with root package name */
        private int f48526e;

        /* renamed from: f  reason: collision with root package name */
        private Object f48527f;

        /* renamed from: g  reason: collision with root package name */
        private int f48528g;

        /* renamed from: h  reason: collision with root package name */
        private q2<Duration, Duration.b, v> f48529h;

        /* renamed from: i  reason: collision with root package name */
        private q2<HeaderDelay, HeaderDelay.b, d> f48530i;

        /* renamed from: j  reason: collision with root package name */
        private FractionalPercent f48531j;

        /* renamed from: k  reason: collision with root package name */
        private q2<FractionalPercent, FractionalPercent.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.b> f48532k;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.fault.v2.b.f48542b.d(FaultDelay.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public FaultDelay build() {
            FaultDelay I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public FaultDelay I() {
            FaultDelay faultDelay = new FaultDelay(this, (a) null);
            faultDelay.type_ = this.f48528g;
            if (this.f48526e == 3) {
                q2<Duration, Duration.b, v> q2Var = this.f48529h;
                if (q2Var == null) {
                    faultDelay.faultDelaySecifier_ = this.f48527f;
                } else {
                    faultDelay.faultDelaySecifier_ = q2Var.b();
                }
            }
            if (this.f48526e == 5) {
                q2<HeaderDelay, HeaderDelay.b, d> q2Var2 = this.f48530i;
                if (q2Var2 == null) {
                    faultDelay.faultDelaySecifier_ = this.f48527f;
                } else {
                    faultDelay.faultDelaySecifier_ = q2Var2.b();
                }
            }
            q2<FractionalPercent, FractionalPercent.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.b> q2Var3 = this.f48532k;
            if (q2Var3 == null) {
                faultDelay.percentage_ = this.f48531j;
            } else {
                faultDelay.percentage_ = q2Var3.b();
            }
            faultDelay.faultDelaySecifierCase_ = this.f48526e;
            Q();
            return faultDelay;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public FaultDelay getDefaultInstanceForType() {
            return FaultDelay.getDefaultInstance();
        }

        public c d0(Duration duration) {
            q2<Duration, Duration.b, v> q2Var = this.f48529h;
            if (q2Var == null) {
                if (this.f48526e == 3 && this.f48527f != Duration.getDefaultInstance()) {
                    this.f48527f = Duration.newBuilder((Duration) this.f48527f).e0(duration).I();
                } else {
                    this.f48527f = duration;
                }
                R();
            } else {
                if (this.f48526e == 3) {
                    q2Var.e(duration);
                }
                this.f48529h.g(duration);
            }
            this.f48526e = 3;
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.fault.v2.FaultDelay.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.fault.v2.FaultDelay.access$1600()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.fault.v2.FaultDelay r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.fault.v2.FaultDelay) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.fault.v2.FaultDelay r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.fault.v2.FaultDelay) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.fault.v2.FaultDelay.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.fault.v2.FaultDelay$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        public c v(l1 l1Var) {
            if (l1Var instanceof FaultDelay) {
                return h0((FaultDelay) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.fault.v2.b.f48541a;
        }

        public c h0(FaultDelay faultDelay) {
            if (faultDelay == FaultDelay.getDefaultInstance()) {
                return this;
            }
            if (faultDelay.type_ != 0) {
                m0(faultDelay.getTypeValue());
            }
            if (faultDelay.hasPercentage()) {
                j0(faultDelay.getPercentage());
            }
            int i9 = b.f48525a[faultDelay.getFaultDelaySecifierCase().ordinal()];
            if (i9 == 1) {
                d0(faultDelay.getFixedDelay());
            } else if (i9 == 2) {
                i0(faultDelay.getHeaderDelay());
            }
            z(((GeneratedMessageV3) faultDelay).unknownFields);
            R();
            return this;
        }

        public c i0(HeaderDelay headerDelay) {
            q2<HeaderDelay, HeaderDelay.b, d> q2Var = this.f48530i;
            if (q2Var == null) {
                if (this.f48526e == 5 && this.f48527f != HeaderDelay.getDefaultInstance()) {
                    this.f48527f = HeaderDelay.newBuilder((HeaderDelay) this.f48527f).g0(headerDelay).I();
                } else {
                    this.f48527f = headerDelay;
                }
                R();
            } else {
                if (this.f48526e == 5) {
                    q2Var.e(headerDelay);
                }
                this.f48530i.g(headerDelay);
            }
            this.f48526e = 5;
            return this;
        }

        public c j0(FractionalPercent fractionalPercent) {
            q2<FractionalPercent, FractionalPercent.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.b> q2Var = this.f48532k;
            if (q2Var == null) {
                FractionalPercent fractionalPercent2 = this.f48531j;
                if (fractionalPercent2 != null) {
                    this.f48531j = FractionalPercent.newBuilder(fractionalPercent2).g0(fractionalPercent).I();
                } else {
                    this.f48531j = fractionalPercent;
                }
                R();
            } else {
                q2Var.e(fractionalPercent);
            }
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

        @Deprecated
        public c m0(int i9) {
            this.f48528g = i9;
            R();
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
            this.f48526e = 0;
            this.f48528g = 0;
            b0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f48526e = 0;
            this.f48528g = 0;
            b0();
        }
    }

    /* loaded from: classes6.dex */
    public interface d extends r1 {
    }

    /* synthetic */ FaultDelay(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static FaultDelay getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.fault.v2.b.f48541a;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static FaultDelay parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (FaultDelay) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static FaultDelay parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<FaultDelay> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof FaultDelay)) {
            return super.equals(obj);
        }
        FaultDelay faultDelay = (FaultDelay) obj;
        if (this.type_ == faultDelay.type_ && hasPercentage() == faultDelay.hasPercentage()) {
            if ((!hasPercentage() || getPercentage().equals(faultDelay.getPercentage())) && getFaultDelaySecifierCase().equals(faultDelay.getFaultDelaySecifierCase())) {
                int i9 = this.faultDelaySecifierCase_;
                if (i9 != 3) {
                    if (i9 == 5 && !getHeaderDelay().equals(faultDelay.getHeaderDelay())) {
                        return false;
                    }
                } else if (!getFixedDelay().equals(faultDelay.getFixedDelay())) {
                    return false;
                }
                return this.unknownFields.equals(faultDelay.unknownFields);
            }
            return false;
        }
        return false;
    }

    public FaultDelaySecifierCase getFaultDelaySecifierCase() {
        return FaultDelaySecifierCase.forNumber(this.faultDelaySecifierCase_);
    }

    public Duration getFixedDelay() {
        if (this.faultDelaySecifierCase_ == 3) {
            return (Duration) this.faultDelaySecifier_;
        }
        return Duration.getDefaultInstance();
    }

    public v getFixedDelayOrBuilder() {
        if (this.faultDelaySecifierCase_ == 3) {
            return (Duration) this.faultDelaySecifier_;
        }
        return Duration.getDefaultInstance();
    }

    public HeaderDelay getHeaderDelay() {
        if (this.faultDelaySecifierCase_ == 5) {
            return (HeaderDelay) this.faultDelaySecifier_;
        }
        return HeaderDelay.getDefaultInstance();
    }

    public d getHeaderDelayOrBuilder() {
        if (this.faultDelaySecifierCase_ == 5) {
            return (HeaderDelay) this.faultDelaySecifier_;
        }
        return HeaderDelay.getDefaultInstance();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<FaultDelay> getParserForType() {
        return PARSER;
    }

    public FractionalPercent getPercentage() {
        FractionalPercent fractionalPercent = this.percentage_;
        return fractionalPercent == null ? FractionalPercent.getDefaultInstance() : fractionalPercent;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.type.b getPercentageOrBuilder() {
        return getPercentage();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int l10 = this.type_ != FaultDelayType.FIXED.getNumber() ? 0 + CodedOutputStream.l(1, this.type_) : 0;
        if (this.faultDelaySecifierCase_ == 3) {
            l10 += CodedOutputStream.G(3, (Duration) this.faultDelaySecifier_);
        }
        if (this.percentage_ != null) {
            l10 += CodedOutputStream.G(4, getPercentage());
        }
        if (this.faultDelaySecifierCase_ == 5) {
            l10 += CodedOutputStream.G(5, (HeaderDelay) this.faultDelaySecifier_);
        }
        int serializedSize = l10 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Deprecated
    public FaultDelayType getType() {
        FaultDelayType valueOf = FaultDelayType.valueOf(this.type_);
        return valueOf == null ? FaultDelayType.UNRECOGNIZED : valueOf;
    }

    @Deprecated
    public int getTypeValue() {
        return this.type_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasFixedDelay() {
        return this.faultDelaySecifierCase_ == 3;
    }

    public boolean hasHeaderDelay() {
        return this.faultDelaySecifierCase_ == 5;
    }

    public boolean hasPercentage() {
        return this.percentage_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9;
        int hashCode;
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int hashCode2 = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + this.type_;
        if (hasPercentage()) {
            hashCode2 = (((hashCode2 * 37) + 4) * 53) + getPercentage().hashCode();
        }
        int i11 = this.faultDelaySecifierCase_;
        if (i11 == 3) {
            i9 = ((hashCode2 * 37) + 3) * 53;
            hashCode = getFixedDelay().hashCode();
        } else {
            if (i11 == 5) {
                i9 = ((hashCode2 * 37) + 5) * 53;
                hashCode = getHeaderDelay().hashCode();
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
        return io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.fault.v2.b.f48542b.d(FaultDelay.class, c.class);
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
        return new FaultDelay();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.type_ != FaultDelayType.FIXED.getNumber()) {
            codedOutputStream.v0(1, this.type_);
        }
        if (this.faultDelaySecifierCase_ == 3) {
            codedOutputStream.L0(3, (Duration) this.faultDelaySecifier_);
        }
        if (this.percentage_ != null) {
            codedOutputStream.L0(4, getPercentage());
        }
        if (this.faultDelaySecifierCase_ == 5) {
            codedOutputStream.L0(5, (HeaderDelay) this.faultDelaySecifier_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ FaultDelay(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(FaultDelay faultDelay) {
        return DEFAULT_INSTANCE.toBuilder().h0(faultDelay);
    }

    public static FaultDelay parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private FaultDelay(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.faultDelaySecifierCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static FaultDelay parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (FaultDelay) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static FaultDelay parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public FaultDelay getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).h0(this);
    }

    public static FaultDelay parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    public static FaultDelay parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    private FaultDelay() {
        this.faultDelaySecifierCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
        this.type_ = 0;
    }

    public static FaultDelay parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static FaultDelay parseFrom(InputStream inputStream) throws IOException {
        return (FaultDelay) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static FaultDelay parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (FaultDelay) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    private FaultDelay(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            if (L == 26) {
                                Duration.b builder = this.faultDelaySecifierCase_ == 3 ? ((Duration) this.faultDelaySecifier_).toBuilder() : null;
                                o1 B = pVar.B(Duration.parser(), f0Var);
                                this.faultDelaySecifier_ = B;
                                if (builder != null) {
                                    builder.e0((Duration) B);
                                    this.faultDelaySecifier_ = builder.I();
                                }
                                this.faultDelaySecifierCase_ = 3;
                            } else if (L == 34) {
                                FractionalPercent fractionalPercent = this.percentage_;
                                FractionalPercent.b builder2 = fractionalPercent != null ? fractionalPercent.toBuilder() : null;
                                FractionalPercent fractionalPercent2 = (FractionalPercent) pVar.B(FractionalPercent.parser(), f0Var);
                                this.percentage_ = fractionalPercent2;
                                if (builder2 != null) {
                                    builder2.g0(fractionalPercent2);
                                    this.percentage_ = builder2.I();
                                }
                            } else if (L != 42) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                HeaderDelay.b builder3 = this.faultDelaySecifierCase_ == 5 ? ((HeaderDelay) this.faultDelaySecifier_).toBuilder() : null;
                                o1 B2 = pVar.B(HeaderDelay.parser(), f0Var);
                                this.faultDelaySecifier_ = B2;
                                if (builder3 != null) {
                                    builder3.g0((HeaderDelay) B2);
                                    this.faultDelaySecifier_ = builder3.I();
                                }
                                this.faultDelaySecifierCase_ = 5;
                            }
                        } else {
                            this.type_ = pVar.u();
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

    public static FaultDelay parseFrom(p pVar) throws IOException {
        return (FaultDelay) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static FaultDelay parseFrom(p pVar, f0 f0Var) throws IOException {
        return (FaultDelay) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
