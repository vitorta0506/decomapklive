package io.grpc.xds.shaded.io.envoyproxy.envoy.config.overload.v3;

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
import com.google.protobuf.u0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.overload.v3.ScaledTrigger;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.overload.v3.ThresholdTrigger;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class Trigger extends GeneratedMessageV3 implements h {
    public static final int NAME_FIELD_NUMBER = 1;
    public static final int SCALED_FIELD_NUMBER = 3;
    public static final int THRESHOLD_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private volatile Object name_;
    private int triggerOneofCase_;
    private Object triggerOneof_;
    private static final Trigger DEFAULT_INSTANCE = new Trigger();
    private static final e2<Trigger> PARSER = new a();

    /* loaded from: classes6.dex */
    public enum TriggerOneofCase implements u0.c {
        THRESHOLD(2),
        SCALED(3),
        TRIGGERONEOF_NOT_SET(0);
        
        private final int value;

        TriggerOneofCase(int i9) {
            this.value = i9;
        }

        public static TriggerOneofCase forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 2) {
                    if (i9 != 3) {
                        return null;
                    }
                    return SCALED;
                }
                return THRESHOLD;
            }
            return TRIGGERONEOF_NOT_SET;
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static TriggerOneofCase valueOf(int i9) {
            return forNumber(i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<Trigger> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public Trigger m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new Trigger(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f48963a;

        static {
            int[] iArr = new int[TriggerOneofCase.values().length];
            f48963a = iArr;
            try {
                iArr[TriggerOneofCase.THRESHOLD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f48963a[TriggerOneofCase.SCALED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f48963a[TriggerOneofCase.TRIGGERONEOF_NOT_SET.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements h {

        /* renamed from: e  reason: collision with root package name */
        private int f48964e;

        /* renamed from: f  reason: collision with root package name */
        private Object f48965f;

        /* renamed from: g  reason: collision with root package name */
        private Object f48966g;

        /* renamed from: h  reason: collision with root package name */
        private q2<ThresholdTrigger, ThresholdTrigger.b, g> f48967h;

        /* renamed from: i  reason: collision with root package name */
        private q2<ScaledTrigger, ScaledTrigger.b, f> f48968i;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return d.f48976h.d(Trigger.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public Trigger build() {
            Trigger I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public Trigger I() {
            Trigger trigger = new Trigger(this, (a) null);
            trigger.name_ = this.f48966g;
            if (this.f48964e == 2) {
                q2<ThresholdTrigger, ThresholdTrigger.b, g> q2Var = this.f48967h;
                if (q2Var == null) {
                    trigger.triggerOneof_ = this.f48965f;
                } else {
                    trigger.triggerOneof_ = q2Var.b();
                }
            }
            if (this.f48964e == 3) {
                q2<ScaledTrigger, ScaledTrigger.b, f> q2Var2 = this.f48968i;
                if (q2Var2 == null) {
                    trigger.triggerOneof_ = this.f48965f;
                } else {
                    trigger.triggerOneof_ = q2Var2.b();
                }
            }
            trigger.triggerOneofCase_ = this.f48964e;
            Q();
            return trigger;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public Trigger getDefaultInstanceForType() {
            return Trigger.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.overload.v3.Trigger.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.overload.v3.Trigger.access$800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.overload.v3.Trigger r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.overload.v3.Trigger) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.overload.v3.Trigger r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.overload.v3.Trigger) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.overload.v3.Trigger.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.overload.v3.Trigger$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public c v(l1 l1Var) {
            if (l1Var instanceof Trigger) {
                return g0((Trigger) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public c g0(Trigger trigger) {
            if (trigger == Trigger.getDefaultInstance()) {
                return this;
            }
            if (!trigger.getName().isEmpty()) {
                this.f48966g = trigger.name_;
                R();
            }
            int i9 = b.f48963a[trigger.getTriggerOneofCase().ordinal()];
            if (i9 == 1) {
                i0(trigger.getThreshold());
            } else if (i9 == 2) {
                h0(trigger.getScaled());
            }
            z(((GeneratedMessageV3) trigger).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return d.f48975g;
        }

        public c h0(ScaledTrigger scaledTrigger) {
            q2<ScaledTrigger, ScaledTrigger.b, f> q2Var = this.f48968i;
            if (q2Var == null) {
                if (this.f48964e == 3 && this.f48965f != ScaledTrigger.getDefaultInstance()) {
                    this.f48965f = ScaledTrigger.newBuilder((ScaledTrigger) this.f48965f).g0(scaledTrigger).I();
                } else {
                    this.f48965f = scaledTrigger;
                }
                R();
            } else {
                if (this.f48964e == 3) {
                    q2Var.e(scaledTrigger);
                }
                this.f48968i.g(scaledTrigger);
            }
            this.f48964e = 3;
            return this;
        }

        public c i0(ThresholdTrigger thresholdTrigger) {
            q2<ThresholdTrigger, ThresholdTrigger.b, g> q2Var = this.f48967h;
            if (q2Var == null) {
                if (this.f48964e == 2 && this.f48965f != ThresholdTrigger.getDefaultInstance()) {
                    this.f48965f = ThresholdTrigger.newBuilder((ThresholdTrigger) this.f48965f).g0(thresholdTrigger).I();
                } else {
                    this.f48965f = thresholdTrigger;
                }
                R();
            } else {
                if (this.f48964e == 2) {
                    q2Var.e(thresholdTrigger);
                }
                this.f48967h.g(thresholdTrigger);
            }
            this.f48964e = 2;
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: j0 */
        public final c z(h3 h3Var) {
            return (c) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: k0 */
        public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.c(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: l0 */
        public final c f1(h3 h3Var) {
            return (c) super.f1(h3Var);
        }

        /* synthetic */ c(a aVar) {
            this();
        }

        private c() {
            this.f48964e = 0;
            this.f48966g = "";
            b0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f48964e = 0;
            this.f48966g = "";
            b0();
        }
    }

    /* synthetic */ Trigger(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static Trigger getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return d.f48975g;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Trigger parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Trigger) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Trigger parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<Trigger> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Trigger)) {
            return super.equals(obj);
        }
        Trigger trigger = (Trigger) obj;
        if (getName().equals(trigger.getName()) && getTriggerOneofCase().equals(trigger.getTriggerOneofCase())) {
            int i9 = this.triggerOneofCase_;
            if (i9 != 2) {
                if (i9 == 3 && !getScaled().equals(trigger.getScaled())) {
                    return false;
                }
            } else if (!getThreshold().equals(trigger.getThreshold())) {
                return false;
            }
            return this.unknownFields.equals(trigger.unknownFields);
        }
        return false;
    }

    public String getName() {
        Object obj = this.name_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.name_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getNameBytes() {
        Object obj = this.name_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.name_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<Trigger> getParserForType() {
        return PARSER;
    }

    public ScaledTrigger getScaled() {
        if (this.triggerOneofCase_ == 3) {
            return (ScaledTrigger) this.triggerOneof_;
        }
        return ScaledTrigger.getDefaultInstance();
    }

    public f getScaledOrBuilder() {
        if (this.triggerOneofCase_ == 3) {
            return (ScaledTrigger) this.triggerOneof_;
        }
        return ScaledTrigger.getDefaultInstance();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = GeneratedMessageV3.isStringEmpty(this.name_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.name_);
        if (this.triggerOneofCase_ == 2) {
            computeStringSize += CodedOutputStream.G(2, (ThresholdTrigger) this.triggerOneof_);
        }
        if (this.triggerOneofCase_ == 3) {
            computeStringSize += CodedOutputStream.G(3, (ScaledTrigger) this.triggerOneof_);
        }
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public ThresholdTrigger getThreshold() {
        if (this.triggerOneofCase_ == 2) {
            return (ThresholdTrigger) this.triggerOneof_;
        }
        return ThresholdTrigger.getDefaultInstance();
    }

    public g getThresholdOrBuilder() {
        if (this.triggerOneofCase_ == 2) {
            return (ThresholdTrigger) this.triggerOneof_;
        }
        return ThresholdTrigger.getDefaultInstance();
    }

    public TriggerOneofCase getTriggerOneofCase() {
        return TriggerOneofCase.forNumber(this.triggerOneofCase_);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasScaled() {
        return this.triggerOneofCase_ == 3;
    }

    public boolean hasThreshold() {
        return this.triggerOneofCase_ == 2;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9;
        int hashCode;
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int hashCode2 = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode();
        int i11 = this.triggerOneofCase_;
        if (i11 == 2) {
            i9 = ((hashCode2 * 37) + 2) * 53;
            hashCode = getThreshold().hashCode();
        } else {
            if (i11 == 3) {
                i9 = ((hashCode2 * 37) + 3) * 53;
                hashCode = getScaled().hashCode();
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
        return d.f48976h.d(Trigger.class, c.class);
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
        return new Trigger();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.name_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.name_);
        }
        if (this.triggerOneofCase_ == 2) {
            codedOutputStream.L0(2, (ThresholdTrigger) this.triggerOneof_);
        }
        if (this.triggerOneofCase_ == 3) {
            codedOutputStream.L0(3, (ScaledTrigger) this.triggerOneof_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ Trigger(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(Trigger trigger) {
        return DEFAULT_INSTANCE.toBuilder().g0(trigger);
    }

    public static Trigger parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private Trigger(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.triggerOneofCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Trigger parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Trigger) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static Trigger parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public Trigger getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).g0(this);
    }

    public static Trigger parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    public static Trigger parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    private Trigger() {
        this.triggerOneofCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
        this.name_ = "";
    }

    public static Trigger parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static Trigger parseFrom(InputStream inputStream) throws IOException {
        return (Trigger) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static Trigger parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Trigger) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    private Trigger(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            if (L == 18) {
                                ThresholdTrigger.b builder = this.triggerOneofCase_ == 2 ? ((ThresholdTrigger) this.triggerOneof_).toBuilder() : null;
                                o1 B = pVar.B(ThresholdTrigger.parser(), f0Var);
                                this.triggerOneof_ = B;
                                if (builder != null) {
                                    builder.g0((ThresholdTrigger) B);
                                    this.triggerOneof_ = builder.I();
                                }
                                this.triggerOneofCase_ = 2;
                            } else if (L != 26) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                ScaledTrigger.b builder2 = this.triggerOneofCase_ == 3 ? ((ScaledTrigger) this.triggerOneof_).toBuilder() : null;
                                o1 B2 = pVar.B(ScaledTrigger.parser(), f0Var);
                                this.triggerOneof_ = B2;
                                if (builder2 != null) {
                                    builder2.g0((ScaledTrigger) B2);
                                    this.triggerOneof_ = builder2.I();
                                }
                                this.triggerOneofCase_ = 3;
                            }
                        } else {
                            this.name_ = pVar.K();
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

    public static Trigger parseFrom(p pVar) throws IOException {
        return (Trigger) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static Trigger parseFrom(p pVar, f0 f0Var) throws IOException {
        return (Trigger) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
