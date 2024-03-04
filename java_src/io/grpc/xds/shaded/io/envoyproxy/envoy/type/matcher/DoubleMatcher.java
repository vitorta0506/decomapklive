package io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher;

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
import io.grpc.xds.shaded.io.envoyproxy.envoy.type.DoubleRange;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class DoubleMatcher extends GeneratedMessageV3 implements io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.a {
    public static final int EXACT_FIELD_NUMBER = 2;
    public static final int RANGE_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private int matchPatternCase_;
    private Object matchPattern_;
    private byte memoizedIsInitialized;
    private static final DoubleMatcher DEFAULT_INSTANCE = new DoubleMatcher();
    private static final e2<DoubleMatcher> PARSER = new a();

    /* loaded from: classes6.dex */
    public enum MatchPatternCase implements u0.c {
        RANGE(1),
        EXACT(2),
        MATCHPATTERN_NOT_SET(0);
        
        private final int value;

        MatchPatternCase(int i9) {
            this.value = i9;
        }

        public static MatchPatternCase forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 != 2) {
                        return null;
                    }
                    return EXACT;
                }
                return RANGE;
            }
            return MATCHPATTERN_NOT_SET;
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static MatchPatternCase valueOf(int i9) {
            return forNumber(i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<DoubleMatcher> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public DoubleMatcher m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new DoubleMatcher(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f50262a;

        static {
            int[] iArr = new int[MatchPatternCase.values().length];
            f50262a = iArr;
            try {
                iArr[MatchPatternCase.RANGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f50262a[MatchPatternCase.EXACT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f50262a[MatchPatternCase.MATCHPATTERN_NOT_SET.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.a {

        /* renamed from: e  reason: collision with root package name */
        private int f50263e;

        /* renamed from: f  reason: collision with root package name */
        private Object f50264f;

        /* renamed from: g  reason: collision with root package name */
        private q2<DoubleRange, DoubleRange.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.a> f50265g;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return e.f50314b.d(DoubleMatcher.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public DoubleMatcher build() {
            DoubleMatcher I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public DoubleMatcher I() {
            DoubleMatcher doubleMatcher = new DoubleMatcher(this, (a) null);
            if (this.f50263e == 1) {
                q2<DoubleRange, DoubleRange.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.a> q2Var = this.f50265g;
                if (q2Var == null) {
                    doubleMatcher.matchPattern_ = this.f50264f;
                } else {
                    doubleMatcher.matchPattern_ = q2Var.b();
                }
            }
            if (this.f50263e == 2) {
                doubleMatcher.matchPattern_ = this.f50264f;
            }
            doubleMatcher.matchPatternCase_ = this.f50263e;
            Q();
            return doubleMatcher;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public DoubleMatcher getDefaultInstanceForType() {
            return DoubleMatcher.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.DoubleMatcher.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.DoubleMatcher.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.DoubleMatcher r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.DoubleMatcher) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.DoubleMatcher r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.DoubleMatcher) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.DoubleMatcher.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.DoubleMatcher$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public c v(l1 l1Var) {
            if (l1Var instanceof DoubleMatcher) {
                return g0((DoubleMatcher) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public c g0(DoubleMatcher doubleMatcher) {
            if (doubleMatcher == DoubleMatcher.getDefaultInstance()) {
                return this;
            }
            int i9 = b.f50262a[doubleMatcher.getMatchPatternCase().ordinal()];
            if (i9 == 1) {
                h0(doubleMatcher.getRange());
            } else if (i9 == 2) {
                j0(doubleMatcher.getExact());
            }
            z(((GeneratedMessageV3) doubleMatcher).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return e.f50313a;
        }

        public c h0(DoubleRange doubleRange) {
            q2<DoubleRange, DoubleRange.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.a> q2Var = this.f50265g;
            if (q2Var == null) {
                if (this.f50263e == 1 && this.f50264f != DoubleRange.getDefaultInstance()) {
                    this.f50264f = DoubleRange.newBuilder((DoubleRange) this.f50264f).g0(doubleRange).I();
                } else {
                    this.f50264f = doubleRange;
                }
                R();
            } else {
                if (this.f50263e == 1) {
                    q2Var.e(doubleRange);
                }
                this.f50265g.g(doubleRange);
            }
            this.f50263e = 1;
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public final c z(h3 h3Var) {
            return (c) super.z(h3Var);
        }

        public c j0(double d10) {
            this.f50263e = 2;
            this.f50264f = Double.valueOf(d10);
            R();
            return this;
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
            this.f50263e = 0;
            b0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f50263e = 0;
            b0();
        }
    }

    /* synthetic */ DoubleMatcher(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static DoubleMatcher getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return e.f50313a;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static DoubleMatcher parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (DoubleMatcher) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static DoubleMatcher parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<DoubleMatcher> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof DoubleMatcher)) {
            return super.equals(obj);
        }
        DoubleMatcher doubleMatcher = (DoubleMatcher) obj;
        if (getMatchPatternCase().equals(doubleMatcher.getMatchPatternCase())) {
            int i9 = this.matchPatternCase_;
            if (i9 != 1) {
                if (i9 == 2 && Double.doubleToLongBits(getExact()) != Double.doubleToLongBits(doubleMatcher.getExact())) {
                    return false;
                }
            } else if (!getRange().equals(doubleMatcher.getRange())) {
                return false;
            }
            return this.unknownFields.equals(doubleMatcher.unknownFields);
        }
        return false;
    }

    public double getExact() {
        if (this.matchPatternCase_ == 2) {
            return ((Double) this.matchPattern_).doubleValue();
        }
        return 0.0d;
    }

    public MatchPatternCase getMatchPatternCase() {
        return MatchPatternCase.forNumber(this.matchPatternCase_);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<DoubleMatcher> getParserForType() {
        return PARSER;
    }

    public DoubleRange getRange() {
        if (this.matchPatternCase_ == 1) {
            return (DoubleRange) this.matchPattern_;
        }
        return DoubleRange.getDefaultInstance();
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.type.a getRangeOrBuilder() {
        if (this.matchPatternCase_ == 1) {
            return (DoubleRange) this.matchPattern_;
        }
        return DoubleRange.getDefaultInstance();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.matchPatternCase_ == 1 ? 0 + CodedOutputStream.G(1, (DoubleRange) this.matchPattern_) : 0;
        if (this.matchPatternCase_ == 2) {
            G += CodedOutputStream.j(2, ((Double) this.matchPattern_).doubleValue());
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasExact() {
        return this.matchPatternCase_ == 2;
    }

    public boolean hasRange() {
        return this.matchPatternCase_ == 1;
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
        int i11 = this.matchPatternCase_;
        if (i11 == 1) {
            i9 = ((hashCode2 * 37) + 1) * 53;
            hashCode = getRange().hashCode();
        } else {
            if (i11 == 2) {
                i9 = ((hashCode2 * 37) + 2) * 53;
                hashCode = u0.i(Double.doubleToLongBits(getExact()));
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
        return e.f50314b.d(DoubleMatcher.class, c.class);
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
        return new DoubleMatcher();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.matchPatternCase_ == 1) {
            codedOutputStream.L0(1, (DoubleRange) this.matchPattern_);
        }
        if (this.matchPatternCase_ == 2) {
            codedOutputStream.t0(2, ((Double) this.matchPattern_).doubleValue());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ DoubleMatcher(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(DoubleMatcher doubleMatcher) {
        return DEFAULT_INSTANCE.toBuilder().g0(doubleMatcher);
    }

    public static DoubleMatcher parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private DoubleMatcher(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.matchPatternCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static DoubleMatcher parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (DoubleMatcher) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static DoubleMatcher parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public DoubleMatcher getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).g0(this);
    }

    public static DoubleMatcher parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    public static DoubleMatcher parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    private DoubleMatcher() {
        this.matchPatternCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static DoubleMatcher parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static DoubleMatcher parseFrom(InputStream inputStream) throws IOException {
        return (DoubleMatcher) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private DoubleMatcher(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            DoubleRange.b builder = this.matchPatternCase_ == 1 ? ((DoubleRange) this.matchPattern_).toBuilder() : null;
                            o1 B = pVar.B(DoubleRange.parser(), f0Var);
                            this.matchPattern_ = B;
                            if (builder != null) {
                                builder.g0((DoubleRange) B);
                                this.matchPattern_ = builder.I();
                            }
                            this.matchPatternCase_ = 1;
                        } else if (L != 17) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            this.matchPattern_ = Double.valueOf(pVar.t());
                            this.matchPatternCase_ = 2;
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

    public static DoubleMatcher parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (DoubleMatcher) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static DoubleMatcher parseFrom(p pVar) throws IOException {
        return (DoubleMatcher) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static DoubleMatcher parseFrom(p pVar, f0 f0Var) throws IOException {
        return (DoubleMatcher) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
