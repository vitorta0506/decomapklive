package io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.h2;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.u0;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class SocketOption extends GeneratedMessageV3 implements o0 {
    public static final int BUF_VALUE_FIELD_NUMBER = 5;
    public static final int DESCRIPTION_FIELD_NUMBER = 1;
    public static final int INT_VALUE_FIELD_NUMBER = 4;
    public static final int LEVEL_FIELD_NUMBER = 2;
    public static final int NAME_FIELD_NUMBER = 3;
    public static final int STATE_FIELD_NUMBER = 6;
    private static final long serialVersionUID = 0;
    private volatile Object description_;
    private long level_;
    private byte memoizedIsInitialized;
    private long name_;
    private int state_;
    private int valueCase_;
    private Object value_;
    private static final SocketOption DEFAULT_INSTANCE = new SocketOption();
    private static final e2<SocketOption> PARSER = new a();

    /* loaded from: classes6.dex */
    public enum SocketState implements h2 {
        STATE_PREBIND(0),
        STATE_BOUND(1),
        STATE_LISTENING(2),
        UNRECOGNIZED(-1);
        
        public static final int STATE_BOUND_VALUE = 1;
        public static final int STATE_LISTENING_VALUE = 2;
        public static final int STATE_PREBIND_VALUE = 0;
        private final int value;
        private static final u0.d<SocketState> internalValueMap = new a();
        private static final SocketState[] VALUES = values();

        /* loaded from: classes6.dex */
        class a implements u0.d<SocketState> {
            a() {
            }

            @Override // com.google.protobuf.u0.d
            /* renamed from: b */
            public SocketState a(int i9) {
                return SocketState.forNumber(i9);
            }
        }

        SocketState(int i9) {
            this.value = i9;
        }

        public static SocketState forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 != 2) {
                        return null;
                    }
                    return STATE_LISTENING;
                }
                return STATE_BOUND;
            }
            return STATE_PREBIND;
        }

        public static final Descriptors.d getDescriptor() {
            return SocketOption.getDescriptor().k().get(0);
        }

        public static u0.d<SocketState> internalGetValueMap() {
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
        public static SocketState valueOf(int i9) {
            return forNumber(i9);
        }

        public static SocketState valueOf(Descriptors.e eVar) {
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
    public enum ValueCase implements u0.c {
        INT_VALUE(4),
        BUF_VALUE(5),
        VALUE_NOT_SET(0);
        
        private final int value;

        ValueCase(int i9) {
            this.value = i9;
        }

        public static ValueCase forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 4) {
                    if (i9 != 5) {
                        return null;
                    }
                    return BUF_VALUE;
                }
                return INT_VALUE;
            }
            return VALUE_NOT_SET;
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static ValueCase valueOf(int i9) {
            return forNumber(i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<SocketOption> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public SocketOption m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return new SocketOption(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f46652a;

        static {
            int[] iArr = new int[ValueCase.values().length];
            f46652a = iArr;
            try {
                iArr[ValueCase.INT_VALUE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f46652a[ValueCase.BUF_VALUE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f46652a[ValueCase.VALUE_NOT_SET.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements o0 {

        /* renamed from: e  reason: collision with root package name */
        private int f46653e;

        /* renamed from: f  reason: collision with root package name */
        private Object f46654f;

        /* renamed from: g  reason: collision with root package name */
        private Object f46655g;

        /* renamed from: h  reason: collision with root package name */
        private long f46656h;

        /* renamed from: i  reason: collision with root package name */
        private long f46657i;

        /* renamed from: j  reason: collision with root package name */
        private int f46658j;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return p0.f46752b.d(SocketOption.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public SocketOption build() {
            SocketOption I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public SocketOption I() {
            SocketOption socketOption = new SocketOption(this, (a) null);
            socketOption.description_ = this.f46655g;
            socketOption.level_ = this.f46656h;
            socketOption.name_ = this.f46657i;
            if (this.f46653e == 4) {
                socketOption.value_ = this.f46654f;
            }
            if (this.f46653e == 5) {
                socketOption.value_ = this.f46654f;
            }
            socketOption.state_ = this.f46658j;
            socketOption.valueCase_ = this.f46653e;
            Q();
            return socketOption;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public SocketOption getDefaultInstanceForType() {
            return SocketOption.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.SocketOption.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.SocketOption.access$1100()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.SocketOption r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.SocketOption) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.SocketOption r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.SocketOption) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.SocketOption.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.SocketOption$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public c v(l1 l1Var) {
            if (l1Var instanceof SocketOption) {
                return g0((SocketOption) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public c g0(SocketOption socketOption) {
            if (socketOption == SocketOption.getDefaultInstance()) {
                return this;
            }
            if (!socketOption.getDescription().isEmpty()) {
                this.f46655g = socketOption.description_;
                R();
            }
            if (socketOption.getLevel() != 0) {
                l0(socketOption.getLevel());
            }
            if (socketOption.getName() != 0) {
                m0(socketOption.getName());
            }
            if (socketOption.state_ != 0) {
                n0(socketOption.getStateValue());
            }
            int i9 = b.f46652a[socketOption.getValueCase().ordinal()];
            if (i9 == 1) {
                k0(socketOption.getIntValue());
            } else if (i9 == 2) {
                i0(socketOption.getBufValue());
            }
            z(((GeneratedMessageV3) socketOption).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return p0.f46751a;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public final c z(h3 h3Var) {
            return (c) super.z(h3Var);
        }

        public c i0(ByteString byteString) {
            Objects.requireNonNull(byteString);
            this.f46653e = 5;
            this.f46654f = byteString;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: j0 */
        public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.c(fieldDescriptor, obj);
        }

        public c k0(long j10) {
            this.f46653e = 4;
            this.f46654f = Long.valueOf(j10);
            R();
            return this;
        }

        public c l0(long j10) {
            this.f46656h = j10;
            R();
            return this;
        }

        public c m0(long j10) {
            this.f46657i = j10;
            R();
            return this;
        }

        public c n0(int i9) {
            this.f46658j = i9;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: o0 */
        public final c f1(h3 h3Var) {
            return (c) super.f1(h3Var);
        }

        /* synthetic */ c(a aVar) {
            this();
        }

        private c() {
            this.f46653e = 0;
            this.f46655g = "";
            this.f46658j = 0;
            b0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f46653e = 0;
            this.f46655g = "";
            this.f46658j = 0;
            b0();
        }
    }

    /* synthetic */ SocketOption(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static SocketOption getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return p0.f46751a;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static SocketOption parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (SocketOption) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static SocketOption parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<SocketOption> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SocketOption)) {
            return super.equals(obj);
        }
        SocketOption socketOption = (SocketOption) obj;
        if (getDescription().equals(socketOption.getDescription()) && getLevel() == socketOption.getLevel() && getName() == socketOption.getName() && this.state_ == socketOption.state_ && getValueCase().equals(socketOption.getValueCase())) {
            int i9 = this.valueCase_;
            if (i9 != 4) {
                if (i9 == 5 && !getBufValue().equals(socketOption.getBufValue())) {
                    return false;
                }
            } else if (getIntValue() != socketOption.getIntValue()) {
                return false;
            }
            return this.unknownFields.equals(socketOption.unknownFields);
        }
        return false;
    }

    public ByteString getBufValue() {
        if (this.valueCase_ == 5) {
            return (ByteString) this.value_;
        }
        return ByteString.EMPTY;
    }

    public String getDescription() {
        Object obj = this.description_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.description_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getDescriptionBytes() {
        Object obj = this.description_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.description_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public long getIntValue() {
        if (this.valueCase_ == 4) {
            return ((Long) this.value_).longValue();
        }
        return 0L;
    }

    public long getLevel() {
        return this.level_;
    }

    public long getName() {
        return this.name_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<SocketOption> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = GeneratedMessageV3.isStringEmpty(this.description_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.description_);
        long j10 = this.level_;
        if (j10 != 0) {
            computeStringSize += CodedOutputStream.z(2, j10);
        }
        long j11 = this.name_;
        if (j11 != 0) {
            computeStringSize += CodedOutputStream.z(3, j11);
        }
        if (this.valueCase_ == 4) {
            computeStringSize += CodedOutputStream.z(4, ((Long) this.value_).longValue());
        }
        if (this.valueCase_ == 5) {
            computeStringSize += CodedOutputStream.h(5, (ByteString) this.value_);
        }
        if (this.state_ != SocketState.STATE_PREBIND.getNumber()) {
            computeStringSize += CodedOutputStream.l(6, this.state_);
        }
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public SocketState getState() {
        SocketState valueOf = SocketState.valueOf(this.state_);
        return valueOf == null ? SocketState.UNRECOGNIZED : valueOf;
    }

    public int getStateValue() {
        return this.state_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public ValueCase getValueCase() {
        return ValueCase.forNumber(this.valueCase_);
    }

    public boolean hasBufValue() {
        return this.valueCase_ == 5;
    }

    public boolean hasIntValue() {
        return this.valueCase_ == 4;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9;
        int i10;
        int i11 = this.memoizedHashCode;
        if (i11 != 0) {
            return i11;
        }
        int hashCode = ((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getDescription().hashCode()) * 37) + 2) * 53) + u0.i(getLevel())) * 37) + 3) * 53) + u0.i(getName())) * 37) + 6) * 53) + this.state_;
        int i12 = this.valueCase_;
        if (i12 == 4) {
            i9 = ((hashCode * 37) + 4) * 53;
            i10 = u0.i(getIntValue());
        } else {
            if (i12 == 5) {
                i9 = ((hashCode * 37) + 5) * 53;
                i10 = getBufValue().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }
        hashCode = i9 + i10;
        int hashCode22 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode22;
        return hashCode22;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return p0.f46752b.d(SocketOption.class, c.class);
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
        return new SocketOption();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.description_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.description_);
        }
        long j10 = this.level_;
        if (j10 != 0) {
            codedOutputStream.J0(2, j10);
        }
        long j11 = this.name_;
        if (j11 != 0) {
            codedOutputStream.J0(3, j11);
        }
        if (this.valueCase_ == 4) {
            codedOutputStream.J0(4, ((Long) this.value_).longValue());
        }
        if (this.valueCase_ == 5) {
            codedOutputStream.r0(5, (ByteString) this.value_);
        }
        if (this.state_ != SocketState.STATE_PREBIND.getNumber()) {
            codedOutputStream.v0(6, this.state_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ SocketOption(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(SocketOption socketOption) {
        return DEFAULT_INSTANCE.toBuilder().g0(socketOption);
    }

    public static SocketOption parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private SocketOption(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.valueCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static SocketOption parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (SocketOption) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static SocketOption parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public SocketOption getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).g0(this);
    }

    public static SocketOption parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    public static SocketOption parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    private SocketOption() {
        this.valueCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
        this.description_ = "";
        this.state_ = 0;
    }

    public static SocketOption parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static SocketOption parseFrom(InputStream inputStream) throws IOException {
        return (SocketOption) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static SocketOption parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (SocketOption) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    private SocketOption(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    int L = pVar.L();
                    if (L != 0) {
                        if (L == 10) {
                            this.description_ = pVar.K();
                        } else if (L == 16) {
                            this.level_ = pVar.A();
                        } else if (L == 24) {
                            this.name_ = pVar.A();
                        } else if (L == 32) {
                            this.value_ = Long.valueOf(pVar.A());
                            this.valueCase_ = 4;
                        } else if (L == 42) {
                            this.value_ = pVar.s();
                            this.valueCase_ = 5;
                        } else if (L != 48) {
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

    public static SocketOption parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (SocketOption) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static SocketOption parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
        return (SocketOption) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
