package io.grpc.xds.shaded.io.envoyproxy.pgv.validate;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.DescriptorProtos;
import com.google.protobuf.Descriptors;
import com.google.protobuf.Duration;
import com.google.protobuf.GeneratedMessage;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Timestamp;
import com.google.protobuf.a;
import com.google.protobuf.a3;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.h2;
import com.google.protobuf.h3;
import com.google.protobuf.i2;
import com.google.protobuf.l1;
import com.google.protobuf.l2;
import com.google.protobuf.o1;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import com.google.protobuf.u0;
import com.google.protobuf.y0;
import com.google.protobuf.z0;
import com.google.protobuf.z2;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import com.tencent.thumbplayer.api.TPOptionalID;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class Validate {
    private static final GeneratedMessageV3.e A;
    private static final Descriptors.b B;
    private static final GeneratedMessageV3.e C;
    private static final Descriptors.b D;
    private static final GeneratedMessageV3.e E;
    private static final Descriptors.b F;
    private static final GeneratedMessageV3.e G;
    private static final Descriptors.b H;
    private static final GeneratedMessageV3.e I;
    private static final Descriptors.b J;
    private static final GeneratedMessageV3.e K;
    private static final Descriptors.b L;
    private static final GeneratedMessageV3.e M;
    private static final Descriptors.b N;
    private static final GeneratedMessageV3.e O;
    private static final Descriptors.b P;
    private static final GeneratedMessageV3.e Q;
    private static final Descriptors.b R;
    private static final GeneratedMessageV3.e S;
    private static final Descriptors.b T;
    private static final GeneratedMessageV3.e U;
    private static final Descriptors.b V;
    private static final GeneratedMessageV3.e W;
    private static Descriptors.FileDescriptor X;

    /* renamed from: a  reason: collision with root package name */
    public static final GeneratedMessage.l<DescriptorProtos.MessageOptions, Boolean> f50579a;

    /* renamed from: b  reason: collision with root package name */
    public static final GeneratedMessage.l<DescriptorProtos.OneofOptions, Boolean> f50580b;

    /* renamed from: c  reason: collision with root package name */
    public static final GeneratedMessage.l<DescriptorProtos.FieldOptions, FieldRules> f50581c;

    /* renamed from: d  reason: collision with root package name */
    private static final Descriptors.b f50582d;

    /* renamed from: e  reason: collision with root package name */
    private static final GeneratedMessageV3.e f50583e;

    /* renamed from: f  reason: collision with root package name */
    private static final Descriptors.b f50584f;

    /* renamed from: g  reason: collision with root package name */
    private static final GeneratedMessageV3.e f50585g;

    /* renamed from: h  reason: collision with root package name */
    private static final Descriptors.b f50586h;

    /* renamed from: i  reason: collision with root package name */
    private static final GeneratedMessageV3.e f50587i;

    /* renamed from: j  reason: collision with root package name */
    private static final Descriptors.b f50588j;

    /* renamed from: k  reason: collision with root package name */
    private static final GeneratedMessageV3.e f50589k;

    /* renamed from: l  reason: collision with root package name */
    private static final Descriptors.b f50590l;

    /* renamed from: m  reason: collision with root package name */
    private static final GeneratedMessageV3.e f50591m;

    /* renamed from: n  reason: collision with root package name */
    private static final Descriptors.b f50592n;

    /* renamed from: o  reason: collision with root package name */
    private static final GeneratedMessageV3.e f50593o;

    /* renamed from: p  reason: collision with root package name */
    private static final Descriptors.b f50594p;

    /* renamed from: q  reason: collision with root package name */
    private static final GeneratedMessageV3.e f50595q;

    /* renamed from: r  reason: collision with root package name */
    private static final Descriptors.b f50596r;

    /* renamed from: s  reason: collision with root package name */
    private static final GeneratedMessageV3.e f50597s;

    /* renamed from: t  reason: collision with root package name */
    private static final Descriptors.b f50598t;

    /* renamed from: u  reason: collision with root package name */
    private static final GeneratedMessageV3.e f50599u;

    /* renamed from: v  reason: collision with root package name */
    private static final Descriptors.b f50600v;

    /* renamed from: w  reason: collision with root package name */
    private static final GeneratedMessageV3.e f50601w;

    /* renamed from: x  reason: collision with root package name */
    private static final Descriptors.b f50602x;

    /* renamed from: y  reason: collision with root package name */
    private static final GeneratedMessageV3.e f50603y;

    /* renamed from: z  reason: collision with root package name */
    private static final Descriptors.b f50604z;

    /* loaded from: classes5.dex */
    public static final class AnyRules extends GeneratedMessageV3 implements b {
        public static final int IN_FIELD_NUMBER = 2;
        public static final int NOT_IN_FIELD_NUMBER = 3;
        public static final int REQUIRED_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private z0 in_;
        private byte memoizedIsInitialized;
        private z0 notIn_;
        private boolean required_;
        private static final AnyRules DEFAULT_INSTANCE = new AnyRules();
        @Deprecated
        public static final e2<AnyRules> PARSER = new a();

        /* loaded from: classes5.dex */
        class a extends com.google.protobuf.c<AnyRules> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public AnyRules m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new AnyRules(pVar, f0Var, null);
            }
        }

        /* loaded from: classes5.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements b {

            /* renamed from: e  reason: collision with root package name */
            private int f50605e;

            /* renamed from: f  reason: collision with root package name */
            private boolean f50606f;

            /* renamed from: g  reason: collision with root package name */
            private z0 f50607g;

            /* renamed from: h  reason: collision with root package name */
            private z0 f50608h;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void a0() {
                if ((this.f50605e & 2) == 0) {
                    this.f50607g = new y0(this.f50607g);
                    this.f50605e |= 2;
                }
            }

            private void b0() {
                if ((this.f50605e & 4) == 0) {
                    this.f50608h = new y0(this.f50608h);
                    this.f50605e |= 4;
                }
            }

            private void e0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return Validate.S.d(AnyRules.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public AnyRules build() {
                AnyRules I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public AnyRules I() {
                AnyRules anyRules = new AnyRules(this, (a) null);
                int i9 = 1;
                if ((this.f50605e & 1) != 0) {
                    anyRules.required_ = this.f50606f;
                } else {
                    i9 = 0;
                }
                if ((this.f50605e & 2) != 0) {
                    this.f50607g = this.f50607g.V0();
                    this.f50605e &= -3;
                }
                anyRules.in_ = this.f50607g;
                if ((this.f50605e & 4) != 0) {
                    this.f50608h = this.f50608h.V0();
                    this.f50605e &= -5;
                }
                anyRules.notIn_ = this.f50608h;
                anyRules.bitField0_ = i9;
                Q();
                return anyRules;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: d0 */
            public AnyRules getDefaultInstanceForType() {
                return AnyRules.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0021  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: g0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.AnyRules.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2<io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$AnyRules> r1 = io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.AnyRules.PARSER     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$AnyRules r3 = (io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.AnyRules) r3     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    if (r3 == 0) goto Le
                    r2.i0(r3)
                Le:
                    return r2
                Lf:
                    r3 = move-exception
                    goto L1f
                L11:
                    r3 = move-exception
                    com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> Lf
                    io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$AnyRules r4 = (io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.AnyRules) r4     // Catch: java.lang.Throwable -> Lf
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1d
                    throw r3     // Catch: java.lang.Throwable -> L1d
                L1d:
                    r3 = move-exception
                    r0 = r4
                L1f:
                    if (r0 == 0) goto L24
                    r2.i0(r0)
                L24:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.AnyRules.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$AnyRules$b");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return Validate.R;
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: h0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof AnyRules) {
                    return i0((AnyRules) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b i0(AnyRules anyRules) {
                if (anyRules == AnyRules.getDefaultInstance()) {
                    return this;
                }
                if (anyRules.hasRequired()) {
                    l0(anyRules.getRequired());
                }
                if (!anyRules.in_.isEmpty()) {
                    if (this.f50607g.isEmpty()) {
                        this.f50607g = anyRules.in_;
                        this.f50605e &= -3;
                    } else {
                        a0();
                        this.f50607g.addAll(anyRules.in_);
                    }
                    R();
                }
                if (!anyRules.notIn_.isEmpty()) {
                    if (this.f50608h.isEmpty()) {
                        this.f50608h = anyRules.notIn_;
                        this.f50605e &= -5;
                    } else {
                        b0();
                        this.f50608h.addAll(anyRules.notIn_);
                    }
                    R();
                }
                z(((GeneratedMessageV3) anyRules).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: j0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: k0 */
            public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.c(fieldDescriptor, obj);
            }

            public b l0(boolean z10) {
                this.f50605e |= 1;
                this.f50606f = z10;
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: m0 */
            public final b f1(h3 h3Var) {
                return (b) super.f1(h3Var);
            }

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                z0 z0Var = y0.f15344d;
                this.f50607g = z0Var;
                this.f50608h = z0Var;
                e0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                z0 z0Var = y0.f15344d;
                this.f50607g = z0Var;
                this.f50608h = z0Var;
                e0();
            }
        }

        /* synthetic */ AnyRules(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static AnyRules getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return Validate.R;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static AnyRules parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (AnyRules) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static AnyRules parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<AnyRules> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof AnyRules)) {
                return super.equals(obj);
            }
            AnyRules anyRules = (AnyRules) obj;
            if (hasRequired() != anyRules.hasRequired()) {
                return false;
            }
            return (!hasRequired() || getRequired() == anyRules.getRequired()) && m1648getInList().equals(anyRules.m1648getInList()) && m1649getNotInList().equals(anyRules.m1649getNotInList()) && this.unknownFields.equals(anyRules.unknownFields);
        }

        public String getIn(int i9) {
            return this.in_.get(i9);
        }

        public ByteString getInBytes(int i9) {
            return this.in_.j0(i9);
        }

        public int getInCount() {
            return this.in_.size();
        }

        public String getNotIn(int i9) {
            return this.notIn_.get(i9);
        }

        public ByteString getNotInBytes(int i9) {
            return this.notIn_.j0(i9);
        }

        public int getNotInCount() {
            return this.notIn_.size();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<AnyRules> getParserForType() {
            return PARSER;
        }

        public boolean getRequired() {
            return this.required_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int e10 = (this.bitField0_ & 1) != 0 ? CodedOutputStream.e(1, this.required_) + 0 : 0;
            int i10 = 0;
            for (int i11 = 0; i11 < this.in_.size(); i11++) {
                i10 += GeneratedMessageV3.computeStringSizeNoTag(this.in_.c1(i11));
            }
            int size = e10 + i10 + (m1648getInList().size() * 1);
            int i12 = 0;
            for (int i13 = 0; i13 < this.notIn_.size(); i13++) {
                i12 += GeneratedMessageV3.computeStringSizeNoTag(this.notIn_.c1(i13));
            }
            int size2 = size + i12 + (m1649getNotInList().size() * 1) + this.unknownFields.getSerializedSize();
            this.memoizedSize = size2;
            return size2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasRequired() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (hasRequired()) {
                hashCode = (((hashCode * 37) + 1) * 53) + u0.d(getRequired());
            }
            if (getInCount() > 0) {
                hashCode = (((hashCode * 37) + 2) * 53) + m1648getInList().hashCode();
            }
            if (getNotInCount() > 0) {
                hashCode = (((hashCode * 37) + 3) * 53) + m1649getNotInList().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return Validate.S.d(AnyRules.class, b.class);
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
            return new AnyRules();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if ((this.bitField0_ & 1) != 0) {
                codedOutputStream.n0(1, this.required_);
            }
            for (int i9 = 0; i9 < this.in_.size(); i9++) {
                GeneratedMessageV3.writeString(codedOutputStream, 2, this.in_.c1(i9));
            }
            for (int i10 = 0; i10 < this.notIn_.size(); i10++) {
                GeneratedMessageV3.writeString(codedOutputStream, 3, this.notIn_.c1(i10));
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ AnyRules(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(AnyRules anyRules) {
            return DEFAULT_INSTANCE.toBuilder().i0(anyRules);
        }

        public static AnyRules parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        /* renamed from: getInList */
        public i2 m1648getInList() {
            return this.in_;
        }

        /* renamed from: getNotInList */
        public i2 m1649getNotInList() {
            return this.notIn_;
        }

        private AnyRules(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static AnyRules parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (AnyRules) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static AnyRules parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public AnyRules getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).i0(this);
        }

        public static AnyRules parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private AnyRules() {
            this.memoizedIsInitialized = (byte) -1;
            z0 z0Var = y0.f15344d;
            this.in_ = z0Var;
            this.notIn_ = z0Var;
        }

        public static AnyRules parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static AnyRules parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static AnyRules parseFrom(InputStream inputStream) throws IOException {
            return (AnyRules) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private AnyRules(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            this();
            Objects.requireNonNull(f0Var);
            h3.b h10 = h3.h();
            boolean z10 = false;
            boolean z11 = false;
            while (!z10) {
                try {
                    try {
                        try {
                            int L = pVar.L();
                            if (L != 0) {
                                if (L == 8) {
                                    this.bitField0_ |= 1;
                                    this.required_ = pVar.r();
                                } else if (L == 18) {
                                    ByteString s10 = pVar.s();
                                    if (!(z11 & true)) {
                                        this.in_ = new y0();
                                        z11 |= true;
                                    }
                                    this.in_.X(s10);
                                } else if (L != 26) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    ByteString s11 = pVar.s();
                                    if (!(z11 & true)) {
                                        this.notIn_ = new y0();
                                        z11 |= true;
                                    }
                                    this.notIn_.X(s11);
                                }
                            }
                            z10 = true;
                        } catch (InvalidProtocolBufferException e10) {
                            throw e10.setUnfinishedMessage(this);
                        }
                    } catch (IOException e11) {
                        throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                    }
                } finally {
                    if (z11 & true) {
                        this.in_ = this.in_.V0();
                    }
                    if (z11 & true) {
                        this.notIn_ = this.notIn_.V0();
                    }
                    this.unknownFields = h10.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static AnyRules parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (AnyRules) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static AnyRules parseFrom(com.google.protobuf.p pVar) throws IOException {
            return (AnyRules) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static AnyRules parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
            return (AnyRules) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes5.dex */
    public static final class BoolRules extends GeneratedMessageV3 implements c {
        public static final int CONST_FIELD_NUMBER = 1;
        private static final BoolRules DEFAULT_INSTANCE = new BoolRules();
        @Deprecated
        public static final e2<BoolRules> PARSER = new a();
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private boolean const_;
        private byte memoizedIsInitialized;

        /* loaded from: classes5.dex */
        class a extends com.google.protobuf.c<BoolRules> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public BoolRules m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new BoolRules(pVar, f0Var, null);
            }
        }

        /* loaded from: classes5.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements c {

            /* renamed from: e  reason: collision with root package name */
            private int f50609e;

            /* renamed from: f  reason: collision with root package name */
            private boolean f50610f;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return Validate.E.d(BoolRules.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public BoolRules build() {
                BoolRules I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public BoolRules I() {
                BoolRules boolRules = new BoolRules(this, (a) null);
                int i9 = 1;
                if ((this.f50609e & 1) != 0) {
                    boolRules.const_ = this.f50610f;
                } else {
                    i9 = 0;
                }
                boolRules.bitField0_ = i9;
                Q();
                return boolRules;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public BoolRules getDefaultInstanceForType() {
                return BoolRules.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0021  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: d0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.BoolRules.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2<io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$BoolRules> r1 = io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.BoolRules.PARSER     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$BoolRules r3 = (io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.BoolRules) r3     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    if (r3 == 0) goto Le
                    r2.g0(r3)
                Le:
                    return r2
                Lf:
                    r3 = move-exception
                    goto L1f
                L11:
                    r3 = move-exception
                    com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> Lf
                    io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$BoolRules r4 = (io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.BoolRules) r4     // Catch: java.lang.Throwable -> Lf
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1d
                    throw r3     // Catch: java.lang.Throwable -> L1d
                L1d:
                    r3 = move-exception
                    r0 = r4
                L1f:
                    if (r0 == 0) goto L24
                    r2.g0(r0)
                L24:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.BoolRules.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$BoolRules$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof BoolRules) {
                    return g0((BoolRules) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b g0(BoolRules boolRules) {
                if (boolRules == BoolRules.getDefaultInstance()) {
                    return this;
                }
                if (boolRules.hasConst()) {
                    i0(boolRules.getConst());
                }
                z(((GeneratedMessageV3) boolRules).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return Validate.D;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: h0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            public b i0(boolean z10) {
                this.f50609e |= 1;
                this.f50610f = z10;
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: j0 */
            public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.c(fieldDescriptor, obj);
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
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                b0();
            }
        }

        /* synthetic */ BoolRules(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static BoolRules getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return Validate.D;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static BoolRules parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (BoolRules) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static BoolRules parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<BoolRules> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof BoolRules)) {
                return super.equals(obj);
            }
            BoolRules boolRules = (BoolRules) obj;
            if (hasConst() != boolRules.hasConst()) {
                return false;
            }
            return (!hasConst() || getConst() == boolRules.getConst()) && this.unknownFields.equals(boolRules.unknownFields);
        }

        public boolean getConst() {
            return this.const_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<BoolRules> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int e10 = ((this.bitField0_ & 1) != 0 ? 0 + CodedOutputStream.e(1, this.const_) : 0) + this.unknownFields.getSerializedSize();
            this.memoizedSize = e10;
            return e10;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasConst() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (hasConst()) {
                hashCode = (((hashCode * 37) + 1) * 53) + u0.d(getConst());
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return Validate.E.d(BoolRules.class, b.class);
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
            return new BoolRules();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if ((this.bitField0_ & 1) != 0) {
                codedOutputStream.n0(1, this.const_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ BoolRules(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(BoolRules boolRules) {
            return DEFAULT_INSTANCE.toBuilder().g0(boolRules);
        }

        public static BoolRules parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private BoolRules(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static BoolRules parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (BoolRules) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static BoolRules parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public BoolRules getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
        }

        public static BoolRules parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private BoolRules() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static BoolRules parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static BoolRules parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        private BoolRules(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                this.bitField0_ |= 1;
                                this.const_ = pVar.r();
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

        public static BoolRules parseFrom(InputStream inputStream) throws IOException {
            return (BoolRules) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static BoolRules parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (BoolRules) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static BoolRules parseFrom(com.google.protobuf.p pVar) throws IOException {
            return (BoolRules) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static BoolRules parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
            return (BoolRules) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes5.dex */
    public static final class BytesRules extends GeneratedMessageV3 implements d {
        public static final int CONST_FIELD_NUMBER = 1;
        public static final int CONTAINS_FIELD_NUMBER = 7;
        public static final int IN_FIELD_NUMBER = 8;
        public static final int IPV4_FIELD_NUMBER = 11;
        public static final int IPV6_FIELD_NUMBER = 12;
        public static final int IP_FIELD_NUMBER = 10;
        public static final int LEN_FIELD_NUMBER = 13;
        public static final int MAX_LEN_FIELD_NUMBER = 3;
        public static final int MIN_LEN_FIELD_NUMBER = 2;
        public static final int NOT_IN_FIELD_NUMBER = 9;
        public static final int PATTERN_FIELD_NUMBER = 4;
        public static final int PREFIX_FIELD_NUMBER = 5;
        public static final int SUFFIX_FIELD_NUMBER = 6;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private ByteString const_;
        private ByteString contains_;
        private List<ByteString> in_;
        private long len_;
        private long maxLen_;
        private byte memoizedIsInitialized;
        private long minLen_;
        private List<ByteString> notIn_;
        private volatile Object pattern_;
        private ByteString prefix_;
        private ByteString suffix_;
        private int wellKnownCase_;
        private Object wellKnown_;
        private static final BytesRules DEFAULT_INSTANCE = new BytesRules();
        @Deprecated
        public static final e2<BytesRules> PARSER = new a();

        /* loaded from: classes5.dex */
        public enum WellKnownCase implements u0.c {
            IP(10),
            IPV4(11),
            IPV6(12),
            WELLKNOWN_NOT_SET(0);
            
            private final int value;

            WellKnownCase(int i9) {
                this.value = i9;
            }

            public static WellKnownCase forNumber(int i9) {
                if (i9 != 0) {
                    switch (i9) {
                        case 10:
                            return IP;
                        case 11:
                            return IPV4;
                        case 12:
                            return IPV6;
                        default:
                            return null;
                    }
                }
                return WELLKNOWN_NOT_SET;
            }

            @Override // com.google.protobuf.u0.c
            public int getNumber() {
                return this.value;
            }

            @Deprecated
            public static WellKnownCase valueOf(int i9) {
                return forNumber(i9);
            }
        }

        /* loaded from: classes5.dex */
        class a extends com.google.protobuf.c<BytesRules> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public BytesRules m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new BytesRules(pVar, f0Var, null);
            }
        }

        /* loaded from: classes5.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements d {

            /* renamed from: e  reason: collision with root package name */
            private int f50611e;

            /* renamed from: f  reason: collision with root package name */
            private Object f50612f;

            /* renamed from: g  reason: collision with root package name */
            private int f50613g;

            /* renamed from: h  reason: collision with root package name */
            private ByteString f50614h;

            /* renamed from: i  reason: collision with root package name */
            private long f50615i;

            /* renamed from: j  reason: collision with root package name */
            private long f50616j;

            /* renamed from: k  reason: collision with root package name */
            private long f50617k;

            /* renamed from: l  reason: collision with root package name */
            private Object f50618l;

            /* renamed from: m  reason: collision with root package name */
            private ByteString f50619m;

            /* renamed from: n  reason: collision with root package name */
            private ByteString f50620n;

            /* renamed from: o  reason: collision with root package name */
            private ByteString f50621o;

            /* renamed from: p  reason: collision with root package name */
            private List<ByteString> f50622p;

            /* renamed from: q  reason: collision with root package name */
            private List<ByteString> f50623q;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void a0() {
                if ((this.f50613g & 256) == 0) {
                    this.f50622p = new ArrayList(this.f50622p);
                    this.f50613g |= 256;
                }
            }

            private void b0() {
                if ((this.f50613g & 512) == 0) {
                    this.f50623q = new ArrayList(this.f50623q);
                    this.f50613g |= 512;
                }
            }

            private void e0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return Validate.I.d(BytesRules.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public BytesRules build() {
                BytesRules I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public BytesRules I() {
                BytesRules bytesRules = new BytesRules(this, (a) null);
                int i9 = this.f50613g;
                int i10 = (i9 & 1) != 0 ? 1 : 0;
                bytesRules.const_ = this.f50614h;
                if ((i9 & 2) != 0) {
                    bytesRules.len_ = this.f50615i;
                    i10 |= 2;
                }
                if ((i9 & 4) != 0) {
                    bytesRules.minLen_ = this.f50616j;
                    i10 |= 4;
                }
                if ((i9 & 8) != 0) {
                    bytesRules.maxLen_ = this.f50617k;
                    i10 |= 8;
                }
                if ((i9 & 16) != 0) {
                    i10 |= 16;
                }
                bytesRules.pattern_ = this.f50618l;
                if ((i9 & 32) != 0) {
                    i10 |= 32;
                }
                bytesRules.prefix_ = this.f50619m;
                if ((i9 & 64) != 0) {
                    i10 |= 64;
                }
                bytesRules.suffix_ = this.f50620n;
                if ((i9 & 128) != 0) {
                    i10 |= 128;
                }
                bytesRules.contains_ = this.f50621o;
                if ((this.f50613g & 256) != 0) {
                    this.f50622p = Collections.unmodifiableList(this.f50622p);
                    this.f50613g &= -257;
                }
                bytesRules.in_ = this.f50622p;
                if ((this.f50613g & 512) != 0) {
                    this.f50623q = Collections.unmodifiableList(this.f50623q);
                    this.f50613g &= -513;
                }
                bytesRules.notIn_ = this.f50623q;
                if (this.f50611e == 10) {
                    bytesRules.wellKnown_ = this.f50612f;
                }
                if (this.f50611e == 11) {
                    bytesRules.wellKnown_ = this.f50612f;
                }
                if (this.f50611e == 12) {
                    bytesRules.wellKnown_ = this.f50612f;
                }
                bytesRules.bitField0_ = i10;
                bytesRules.wellKnownCase_ = this.f50611e;
                Q();
                return bytesRules;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: d0 */
            public BytesRules getDefaultInstanceForType() {
                return BytesRules.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0021  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: g0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.BytesRules.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2<io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$BytesRules> r1 = io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.BytesRules.PARSER     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$BytesRules r3 = (io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.BytesRules) r3     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    if (r3 == 0) goto Le
                    r2.i0(r3)
                Le:
                    return r2
                Lf:
                    r3 = move-exception
                    goto L1f
                L11:
                    r3 = move-exception
                    com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> Lf
                    io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$BytesRules r4 = (io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.BytesRules) r4     // Catch: java.lang.Throwable -> Lf
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1d
                    throw r3     // Catch: java.lang.Throwable -> L1d
                L1d:
                    r3 = move-exception
                    r0 = r4
                L1f:
                    if (r0 == 0) goto L24
                    r2.i0(r0)
                L24:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.BytesRules.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$BytesRules$b");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return Validate.H;
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: h0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof BytesRules) {
                    return i0((BytesRules) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b i0(BytesRules bytesRules) {
                if (bytesRules == BytesRules.getDefaultInstance()) {
                    return this;
                }
                if (bytesRules.hasConst()) {
                    k0(bytesRules.getConst());
                }
                if (bytesRules.hasLen()) {
                    r0(bytesRules.getLen());
                }
                if (bytesRules.hasMinLen()) {
                    t0(bytesRules.getMinLen());
                }
                if (bytesRules.hasMaxLen()) {
                    s0(bytesRules.getMaxLen());
                }
                if (bytesRules.hasPattern()) {
                    this.f50613g |= 16;
                    this.f50618l = bytesRules.pattern_;
                    R();
                }
                if (bytesRules.hasPrefix()) {
                    u0(bytesRules.getPrefix());
                }
                if (bytesRules.hasSuffix()) {
                    v0(bytesRules.getSuffix());
                }
                if (bytesRules.hasContains()) {
                    l0(bytesRules.getContains());
                }
                if (!bytesRules.in_.isEmpty()) {
                    if (this.f50622p.isEmpty()) {
                        this.f50622p = bytesRules.in_;
                        this.f50613g &= -257;
                    } else {
                        a0();
                        this.f50622p.addAll(bytesRules.in_);
                    }
                    R();
                }
                if (!bytesRules.notIn_.isEmpty()) {
                    if (this.f50623q.isEmpty()) {
                        this.f50623q = bytesRules.notIn_;
                        this.f50613g &= -513;
                    } else {
                        b0();
                        this.f50623q.addAll(bytesRules.notIn_);
                    }
                    R();
                }
                int i9 = a.f50816c[bytesRules.getWellKnownCase().ordinal()];
                if (i9 == 1) {
                    n0(bytesRules.getIp());
                } else if (i9 == 2) {
                    o0(bytesRules.getIpv4());
                } else if (i9 == 3) {
                    q0(bytesRules.getIpv6());
                }
                z(((GeneratedMessageV3) bytesRules).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: j0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            public b k0(ByteString byteString) {
                Objects.requireNonNull(byteString);
                this.f50613g |= 1;
                this.f50614h = byteString;
                R();
                return this;
            }

            public b l0(ByteString byteString) {
                Objects.requireNonNull(byteString);
                this.f50613g |= 128;
                this.f50621o = byteString;
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: m0 */
            public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.c(fieldDescriptor, obj);
            }

            public b n0(boolean z10) {
                this.f50611e = 10;
                this.f50612f = Boolean.valueOf(z10);
                R();
                return this;
            }

            public b o0(boolean z10) {
                this.f50611e = 11;
                this.f50612f = Boolean.valueOf(z10);
                R();
                return this;
            }

            public b q0(boolean z10) {
                this.f50611e = 12;
                this.f50612f = Boolean.valueOf(z10);
                R();
                return this;
            }

            public b r0(long j10) {
                this.f50613g |= 2;
                this.f50615i = j10;
                R();
                return this;
            }

            public b s0(long j10) {
                this.f50613g |= 8;
                this.f50617k = j10;
                R();
                return this;
            }

            public b t0(long j10) {
                this.f50613g |= 4;
                this.f50616j = j10;
                R();
                return this;
            }

            public b u0(ByteString byteString) {
                Objects.requireNonNull(byteString);
                this.f50613g |= 32;
                this.f50619m = byteString;
                R();
                return this;
            }

            public b v0(ByteString byteString) {
                Objects.requireNonNull(byteString);
                this.f50613g |= 64;
                this.f50620n = byteString;
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: x0 */
            public final b f1(h3 h3Var) {
                return (b) super.f1(h3Var);
            }

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                this.f50611e = 0;
                ByteString byteString = ByteString.EMPTY;
                this.f50614h = byteString;
                this.f50618l = "";
                this.f50619m = byteString;
                this.f50620n = byteString;
                this.f50621o = byteString;
                this.f50622p = Collections.emptyList();
                this.f50623q = Collections.emptyList();
                e0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f50611e = 0;
                ByteString byteString = ByteString.EMPTY;
                this.f50614h = byteString;
                this.f50618l = "";
                this.f50619m = byteString;
                this.f50620n = byteString;
                this.f50621o = byteString;
                this.f50622p = Collections.emptyList();
                this.f50623q = Collections.emptyList();
                e0();
            }
        }

        /* synthetic */ BytesRules(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static BytesRules getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return Validate.H;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static BytesRules parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (BytesRules) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static BytesRules parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<BytesRules> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof BytesRules)) {
                return super.equals(obj);
            }
            BytesRules bytesRules = (BytesRules) obj;
            if (hasConst() != bytesRules.hasConst()) {
                return false;
            }
            if ((!hasConst() || getConst().equals(bytesRules.getConst())) && hasLen() == bytesRules.hasLen()) {
                if ((!hasLen() || getLen() == bytesRules.getLen()) && hasMinLen() == bytesRules.hasMinLen()) {
                    if ((!hasMinLen() || getMinLen() == bytesRules.getMinLen()) && hasMaxLen() == bytesRules.hasMaxLen()) {
                        if ((!hasMaxLen() || getMaxLen() == bytesRules.getMaxLen()) && hasPattern() == bytesRules.hasPattern()) {
                            if ((!hasPattern() || getPattern().equals(bytesRules.getPattern())) && hasPrefix() == bytesRules.hasPrefix()) {
                                if ((!hasPrefix() || getPrefix().equals(bytesRules.getPrefix())) && hasSuffix() == bytesRules.hasSuffix()) {
                                    if ((!hasSuffix() || getSuffix().equals(bytesRules.getSuffix())) && hasContains() == bytesRules.hasContains()) {
                                        if ((!hasContains() || getContains().equals(bytesRules.getContains())) && getInList().equals(bytesRules.getInList()) && getNotInList().equals(bytesRules.getNotInList()) && getWellKnownCase().equals(bytesRules.getWellKnownCase())) {
                                            switch (this.wellKnownCase_) {
                                                case 10:
                                                    if (getIp() != bytesRules.getIp()) {
                                                        return false;
                                                    }
                                                    break;
                                                case 11:
                                                    if (getIpv4() != bytesRules.getIpv4()) {
                                                        return false;
                                                    }
                                                    break;
                                                case 12:
                                                    if (getIpv6() != bytesRules.getIpv6()) {
                                                        return false;
                                                    }
                                                    break;
                                            }
                                            return this.unknownFields.equals(bytesRules.unknownFields);
                                        }
                                        return false;
                                    }
                                    return false;
                                }
                                return false;
                            }
                            return false;
                        }
                        return false;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }

        public ByteString getConst() {
            return this.const_;
        }

        public ByteString getContains() {
            return this.contains_;
        }

        public ByteString getIn(int i9) {
            return this.in_.get(i9);
        }

        public int getInCount() {
            return this.in_.size();
        }

        public List<ByteString> getInList() {
            return this.in_;
        }

        public boolean getIp() {
            if (this.wellKnownCase_ == 10) {
                return ((Boolean) this.wellKnown_).booleanValue();
            }
            return false;
        }

        public boolean getIpv4() {
            if (this.wellKnownCase_ == 11) {
                return ((Boolean) this.wellKnown_).booleanValue();
            }
            return false;
        }

        public boolean getIpv6() {
            if (this.wellKnownCase_ == 12) {
                return ((Boolean) this.wellKnown_).booleanValue();
            }
            return false;
        }

        public long getLen() {
            return this.len_;
        }

        public long getMaxLen() {
            return this.maxLen_;
        }

        public long getMinLen() {
            return this.minLen_;
        }

        public ByteString getNotIn(int i9) {
            return this.notIn_.get(i9);
        }

        public int getNotInCount() {
            return this.notIn_.size();
        }

        public List<ByteString> getNotInList() {
            return this.notIn_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<BytesRules> getParserForType() {
            return PARSER;
        }

        public String getPattern() {
            Object obj = this.pattern_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.pattern_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getPatternBytes() {
            Object obj = this.pattern_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.pattern_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        public ByteString getPrefix() {
            return this.prefix_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int h10 = (this.bitField0_ & 1) != 0 ? CodedOutputStream.h(1, this.const_) + 0 : 0;
            if ((this.bitField0_ & 4) != 0) {
                h10 += CodedOutputStream.a0(2, this.minLen_);
            }
            if ((this.bitField0_ & 8) != 0) {
                h10 += CodedOutputStream.a0(3, this.maxLen_);
            }
            if ((this.bitField0_ & 16) != 0) {
                h10 += GeneratedMessageV3.computeStringSize(4, this.pattern_);
            }
            if ((this.bitField0_ & 32) != 0) {
                h10 += CodedOutputStream.h(5, this.prefix_);
            }
            if ((this.bitField0_ & 64) != 0) {
                h10 += CodedOutputStream.h(6, this.suffix_);
            }
            if ((this.bitField0_ & 128) != 0) {
                h10 += CodedOutputStream.h(7, this.contains_);
            }
            int i10 = 0;
            for (int i11 = 0; i11 < this.in_.size(); i11++) {
                i10 += CodedOutputStream.i(this.in_.get(i11));
            }
            int size = h10 + i10 + (getInList().size() * 1);
            int i12 = 0;
            for (int i13 = 0; i13 < this.notIn_.size(); i13++) {
                i12 += CodedOutputStream.i(this.notIn_.get(i13));
            }
            int size2 = size + i12 + (getNotInList().size() * 1);
            if (this.wellKnownCase_ == 10) {
                size2 += CodedOutputStream.e(10, ((Boolean) this.wellKnown_).booleanValue());
            }
            if (this.wellKnownCase_ == 11) {
                size2 += CodedOutputStream.e(11, ((Boolean) this.wellKnown_).booleanValue());
            }
            if (this.wellKnownCase_ == 12) {
                size2 += CodedOutputStream.e(12, ((Boolean) this.wellKnown_).booleanValue());
            }
            if ((this.bitField0_ & 2) != 0) {
                size2 += CodedOutputStream.a0(13, this.len_);
            }
            int serializedSize = size2 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        public ByteString getSuffix() {
            return this.suffix_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public WellKnownCase getWellKnownCase() {
            return WellKnownCase.forNumber(this.wellKnownCase_);
        }

        public boolean hasConst() {
            return (this.bitField0_ & 1) != 0;
        }

        public boolean hasContains() {
            return (this.bitField0_ & 128) != 0;
        }

        public boolean hasIp() {
            return this.wellKnownCase_ == 10;
        }

        public boolean hasIpv4() {
            return this.wellKnownCase_ == 11;
        }

        public boolean hasIpv6() {
            return this.wellKnownCase_ == 12;
        }

        public boolean hasLen() {
            return (this.bitField0_ & 2) != 0;
        }

        public boolean hasMaxLen() {
            return (this.bitField0_ & 8) != 0;
        }

        public boolean hasMinLen() {
            return (this.bitField0_ & 4) != 0;
        }

        public boolean hasPattern() {
            return (this.bitField0_ & 16) != 0;
        }

        public boolean hasPrefix() {
            return (this.bitField0_ & 32) != 0;
        }

        public boolean hasSuffix() {
            return (this.bitField0_ & 64) != 0;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9;
            int d10;
            int i10 = this.memoizedHashCode;
            if (i10 != 0) {
                return i10;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (hasConst()) {
                hashCode = (((hashCode * 37) + 1) * 53) + getConst().hashCode();
            }
            if (hasLen()) {
                hashCode = (((hashCode * 37) + 13) * 53) + u0.i(getLen());
            }
            if (hasMinLen()) {
                hashCode = (((hashCode * 37) + 2) * 53) + u0.i(getMinLen());
            }
            if (hasMaxLen()) {
                hashCode = (((hashCode * 37) + 3) * 53) + u0.i(getMaxLen());
            }
            if (hasPattern()) {
                hashCode = (((hashCode * 37) + 4) * 53) + getPattern().hashCode();
            }
            if (hasPrefix()) {
                hashCode = (((hashCode * 37) + 5) * 53) + getPrefix().hashCode();
            }
            if (hasSuffix()) {
                hashCode = (((hashCode * 37) + 6) * 53) + getSuffix().hashCode();
            }
            if (hasContains()) {
                hashCode = (((hashCode * 37) + 7) * 53) + getContains().hashCode();
            }
            if (getInCount() > 0) {
                hashCode = (((hashCode * 37) + 8) * 53) + getInList().hashCode();
            }
            if (getNotInCount() > 0) {
                hashCode = (((hashCode * 37) + 9) * 53) + getNotInList().hashCode();
            }
            switch (this.wellKnownCase_) {
                case 10:
                    i9 = ((hashCode * 37) + 10) * 53;
                    d10 = u0.d(getIp());
                    hashCode = i9 + d10;
                    int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
                    this.memoizedHashCode = hashCode2;
                    return hashCode2;
                case 11:
                    i9 = ((hashCode * 37) + 11) * 53;
                    d10 = u0.d(getIpv4());
                    hashCode = i9 + d10;
                    int hashCode22 = (hashCode * 29) + this.unknownFields.hashCode();
                    this.memoizedHashCode = hashCode22;
                    return hashCode22;
                case 12:
                    i9 = ((hashCode * 37) + 12) * 53;
                    d10 = u0.d(getIpv6());
                    hashCode = i9 + d10;
                    int hashCode222 = (hashCode * 29) + this.unknownFields.hashCode();
                    this.memoizedHashCode = hashCode222;
                    return hashCode222;
                default:
                    int hashCode2222 = (hashCode * 29) + this.unknownFields.hashCode();
                    this.memoizedHashCode = hashCode2222;
                    return hashCode2222;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return Validate.I.d(BytesRules.class, b.class);
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
            return new BytesRules();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if ((this.bitField0_ & 1) != 0) {
                codedOutputStream.r0(1, this.const_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.e1(2, this.minLen_);
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.e1(3, this.maxLen_);
            }
            if ((this.bitField0_ & 16) != 0) {
                GeneratedMessageV3.writeString(codedOutputStream, 4, this.pattern_);
            }
            if ((this.bitField0_ & 32) != 0) {
                codedOutputStream.r0(5, this.prefix_);
            }
            if ((this.bitField0_ & 64) != 0) {
                codedOutputStream.r0(6, this.suffix_);
            }
            if ((this.bitField0_ & 128) != 0) {
                codedOutputStream.r0(7, this.contains_);
            }
            for (int i9 = 0; i9 < this.in_.size(); i9++) {
                codedOutputStream.r0(8, this.in_.get(i9));
            }
            for (int i10 = 0; i10 < this.notIn_.size(); i10++) {
                codedOutputStream.r0(9, this.notIn_.get(i10));
            }
            if (this.wellKnownCase_ == 10) {
                codedOutputStream.n0(10, ((Boolean) this.wellKnown_).booleanValue());
            }
            if (this.wellKnownCase_ == 11) {
                codedOutputStream.n0(11, ((Boolean) this.wellKnown_).booleanValue());
            }
            if (this.wellKnownCase_ == 12) {
                codedOutputStream.n0(12, ((Boolean) this.wellKnown_).booleanValue());
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.e1(13, this.len_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ BytesRules(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(BytesRules bytesRules) {
            return DEFAULT_INSTANCE.toBuilder().i0(bytesRules);
        }

        public static BytesRules parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private BytesRules(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.wellKnownCase_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static BytesRules parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (BytesRules) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static BytesRules parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public BytesRules getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).i0(this);
        }

        public static BytesRules parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        public static BytesRules parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        private BytesRules() {
            this.wellKnownCase_ = 0;
            this.memoizedIsInitialized = (byte) -1;
            ByteString byteString = ByteString.EMPTY;
            this.const_ = byteString;
            this.pattern_ = "";
            this.prefix_ = byteString;
            this.suffix_ = byteString;
            this.contains_ = byteString;
            this.in_ = Collections.emptyList();
            this.notIn_ = Collections.emptyList();
        }

        public static BytesRules parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static BytesRules parseFrom(InputStream inputStream) throws IOException {
            return (BytesRules) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static BytesRules parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (BytesRules) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static BytesRules parseFrom(com.google.protobuf.p pVar) throws IOException {
            return (BytesRules) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static BytesRules parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
            return (BytesRules) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }

        private BytesRules(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            this();
            Objects.requireNonNull(f0Var);
            h3.b h10 = h3.h();
            boolean z10 = false;
            boolean z11 = false;
            while (!z10) {
                try {
                    try {
                        int L = pVar.L();
                        switch (L) {
                            case 0:
                                break;
                            case 10:
                                this.bitField0_ |= 1;
                                this.const_ = pVar.s();
                                continue;
                            case 16:
                                this.bitField0_ |= 4;
                                this.minLen_ = pVar.N();
                                continue;
                            case 24:
                                this.bitField0_ |= 8;
                                this.maxLen_ = pVar.N();
                                continue;
                            case 34:
                                ByteString s10 = pVar.s();
                                this.bitField0_ |= 16;
                                this.pattern_ = s10;
                                continue;
                            case 42:
                                this.bitField0_ |= 32;
                                this.prefix_ = pVar.s();
                                continue;
                            case 50:
                                this.bitField0_ |= 64;
                                this.suffix_ = pVar.s();
                                continue;
                            case 58:
                                this.bitField0_ |= 128;
                                this.contains_ = pVar.s();
                                continue;
                            case 66:
                                if (!(z11 & true)) {
                                    this.in_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.in_.add(pVar.s());
                                continue;
                            case 74:
                                if (!(z11 & true)) {
                                    this.notIn_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.notIn_.add(pVar.s());
                                continue;
                            case 80:
                                this.wellKnown_ = Boolean.valueOf(pVar.r());
                                this.wellKnownCase_ = 10;
                                continue;
                            case 88:
                                this.wellKnown_ = Boolean.valueOf(pVar.r());
                                this.wellKnownCase_ = 11;
                                continue;
                            case 96:
                                this.wellKnown_ = Boolean.valueOf(pVar.r());
                                this.wellKnownCase_ = 12;
                                continue;
                            case 104:
                                this.bitField0_ |= 2;
                                this.len_ = pVar.N();
                                continue;
                            default:
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    break;
                                } else {
                                    continue;
                                }
                        }
                        z10 = true;
                    } catch (InvalidProtocolBufferException e10) {
                        throw e10.setUnfinishedMessage(this);
                    } catch (IOException e11) {
                        throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                    }
                } finally {
                    if (z11 & true) {
                        this.in_ = Collections.unmodifiableList(this.in_);
                    }
                    if (z11 & true) {
                        this.notIn_ = Collections.unmodifiableList(this.notIn_);
                    }
                    this.unknownFields = h10.build();
                    makeExtensionsImmutable();
                }
            }
        }
    }

    /* loaded from: classes5.dex */
    public static final class DoubleRules extends GeneratedMessageV3 implements e {
        public static final int CONST_FIELD_NUMBER = 1;
        public static final int GTE_FIELD_NUMBER = 5;
        public static final int GT_FIELD_NUMBER = 4;
        public static final int IN_FIELD_NUMBER = 6;
        public static final int LTE_FIELD_NUMBER = 3;
        public static final int LT_FIELD_NUMBER = 2;
        public static final int NOT_IN_FIELD_NUMBER = 7;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private double const_;
        private double gt_;
        private double gte_;
        private u0.b in_;
        private double lt_;
        private double lte_;
        private byte memoizedIsInitialized;
        private u0.b notIn_;
        private static final DoubleRules DEFAULT_INSTANCE = new DoubleRules();
        @Deprecated
        public static final e2<DoubleRules> PARSER = new a();

        /* loaded from: classes5.dex */
        class a extends com.google.protobuf.c<DoubleRules> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public DoubleRules m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new DoubleRules(pVar, f0Var, null);
            }
        }

        /* loaded from: classes5.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements e {

            /* renamed from: e  reason: collision with root package name */
            private int f50624e;

            /* renamed from: f  reason: collision with root package name */
            private double f50625f;

            /* renamed from: g  reason: collision with root package name */
            private double f50626g;

            /* renamed from: h  reason: collision with root package name */
            private double f50627h;

            /* renamed from: i  reason: collision with root package name */
            private double f50628i;

            /* renamed from: j  reason: collision with root package name */
            private double f50629j;

            /* renamed from: k  reason: collision with root package name */
            private u0.b f50630k;

            /* renamed from: l  reason: collision with root package name */
            private u0.b f50631l;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void a0() {
                if ((this.f50624e & 32) == 0) {
                    this.f50630k = GeneratedMessageV3.mutableCopy(this.f50630k);
                    this.f50624e |= 32;
                }
            }

            private void b0() {
                if ((this.f50624e & 64) == 0) {
                    this.f50631l = GeneratedMessageV3.mutableCopy(this.f50631l);
                    this.f50624e |= 64;
                }
            }

            private void e0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return Validate.f50587i.d(DoubleRules.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public DoubleRules build() {
                DoubleRules I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public DoubleRules I() {
                int i9;
                DoubleRules doubleRules = new DoubleRules(this, (a) null);
                int i10 = this.f50624e;
                if ((i10 & 1) != 0) {
                    doubleRules.const_ = this.f50625f;
                    i9 = 1;
                } else {
                    i9 = 0;
                }
                if ((i10 & 2) != 0) {
                    doubleRules.lt_ = this.f50626g;
                    i9 |= 2;
                }
                if ((i10 & 4) != 0) {
                    doubleRules.lte_ = this.f50627h;
                    i9 |= 4;
                }
                if ((i10 & 8) != 0) {
                    doubleRules.gt_ = this.f50628i;
                    i9 |= 8;
                }
                if ((i10 & 16) != 0) {
                    doubleRules.gte_ = this.f50629j;
                    i9 |= 16;
                }
                if ((this.f50624e & 32) != 0) {
                    this.f50630k.C();
                    this.f50624e &= -33;
                }
                doubleRules.in_ = this.f50630k;
                if ((this.f50624e & 64) != 0) {
                    this.f50631l.C();
                    this.f50624e &= -65;
                }
                doubleRules.notIn_ = this.f50631l;
                doubleRules.bitField0_ = i9;
                Q();
                return doubleRules;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: d0 */
            public DoubleRules getDefaultInstanceForType() {
                return DoubleRules.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0021  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: g0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.DoubleRules.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2<io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$DoubleRules> r1 = io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.DoubleRules.PARSER     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$DoubleRules r3 = (io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.DoubleRules) r3     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    if (r3 == 0) goto Le
                    r2.i0(r3)
                Le:
                    return r2
                Lf:
                    r3 = move-exception
                    goto L1f
                L11:
                    r3 = move-exception
                    com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> Lf
                    io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$DoubleRules r4 = (io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.DoubleRules) r4     // Catch: java.lang.Throwable -> Lf
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1d
                    throw r3     // Catch: java.lang.Throwable -> L1d
                L1d:
                    r3 = move-exception
                    r0 = r4
                L1f:
                    if (r0 == 0) goto L24
                    r2.i0(r0)
                L24:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.DoubleRules.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$DoubleRules$b");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return Validate.f50586h;
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: h0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof DoubleRules) {
                    return i0((DoubleRules) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b i0(DoubleRules doubleRules) {
                if (doubleRules == DoubleRules.getDefaultInstance()) {
                    return this;
                }
                if (doubleRules.hasConst()) {
                    k0(doubleRules.getConst());
                }
                if (doubleRules.hasLt()) {
                    o0(doubleRules.getLt());
                }
                if (doubleRules.hasLte()) {
                    q0(doubleRules.getLte());
                }
                if (doubleRules.hasGt()) {
                    m0(doubleRules.getGt());
                }
                if (doubleRules.hasGte()) {
                    n0(doubleRules.getGte());
                }
                if (!doubleRules.in_.isEmpty()) {
                    if (this.f50630k.isEmpty()) {
                        this.f50630k = doubleRules.in_;
                        this.f50624e &= -33;
                    } else {
                        a0();
                        this.f50630k.addAll(doubleRules.in_);
                    }
                    R();
                }
                if (!doubleRules.notIn_.isEmpty()) {
                    if (this.f50631l.isEmpty()) {
                        this.f50631l = doubleRules.notIn_;
                        this.f50624e &= -65;
                    } else {
                        b0();
                        this.f50631l.addAll(doubleRules.notIn_);
                    }
                    R();
                }
                z(((GeneratedMessageV3) doubleRules).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: j0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            public b k0(double d10) {
                this.f50624e |= 1;
                this.f50625f = d10;
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: l0 */
            public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.c(fieldDescriptor, obj);
            }

            public b m0(double d10) {
                this.f50624e |= 8;
                this.f50628i = d10;
                R();
                return this;
            }

            public b n0(double d10) {
                this.f50624e |= 16;
                this.f50629j = d10;
                R();
                return this;
            }

            public b o0(double d10) {
                this.f50624e |= 2;
                this.f50626g = d10;
                R();
                return this;
            }

            public b q0(double d10) {
                this.f50624e |= 4;
                this.f50627h = d10;
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: r0 */
            public final b f1(h3 h3Var) {
                return (b) super.f1(h3Var);
            }

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                this.f50630k = DoubleRules.access$5300();
                this.f50631l = DoubleRules.access$5600();
                e0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f50630k = DoubleRules.access$5300();
                this.f50631l = DoubleRules.access$5600();
                e0();
            }
        }

        /* synthetic */ DoubleRules(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        static /* synthetic */ u0.b access$5300() {
            return GeneratedMessageV3.emptyDoubleList();
        }

        static /* synthetic */ u0.b access$5600() {
            return GeneratedMessageV3.emptyDoubleList();
        }

        public static DoubleRules getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return Validate.f50586h;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static DoubleRules parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (DoubleRules) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static DoubleRules parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<DoubleRules> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof DoubleRules)) {
                return super.equals(obj);
            }
            DoubleRules doubleRules = (DoubleRules) obj;
            if (hasConst() != doubleRules.hasConst()) {
                return false;
            }
            if ((!hasConst() || Double.doubleToLongBits(getConst()) == Double.doubleToLongBits(doubleRules.getConst())) && hasLt() == doubleRules.hasLt()) {
                if ((!hasLt() || Double.doubleToLongBits(getLt()) == Double.doubleToLongBits(doubleRules.getLt())) && hasLte() == doubleRules.hasLte()) {
                    if ((!hasLte() || Double.doubleToLongBits(getLte()) == Double.doubleToLongBits(doubleRules.getLte())) && hasGt() == doubleRules.hasGt()) {
                        if ((!hasGt() || Double.doubleToLongBits(getGt()) == Double.doubleToLongBits(doubleRules.getGt())) && hasGte() == doubleRules.hasGte()) {
                            return (!hasGte() || Double.doubleToLongBits(getGte()) == Double.doubleToLongBits(doubleRules.getGte())) && getInList().equals(doubleRules.getInList()) && getNotInList().equals(doubleRules.getNotInList()) && this.unknownFields.equals(doubleRules.unknownFields);
                        }
                        return false;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }

        public double getConst() {
            return this.const_;
        }

        public double getGt() {
            return this.gt_;
        }

        public double getGte() {
            return this.gte_;
        }

        public double getIn(int i9) {
            return this.in_.getDouble(i9);
        }

        public int getInCount() {
            return this.in_.size();
        }

        public List<Double> getInList() {
            return this.in_;
        }

        public double getLt() {
            return this.lt_;
        }

        public double getLte() {
            return this.lte_;
        }

        public double getNotIn(int i9) {
            return this.notIn_.getDouble(i9);
        }

        public int getNotInCount() {
            return this.notIn_.size();
        }

        public List<Double> getNotInList() {
            return this.notIn_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<DoubleRules> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int j10 = (this.bitField0_ & 1) != 0 ? 0 + CodedOutputStream.j(1, this.const_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                j10 += CodedOutputStream.j(2, this.lt_);
            }
            if ((this.bitField0_ & 4) != 0) {
                j10 += CodedOutputStream.j(3, this.lte_);
            }
            if ((this.bitField0_ & 8) != 0) {
                j10 += CodedOutputStream.j(4, this.gt_);
            }
            if ((this.bitField0_ & 16) != 0) {
                j10 += CodedOutputStream.j(5, this.gte_);
            }
            int size = j10 + (getInList().size() * 8) + (getInList().size() * 1) + (getNotInList().size() * 8) + (getNotInList().size() * 1) + this.unknownFields.getSerializedSize();
            this.memoizedSize = size;
            return size;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasConst() {
            return (this.bitField0_ & 1) != 0;
        }

        public boolean hasGt() {
            return (this.bitField0_ & 8) != 0;
        }

        public boolean hasGte() {
            return (this.bitField0_ & 16) != 0;
        }

        public boolean hasLt() {
            return (this.bitField0_ & 2) != 0;
        }

        public boolean hasLte() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (hasConst()) {
                hashCode = (((hashCode * 37) + 1) * 53) + u0.i(Double.doubleToLongBits(getConst()));
            }
            if (hasLt()) {
                hashCode = (((hashCode * 37) + 2) * 53) + u0.i(Double.doubleToLongBits(getLt()));
            }
            if (hasLte()) {
                hashCode = (((hashCode * 37) + 3) * 53) + u0.i(Double.doubleToLongBits(getLte()));
            }
            if (hasGt()) {
                hashCode = (((hashCode * 37) + 4) * 53) + u0.i(Double.doubleToLongBits(getGt()));
            }
            if (hasGte()) {
                hashCode = (((hashCode * 37) + 5) * 53) + u0.i(Double.doubleToLongBits(getGte()));
            }
            if (getInCount() > 0) {
                hashCode = (((hashCode * 37) + 6) * 53) + getInList().hashCode();
            }
            if (getNotInCount() > 0) {
                hashCode = (((hashCode * 37) + 7) * 53) + getNotInList().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return Validate.f50587i.d(DoubleRules.class, b.class);
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
            return new DoubleRules();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if ((this.bitField0_ & 1) != 0) {
                codedOutputStream.t0(1, this.const_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.t0(2, this.lt_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.t0(3, this.lte_);
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.t0(4, this.gt_);
            }
            if ((this.bitField0_ & 16) != 0) {
                codedOutputStream.t0(5, this.gte_);
            }
            for (int i9 = 0; i9 < this.in_.size(); i9++) {
                codedOutputStream.t0(6, this.in_.getDouble(i9));
            }
            for (int i10 = 0; i10 < this.notIn_.size(); i10++) {
                codedOutputStream.t0(7, this.notIn_.getDouble(i10));
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ DoubleRules(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(DoubleRules doubleRules) {
            return DEFAULT_INSTANCE.toBuilder().i0(doubleRules);
        }

        public static DoubleRules parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private DoubleRules(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static DoubleRules parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (DoubleRules) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static DoubleRules parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public DoubleRules getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).i0(this);
        }

        public static DoubleRules parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private DoubleRules() {
            this.memoizedIsInitialized = (byte) -1;
            this.in_ = GeneratedMessageV3.emptyDoubleList();
            this.notIn_ = GeneratedMessageV3.emptyDoubleList();
        }

        public static DoubleRules parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static DoubleRules parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static DoubleRules parseFrom(InputStream inputStream) throws IOException {
            return (DoubleRules) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private DoubleRules(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            this();
            Objects.requireNonNull(f0Var);
            h3.b h10 = h3.h();
            boolean z10 = false;
            boolean z11 = false;
            while (!z10) {
                try {
                    try {
                        try {
                            int L = pVar.L();
                            if (L != 0) {
                                if (L == 9) {
                                    this.bitField0_ |= 1;
                                    this.const_ = pVar.t();
                                } else if (L == 17) {
                                    this.bitField0_ |= 2;
                                    this.lt_ = pVar.t();
                                } else if (L == 25) {
                                    this.bitField0_ |= 4;
                                    this.lte_ = pVar.t();
                                } else if (L == 33) {
                                    this.bitField0_ |= 8;
                                    this.gt_ = pVar.t();
                                } else if (L == 41) {
                                    this.bitField0_ |= 16;
                                    this.gte_ = pVar.t();
                                } else if (L == 49) {
                                    if (!(z11 & true)) {
                                        this.in_ = GeneratedMessageV3.newDoubleList();
                                        z11 |= true;
                                    }
                                    this.in_.N0(pVar.t());
                                } else if (L == 50) {
                                    int q10 = pVar.q(pVar.D());
                                    if (!(z11 & true) && pVar.e() > 0) {
                                        this.in_ = GeneratedMessageV3.newDoubleList();
                                        z11 |= true;
                                    }
                                    while (pVar.e() > 0) {
                                        this.in_.N0(pVar.t());
                                    }
                                    pVar.p(q10);
                                } else if (L == 57) {
                                    if (!(z11 & true)) {
                                        this.notIn_ = GeneratedMessageV3.newDoubleList();
                                        z11 |= true;
                                    }
                                    this.notIn_.N0(pVar.t());
                                } else if (L != 58) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    int q11 = pVar.q(pVar.D());
                                    if (!(z11 & true) && pVar.e() > 0) {
                                        this.notIn_ = GeneratedMessageV3.newDoubleList();
                                        z11 |= true;
                                    }
                                    while (pVar.e() > 0) {
                                        this.notIn_.N0(pVar.t());
                                    }
                                    pVar.p(q11);
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
                    if (z11 & true) {
                        this.in_.C();
                    }
                    if (z11 & true) {
                        this.notIn_.C();
                    }
                    this.unknownFields = h10.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static DoubleRules parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (DoubleRules) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static DoubleRules parseFrom(com.google.protobuf.p pVar) throws IOException {
            return (DoubleRules) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static DoubleRules parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
            return (DoubleRules) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes5.dex */
    public static final class DurationRules extends GeneratedMessageV3 implements f {
        public static final int CONST_FIELD_NUMBER = 2;
        public static final int GTE_FIELD_NUMBER = 6;
        public static final int GT_FIELD_NUMBER = 5;
        public static final int IN_FIELD_NUMBER = 7;
        public static final int LTE_FIELD_NUMBER = 4;
        public static final int LT_FIELD_NUMBER = 3;
        public static final int NOT_IN_FIELD_NUMBER = 8;
        public static final int REQUIRED_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private Duration const_;
        private Duration gt_;
        private Duration gte_;
        private List<Duration> in_;
        private Duration lt_;
        private Duration lte_;
        private byte memoizedIsInitialized;
        private List<Duration> notIn_;
        private boolean required_;
        private static final DurationRules DEFAULT_INSTANCE = new DurationRules();
        @Deprecated
        public static final e2<DurationRules> PARSER = new a();

        /* loaded from: classes5.dex */
        class a extends com.google.protobuf.c<DurationRules> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public DurationRules m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new DurationRules(pVar, f0Var, null);
            }
        }

        /* loaded from: classes5.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements f {

            /* renamed from: e  reason: collision with root package name */
            private int f50632e;

            /* renamed from: f  reason: collision with root package name */
            private boolean f50633f;

            /* renamed from: g  reason: collision with root package name */
            private Duration f50634g;

            /* renamed from: h  reason: collision with root package name */
            private q2<Duration, Duration.b, com.google.protobuf.v> f50635h;

            /* renamed from: i  reason: collision with root package name */
            private Duration f50636i;

            /* renamed from: j  reason: collision with root package name */
            private q2<Duration, Duration.b, com.google.protobuf.v> f50637j;

            /* renamed from: k  reason: collision with root package name */
            private Duration f50638k;

            /* renamed from: l  reason: collision with root package name */
            private q2<Duration, Duration.b, com.google.protobuf.v> f50639l;

            /* renamed from: m  reason: collision with root package name */
            private Duration f50640m;

            /* renamed from: n  reason: collision with root package name */
            private q2<Duration, Duration.b, com.google.protobuf.v> f50641n;

            /* renamed from: o  reason: collision with root package name */
            private Duration f50642o;

            /* renamed from: p  reason: collision with root package name */
            private q2<Duration, Duration.b, com.google.protobuf.v> f50643p;

            /* renamed from: q  reason: collision with root package name */
            private List<Duration> f50644q;

            /* renamed from: r  reason: collision with root package name */
            private l2<Duration, Duration.b, com.google.protobuf.v> f50645r;

            /* renamed from: s  reason: collision with root package name */
            private List<Duration> f50646s;

            /* renamed from: t  reason: collision with root package name */
            private l2<Duration, Duration.b, com.google.protobuf.v> f50647t;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void a0() {
                if ((this.f50632e & 64) == 0) {
                    this.f50644q = new ArrayList(this.f50644q);
                    this.f50632e |= 64;
                }
            }

            private void b0() {
                if ((this.f50632e & 128) == 0) {
                    this.f50646s = new ArrayList(this.f50646s);
                    this.f50632e |= 128;
                }
            }

            private q2<Duration, Duration.b, com.google.protobuf.v> e0() {
                if (this.f50635h == null) {
                    this.f50635h = new q2<>(d0(), H(), O());
                    this.f50634g = null;
                }
                return this.f50635h;
            }

            private q2<Duration, Duration.b, com.google.protobuf.v> i0() {
                if (this.f50641n == null) {
                    this.f50641n = new q2<>(h0(), H(), O());
                    this.f50640m = null;
                }
                return this.f50641n;
            }

            private q2<Duration, Duration.b, com.google.protobuf.v> k0() {
                if (this.f50643p == null) {
                    this.f50643p = new q2<>(j0(), H(), O());
                    this.f50642o = null;
                }
                return this.f50643p;
            }

            private l2<Duration, Duration.b, com.google.protobuf.v> l0() {
                if (this.f50645r == null) {
                    this.f50645r = new l2<>(this.f50644q, (this.f50632e & 64) != 0, H(), O());
                    this.f50644q = null;
                }
                return this.f50645r;
            }

            private q2<Duration, Duration.b, com.google.protobuf.v> n0() {
                if (this.f50637j == null) {
                    this.f50637j = new q2<>(m0(), H(), O());
                    this.f50636i = null;
                }
                return this.f50637j;
            }

            private q2<Duration, Duration.b, com.google.protobuf.v> q0() {
                if (this.f50639l == null) {
                    this.f50639l = new q2<>(o0(), H(), O());
                    this.f50638k = null;
                }
                return this.f50639l;
            }

            private l2<Duration, Duration.b, com.google.protobuf.v> r0() {
                if (this.f50647t == null) {
                    this.f50647t = new l2<>(this.f50646s, (this.f50632e & 128) != 0, H(), O());
                    this.f50646s = null;
                }
                return this.f50647t;
            }

            private void s0() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    e0();
                    n0();
                    q0();
                    i0();
                    k0();
                    l0();
                    r0();
                }
            }

            public b B0(Duration duration) {
                Duration duration2;
                q2<Duration, Duration.b, com.google.protobuf.v> q2Var = this.f50637j;
                if (q2Var == null) {
                    if ((this.f50632e & 4) != 0 && (duration2 = this.f50636i) != null && duration2 != Duration.getDefaultInstance()) {
                        this.f50636i = Duration.newBuilder(this.f50636i).e0(duration).I();
                    } else {
                        this.f50636i = duration;
                    }
                    R();
                } else {
                    q2Var.e(duration);
                }
                this.f50632e |= 4;
                return this;
            }

            public b D0(Duration duration) {
                Duration duration2;
                q2<Duration, Duration.b, com.google.protobuf.v> q2Var = this.f50639l;
                if (q2Var == null) {
                    if ((this.f50632e & 8) != 0 && (duration2 = this.f50638k) != null && duration2 != Duration.getDefaultInstance()) {
                        this.f50638k = Duration.newBuilder(this.f50638k).e0(duration).I();
                    } else {
                        this.f50638k = duration;
                    }
                    R();
                } else {
                    q2Var.e(duration);
                }
                this.f50632e |= 8;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: H0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: I0 */
            public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.c(fieldDescriptor, obj);
            }

            public b J0(boolean z10) {
                this.f50632e |= 1;
                this.f50633f = z10;
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return Validate.U.d(DurationRules.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: K0 */
            public final b f1(h3 h3Var) {
                return (b) super.f1(h3Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public DurationRules build() {
                DurationRules I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public DurationRules I() {
                int i9;
                DurationRules durationRules = new DurationRules(this, (a) null);
                int i10 = this.f50632e;
                if ((i10 & 1) != 0) {
                    durationRules.required_ = this.f50633f;
                    i9 = 1;
                } else {
                    i9 = 0;
                }
                if ((i10 & 2) != 0) {
                    q2<Duration, Duration.b, com.google.protobuf.v> q2Var = this.f50635h;
                    if (q2Var == null) {
                        durationRules.const_ = this.f50634g;
                    } else {
                        durationRules.const_ = q2Var.b();
                    }
                    i9 |= 2;
                }
                if ((i10 & 4) != 0) {
                    q2<Duration, Duration.b, com.google.protobuf.v> q2Var2 = this.f50637j;
                    if (q2Var2 == null) {
                        durationRules.lt_ = this.f50636i;
                    } else {
                        durationRules.lt_ = q2Var2.b();
                    }
                    i9 |= 4;
                }
                if ((i10 & 8) != 0) {
                    q2<Duration, Duration.b, com.google.protobuf.v> q2Var3 = this.f50639l;
                    if (q2Var3 == null) {
                        durationRules.lte_ = this.f50638k;
                    } else {
                        durationRules.lte_ = q2Var3.b();
                    }
                    i9 |= 8;
                }
                if ((i10 & 16) != 0) {
                    q2<Duration, Duration.b, com.google.protobuf.v> q2Var4 = this.f50641n;
                    if (q2Var4 == null) {
                        durationRules.gt_ = this.f50640m;
                    } else {
                        durationRules.gt_ = q2Var4.b();
                    }
                    i9 |= 16;
                }
                if ((i10 & 32) != 0) {
                    q2<Duration, Duration.b, com.google.protobuf.v> q2Var5 = this.f50643p;
                    if (q2Var5 == null) {
                        durationRules.gte_ = this.f50642o;
                    } else {
                        durationRules.gte_ = q2Var5.b();
                    }
                    i9 |= 32;
                }
                l2<Duration, Duration.b, com.google.protobuf.v> l2Var = this.f50645r;
                if (l2Var == null) {
                    if ((this.f50632e & 64) != 0) {
                        this.f50644q = Collections.unmodifiableList(this.f50644q);
                        this.f50632e &= -65;
                    }
                    durationRules.in_ = this.f50644q;
                } else {
                    durationRules.in_ = l2Var.e();
                }
                l2<Duration, Duration.b, com.google.protobuf.v> l2Var2 = this.f50647t;
                if (l2Var2 == null) {
                    if ((this.f50632e & 128) != 0) {
                        this.f50646s = Collections.unmodifiableList(this.f50646s);
                        this.f50632e &= -129;
                    }
                    durationRules.notIn_ = this.f50646s;
                } else {
                    durationRules.notIn_ = l2Var2.e();
                }
                durationRules.bitField0_ = i9;
                Q();
                return durationRules;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            public Duration d0() {
                q2<Duration, Duration.b, com.google.protobuf.v> q2Var = this.f50635h;
                if (q2Var == null) {
                    Duration duration = this.f50634g;
                    return duration == null ? Duration.getDefaultInstance() : duration;
                }
                return q2Var.d();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: g0 */
            public DurationRules getDefaultInstanceForType() {
                return DurationRules.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return Validate.T;
            }

            public Duration h0() {
                q2<Duration, Duration.b, com.google.protobuf.v> q2Var = this.f50641n;
                if (q2Var == null) {
                    Duration duration = this.f50640m;
                    return duration == null ? Duration.getDefaultInstance() : duration;
                }
                return q2Var.d();
            }

            public Duration j0() {
                q2<Duration, Duration.b, com.google.protobuf.v> q2Var = this.f50643p;
                if (q2Var == null) {
                    Duration duration = this.f50642o;
                    return duration == null ? Duration.getDefaultInstance() : duration;
                }
                return q2Var.d();
            }

            public Duration m0() {
                q2<Duration, Duration.b, com.google.protobuf.v> q2Var = this.f50637j;
                if (q2Var == null) {
                    Duration duration = this.f50636i;
                    return duration == null ? Duration.getDefaultInstance() : duration;
                }
                return q2Var.d();
            }

            public Duration o0() {
                q2<Duration, Duration.b, com.google.protobuf.v> q2Var = this.f50639l;
                if (q2Var == null) {
                    Duration duration = this.f50638k;
                    return duration == null ? Duration.getDefaultInstance() : duration;
                }
                return q2Var.d();
            }

            public b t0(Duration duration) {
                Duration duration2;
                q2<Duration, Duration.b, com.google.protobuf.v> q2Var = this.f50635h;
                if (q2Var == null) {
                    if ((this.f50632e & 2) != 0 && (duration2 = this.f50634g) != null && duration2 != Duration.getDefaultInstance()) {
                        this.f50634g = Duration.newBuilder(this.f50634g).e0(duration).I();
                    } else {
                        this.f50634g = duration;
                    }
                    R();
                } else {
                    q2Var.e(duration);
                }
                this.f50632e |= 2;
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0021  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: u0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.DurationRules.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2<io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$DurationRules> r1 = io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.DurationRules.PARSER     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$DurationRules r3 = (io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.DurationRules) r3     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    if (r3 == 0) goto Le
                    r2.x0(r3)
                Le:
                    return r2
                Lf:
                    r3 = move-exception
                    goto L1f
                L11:
                    r3 = move-exception
                    com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> Lf
                    io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$DurationRules r4 = (io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.DurationRules) r4     // Catch: java.lang.Throwable -> Lf
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1d
                    throw r3     // Catch: java.lang.Throwable -> L1d
                L1d:
                    r3 = move-exception
                    r0 = r4
                L1f:
                    if (r0 == 0) goto L24
                    r2.x0(r0)
                L24:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.DurationRules.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$DurationRules$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: v0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof DurationRules) {
                    return x0((DurationRules) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b x0(DurationRules durationRules) {
                if (durationRules == DurationRules.getDefaultInstance()) {
                    return this;
                }
                if (durationRules.hasRequired()) {
                    J0(durationRules.getRequired());
                }
                if (durationRules.hasConst()) {
                    t0(durationRules.getConst());
                }
                if (durationRules.hasLt()) {
                    B0(durationRules.getLt());
                }
                if (durationRules.hasLte()) {
                    D0(durationRules.getLte());
                }
                if (durationRules.hasGt()) {
                    y0(durationRules.getGt());
                }
                if (durationRules.hasGte()) {
                    z0(durationRules.getGte());
                }
                if (this.f50645r == null) {
                    if (!durationRules.in_.isEmpty()) {
                        if (this.f50644q.isEmpty()) {
                            this.f50644q = durationRules.in_;
                            this.f50632e &= -65;
                        } else {
                            a0();
                            this.f50644q.addAll(durationRules.in_);
                        }
                        R();
                    }
                } else if (!durationRules.in_.isEmpty()) {
                    if (this.f50645r.k()) {
                        this.f50645r.f();
                        this.f50645r = null;
                        this.f50644q = durationRules.in_;
                        this.f50632e &= -65;
                        this.f50645r = GeneratedMessageV3.alwaysUseFieldBuilders ? l0() : null;
                    } else {
                        this.f50645r.b(durationRules.in_);
                    }
                }
                if (this.f50647t == null) {
                    if (!durationRules.notIn_.isEmpty()) {
                        if (this.f50646s.isEmpty()) {
                            this.f50646s = durationRules.notIn_;
                            this.f50632e &= -129;
                        } else {
                            b0();
                            this.f50646s.addAll(durationRules.notIn_);
                        }
                        R();
                    }
                } else if (!durationRules.notIn_.isEmpty()) {
                    if (this.f50647t.k()) {
                        this.f50647t.f();
                        this.f50647t = null;
                        this.f50646s = durationRules.notIn_;
                        this.f50632e &= -129;
                        this.f50647t = GeneratedMessageV3.alwaysUseFieldBuilders ? r0() : null;
                    } else {
                        this.f50647t.b(durationRules.notIn_);
                    }
                }
                z(((GeneratedMessageV3) durationRules).unknownFields);
                R();
                return this;
            }

            public b y0(Duration duration) {
                Duration duration2;
                q2<Duration, Duration.b, com.google.protobuf.v> q2Var = this.f50641n;
                if (q2Var == null) {
                    if ((this.f50632e & 16) != 0 && (duration2 = this.f50640m) != null && duration2 != Duration.getDefaultInstance()) {
                        this.f50640m = Duration.newBuilder(this.f50640m).e0(duration).I();
                    } else {
                        this.f50640m = duration;
                    }
                    R();
                } else {
                    q2Var.e(duration);
                }
                this.f50632e |= 16;
                return this;
            }

            public b z0(Duration duration) {
                Duration duration2;
                q2<Duration, Duration.b, com.google.protobuf.v> q2Var = this.f50643p;
                if (q2Var == null) {
                    if ((this.f50632e & 32) != 0 && (duration2 = this.f50642o) != null && duration2 != Duration.getDefaultInstance()) {
                        this.f50642o = Duration.newBuilder(this.f50642o).e0(duration).I();
                    } else {
                        this.f50642o = duration;
                    }
                    R();
                } else {
                    q2Var.e(duration);
                }
                this.f50632e |= 32;
                return this;
            }

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                this.f50644q = Collections.emptyList();
                this.f50646s = Collections.emptyList();
                s0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f50644q = Collections.emptyList();
                this.f50646s = Collections.emptyList();
                s0();
            }
        }

        /* synthetic */ DurationRules(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static DurationRules getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return Validate.T;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static DurationRules parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (DurationRules) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static DurationRules parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<DurationRules> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof DurationRules)) {
                return super.equals(obj);
            }
            DurationRules durationRules = (DurationRules) obj;
            if (hasRequired() != durationRules.hasRequired()) {
                return false;
            }
            if ((!hasRequired() || getRequired() == durationRules.getRequired()) && hasConst() == durationRules.hasConst()) {
                if ((!hasConst() || getConst().equals(durationRules.getConst())) && hasLt() == durationRules.hasLt()) {
                    if ((!hasLt() || getLt().equals(durationRules.getLt())) && hasLte() == durationRules.hasLte()) {
                        if ((!hasLte() || getLte().equals(durationRules.getLte())) && hasGt() == durationRules.hasGt()) {
                            if ((!hasGt() || getGt().equals(durationRules.getGt())) && hasGte() == durationRules.hasGte()) {
                                return (!hasGte() || getGte().equals(durationRules.getGte())) && getInList().equals(durationRules.getInList()) && getNotInList().equals(durationRules.getNotInList()) && this.unknownFields.equals(durationRules.unknownFields);
                            }
                            return false;
                        }
                        return false;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }

        public Duration getConst() {
            Duration duration = this.const_;
            return duration == null ? Duration.getDefaultInstance() : duration;
        }

        public com.google.protobuf.v getConstOrBuilder() {
            Duration duration = this.const_;
            return duration == null ? Duration.getDefaultInstance() : duration;
        }

        public Duration getGt() {
            Duration duration = this.gt_;
            return duration == null ? Duration.getDefaultInstance() : duration;
        }

        public com.google.protobuf.v getGtOrBuilder() {
            Duration duration = this.gt_;
            return duration == null ? Duration.getDefaultInstance() : duration;
        }

        public Duration getGte() {
            Duration duration = this.gte_;
            return duration == null ? Duration.getDefaultInstance() : duration;
        }

        public com.google.protobuf.v getGteOrBuilder() {
            Duration duration = this.gte_;
            return duration == null ? Duration.getDefaultInstance() : duration;
        }

        public Duration getIn(int i9) {
            return this.in_.get(i9);
        }

        public int getInCount() {
            return this.in_.size();
        }

        public List<Duration> getInList() {
            return this.in_;
        }

        public com.google.protobuf.v getInOrBuilder(int i9) {
            return this.in_.get(i9);
        }

        public List<? extends com.google.protobuf.v> getInOrBuilderList() {
            return this.in_;
        }

        public Duration getLt() {
            Duration duration = this.lt_;
            return duration == null ? Duration.getDefaultInstance() : duration;
        }

        public com.google.protobuf.v getLtOrBuilder() {
            Duration duration = this.lt_;
            return duration == null ? Duration.getDefaultInstance() : duration;
        }

        public Duration getLte() {
            Duration duration = this.lte_;
            return duration == null ? Duration.getDefaultInstance() : duration;
        }

        public com.google.protobuf.v getLteOrBuilder() {
            Duration duration = this.lte_;
            return duration == null ? Duration.getDefaultInstance() : duration;
        }

        public Duration getNotIn(int i9) {
            return this.notIn_.get(i9);
        }

        public int getNotInCount() {
            return this.notIn_.size();
        }

        public List<Duration> getNotInList() {
            return this.notIn_;
        }

        public com.google.protobuf.v getNotInOrBuilder(int i9) {
            return this.notIn_.get(i9);
        }

        public List<? extends com.google.protobuf.v> getNotInOrBuilderList() {
            return this.notIn_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<DurationRules> getParserForType() {
            return PARSER;
        }

        public boolean getRequired() {
            return this.required_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int e10 = (this.bitField0_ & 1) != 0 ? CodedOutputStream.e(1, this.required_) + 0 : 0;
            if ((this.bitField0_ & 2) != 0) {
                e10 += CodedOutputStream.G(2, getConst());
            }
            if ((this.bitField0_ & 4) != 0) {
                e10 += CodedOutputStream.G(3, getLt());
            }
            if ((this.bitField0_ & 8) != 0) {
                e10 += CodedOutputStream.G(4, getLte());
            }
            if ((this.bitField0_ & 16) != 0) {
                e10 += CodedOutputStream.G(5, getGt());
            }
            if ((this.bitField0_ & 32) != 0) {
                e10 += CodedOutputStream.G(6, getGte());
            }
            for (int i10 = 0; i10 < this.in_.size(); i10++) {
                e10 += CodedOutputStream.G(7, this.in_.get(i10));
            }
            for (int i11 = 0; i11 < this.notIn_.size(); i11++) {
                e10 += CodedOutputStream.G(8, this.notIn_.get(i11));
            }
            int serializedSize = e10 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasConst() {
            return (this.bitField0_ & 2) != 0;
        }

        public boolean hasGt() {
            return (this.bitField0_ & 16) != 0;
        }

        public boolean hasGte() {
            return (this.bitField0_ & 32) != 0;
        }

        public boolean hasLt() {
            return (this.bitField0_ & 4) != 0;
        }

        public boolean hasLte() {
            return (this.bitField0_ & 8) != 0;
        }

        public boolean hasRequired() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (hasRequired()) {
                hashCode = (((hashCode * 37) + 1) * 53) + u0.d(getRequired());
            }
            if (hasConst()) {
                hashCode = (((hashCode * 37) + 2) * 53) + getConst().hashCode();
            }
            if (hasLt()) {
                hashCode = (((hashCode * 37) + 3) * 53) + getLt().hashCode();
            }
            if (hasLte()) {
                hashCode = (((hashCode * 37) + 4) * 53) + getLte().hashCode();
            }
            if (hasGt()) {
                hashCode = (((hashCode * 37) + 5) * 53) + getGt().hashCode();
            }
            if (hasGte()) {
                hashCode = (((hashCode * 37) + 6) * 53) + getGte().hashCode();
            }
            if (getInCount() > 0) {
                hashCode = (((hashCode * 37) + 7) * 53) + getInList().hashCode();
            }
            if (getNotInCount() > 0) {
                hashCode = (((hashCode * 37) + 8) * 53) + getNotInList().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return Validate.U.d(DurationRules.class, b.class);
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
            return new DurationRules();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if ((this.bitField0_ & 1) != 0) {
                codedOutputStream.n0(1, this.required_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.L0(2, getConst());
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.L0(3, getLt());
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.L0(4, getLte());
            }
            if ((this.bitField0_ & 16) != 0) {
                codedOutputStream.L0(5, getGt());
            }
            if ((this.bitField0_ & 32) != 0) {
                codedOutputStream.L0(6, getGte());
            }
            for (int i9 = 0; i9 < this.in_.size(); i9++) {
                codedOutputStream.L0(7, this.in_.get(i9));
            }
            for (int i10 = 0; i10 < this.notIn_.size(); i10++) {
                codedOutputStream.L0(8, this.notIn_.get(i10));
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ DurationRules(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(DurationRules durationRules) {
            return DEFAULT_INSTANCE.toBuilder().x0(durationRules);
        }

        public static DurationRules parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private DurationRules(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static DurationRules parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (DurationRules) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static DurationRules parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public DurationRules getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).x0(this);
        }

        public static DurationRules parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private DurationRules() {
            this.memoizedIsInitialized = (byte) -1;
            this.in_ = Collections.emptyList();
            this.notIn_ = Collections.emptyList();
        }

        public static DurationRules parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static DurationRules parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static DurationRules parseFrom(InputStream inputStream) throws IOException {
            return (DurationRules) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private DurationRules(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            this();
            Duration.b builder;
            Objects.requireNonNull(f0Var);
            h3.b h10 = h3.h();
            boolean z10 = false;
            boolean z11 = false;
            while (!z10) {
                try {
                    try {
                        int L = pVar.L();
                        if (L != 0) {
                            if (L != 8) {
                                if (L == 18) {
                                    builder = (this.bitField0_ & 2) != 0 ? this.const_.toBuilder() : null;
                                    Duration duration = (Duration) pVar.B(Duration.parser(), f0Var);
                                    this.const_ = duration;
                                    if (builder != null) {
                                        builder.e0(duration);
                                        this.const_ = builder.I();
                                    }
                                    this.bitField0_ |= 2;
                                } else if (L == 26) {
                                    builder = (this.bitField0_ & 4) != 0 ? this.lt_.toBuilder() : null;
                                    Duration duration2 = (Duration) pVar.B(Duration.parser(), f0Var);
                                    this.lt_ = duration2;
                                    if (builder != null) {
                                        builder.e0(duration2);
                                        this.lt_ = builder.I();
                                    }
                                    this.bitField0_ |= 4;
                                } else if (L == 34) {
                                    builder = (this.bitField0_ & 8) != 0 ? this.lte_.toBuilder() : null;
                                    Duration duration3 = (Duration) pVar.B(Duration.parser(), f0Var);
                                    this.lte_ = duration3;
                                    if (builder != null) {
                                        builder.e0(duration3);
                                        this.lte_ = builder.I();
                                    }
                                    this.bitField0_ |= 8;
                                } else if (L == 42) {
                                    builder = (this.bitField0_ & 16) != 0 ? this.gt_.toBuilder() : null;
                                    Duration duration4 = (Duration) pVar.B(Duration.parser(), f0Var);
                                    this.gt_ = duration4;
                                    if (builder != null) {
                                        builder.e0(duration4);
                                        this.gt_ = builder.I();
                                    }
                                    this.bitField0_ |= 16;
                                } else if (L == 50) {
                                    builder = (this.bitField0_ & 32) != 0 ? this.gte_.toBuilder() : null;
                                    Duration duration5 = (Duration) pVar.B(Duration.parser(), f0Var);
                                    this.gte_ = duration5;
                                    if (builder != null) {
                                        builder.e0(duration5);
                                        this.gte_ = builder.I();
                                    }
                                    this.bitField0_ |= 32;
                                } else if (L == 58) {
                                    if (!(z11 & true)) {
                                        this.in_ = new ArrayList();
                                        z11 |= true;
                                    }
                                    this.in_.add((Duration) pVar.B(Duration.parser(), f0Var));
                                } else if (L != 66) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    if (!(z11 & true)) {
                                        this.notIn_ = new ArrayList();
                                        z11 |= true;
                                    }
                                    this.notIn_.add((Duration) pVar.B(Duration.parser(), f0Var));
                                }
                            } else {
                                this.bitField0_ |= 1;
                                this.required_ = pVar.r();
                            }
                        }
                        z10 = true;
                    } catch (InvalidProtocolBufferException e10) {
                        throw e10.setUnfinishedMessage(this);
                    } catch (IOException e11) {
                        throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                    }
                } finally {
                    if (z11 & true) {
                        this.in_ = Collections.unmodifiableList(this.in_);
                    }
                    if (z11 & true) {
                        this.notIn_ = Collections.unmodifiableList(this.notIn_);
                    }
                    this.unknownFields = h10.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static DurationRules parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (DurationRules) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static DurationRules parseFrom(com.google.protobuf.p pVar) throws IOException {
            return (DurationRules) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static DurationRules parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
            return (DurationRules) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes5.dex */
    public static final class EnumRules extends GeneratedMessageV3 implements g {
        public static final int CONST_FIELD_NUMBER = 1;
        public static final int DEFINED_ONLY_FIELD_NUMBER = 2;
        public static final int IN_FIELD_NUMBER = 3;
        public static final int NOT_IN_FIELD_NUMBER = 4;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private int const_;
        private boolean definedOnly_;
        private u0.g in_;
        private byte memoizedIsInitialized;
        private u0.g notIn_;
        private static final EnumRules DEFAULT_INSTANCE = new EnumRules();
        @Deprecated
        public static final e2<EnumRules> PARSER = new a();

        /* loaded from: classes5.dex */
        class a extends com.google.protobuf.c<EnumRules> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public EnumRules m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new EnumRules(pVar, f0Var, null);
            }
        }

        /* loaded from: classes5.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements g {

            /* renamed from: e  reason: collision with root package name */
            private int f50648e;

            /* renamed from: f  reason: collision with root package name */
            private int f50649f;

            /* renamed from: g  reason: collision with root package name */
            private boolean f50650g;

            /* renamed from: h  reason: collision with root package name */
            private u0.g f50651h;

            /* renamed from: i  reason: collision with root package name */
            private u0.g f50652i;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void a0() {
                if ((this.f50648e & 4) == 0) {
                    this.f50651h = GeneratedMessageV3.mutableCopy(this.f50651h);
                    this.f50648e |= 4;
                }
            }

            private void b0() {
                if ((this.f50648e & 8) == 0) {
                    this.f50652i = GeneratedMessageV3.mutableCopy(this.f50652i);
                    this.f50648e |= 8;
                }
            }

            private void e0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return Validate.K.d(EnumRules.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public EnumRules build() {
                EnumRules I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public EnumRules I() {
                int i9;
                EnumRules enumRules = new EnumRules(this, (a) null);
                int i10 = this.f50648e;
                if ((i10 & 1) != 0) {
                    enumRules.const_ = this.f50649f;
                    i9 = 1;
                } else {
                    i9 = 0;
                }
                if ((i10 & 2) != 0) {
                    enumRules.definedOnly_ = this.f50650g;
                    i9 |= 2;
                }
                if ((this.f50648e & 4) != 0) {
                    this.f50651h.C();
                    this.f50648e &= -5;
                }
                enumRules.in_ = this.f50651h;
                if ((this.f50648e & 8) != 0) {
                    this.f50652i.C();
                    this.f50648e &= -9;
                }
                enumRules.notIn_ = this.f50652i;
                enumRules.bitField0_ = i9;
                Q();
                return enumRules;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: d0 */
            public EnumRules getDefaultInstanceForType() {
                return EnumRules.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0021  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: g0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.EnumRules.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2<io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$EnumRules> r1 = io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.EnumRules.PARSER     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$EnumRules r3 = (io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.EnumRules) r3     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    if (r3 == 0) goto Le
                    r2.i0(r3)
                Le:
                    return r2
                Lf:
                    r3 = move-exception
                    goto L1f
                L11:
                    r3 = move-exception
                    com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> Lf
                    io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$EnumRules r4 = (io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.EnumRules) r4     // Catch: java.lang.Throwable -> Lf
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1d
                    throw r3     // Catch: java.lang.Throwable -> L1d
                L1d:
                    r3 = move-exception
                    r0 = r4
                L1f:
                    if (r0 == 0) goto L24
                    r2.i0(r0)
                L24:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.EnumRules.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$EnumRules$b");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return Validate.J;
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: h0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof EnumRules) {
                    return i0((EnumRules) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b i0(EnumRules enumRules) {
                if (enumRules == EnumRules.getDefaultInstance()) {
                    return this;
                }
                if (enumRules.hasConst()) {
                    k0(enumRules.getConst());
                }
                if (enumRules.hasDefinedOnly()) {
                    l0(enumRules.getDefinedOnly());
                }
                if (!enumRules.in_.isEmpty()) {
                    if (this.f50651h.isEmpty()) {
                        this.f50651h = enumRules.in_;
                        this.f50648e &= -5;
                    } else {
                        a0();
                        this.f50651h.addAll(enumRules.in_);
                    }
                    R();
                }
                if (!enumRules.notIn_.isEmpty()) {
                    if (this.f50652i.isEmpty()) {
                        this.f50652i = enumRules.notIn_;
                        this.f50648e &= -9;
                    } else {
                        b0();
                        this.f50652i.addAll(enumRules.notIn_);
                    }
                    R();
                }
                z(((GeneratedMessageV3) enumRules).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: j0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            public b k0(int i9) {
                this.f50648e |= 1;
                this.f50649f = i9;
                R();
                return this;
            }

            public b l0(boolean z10) {
                this.f50648e |= 2;
                this.f50650g = z10;
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: m0 */
            public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.c(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: n0 */
            public final b f1(h3 h3Var) {
                return (b) super.f1(h3Var);
            }

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                this.f50651h = EnumRules.access$37100();
                this.f50652i = EnumRules.access$37400();
                e0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f50651h = EnumRules.access$37100();
                this.f50652i = EnumRules.access$37400();
                e0();
            }
        }

        /* synthetic */ EnumRules(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        static /* synthetic */ u0.g access$37100() {
            return GeneratedMessageV3.emptyIntList();
        }

        static /* synthetic */ u0.g access$37400() {
            return GeneratedMessageV3.emptyIntList();
        }

        public static EnumRules getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return Validate.J;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static EnumRules parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (EnumRules) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static EnumRules parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<EnumRules> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof EnumRules)) {
                return super.equals(obj);
            }
            EnumRules enumRules = (EnumRules) obj;
            if (hasConst() != enumRules.hasConst()) {
                return false;
            }
            if ((!hasConst() || getConst() == enumRules.getConst()) && hasDefinedOnly() == enumRules.hasDefinedOnly()) {
                return (!hasDefinedOnly() || getDefinedOnly() == enumRules.getDefinedOnly()) && getInList().equals(enumRules.getInList()) && getNotInList().equals(enumRules.getNotInList()) && this.unknownFields.equals(enumRules.unknownFields);
            }
            return false;
        }

        public int getConst() {
            return this.const_;
        }

        public boolean getDefinedOnly() {
            return this.definedOnly_;
        }

        public int getIn(int i9) {
            return this.in_.getInt(i9);
        }

        public int getInCount() {
            return this.in_.size();
        }

        public List<Integer> getInList() {
            return this.in_;
        }

        public int getNotIn(int i9) {
            return this.notIn_.getInt(i9);
        }

        public int getNotInCount() {
            return this.notIn_.size();
        }

        public List<Integer> getNotInList() {
            return this.notIn_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<EnumRules> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int x10 = (this.bitField0_ & 1) != 0 ? CodedOutputStream.x(1, this.const_) + 0 : 0;
            if ((this.bitField0_ & 2) != 0) {
                x10 += CodedOutputStream.e(2, this.definedOnly_);
            }
            int i10 = 0;
            for (int i11 = 0; i11 < this.in_.size(); i11++) {
                i10 += CodedOutputStream.y(this.in_.getInt(i11));
            }
            int size = x10 + i10 + (getInList().size() * 1);
            int i12 = 0;
            for (int i13 = 0; i13 < this.notIn_.size(); i13++) {
                i12 += CodedOutputStream.y(this.notIn_.getInt(i13));
            }
            int size2 = size + i12 + (getNotInList().size() * 1) + this.unknownFields.getSerializedSize();
            this.memoizedSize = size2;
            return size2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasConst() {
            return (this.bitField0_ & 1) != 0;
        }

        public boolean hasDefinedOnly() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (hasConst()) {
                hashCode = (((hashCode * 37) + 1) * 53) + getConst();
            }
            if (hasDefinedOnly()) {
                hashCode = (((hashCode * 37) + 2) * 53) + u0.d(getDefinedOnly());
            }
            if (getInCount() > 0) {
                hashCode = (((hashCode * 37) + 3) * 53) + getInList().hashCode();
            }
            if (getNotInCount() > 0) {
                hashCode = (((hashCode * 37) + 4) * 53) + getNotInList().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return Validate.K.d(EnumRules.class, b.class);
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
            return new EnumRules();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if ((this.bitField0_ & 1) != 0) {
                codedOutputStream.H0(1, this.const_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.n0(2, this.definedOnly_);
            }
            for (int i9 = 0; i9 < this.in_.size(); i9++) {
                codedOutputStream.H0(3, this.in_.getInt(i9));
            }
            for (int i10 = 0; i10 < this.notIn_.size(); i10++) {
                codedOutputStream.H0(4, this.notIn_.getInt(i10));
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ EnumRules(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(EnumRules enumRules) {
            return DEFAULT_INSTANCE.toBuilder().i0(enumRules);
        }

        public static EnumRules parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private EnumRules(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static EnumRules parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (EnumRules) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static EnumRules parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public EnumRules getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).i0(this);
        }

        public static EnumRules parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private EnumRules() {
            this.memoizedIsInitialized = (byte) -1;
            this.in_ = GeneratedMessageV3.emptyIntList();
            this.notIn_ = GeneratedMessageV3.emptyIntList();
        }

        public static EnumRules parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static EnumRules parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static EnumRules parseFrom(InputStream inputStream) throws IOException {
            return (EnumRules) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private EnumRules(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            this();
            Objects.requireNonNull(f0Var);
            h3.b h10 = h3.h();
            boolean z10 = false;
            boolean z11 = false;
            while (!z10) {
                try {
                    try {
                        int L = pVar.L();
                        if (L != 0) {
                            if (L == 8) {
                                this.bitField0_ |= 1;
                                this.const_ = pVar.z();
                            } else if (L == 16) {
                                this.bitField0_ |= 2;
                                this.definedOnly_ = pVar.r();
                            } else if (L == 24) {
                                if (!(z11 & true)) {
                                    this.in_ = GeneratedMessageV3.newIntList();
                                    z11 |= true;
                                }
                                this.in_.D0(pVar.z());
                            } else if (L == 26) {
                                int q10 = pVar.q(pVar.D());
                                if (!(z11 & true) && pVar.e() > 0) {
                                    this.in_ = GeneratedMessageV3.newIntList();
                                    z11 |= true;
                                }
                                while (pVar.e() > 0) {
                                    this.in_.D0(pVar.z());
                                }
                                pVar.p(q10);
                            } else if (L == 32) {
                                if (!(z11 & true)) {
                                    this.notIn_ = GeneratedMessageV3.newIntList();
                                    z11 |= true;
                                }
                                this.notIn_.D0(pVar.z());
                            } else if (L != 34) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                int q11 = pVar.q(pVar.D());
                                if (!(z11 & true) && pVar.e() > 0) {
                                    this.notIn_ = GeneratedMessageV3.newIntList();
                                    z11 |= true;
                                }
                                while (pVar.e() > 0) {
                                    this.notIn_.D0(pVar.z());
                                }
                                pVar.p(q11);
                            }
                        }
                        z10 = true;
                    } catch (InvalidProtocolBufferException e10) {
                        throw e10.setUnfinishedMessage(this);
                    } catch (IOException e11) {
                        throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                    }
                } finally {
                    if (z11 & true) {
                        this.in_.C();
                    }
                    if (z11 & true) {
                        this.notIn_.C();
                    }
                    this.unknownFields = h10.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static EnumRules parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (EnumRules) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static EnumRules parseFrom(com.google.protobuf.p pVar) throws IOException {
            return (EnumRules) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static EnumRules parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
            return (EnumRules) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes5.dex */
    public static final class FieldRules extends GeneratedMessageV3 implements h {
        public static final int ANY_FIELD_NUMBER = 20;
        public static final int BOOL_FIELD_NUMBER = 13;
        public static final int BYTES_FIELD_NUMBER = 15;
        public static final int DOUBLE_FIELD_NUMBER = 2;
        public static final int DURATION_FIELD_NUMBER = 21;
        public static final int ENUM_FIELD_NUMBER = 16;
        public static final int FIXED32_FIELD_NUMBER = 9;
        public static final int FIXED64_FIELD_NUMBER = 10;
        public static final int FLOAT_FIELD_NUMBER = 1;
        public static final int INT32_FIELD_NUMBER = 3;
        public static final int INT64_FIELD_NUMBER = 4;
        public static final int MAP_FIELD_NUMBER = 19;
        public static final int MESSAGE_FIELD_NUMBER = 17;
        public static final int REPEATED_FIELD_NUMBER = 18;
        public static final int SFIXED32_FIELD_NUMBER = 11;
        public static final int SFIXED64_FIELD_NUMBER = 12;
        public static final int SINT32_FIELD_NUMBER = 7;
        public static final int SINT64_FIELD_NUMBER = 8;
        public static final int STRING_FIELD_NUMBER = 14;
        public static final int TIMESTAMP_FIELD_NUMBER = 22;
        public static final int UINT32_FIELD_NUMBER = 5;
        public static final int UINT64_FIELD_NUMBER = 6;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private MessageRules message_;
        private int typeCase_;
        private Object type_;
        private static final FieldRules DEFAULT_INSTANCE = new FieldRules();
        @Deprecated
        public static final e2<FieldRules> PARSER = new a();

        /* loaded from: classes5.dex */
        public enum TypeCase implements u0.c {
            FLOAT(1),
            DOUBLE(2),
            INT32(3),
            INT64(4),
            UINT32(5),
            UINT64(6),
            SINT32(7),
            SINT64(8),
            FIXED32(9),
            FIXED64(10),
            SFIXED32(11),
            SFIXED64(12),
            BOOL(13),
            STRING(14),
            BYTES(15),
            ENUM(16),
            REPEATED(18),
            MAP(19),
            ANY(20),
            DURATION(21),
            TIMESTAMP(22),
            TYPE_NOT_SET(0);
            
            private final int value;

            TypeCase(int i9) {
                this.value = i9;
            }

            public static TypeCase forNumber(int i9) {
                switch (i9) {
                    case 0:
                        return TYPE_NOT_SET;
                    case 1:
                        return FLOAT;
                    case 2:
                        return DOUBLE;
                    case 3:
                        return INT32;
                    case 4:
                        return INT64;
                    case 5:
                        return UINT32;
                    case 6:
                        return UINT64;
                    case 7:
                        return SINT32;
                    case 8:
                        return SINT64;
                    case 9:
                        return FIXED32;
                    case 10:
                        return FIXED64;
                    case 11:
                        return SFIXED32;
                    case 12:
                        return SFIXED64;
                    case 13:
                        return BOOL;
                    case 14:
                        return STRING;
                    case 15:
                        return BYTES;
                    case 16:
                        return ENUM;
                    case 17:
                    default:
                        return null;
                    case 18:
                        return REPEATED;
                    case 19:
                        return MAP;
                    case 20:
                        return ANY;
                    case 21:
                        return DURATION;
                    case 22:
                        return TIMESTAMP;
                }
            }

            @Override // com.google.protobuf.u0.c
            public int getNumber() {
                return this.value;
            }

            @Deprecated
            public static TypeCase valueOf(int i9) {
                return forNumber(i9);
            }
        }

        /* loaded from: classes5.dex */
        class a extends com.google.protobuf.c<FieldRules> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public FieldRules m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new FieldRules(pVar, f0Var, null);
            }
        }

        /* loaded from: classes5.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements h {
            private q2<MapRules, MapRules.b, n> A;
            private q2<AnyRules, AnyRules.b, b> B;
            private q2<DurationRules, DurationRules.b, f> C;
            private q2<TimestampRules, TimestampRules.b, v> D;

            /* renamed from: e  reason: collision with root package name */
            private int f50653e;

            /* renamed from: f  reason: collision with root package name */
            private Object f50654f;

            /* renamed from: g  reason: collision with root package name */
            private int f50655g;

            /* renamed from: h  reason: collision with root package name */
            private MessageRules f50656h;

            /* renamed from: i  reason: collision with root package name */
            private q2<MessageRules, MessageRules.b, o> f50657i;

            /* renamed from: j  reason: collision with root package name */
            private q2<FloatRules, FloatRules.b, k> f50658j;

            /* renamed from: k  reason: collision with root package name */
            private q2<DoubleRules, DoubleRules.b, e> f50659k;

            /* renamed from: l  reason: collision with root package name */
            private q2<Int32Rules, Int32Rules.b, l> f50660l;

            /* renamed from: m  reason: collision with root package name */
            private q2<Int64Rules, Int64Rules.b, m> f50661m;

            /* renamed from: n  reason: collision with root package name */
            private q2<UInt32Rules, UInt32Rules.b, w> f50662n;

            /* renamed from: o  reason: collision with root package name */
            private q2<UInt64Rules, UInt64Rules.b, x> f50663o;

            /* renamed from: p  reason: collision with root package name */
            private q2<SInt32Rules, SInt32Rules.b, s> f50664p;

            /* renamed from: q  reason: collision with root package name */
            private q2<SInt64Rules, SInt64Rules.b, t> f50665q;

            /* renamed from: r  reason: collision with root package name */
            private q2<Fixed32Rules, Fixed32Rules.b, i> f50666r;

            /* renamed from: s  reason: collision with root package name */
            private q2<Fixed64Rules, Fixed64Rules.b, j> f50667s;

            /* renamed from: t  reason: collision with root package name */
            private q2<SFixed32Rules, SFixed32Rules.b, q> f50668t;

            /* renamed from: u  reason: collision with root package name */
            private q2<SFixed64Rules, SFixed64Rules.b, r> f50669u;

            /* renamed from: v  reason: collision with root package name */
            private q2<BoolRules, BoolRules.b, c> f50670v;

            /* renamed from: w  reason: collision with root package name */
            private q2<StringRules, StringRules.b, u> f50671w;

            /* renamed from: x  reason: collision with root package name */
            private q2<BytesRules, BytesRules.b, d> f50672x;

            /* renamed from: y  reason: collision with root package name */
            private q2<EnumRules, EnumRules.b, g> f50673y;

            /* renamed from: z  reason: collision with root package name */
            private q2<RepeatedRules, RepeatedRules.b, p> f50674z;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private q2<MessageRules, MessageRules.b, o> d0() {
                if (this.f50657i == null) {
                    this.f50657i = new q2<>(b0(), H(), O());
                    this.f50656h = null;
                }
                return this.f50657i;
            }

            private void e0() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    d0();
                }
            }

            public b B0(SFixed64Rules sFixed64Rules) {
                q2<SFixed64Rules, SFixed64Rules.b, r> q2Var = this.f50669u;
                if (q2Var == null) {
                    if (this.f50653e == 12 && this.f50654f != SFixed64Rules.getDefaultInstance()) {
                        this.f50654f = SFixed64Rules.newBuilder((SFixed64Rules) this.f50654f).i0(sFixed64Rules).I();
                    } else {
                        this.f50654f = sFixed64Rules;
                    }
                    R();
                } else {
                    if (this.f50653e == 12) {
                        q2Var.e(sFixed64Rules);
                    }
                    this.f50669u.g(sFixed64Rules);
                }
                this.f50653e = 12;
                return this;
            }

            public b D0(SInt32Rules sInt32Rules) {
                q2<SInt32Rules, SInt32Rules.b, s> q2Var = this.f50664p;
                if (q2Var == null) {
                    if (this.f50653e == 7 && this.f50654f != SInt32Rules.getDefaultInstance()) {
                        this.f50654f = SInt32Rules.newBuilder((SInt32Rules) this.f50654f).i0(sInt32Rules).I();
                    } else {
                        this.f50654f = sInt32Rules;
                    }
                    R();
                } else {
                    if (this.f50653e == 7) {
                        q2Var.e(sInt32Rules);
                    }
                    this.f50664p.g(sInt32Rules);
                }
                this.f50653e = 7;
                return this;
            }

            public b H0(SInt64Rules sInt64Rules) {
                q2<SInt64Rules, SInt64Rules.b, t> q2Var = this.f50665q;
                if (q2Var == null) {
                    if (this.f50653e == 8 && this.f50654f != SInt64Rules.getDefaultInstance()) {
                        this.f50654f = SInt64Rules.newBuilder((SInt64Rules) this.f50654f).i0(sInt64Rules).I();
                    } else {
                        this.f50654f = sInt64Rules;
                    }
                    R();
                } else {
                    if (this.f50653e == 8) {
                        q2Var.e(sInt64Rules);
                    }
                    this.f50665q.g(sInt64Rules);
                }
                this.f50653e = 8;
                return this;
            }

            public b I0(StringRules stringRules) {
                q2<StringRules, StringRules.b, u> q2Var = this.f50671w;
                if (q2Var == null) {
                    if (this.f50653e == 14 && this.f50654f != StringRules.getDefaultInstance()) {
                        this.f50654f = StringRules.newBuilder((StringRules) this.f50654f).i0(stringRules).I();
                    } else {
                        this.f50654f = stringRules;
                    }
                    R();
                } else {
                    if (this.f50653e == 14) {
                        q2Var.e(stringRules);
                    }
                    this.f50671w.g(stringRules);
                }
                this.f50653e = 14;
                return this;
            }

            public b J0(TimestampRules timestampRules) {
                q2<TimestampRules, TimestampRules.b, v> q2Var = this.D;
                if (q2Var == null) {
                    if (this.f50653e == 22 && this.f50654f != TimestampRules.getDefaultInstance()) {
                        this.f50654f = TimestampRules.newBuilder((TimestampRules) this.f50654f).u0(timestampRules).I();
                    } else {
                        this.f50654f = timestampRules;
                    }
                    R();
                } else {
                    if (this.f50653e == 22) {
                        q2Var.e(timestampRules);
                    }
                    this.D.g(timestampRules);
                }
                this.f50653e = 22;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return Validate.f50583e.d(FieldRules.class, b.class);
            }

            public b K0(UInt32Rules uInt32Rules) {
                q2<UInt32Rules, UInt32Rules.b, w> q2Var = this.f50662n;
                if (q2Var == null) {
                    if (this.f50653e == 5 && this.f50654f != UInt32Rules.getDefaultInstance()) {
                        this.f50654f = UInt32Rules.newBuilder((UInt32Rules) this.f50654f).i0(uInt32Rules).I();
                    } else {
                        this.f50654f = uInt32Rules;
                    }
                    R();
                } else {
                    if (this.f50653e == 5) {
                        q2Var.e(uInt32Rules);
                    }
                    this.f50662n.g(uInt32Rules);
                }
                this.f50653e = 5;
                return this;
            }

            public b L0(UInt64Rules uInt64Rules) {
                q2<UInt64Rules, UInt64Rules.b, x> q2Var = this.f50663o;
                if (q2Var == null) {
                    if (this.f50653e == 6 && this.f50654f != UInt64Rules.getDefaultInstance()) {
                        this.f50654f = UInt64Rules.newBuilder((UInt64Rules) this.f50654f).i0(uInt64Rules).I();
                    } else {
                        this.f50654f = uInt64Rules;
                    }
                    R();
                } else {
                    if (this.f50653e == 6) {
                        q2Var.e(uInt64Rules);
                    }
                    this.f50663o.g(uInt64Rules);
                }
                this.f50653e = 6;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: M0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: N0 */
            public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.c(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: O0 */
            public final b f1(h3 h3Var) {
                return (b) super.f1(h3Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public FieldRules build() {
                FieldRules I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public FieldRules I() {
                int i9;
                FieldRules fieldRules = new FieldRules(this, (a) null);
                if ((this.f50655g & 1) != 0) {
                    q2<MessageRules, MessageRules.b, o> q2Var = this.f50657i;
                    if (q2Var == null) {
                        fieldRules.message_ = this.f50656h;
                    } else {
                        fieldRules.message_ = q2Var.b();
                    }
                    i9 = 1;
                } else {
                    i9 = 0;
                }
                if (this.f50653e == 1) {
                    q2<FloatRules, FloatRules.b, k> q2Var2 = this.f50658j;
                    if (q2Var2 == null) {
                        fieldRules.type_ = this.f50654f;
                    } else {
                        fieldRules.type_ = q2Var2.b();
                    }
                }
                if (this.f50653e == 2) {
                    q2<DoubleRules, DoubleRules.b, e> q2Var3 = this.f50659k;
                    if (q2Var3 == null) {
                        fieldRules.type_ = this.f50654f;
                    } else {
                        fieldRules.type_ = q2Var3.b();
                    }
                }
                if (this.f50653e == 3) {
                    q2<Int32Rules, Int32Rules.b, l> q2Var4 = this.f50660l;
                    if (q2Var4 == null) {
                        fieldRules.type_ = this.f50654f;
                    } else {
                        fieldRules.type_ = q2Var4.b();
                    }
                }
                if (this.f50653e == 4) {
                    q2<Int64Rules, Int64Rules.b, m> q2Var5 = this.f50661m;
                    if (q2Var5 == null) {
                        fieldRules.type_ = this.f50654f;
                    } else {
                        fieldRules.type_ = q2Var5.b();
                    }
                }
                if (this.f50653e == 5) {
                    q2<UInt32Rules, UInt32Rules.b, w> q2Var6 = this.f50662n;
                    if (q2Var6 == null) {
                        fieldRules.type_ = this.f50654f;
                    } else {
                        fieldRules.type_ = q2Var6.b();
                    }
                }
                if (this.f50653e == 6) {
                    q2<UInt64Rules, UInt64Rules.b, x> q2Var7 = this.f50663o;
                    if (q2Var7 == null) {
                        fieldRules.type_ = this.f50654f;
                    } else {
                        fieldRules.type_ = q2Var7.b();
                    }
                }
                if (this.f50653e == 7) {
                    q2<SInt32Rules, SInt32Rules.b, s> q2Var8 = this.f50664p;
                    if (q2Var8 == null) {
                        fieldRules.type_ = this.f50654f;
                    } else {
                        fieldRules.type_ = q2Var8.b();
                    }
                }
                if (this.f50653e == 8) {
                    q2<SInt64Rules, SInt64Rules.b, t> q2Var9 = this.f50665q;
                    if (q2Var9 == null) {
                        fieldRules.type_ = this.f50654f;
                    } else {
                        fieldRules.type_ = q2Var9.b();
                    }
                }
                if (this.f50653e == 9) {
                    q2<Fixed32Rules, Fixed32Rules.b, i> q2Var10 = this.f50666r;
                    if (q2Var10 == null) {
                        fieldRules.type_ = this.f50654f;
                    } else {
                        fieldRules.type_ = q2Var10.b();
                    }
                }
                if (this.f50653e == 10) {
                    q2<Fixed64Rules, Fixed64Rules.b, j> q2Var11 = this.f50667s;
                    if (q2Var11 == null) {
                        fieldRules.type_ = this.f50654f;
                    } else {
                        fieldRules.type_ = q2Var11.b();
                    }
                }
                if (this.f50653e == 11) {
                    q2<SFixed32Rules, SFixed32Rules.b, q> q2Var12 = this.f50668t;
                    if (q2Var12 == null) {
                        fieldRules.type_ = this.f50654f;
                    } else {
                        fieldRules.type_ = q2Var12.b();
                    }
                }
                if (this.f50653e == 12) {
                    q2<SFixed64Rules, SFixed64Rules.b, r> q2Var13 = this.f50669u;
                    if (q2Var13 == null) {
                        fieldRules.type_ = this.f50654f;
                    } else {
                        fieldRules.type_ = q2Var13.b();
                    }
                }
                if (this.f50653e == 13) {
                    q2<BoolRules, BoolRules.b, c> q2Var14 = this.f50670v;
                    if (q2Var14 == null) {
                        fieldRules.type_ = this.f50654f;
                    } else {
                        fieldRules.type_ = q2Var14.b();
                    }
                }
                if (this.f50653e == 14) {
                    q2<StringRules, StringRules.b, u> q2Var15 = this.f50671w;
                    if (q2Var15 == null) {
                        fieldRules.type_ = this.f50654f;
                    } else {
                        fieldRules.type_ = q2Var15.b();
                    }
                }
                if (this.f50653e == 15) {
                    q2<BytesRules, BytesRules.b, d> q2Var16 = this.f50672x;
                    if (q2Var16 == null) {
                        fieldRules.type_ = this.f50654f;
                    } else {
                        fieldRules.type_ = q2Var16.b();
                    }
                }
                if (this.f50653e == 16) {
                    q2<EnumRules, EnumRules.b, g> q2Var17 = this.f50673y;
                    if (q2Var17 == null) {
                        fieldRules.type_ = this.f50654f;
                    } else {
                        fieldRules.type_ = q2Var17.b();
                    }
                }
                if (this.f50653e == 18) {
                    q2<RepeatedRules, RepeatedRules.b, p> q2Var18 = this.f50674z;
                    if (q2Var18 == null) {
                        fieldRules.type_ = this.f50654f;
                    } else {
                        fieldRules.type_ = q2Var18.b();
                    }
                }
                if (this.f50653e == 19) {
                    q2<MapRules, MapRules.b, n> q2Var19 = this.A;
                    if (q2Var19 == null) {
                        fieldRules.type_ = this.f50654f;
                    } else {
                        fieldRules.type_ = q2Var19.b();
                    }
                }
                if (this.f50653e == 20) {
                    q2<AnyRules, AnyRules.b, b> q2Var20 = this.B;
                    if (q2Var20 == null) {
                        fieldRules.type_ = this.f50654f;
                    } else {
                        fieldRules.type_ = q2Var20.b();
                    }
                }
                if (this.f50653e == 21) {
                    q2<DurationRules, DurationRules.b, f> q2Var21 = this.C;
                    if (q2Var21 == null) {
                        fieldRules.type_ = this.f50654f;
                    } else {
                        fieldRules.type_ = q2Var21.b();
                    }
                }
                if (this.f50653e == 22) {
                    q2<TimestampRules, TimestampRules.b, v> q2Var22 = this.D;
                    if (q2Var22 == null) {
                        fieldRules.type_ = this.f50654f;
                    } else {
                        fieldRules.type_ = q2Var22.b();
                    }
                }
                fieldRules.bitField0_ = i9;
                fieldRules.typeCase_ = this.f50653e;
                Q();
                return fieldRules;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public FieldRules getDefaultInstanceForType() {
                return FieldRules.getDefaultInstance();
            }

            public MessageRules b0() {
                q2<MessageRules, MessageRules.b, o> q2Var = this.f50657i;
                if (q2Var == null) {
                    MessageRules messageRules = this.f50656h;
                    return messageRules == null ? MessageRules.getDefaultInstance() : messageRules;
                }
                return q2Var.d();
            }

            public b g0(AnyRules anyRules) {
                q2<AnyRules, AnyRules.b, b> q2Var = this.B;
                if (q2Var == null) {
                    if (this.f50653e == 20 && this.f50654f != AnyRules.getDefaultInstance()) {
                        this.f50654f = AnyRules.newBuilder((AnyRules) this.f50654f).i0(anyRules).I();
                    } else {
                        this.f50654f = anyRules;
                    }
                    R();
                } else {
                    if (this.f50653e == 20) {
                        q2Var.e(anyRules);
                    }
                    this.B.g(anyRules);
                }
                this.f50653e = 20;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return Validate.f50582d;
            }

            public b h0(BoolRules boolRules) {
                q2<BoolRules, BoolRules.b, c> q2Var = this.f50670v;
                if (q2Var == null) {
                    if (this.f50653e == 13 && this.f50654f != BoolRules.getDefaultInstance()) {
                        this.f50654f = BoolRules.newBuilder((BoolRules) this.f50654f).g0(boolRules).I();
                    } else {
                        this.f50654f = boolRules;
                    }
                    R();
                } else {
                    if (this.f50653e == 13) {
                        q2Var.e(boolRules);
                    }
                    this.f50670v.g(boolRules);
                }
                this.f50653e = 13;
                return this;
            }

            public b i0(BytesRules bytesRules) {
                q2<BytesRules, BytesRules.b, d> q2Var = this.f50672x;
                if (q2Var == null) {
                    if (this.f50653e == 15 && this.f50654f != BytesRules.getDefaultInstance()) {
                        this.f50654f = BytesRules.newBuilder((BytesRules) this.f50654f).i0(bytesRules).I();
                    } else {
                        this.f50654f = bytesRules;
                    }
                    R();
                } else {
                    if (this.f50653e == 15) {
                        q2Var.e(bytesRules);
                    }
                    this.f50672x.g(bytesRules);
                }
                this.f50653e = 15;
                return this;
            }

            public b j0(DoubleRules doubleRules) {
                q2<DoubleRules, DoubleRules.b, e> q2Var = this.f50659k;
                if (q2Var == null) {
                    if (this.f50653e == 2 && this.f50654f != DoubleRules.getDefaultInstance()) {
                        this.f50654f = DoubleRules.newBuilder((DoubleRules) this.f50654f).i0(doubleRules).I();
                    } else {
                        this.f50654f = doubleRules;
                    }
                    R();
                } else {
                    if (this.f50653e == 2) {
                        q2Var.e(doubleRules);
                    }
                    this.f50659k.g(doubleRules);
                }
                this.f50653e = 2;
                return this;
            }

            public b k0(DurationRules durationRules) {
                q2<DurationRules, DurationRules.b, f> q2Var = this.C;
                if (q2Var == null) {
                    if (this.f50653e == 21 && this.f50654f != DurationRules.getDefaultInstance()) {
                        this.f50654f = DurationRules.newBuilder((DurationRules) this.f50654f).x0(durationRules).I();
                    } else {
                        this.f50654f = durationRules;
                    }
                    R();
                } else {
                    if (this.f50653e == 21) {
                        q2Var.e(durationRules);
                    }
                    this.C.g(durationRules);
                }
                this.f50653e = 21;
                return this;
            }

            public b l0(EnumRules enumRules) {
                q2<EnumRules, EnumRules.b, g> q2Var = this.f50673y;
                if (q2Var == null) {
                    if (this.f50653e == 16 && this.f50654f != EnumRules.getDefaultInstance()) {
                        this.f50654f = EnumRules.newBuilder((EnumRules) this.f50654f).i0(enumRules).I();
                    } else {
                        this.f50654f = enumRules;
                    }
                    R();
                } else {
                    if (this.f50653e == 16) {
                        q2Var.e(enumRules);
                    }
                    this.f50673y.g(enumRules);
                }
                this.f50653e = 16;
                return this;
            }

            public b m0(Fixed32Rules fixed32Rules) {
                q2<Fixed32Rules, Fixed32Rules.b, i> q2Var = this.f50666r;
                if (q2Var == null) {
                    if (this.f50653e == 9 && this.f50654f != Fixed32Rules.getDefaultInstance()) {
                        this.f50654f = Fixed32Rules.newBuilder((Fixed32Rules) this.f50654f).i0(fixed32Rules).I();
                    } else {
                        this.f50654f = fixed32Rules;
                    }
                    R();
                } else {
                    if (this.f50653e == 9) {
                        q2Var.e(fixed32Rules);
                    }
                    this.f50666r.g(fixed32Rules);
                }
                this.f50653e = 9;
                return this;
            }

            public b n0(Fixed64Rules fixed64Rules) {
                q2<Fixed64Rules, Fixed64Rules.b, j> q2Var = this.f50667s;
                if (q2Var == null) {
                    if (this.f50653e == 10 && this.f50654f != Fixed64Rules.getDefaultInstance()) {
                        this.f50654f = Fixed64Rules.newBuilder((Fixed64Rules) this.f50654f).i0(fixed64Rules).I();
                    } else {
                        this.f50654f = fixed64Rules;
                    }
                    R();
                } else {
                    if (this.f50653e == 10) {
                        q2Var.e(fixed64Rules);
                    }
                    this.f50667s.g(fixed64Rules);
                }
                this.f50653e = 10;
                return this;
            }

            public b o0(FloatRules floatRules) {
                q2<FloatRules, FloatRules.b, k> q2Var = this.f50658j;
                if (q2Var == null) {
                    if (this.f50653e == 1 && this.f50654f != FloatRules.getDefaultInstance()) {
                        this.f50654f = FloatRules.newBuilder((FloatRules) this.f50654f).i0(floatRules).I();
                    } else {
                        this.f50654f = floatRules;
                    }
                    R();
                } else {
                    if (this.f50653e == 1) {
                        q2Var.e(floatRules);
                    }
                    this.f50658j.g(floatRules);
                }
                this.f50653e = 1;
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0021  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: q0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.FieldRules.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2<io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$FieldRules> r1 = io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.FieldRules.PARSER     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$FieldRules r3 = (io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.FieldRules) r3     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    if (r3 == 0) goto Le
                    r2.s0(r3)
                Le:
                    return r2
                Lf:
                    r3 = move-exception
                    goto L1f
                L11:
                    r3 = move-exception
                    com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> Lf
                    io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$FieldRules r4 = (io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.FieldRules) r4     // Catch: java.lang.Throwable -> Lf
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1d
                    throw r3     // Catch: java.lang.Throwable -> L1d
                L1d:
                    r3 = move-exception
                    r0 = r4
                L1f:
                    if (r0 == 0) goto L24
                    r2.s0(r0)
                L24:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.FieldRules.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$FieldRules$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: r0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof FieldRules) {
                    return s0((FieldRules) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b s0(FieldRules fieldRules) {
                if (fieldRules == FieldRules.getDefaultInstance()) {
                    return this;
                }
                if (fieldRules.hasMessage()) {
                    x0(fieldRules.getMessage());
                }
                switch (a.f50814a[fieldRules.getTypeCase().ordinal()]) {
                    case 1:
                        o0(fieldRules.getFloat());
                        break;
                    case 2:
                        j0(fieldRules.getDouble());
                        break;
                    case 3:
                        t0(fieldRules.getInt32());
                        break;
                    case 4:
                        u0(fieldRules.getInt64());
                        break;
                    case 5:
                        K0(fieldRules.getUint32());
                        break;
                    case 6:
                        L0(fieldRules.getUint64());
                        break;
                    case 7:
                        D0(fieldRules.getSint32());
                        break;
                    case 8:
                        H0(fieldRules.getSint64());
                        break;
                    case 9:
                        m0(fieldRules.getFixed32());
                        break;
                    case 10:
                        n0(fieldRules.getFixed64());
                        break;
                    case 11:
                        z0(fieldRules.getSfixed32());
                        break;
                    case 12:
                        B0(fieldRules.getSfixed64());
                        break;
                    case 13:
                        h0(fieldRules.getBool());
                        break;
                    case 14:
                        I0(fieldRules.getString());
                        break;
                    case 15:
                        i0(fieldRules.getBytes());
                        break;
                    case 16:
                        l0(fieldRules.getEnum());
                        break;
                    case 17:
                        y0(fieldRules.getRepeated());
                        break;
                    case 18:
                        v0(fieldRules.getMap());
                        break;
                    case 19:
                        g0(fieldRules.getAny());
                        break;
                    case 20:
                        k0(fieldRules.getDuration());
                        break;
                    case 21:
                        J0(fieldRules.getTimestamp());
                        break;
                }
                z(((GeneratedMessageV3) fieldRules).unknownFields);
                R();
                return this;
            }

            public b t0(Int32Rules int32Rules) {
                q2<Int32Rules, Int32Rules.b, l> q2Var = this.f50660l;
                if (q2Var == null) {
                    if (this.f50653e == 3 && this.f50654f != Int32Rules.getDefaultInstance()) {
                        this.f50654f = Int32Rules.newBuilder((Int32Rules) this.f50654f).i0(int32Rules).I();
                    } else {
                        this.f50654f = int32Rules;
                    }
                    R();
                } else {
                    if (this.f50653e == 3) {
                        q2Var.e(int32Rules);
                    }
                    this.f50660l.g(int32Rules);
                }
                this.f50653e = 3;
                return this;
            }

            public b u0(Int64Rules int64Rules) {
                q2<Int64Rules, Int64Rules.b, m> q2Var = this.f50661m;
                if (q2Var == null) {
                    if (this.f50653e == 4 && this.f50654f != Int64Rules.getDefaultInstance()) {
                        this.f50654f = Int64Rules.newBuilder((Int64Rules) this.f50654f).i0(int64Rules).I();
                    } else {
                        this.f50654f = int64Rules;
                    }
                    R();
                } else {
                    if (this.f50653e == 4) {
                        q2Var.e(int64Rules);
                    }
                    this.f50661m.g(int64Rules);
                }
                this.f50653e = 4;
                return this;
            }

            public b v0(MapRules mapRules) {
                q2<MapRules, MapRules.b, n> q2Var = this.A;
                if (q2Var == null) {
                    if (this.f50653e == 19 && this.f50654f != MapRules.getDefaultInstance()) {
                        this.f50654f = MapRules.newBuilder((MapRules) this.f50654f).k0(mapRules).I();
                    } else {
                        this.f50654f = mapRules;
                    }
                    R();
                } else {
                    if (this.f50653e == 19) {
                        q2Var.e(mapRules);
                    }
                    this.A.g(mapRules);
                }
                this.f50653e = 19;
                return this;
            }

            public b x0(MessageRules messageRules) {
                MessageRules messageRules2;
                q2<MessageRules, MessageRules.b, o> q2Var = this.f50657i;
                if (q2Var == null) {
                    if ((this.f50655g & 1) != 0 && (messageRules2 = this.f50656h) != null && messageRules2 != MessageRules.getDefaultInstance()) {
                        this.f50656h = MessageRules.newBuilder(this.f50656h).g0(messageRules).I();
                    } else {
                        this.f50656h = messageRules;
                    }
                    R();
                } else {
                    q2Var.e(messageRules);
                }
                this.f50655g |= 1;
                return this;
            }

            public b y0(RepeatedRules repeatedRules) {
                q2<RepeatedRules, RepeatedRules.b, p> q2Var = this.f50674z;
                if (q2Var == null) {
                    if (this.f50653e == 18 && this.f50654f != RepeatedRules.getDefaultInstance()) {
                        this.f50654f = RepeatedRules.newBuilder((RepeatedRules) this.f50654f).i0(repeatedRules).I();
                    } else {
                        this.f50654f = repeatedRules;
                    }
                    R();
                } else {
                    if (this.f50653e == 18) {
                        q2Var.e(repeatedRules);
                    }
                    this.f50674z.g(repeatedRules);
                }
                this.f50653e = 18;
                return this;
            }

            public b z0(SFixed32Rules sFixed32Rules) {
                q2<SFixed32Rules, SFixed32Rules.b, q> q2Var = this.f50668t;
                if (q2Var == null) {
                    if (this.f50653e == 11 && this.f50654f != SFixed32Rules.getDefaultInstance()) {
                        this.f50654f = SFixed32Rules.newBuilder((SFixed32Rules) this.f50654f).i0(sFixed32Rules).I();
                    } else {
                        this.f50654f = sFixed32Rules;
                    }
                    R();
                } else {
                    if (this.f50653e == 11) {
                        q2Var.e(sFixed32Rules);
                    }
                    this.f50668t.g(sFixed32Rules);
                }
                this.f50653e = 11;
                return this;
            }

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                this.f50653e = 0;
                e0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f50653e = 0;
                e0();
            }
        }

        /* synthetic */ FieldRules(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static FieldRules getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return Validate.f50582d;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static FieldRules parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (FieldRules) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static FieldRules parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<FieldRules> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof FieldRules)) {
                return super.equals(obj);
            }
            FieldRules fieldRules = (FieldRules) obj;
            if (hasMessage() != fieldRules.hasMessage()) {
                return false;
            }
            if ((!hasMessage() || getMessage().equals(fieldRules.getMessage())) && getTypeCase().equals(fieldRules.getTypeCase())) {
                switch (this.typeCase_) {
                    case 1:
                        if (!getFloat().equals(fieldRules.getFloat())) {
                            return false;
                        }
                        break;
                    case 2:
                        if (!getDouble().equals(fieldRules.getDouble())) {
                            return false;
                        }
                        break;
                    case 3:
                        if (!getInt32().equals(fieldRules.getInt32())) {
                            return false;
                        }
                        break;
                    case 4:
                        if (!getInt64().equals(fieldRules.getInt64())) {
                            return false;
                        }
                        break;
                    case 5:
                        if (!getUint32().equals(fieldRules.getUint32())) {
                            return false;
                        }
                        break;
                    case 6:
                        if (!getUint64().equals(fieldRules.getUint64())) {
                            return false;
                        }
                        break;
                    case 7:
                        if (!getSint32().equals(fieldRules.getSint32())) {
                            return false;
                        }
                        break;
                    case 8:
                        if (!getSint64().equals(fieldRules.getSint64())) {
                            return false;
                        }
                        break;
                    case 9:
                        if (!getFixed32().equals(fieldRules.getFixed32())) {
                            return false;
                        }
                        break;
                    case 10:
                        if (!getFixed64().equals(fieldRules.getFixed64())) {
                            return false;
                        }
                        break;
                    case 11:
                        if (!getSfixed32().equals(fieldRules.getSfixed32())) {
                            return false;
                        }
                        break;
                    case 12:
                        if (!getSfixed64().equals(fieldRules.getSfixed64())) {
                            return false;
                        }
                        break;
                    case 13:
                        if (!getBool().equals(fieldRules.getBool())) {
                            return false;
                        }
                        break;
                    case 14:
                        if (!getString().equals(fieldRules.getString())) {
                            return false;
                        }
                        break;
                    case 15:
                        if (!getBytes().equals(fieldRules.getBytes())) {
                            return false;
                        }
                        break;
                    case 16:
                        if (!getEnum().equals(fieldRules.getEnum())) {
                            return false;
                        }
                        break;
                    case 18:
                        if (!getRepeated().equals(fieldRules.getRepeated())) {
                            return false;
                        }
                        break;
                    case 19:
                        if (!getMap().equals(fieldRules.getMap())) {
                            return false;
                        }
                        break;
                    case 20:
                        if (!getAny().equals(fieldRules.getAny())) {
                            return false;
                        }
                        break;
                    case 21:
                        if (!getDuration().equals(fieldRules.getDuration())) {
                            return false;
                        }
                        break;
                    case 22:
                        if (!getTimestamp().equals(fieldRules.getTimestamp())) {
                            return false;
                        }
                        break;
                }
                return this.unknownFields.equals(fieldRules.unknownFields);
            }
            return false;
        }

        public AnyRules getAny() {
            if (this.typeCase_ == 20) {
                return (AnyRules) this.type_;
            }
            return AnyRules.getDefaultInstance();
        }

        public b getAnyOrBuilder() {
            if (this.typeCase_ == 20) {
                return (AnyRules) this.type_;
            }
            return AnyRules.getDefaultInstance();
        }

        public BoolRules getBool() {
            if (this.typeCase_ == 13) {
                return (BoolRules) this.type_;
            }
            return BoolRules.getDefaultInstance();
        }

        public c getBoolOrBuilder() {
            if (this.typeCase_ == 13) {
                return (BoolRules) this.type_;
            }
            return BoolRules.getDefaultInstance();
        }

        public BytesRules getBytes() {
            if (this.typeCase_ == 15) {
                return (BytesRules) this.type_;
            }
            return BytesRules.getDefaultInstance();
        }

        public d getBytesOrBuilder() {
            if (this.typeCase_ == 15) {
                return (BytesRules) this.type_;
            }
            return BytesRules.getDefaultInstance();
        }

        public DoubleRules getDouble() {
            if (this.typeCase_ == 2) {
                return (DoubleRules) this.type_;
            }
            return DoubleRules.getDefaultInstance();
        }

        public e getDoubleOrBuilder() {
            if (this.typeCase_ == 2) {
                return (DoubleRules) this.type_;
            }
            return DoubleRules.getDefaultInstance();
        }

        public DurationRules getDuration() {
            if (this.typeCase_ == 21) {
                return (DurationRules) this.type_;
            }
            return DurationRules.getDefaultInstance();
        }

        public f getDurationOrBuilder() {
            if (this.typeCase_ == 21) {
                return (DurationRules) this.type_;
            }
            return DurationRules.getDefaultInstance();
        }

        public EnumRules getEnum() {
            if (this.typeCase_ == 16) {
                return (EnumRules) this.type_;
            }
            return EnumRules.getDefaultInstance();
        }

        public g getEnumOrBuilder() {
            if (this.typeCase_ == 16) {
                return (EnumRules) this.type_;
            }
            return EnumRules.getDefaultInstance();
        }

        public Fixed32Rules getFixed32() {
            if (this.typeCase_ == 9) {
                return (Fixed32Rules) this.type_;
            }
            return Fixed32Rules.getDefaultInstance();
        }

        public i getFixed32OrBuilder() {
            if (this.typeCase_ == 9) {
                return (Fixed32Rules) this.type_;
            }
            return Fixed32Rules.getDefaultInstance();
        }

        public Fixed64Rules getFixed64() {
            if (this.typeCase_ == 10) {
                return (Fixed64Rules) this.type_;
            }
            return Fixed64Rules.getDefaultInstance();
        }

        public j getFixed64OrBuilder() {
            if (this.typeCase_ == 10) {
                return (Fixed64Rules) this.type_;
            }
            return Fixed64Rules.getDefaultInstance();
        }

        public FloatRules getFloat() {
            if (this.typeCase_ == 1) {
                return (FloatRules) this.type_;
            }
            return FloatRules.getDefaultInstance();
        }

        public k getFloatOrBuilder() {
            if (this.typeCase_ == 1) {
                return (FloatRules) this.type_;
            }
            return FloatRules.getDefaultInstance();
        }

        public Int32Rules getInt32() {
            if (this.typeCase_ == 3) {
                return (Int32Rules) this.type_;
            }
            return Int32Rules.getDefaultInstance();
        }

        public l getInt32OrBuilder() {
            if (this.typeCase_ == 3) {
                return (Int32Rules) this.type_;
            }
            return Int32Rules.getDefaultInstance();
        }

        public Int64Rules getInt64() {
            if (this.typeCase_ == 4) {
                return (Int64Rules) this.type_;
            }
            return Int64Rules.getDefaultInstance();
        }

        public m getInt64OrBuilder() {
            if (this.typeCase_ == 4) {
                return (Int64Rules) this.type_;
            }
            return Int64Rules.getDefaultInstance();
        }

        public MapRules getMap() {
            if (this.typeCase_ == 19) {
                return (MapRules) this.type_;
            }
            return MapRules.getDefaultInstance();
        }

        public n getMapOrBuilder() {
            if (this.typeCase_ == 19) {
                return (MapRules) this.type_;
            }
            return MapRules.getDefaultInstance();
        }

        public MessageRules getMessage() {
            MessageRules messageRules = this.message_;
            return messageRules == null ? MessageRules.getDefaultInstance() : messageRules;
        }

        public o getMessageOrBuilder() {
            MessageRules messageRules = this.message_;
            return messageRules == null ? MessageRules.getDefaultInstance() : messageRules;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<FieldRules> getParserForType() {
            return PARSER;
        }

        public RepeatedRules getRepeated() {
            if (this.typeCase_ == 18) {
                return (RepeatedRules) this.type_;
            }
            return RepeatedRules.getDefaultInstance();
        }

        public p getRepeatedOrBuilder() {
            if (this.typeCase_ == 18) {
                return (RepeatedRules) this.type_;
            }
            return RepeatedRules.getDefaultInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int G = this.typeCase_ == 1 ? 0 + CodedOutputStream.G(1, (FloatRules) this.type_) : 0;
            if (this.typeCase_ == 2) {
                G += CodedOutputStream.G(2, (DoubleRules) this.type_);
            }
            if (this.typeCase_ == 3) {
                G += CodedOutputStream.G(3, (Int32Rules) this.type_);
            }
            if (this.typeCase_ == 4) {
                G += CodedOutputStream.G(4, (Int64Rules) this.type_);
            }
            if (this.typeCase_ == 5) {
                G += CodedOutputStream.G(5, (UInt32Rules) this.type_);
            }
            if (this.typeCase_ == 6) {
                G += CodedOutputStream.G(6, (UInt64Rules) this.type_);
            }
            if (this.typeCase_ == 7) {
                G += CodedOutputStream.G(7, (SInt32Rules) this.type_);
            }
            if (this.typeCase_ == 8) {
                G += CodedOutputStream.G(8, (SInt64Rules) this.type_);
            }
            if (this.typeCase_ == 9) {
                G += CodedOutputStream.G(9, (Fixed32Rules) this.type_);
            }
            if (this.typeCase_ == 10) {
                G += CodedOutputStream.G(10, (Fixed64Rules) this.type_);
            }
            if (this.typeCase_ == 11) {
                G += CodedOutputStream.G(11, (SFixed32Rules) this.type_);
            }
            if (this.typeCase_ == 12) {
                G += CodedOutputStream.G(12, (SFixed64Rules) this.type_);
            }
            if (this.typeCase_ == 13) {
                G += CodedOutputStream.G(13, (BoolRules) this.type_);
            }
            if (this.typeCase_ == 14) {
                G += CodedOutputStream.G(14, (StringRules) this.type_);
            }
            if (this.typeCase_ == 15) {
                G += CodedOutputStream.G(15, (BytesRules) this.type_);
            }
            if (this.typeCase_ == 16) {
                G += CodedOutputStream.G(16, (EnumRules) this.type_);
            }
            if ((this.bitField0_ & 1) != 0) {
                G += CodedOutputStream.G(17, getMessage());
            }
            if (this.typeCase_ == 18) {
                G += CodedOutputStream.G(18, (RepeatedRules) this.type_);
            }
            if (this.typeCase_ == 19) {
                G += CodedOutputStream.G(19, (MapRules) this.type_);
            }
            if (this.typeCase_ == 20) {
                G += CodedOutputStream.G(20, (AnyRules) this.type_);
            }
            if (this.typeCase_ == 21) {
                G += CodedOutputStream.G(21, (DurationRules) this.type_);
            }
            if (this.typeCase_ == 22) {
                G += CodedOutputStream.G(22, (TimestampRules) this.type_);
            }
            int serializedSize = G + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        public SFixed32Rules getSfixed32() {
            if (this.typeCase_ == 11) {
                return (SFixed32Rules) this.type_;
            }
            return SFixed32Rules.getDefaultInstance();
        }

        public q getSfixed32OrBuilder() {
            if (this.typeCase_ == 11) {
                return (SFixed32Rules) this.type_;
            }
            return SFixed32Rules.getDefaultInstance();
        }

        public SFixed64Rules getSfixed64() {
            if (this.typeCase_ == 12) {
                return (SFixed64Rules) this.type_;
            }
            return SFixed64Rules.getDefaultInstance();
        }

        public r getSfixed64OrBuilder() {
            if (this.typeCase_ == 12) {
                return (SFixed64Rules) this.type_;
            }
            return SFixed64Rules.getDefaultInstance();
        }

        public SInt32Rules getSint32() {
            if (this.typeCase_ == 7) {
                return (SInt32Rules) this.type_;
            }
            return SInt32Rules.getDefaultInstance();
        }

        public s getSint32OrBuilder() {
            if (this.typeCase_ == 7) {
                return (SInt32Rules) this.type_;
            }
            return SInt32Rules.getDefaultInstance();
        }

        public SInt64Rules getSint64() {
            if (this.typeCase_ == 8) {
                return (SInt64Rules) this.type_;
            }
            return SInt64Rules.getDefaultInstance();
        }

        public t getSint64OrBuilder() {
            if (this.typeCase_ == 8) {
                return (SInt64Rules) this.type_;
            }
            return SInt64Rules.getDefaultInstance();
        }

        public StringRules getString() {
            if (this.typeCase_ == 14) {
                return (StringRules) this.type_;
            }
            return StringRules.getDefaultInstance();
        }

        public u getStringOrBuilder() {
            if (this.typeCase_ == 14) {
                return (StringRules) this.type_;
            }
            return StringRules.getDefaultInstance();
        }

        public TimestampRules getTimestamp() {
            if (this.typeCase_ == 22) {
                return (TimestampRules) this.type_;
            }
            return TimestampRules.getDefaultInstance();
        }

        public v getTimestampOrBuilder() {
            if (this.typeCase_ == 22) {
                return (TimestampRules) this.type_;
            }
            return TimestampRules.getDefaultInstance();
        }

        public TypeCase getTypeCase() {
            return TypeCase.forNumber(this.typeCase_);
        }

        public UInt32Rules getUint32() {
            if (this.typeCase_ == 5) {
                return (UInt32Rules) this.type_;
            }
            return UInt32Rules.getDefaultInstance();
        }

        public w getUint32OrBuilder() {
            if (this.typeCase_ == 5) {
                return (UInt32Rules) this.type_;
            }
            return UInt32Rules.getDefaultInstance();
        }

        public UInt64Rules getUint64() {
            if (this.typeCase_ == 6) {
                return (UInt64Rules) this.type_;
            }
            return UInt64Rules.getDefaultInstance();
        }

        public x getUint64OrBuilder() {
            if (this.typeCase_ == 6) {
                return (UInt64Rules) this.type_;
            }
            return UInt64Rules.getDefaultInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasAny() {
            return this.typeCase_ == 20;
        }

        public boolean hasBool() {
            return this.typeCase_ == 13;
        }

        public boolean hasBytes() {
            return this.typeCase_ == 15;
        }

        public boolean hasDouble() {
            return this.typeCase_ == 2;
        }

        public boolean hasDuration() {
            return this.typeCase_ == 21;
        }

        public boolean hasEnum() {
            return this.typeCase_ == 16;
        }

        public boolean hasFixed32() {
            return this.typeCase_ == 9;
        }

        public boolean hasFixed64() {
            return this.typeCase_ == 10;
        }

        public boolean hasFloat() {
            return this.typeCase_ == 1;
        }

        public boolean hasInt32() {
            return this.typeCase_ == 3;
        }

        public boolean hasInt64() {
            return this.typeCase_ == 4;
        }

        public boolean hasMap() {
            return this.typeCase_ == 19;
        }

        public boolean hasMessage() {
            return (this.bitField0_ & 1) != 0;
        }

        public boolean hasRepeated() {
            return this.typeCase_ == 18;
        }

        public boolean hasSfixed32() {
            return this.typeCase_ == 11;
        }

        public boolean hasSfixed64() {
            return this.typeCase_ == 12;
        }

        public boolean hasSint32() {
            return this.typeCase_ == 7;
        }

        public boolean hasSint64() {
            return this.typeCase_ == 8;
        }

        public boolean hasString() {
            return this.typeCase_ == 14;
        }

        public boolean hasTimestamp() {
            return this.typeCase_ == 22;
        }

        public boolean hasUint32() {
            return this.typeCase_ == 5;
        }

        public boolean hasUint64() {
            return this.typeCase_ == 6;
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
            if (hasMessage()) {
                hashCode2 = (((hashCode2 * 37) + 17) * 53) + getMessage().hashCode();
            }
            switch (this.typeCase_) {
                case 1:
                    i9 = ((hashCode2 * 37) + 1) * 53;
                    hashCode = getFloat().hashCode();
                    hashCode2 = i9 + hashCode;
                    int hashCode3 = (hashCode2 * 29) + this.unknownFields.hashCode();
                    this.memoizedHashCode = hashCode3;
                    return hashCode3;
                case 2:
                    i9 = ((hashCode2 * 37) + 2) * 53;
                    hashCode = getDouble().hashCode();
                    hashCode2 = i9 + hashCode;
                    int hashCode32 = (hashCode2 * 29) + this.unknownFields.hashCode();
                    this.memoizedHashCode = hashCode32;
                    return hashCode32;
                case 3:
                    i9 = ((hashCode2 * 37) + 3) * 53;
                    hashCode = getInt32().hashCode();
                    hashCode2 = i9 + hashCode;
                    int hashCode322 = (hashCode2 * 29) + this.unknownFields.hashCode();
                    this.memoizedHashCode = hashCode322;
                    return hashCode322;
                case 4:
                    i9 = ((hashCode2 * 37) + 4) * 53;
                    hashCode = getInt64().hashCode();
                    hashCode2 = i9 + hashCode;
                    int hashCode3222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                    this.memoizedHashCode = hashCode3222;
                    return hashCode3222;
                case 5:
                    i9 = ((hashCode2 * 37) + 5) * 53;
                    hashCode = getUint32().hashCode();
                    hashCode2 = i9 + hashCode;
                    int hashCode32222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                    this.memoizedHashCode = hashCode32222;
                    return hashCode32222;
                case 6:
                    i9 = ((hashCode2 * 37) + 6) * 53;
                    hashCode = getUint64().hashCode();
                    hashCode2 = i9 + hashCode;
                    int hashCode322222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                    this.memoizedHashCode = hashCode322222;
                    return hashCode322222;
                case 7:
                    i9 = ((hashCode2 * 37) + 7) * 53;
                    hashCode = getSint32().hashCode();
                    hashCode2 = i9 + hashCode;
                    int hashCode3222222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                    this.memoizedHashCode = hashCode3222222;
                    return hashCode3222222;
                case 8:
                    i9 = ((hashCode2 * 37) + 8) * 53;
                    hashCode = getSint64().hashCode();
                    hashCode2 = i9 + hashCode;
                    int hashCode32222222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                    this.memoizedHashCode = hashCode32222222;
                    return hashCode32222222;
                case 9:
                    i9 = ((hashCode2 * 37) + 9) * 53;
                    hashCode = getFixed32().hashCode();
                    hashCode2 = i9 + hashCode;
                    int hashCode322222222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                    this.memoizedHashCode = hashCode322222222;
                    return hashCode322222222;
                case 10:
                    i9 = ((hashCode2 * 37) + 10) * 53;
                    hashCode = getFixed64().hashCode();
                    hashCode2 = i9 + hashCode;
                    int hashCode3222222222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                    this.memoizedHashCode = hashCode3222222222;
                    return hashCode3222222222;
                case 11:
                    i9 = ((hashCode2 * 37) + 11) * 53;
                    hashCode = getSfixed32().hashCode();
                    hashCode2 = i9 + hashCode;
                    int hashCode32222222222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                    this.memoizedHashCode = hashCode32222222222;
                    return hashCode32222222222;
                case 12:
                    i9 = ((hashCode2 * 37) + 12) * 53;
                    hashCode = getSfixed64().hashCode();
                    hashCode2 = i9 + hashCode;
                    int hashCode322222222222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                    this.memoizedHashCode = hashCode322222222222;
                    return hashCode322222222222;
                case 13:
                    i9 = ((hashCode2 * 37) + 13) * 53;
                    hashCode = getBool().hashCode();
                    hashCode2 = i9 + hashCode;
                    int hashCode3222222222222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                    this.memoizedHashCode = hashCode3222222222222;
                    return hashCode3222222222222;
                case 14:
                    i9 = ((hashCode2 * 37) + 14) * 53;
                    hashCode = getString().hashCode();
                    hashCode2 = i9 + hashCode;
                    int hashCode32222222222222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                    this.memoizedHashCode = hashCode32222222222222;
                    return hashCode32222222222222;
                case 15:
                    i9 = ((hashCode2 * 37) + 15) * 53;
                    hashCode = getBytes().hashCode();
                    hashCode2 = i9 + hashCode;
                    int hashCode322222222222222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                    this.memoizedHashCode = hashCode322222222222222;
                    return hashCode322222222222222;
                case 16:
                    i9 = ((hashCode2 * 37) + 16) * 53;
                    hashCode = getEnum().hashCode();
                    hashCode2 = i9 + hashCode;
                    int hashCode3222222222222222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                    this.memoizedHashCode = hashCode3222222222222222;
                    return hashCode3222222222222222;
                case 17:
                default:
                    int hashCode32222222222222222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                    this.memoizedHashCode = hashCode32222222222222222;
                    return hashCode32222222222222222;
                case 18:
                    i9 = ((hashCode2 * 37) + 18) * 53;
                    hashCode = getRepeated().hashCode();
                    hashCode2 = i9 + hashCode;
                    int hashCode322222222222222222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                    this.memoizedHashCode = hashCode322222222222222222;
                    return hashCode322222222222222222;
                case 19:
                    i9 = ((hashCode2 * 37) + 19) * 53;
                    hashCode = getMap().hashCode();
                    hashCode2 = i9 + hashCode;
                    int hashCode3222222222222222222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                    this.memoizedHashCode = hashCode3222222222222222222;
                    return hashCode3222222222222222222;
                case 20:
                    i9 = ((hashCode2 * 37) + 20) * 53;
                    hashCode = getAny().hashCode();
                    hashCode2 = i9 + hashCode;
                    int hashCode32222222222222222222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                    this.memoizedHashCode = hashCode32222222222222222222;
                    return hashCode32222222222222222222;
                case 21:
                    i9 = ((hashCode2 * 37) + 21) * 53;
                    hashCode = getDuration().hashCode();
                    hashCode2 = i9 + hashCode;
                    int hashCode322222222222222222222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                    this.memoizedHashCode = hashCode322222222222222222222;
                    return hashCode322222222222222222222;
                case 22:
                    i9 = ((hashCode2 * 37) + 22) * 53;
                    hashCode = getTimestamp().hashCode();
                    hashCode2 = i9 + hashCode;
                    int hashCode3222222222222222222222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                    this.memoizedHashCode = hashCode3222222222222222222222;
                    return hashCode3222222222222222222222;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return Validate.f50583e.d(FieldRules.class, b.class);
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
            return new FieldRules();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (this.typeCase_ == 1) {
                codedOutputStream.L0(1, (FloatRules) this.type_);
            }
            if (this.typeCase_ == 2) {
                codedOutputStream.L0(2, (DoubleRules) this.type_);
            }
            if (this.typeCase_ == 3) {
                codedOutputStream.L0(3, (Int32Rules) this.type_);
            }
            if (this.typeCase_ == 4) {
                codedOutputStream.L0(4, (Int64Rules) this.type_);
            }
            if (this.typeCase_ == 5) {
                codedOutputStream.L0(5, (UInt32Rules) this.type_);
            }
            if (this.typeCase_ == 6) {
                codedOutputStream.L0(6, (UInt64Rules) this.type_);
            }
            if (this.typeCase_ == 7) {
                codedOutputStream.L0(7, (SInt32Rules) this.type_);
            }
            if (this.typeCase_ == 8) {
                codedOutputStream.L0(8, (SInt64Rules) this.type_);
            }
            if (this.typeCase_ == 9) {
                codedOutputStream.L0(9, (Fixed32Rules) this.type_);
            }
            if (this.typeCase_ == 10) {
                codedOutputStream.L0(10, (Fixed64Rules) this.type_);
            }
            if (this.typeCase_ == 11) {
                codedOutputStream.L0(11, (SFixed32Rules) this.type_);
            }
            if (this.typeCase_ == 12) {
                codedOutputStream.L0(12, (SFixed64Rules) this.type_);
            }
            if (this.typeCase_ == 13) {
                codedOutputStream.L0(13, (BoolRules) this.type_);
            }
            if (this.typeCase_ == 14) {
                codedOutputStream.L0(14, (StringRules) this.type_);
            }
            if (this.typeCase_ == 15) {
                codedOutputStream.L0(15, (BytesRules) this.type_);
            }
            if (this.typeCase_ == 16) {
                codedOutputStream.L0(16, (EnumRules) this.type_);
            }
            if ((this.bitField0_ & 1) != 0) {
                codedOutputStream.L0(17, getMessage());
            }
            if (this.typeCase_ == 18) {
                codedOutputStream.L0(18, (RepeatedRules) this.type_);
            }
            if (this.typeCase_ == 19) {
                codedOutputStream.L0(19, (MapRules) this.type_);
            }
            if (this.typeCase_ == 20) {
                codedOutputStream.L0(20, (AnyRules) this.type_);
            }
            if (this.typeCase_ == 21) {
                codedOutputStream.L0(21, (DurationRules) this.type_);
            }
            if (this.typeCase_ == 22) {
                codedOutputStream.L0(22, (TimestampRules) this.type_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ FieldRules(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(FieldRules fieldRules) {
            return DEFAULT_INSTANCE.toBuilder().s0(fieldRules);
        }

        public static FieldRules parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private FieldRules(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.typeCase_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static FieldRules parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (FieldRules) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static FieldRules parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public FieldRules getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).s0(this);
        }

        public static FieldRules parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        public static FieldRules parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        private FieldRules() {
            this.typeCase_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static FieldRules parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static FieldRules parseFrom(InputStream inputStream) throws IOException {
            return (FieldRules) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private FieldRules(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            this();
            Objects.requireNonNull(f0Var);
            h3.b h10 = h3.h();
            boolean z10 = false;
            while (!z10) {
                try {
                    try {
                        try {
                            int L = pVar.L();
                            switch (L) {
                                case 0:
                                    break;
                                case 10:
                                    FloatRules.b builder = this.typeCase_ == 1 ? ((FloatRules) this.type_).toBuilder() : null;
                                    o1 B = pVar.B(FloatRules.PARSER, f0Var);
                                    this.type_ = B;
                                    if (builder != null) {
                                        builder.i0((FloatRules) B);
                                        this.type_ = builder.I();
                                    }
                                    this.typeCase_ = 1;
                                    continue;
                                case 18:
                                    DoubleRules.b builder2 = this.typeCase_ == 2 ? ((DoubleRules) this.type_).toBuilder() : null;
                                    o1 B2 = pVar.B(DoubleRules.PARSER, f0Var);
                                    this.type_ = B2;
                                    if (builder2 != null) {
                                        builder2.i0((DoubleRules) B2);
                                        this.type_ = builder2.I();
                                    }
                                    this.typeCase_ = 2;
                                    continue;
                                case 26:
                                    Int32Rules.b builder3 = this.typeCase_ == 3 ? ((Int32Rules) this.type_).toBuilder() : null;
                                    o1 B3 = pVar.B(Int32Rules.PARSER, f0Var);
                                    this.type_ = B3;
                                    if (builder3 != null) {
                                        builder3.i0((Int32Rules) B3);
                                        this.type_ = builder3.I();
                                    }
                                    this.typeCase_ = 3;
                                    continue;
                                case 34:
                                    Int64Rules.b builder4 = this.typeCase_ == 4 ? ((Int64Rules) this.type_).toBuilder() : null;
                                    o1 B4 = pVar.B(Int64Rules.PARSER, f0Var);
                                    this.type_ = B4;
                                    if (builder4 != null) {
                                        builder4.i0((Int64Rules) B4);
                                        this.type_ = builder4.I();
                                    }
                                    this.typeCase_ = 4;
                                    continue;
                                case 42:
                                    UInt32Rules.b builder5 = this.typeCase_ == 5 ? ((UInt32Rules) this.type_).toBuilder() : null;
                                    o1 B5 = pVar.B(UInt32Rules.PARSER, f0Var);
                                    this.type_ = B5;
                                    if (builder5 != null) {
                                        builder5.i0((UInt32Rules) B5);
                                        this.type_ = builder5.I();
                                    }
                                    this.typeCase_ = 5;
                                    continue;
                                case 50:
                                    UInt64Rules.b builder6 = this.typeCase_ == 6 ? ((UInt64Rules) this.type_).toBuilder() : null;
                                    o1 B6 = pVar.B(UInt64Rules.PARSER, f0Var);
                                    this.type_ = B6;
                                    if (builder6 != null) {
                                        builder6.i0((UInt64Rules) B6);
                                        this.type_ = builder6.I();
                                    }
                                    this.typeCase_ = 6;
                                    continue;
                                case 58:
                                    SInt32Rules.b builder7 = this.typeCase_ == 7 ? ((SInt32Rules) this.type_).toBuilder() : null;
                                    o1 B7 = pVar.B(SInt32Rules.PARSER, f0Var);
                                    this.type_ = B7;
                                    if (builder7 != null) {
                                        builder7.i0((SInt32Rules) B7);
                                        this.type_ = builder7.I();
                                    }
                                    this.typeCase_ = 7;
                                    continue;
                                case 66:
                                    SInt64Rules.b builder8 = this.typeCase_ == 8 ? ((SInt64Rules) this.type_).toBuilder() : null;
                                    o1 B8 = pVar.B(SInt64Rules.PARSER, f0Var);
                                    this.type_ = B8;
                                    if (builder8 != null) {
                                        builder8.i0((SInt64Rules) B8);
                                        this.type_ = builder8.I();
                                    }
                                    this.typeCase_ = 8;
                                    continue;
                                case 74:
                                    Fixed32Rules.b builder9 = this.typeCase_ == 9 ? ((Fixed32Rules) this.type_).toBuilder() : null;
                                    o1 B9 = pVar.B(Fixed32Rules.PARSER, f0Var);
                                    this.type_ = B9;
                                    if (builder9 != null) {
                                        builder9.i0((Fixed32Rules) B9);
                                        this.type_ = builder9.I();
                                    }
                                    this.typeCase_ = 9;
                                    continue;
                                case 82:
                                    Fixed64Rules.b builder10 = this.typeCase_ == 10 ? ((Fixed64Rules) this.type_).toBuilder() : null;
                                    o1 B10 = pVar.B(Fixed64Rules.PARSER, f0Var);
                                    this.type_ = B10;
                                    if (builder10 != null) {
                                        builder10.i0((Fixed64Rules) B10);
                                        this.type_ = builder10.I();
                                    }
                                    this.typeCase_ = 10;
                                    continue;
                                case 90:
                                    SFixed32Rules.b builder11 = this.typeCase_ == 11 ? ((SFixed32Rules) this.type_).toBuilder() : null;
                                    o1 B11 = pVar.B(SFixed32Rules.PARSER, f0Var);
                                    this.type_ = B11;
                                    if (builder11 != null) {
                                        builder11.i0((SFixed32Rules) B11);
                                        this.type_ = builder11.I();
                                    }
                                    this.typeCase_ = 11;
                                    continue;
                                case 98:
                                    SFixed64Rules.b builder12 = this.typeCase_ == 12 ? ((SFixed64Rules) this.type_).toBuilder() : null;
                                    o1 B12 = pVar.B(SFixed64Rules.PARSER, f0Var);
                                    this.type_ = B12;
                                    if (builder12 != null) {
                                        builder12.i0((SFixed64Rules) B12);
                                        this.type_ = builder12.I();
                                    }
                                    this.typeCase_ = 12;
                                    continue;
                                case 106:
                                    BoolRules.b builder13 = this.typeCase_ == 13 ? ((BoolRules) this.type_).toBuilder() : null;
                                    o1 B13 = pVar.B(BoolRules.PARSER, f0Var);
                                    this.type_ = B13;
                                    if (builder13 != null) {
                                        builder13.g0((BoolRules) B13);
                                        this.type_ = builder13.I();
                                    }
                                    this.typeCase_ = 13;
                                    continue;
                                case 114:
                                    StringRules.b builder14 = this.typeCase_ == 14 ? ((StringRules) this.type_).toBuilder() : null;
                                    o1 B14 = pVar.B(StringRules.PARSER, f0Var);
                                    this.type_ = B14;
                                    if (builder14 != null) {
                                        builder14.i0((StringRules) B14);
                                        this.type_ = builder14.I();
                                    }
                                    this.typeCase_ = 14;
                                    continue;
                                case 122:
                                    BytesRules.b builder15 = this.typeCase_ == 15 ? ((BytesRules) this.type_).toBuilder() : null;
                                    o1 B15 = pVar.B(BytesRules.PARSER, f0Var);
                                    this.type_ = B15;
                                    if (builder15 != null) {
                                        builder15.i0((BytesRules) B15);
                                        this.type_ = builder15.I();
                                    }
                                    this.typeCase_ = 15;
                                    continue;
                                case 130:
                                    EnumRules.b builder16 = this.typeCase_ == 16 ? ((EnumRules) this.type_).toBuilder() : null;
                                    o1 B16 = pVar.B(EnumRules.PARSER, f0Var);
                                    this.type_ = B16;
                                    if (builder16 != null) {
                                        builder16.i0((EnumRules) B16);
                                        this.type_ = builder16.I();
                                    }
                                    this.typeCase_ = 16;
                                    continue;
                                case 138:
                                    MessageRules.b builder17 = (this.bitField0_ & 1) != 0 ? this.message_.toBuilder() : null;
                                    MessageRules messageRules = (MessageRules) pVar.B(MessageRules.PARSER, f0Var);
                                    this.message_ = messageRules;
                                    if (builder17 != null) {
                                        builder17.g0(messageRules);
                                        this.message_ = builder17.I();
                                    }
                                    this.bitField0_ |= 1;
                                    continue;
                                case TPOptionalID.OPTION_ID_BEFORE_BOOL_ENABLE_IGNORE_VIDEO_STREAM_IN_COMMON_AUDIO_FORMATS /* 146 */:
                                    RepeatedRules.b builder18 = this.typeCase_ == 18 ? ((RepeatedRules) this.type_).toBuilder() : null;
                                    o1 B17 = pVar.B(RepeatedRules.PARSER, f0Var);
                                    this.type_ = B17;
                                    if (builder18 != null) {
                                        builder18.i0((RepeatedRules) B17);
                                        this.type_ = builder18.I();
                                    }
                                    this.typeCase_ = 18;
                                    continue;
                                case 154:
                                    MapRules.b builder19 = this.typeCase_ == 19 ? ((MapRules) this.type_).toBuilder() : null;
                                    o1 B18 = pVar.B(MapRules.PARSER, f0Var);
                                    this.type_ = B18;
                                    if (builder19 != null) {
                                        builder19.k0((MapRules) B18);
                                        this.type_ = builder19.I();
                                    }
                                    this.typeCase_ = 19;
                                    continue;
                                case 162:
                                    AnyRules.b builder20 = this.typeCase_ == 20 ? ((AnyRules) this.type_).toBuilder() : null;
                                    o1 B19 = pVar.B(AnyRules.PARSER, f0Var);
                                    this.type_ = B19;
                                    if (builder20 != null) {
                                        builder20.i0((AnyRules) B19);
                                        this.type_ = builder20.I();
                                    }
                                    this.typeCase_ = 20;
                                    continue;
                                case 170:
                                    DurationRules.b builder21 = this.typeCase_ == 21 ? ((DurationRules) this.type_).toBuilder() : null;
                                    o1 B20 = pVar.B(DurationRules.PARSER, f0Var);
                                    this.type_ = B20;
                                    if (builder21 != null) {
                                        builder21.x0((DurationRules) B20);
                                        this.type_ = builder21.I();
                                    }
                                    this.typeCase_ = 21;
                                    continue;
                                case EventTrackingUtils.EVENT_TRACKING_RESULT_CODE /* 178 */:
                                    TimestampRules.b builder22 = this.typeCase_ == 22 ? ((TimestampRules) this.type_).toBuilder() : null;
                                    o1 B21 = pVar.B(TimestampRules.PARSER, f0Var);
                                    this.type_ = B21;
                                    if (builder22 != null) {
                                        builder22.u0((TimestampRules) B21);
                                        this.type_ = builder22.I();
                                    }
                                    this.typeCase_ = 22;
                                    continue;
                                default:
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                        break;
                                    } else {
                                        continue;
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

        public static FieldRules parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (FieldRules) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static FieldRules parseFrom(com.google.protobuf.p pVar) throws IOException {
            return (FieldRules) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static FieldRules parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
            return (FieldRules) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes5.dex */
    public static final class Fixed32Rules extends GeneratedMessageV3 implements i {
        public static final int CONST_FIELD_NUMBER = 1;
        public static final int GTE_FIELD_NUMBER = 5;
        public static final int GT_FIELD_NUMBER = 4;
        public static final int IN_FIELD_NUMBER = 6;
        public static final int LTE_FIELD_NUMBER = 3;
        public static final int LT_FIELD_NUMBER = 2;
        public static final int NOT_IN_FIELD_NUMBER = 7;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private int const_;
        private int gt_;
        private int gte_;
        private u0.g in_;
        private int lt_;
        private int lte_;
        private byte memoizedIsInitialized;
        private u0.g notIn_;
        private static final Fixed32Rules DEFAULT_INSTANCE = new Fixed32Rules();
        @Deprecated
        public static final e2<Fixed32Rules> PARSER = new a();

        /* loaded from: classes5.dex */
        class a extends com.google.protobuf.c<Fixed32Rules> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public Fixed32Rules m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new Fixed32Rules(pVar, f0Var, null);
            }
        }

        /* loaded from: classes5.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements i {

            /* renamed from: e  reason: collision with root package name */
            private int f50675e;

            /* renamed from: f  reason: collision with root package name */
            private int f50676f;

            /* renamed from: g  reason: collision with root package name */
            private int f50677g;

            /* renamed from: h  reason: collision with root package name */
            private int f50678h;

            /* renamed from: i  reason: collision with root package name */
            private int f50679i;

            /* renamed from: j  reason: collision with root package name */
            private int f50680j;

            /* renamed from: k  reason: collision with root package name */
            private u0.g f50681k;

            /* renamed from: l  reason: collision with root package name */
            private u0.g f50682l;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void a0() {
                if ((this.f50675e & 32) == 0) {
                    this.f50681k = GeneratedMessageV3.mutableCopy(this.f50681k);
                    this.f50675e |= 32;
                }
            }

            private void b0() {
                if ((this.f50675e & 64) == 0) {
                    this.f50682l = GeneratedMessageV3.mutableCopy(this.f50682l);
                    this.f50675e |= 64;
                }
            }

            private void e0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return Validate.f50601w.d(Fixed32Rules.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public Fixed32Rules build() {
                Fixed32Rules I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public Fixed32Rules I() {
                int i9;
                Fixed32Rules fixed32Rules = new Fixed32Rules(this, (a) null);
                int i10 = this.f50675e;
                if ((i10 & 1) != 0) {
                    fixed32Rules.const_ = this.f50676f;
                    i9 = 1;
                } else {
                    i9 = 0;
                }
                if ((i10 & 2) != 0) {
                    fixed32Rules.lt_ = this.f50677g;
                    i9 |= 2;
                }
                if ((i10 & 4) != 0) {
                    fixed32Rules.lte_ = this.f50678h;
                    i9 |= 4;
                }
                if ((i10 & 8) != 0) {
                    fixed32Rules.gt_ = this.f50679i;
                    i9 |= 8;
                }
                if ((i10 & 16) != 0) {
                    fixed32Rules.gte_ = this.f50680j;
                    i9 |= 16;
                }
                if ((this.f50675e & 32) != 0) {
                    this.f50681k.C();
                    this.f50675e &= -33;
                }
                fixed32Rules.in_ = this.f50681k;
                if ((this.f50675e & 64) != 0) {
                    this.f50682l.C();
                    this.f50675e &= -65;
                }
                fixed32Rules.notIn_ = this.f50682l;
                fixed32Rules.bitField0_ = i9;
                Q();
                return fixed32Rules;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: d0 */
            public Fixed32Rules getDefaultInstanceForType() {
                return Fixed32Rules.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0021  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: g0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.Fixed32Rules.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2<io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$Fixed32Rules> r1 = io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.Fixed32Rules.PARSER     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$Fixed32Rules r3 = (io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.Fixed32Rules) r3     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    if (r3 == 0) goto Le
                    r2.i0(r3)
                Le:
                    return r2
                Lf:
                    r3 = move-exception
                    goto L1f
                L11:
                    r3 = move-exception
                    com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> Lf
                    io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$Fixed32Rules r4 = (io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.Fixed32Rules) r4     // Catch: java.lang.Throwable -> Lf
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1d
                    throw r3     // Catch: java.lang.Throwable -> L1d
                L1d:
                    r3 = move-exception
                    r0 = r4
                L1f:
                    if (r0 == 0) goto L24
                    r2.i0(r0)
                L24:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.Fixed32Rules.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$Fixed32Rules$b");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return Validate.f50600v;
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: h0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof Fixed32Rules) {
                    return i0((Fixed32Rules) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b i0(Fixed32Rules fixed32Rules) {
                if (fixed32Rules == Fixed32Rules.getDefaultInstance()) {
                    return this;
                }
                if (fixed32Rules.hasConst()) {
                    k0(fixed32Rules.getConst());
                }
                if (fixed32Rules.hasLt()) {
                    o0(fixed32Rules.getLt());
                }
                if (fixed32Rules.hasLte()) {
                    q0(fixed32Rules.getLte());
                }
                if (fixed32Rules.hasGt()) {
                    m0(fixed32Rules.getGt());
                }
                if (fixed32Rules.hasGte()) {
                    n0(fixed32Rules.getGte());
                }
                if (!fixed32Rules.in_.isEmpty()) {
                    if (this.f50681k.isEmpty()) {
                        this.f50681k = fixed32Rules.in_;
                        this.f50675e &= -33;
                    } else {
                        a0();
                        this.f50681k.addAll(fixed32Rules.in_);
                    }
                    R();
                }
                if (!fixed32Rules.notIn_.isEmpty()) {
                    if (this.f50682l.isEmpty()) {
                        this.f50682l = fixed32Rules.notIn_;
                        this.f50675e &= -65;
                    } else {
                        b0();
                        this.f50682l.addAll(fixed32Rules.notIn_);
                    }
                    R();
                }
                z(((GeneratedMessageV3) fixed32Rules).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: j0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            public b k0(int i9) {
                this.f50675e |= 1;
                this.f50676f = i9;
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: l0 */
            public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.c(fieldDescriptor, obj);
            }

            public b m0(int i9) {
                this.f50675e |= 8;
                this.f50679i = i9;
                R();
                return this;
            }

            public b n0(int i9) {
                this.f50675e |= 16;
                this.f50680j = i9;
                R();
                return this;
            }

            public b o0(int i9) {
                this.f50675e |= 2;
                this.f50677g = i9;
                R();
                return this;
            }

            public b q0(int i9) {
                this.f50675e |= 4;
                this.f50678h = i9;
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: r0 */
            public final b f1(h3 h3Var) {
                return (b) super.f1(h3Var);
            }

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                this.f50681k = Fixed32Rules.access$22100();
                this.f50682l = Fixed32Rules.access$22400();
                e0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f50681k = Fixed32Rules.access$22100();
                this.f50682l = Fixed32Rules.access$22400();
                e0();
            }
        }

        /* synthetic */ Fixed32Rules(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        static /* synthetic */ u0.g access$22100() {
            return GeneratedMessageV3.emptyIntList();
        }

        static /* synthetic */ u0.g access$22400() {
            return GeneratedMessageV3.emptyIntList();
        }

        public static Fixed32Rules getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return Validate.f50600v;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Fixed32Rules parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Fixed32Rules) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Fixed32Rules parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<Fixed32Rules> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Fixed32Rules)) {
                return super.equals(obj);
            }
            Fixed32Rules fixed32Rules = (Fixed32Rules) obj;
            if (hasConst() != fixed32Rules.hasConst()) {
                return false;
            }
            if ((!hasConst() || getConst() == fixed32Rules.getConst()) && hasLt() == fixed32Rules.hasLt()) {
                if ((!hasLt() || getLt() == fixed32Rules.getLt()) && hasLte() == fixed32Rules.hasLte()) {
                    if ((!hasLte() || getLte() == fixed32Rules.getLte()) && hasGt() == fixed32Rules.hasGt()) {
                        if ((!hasGt() || getGt() == fixed32Rules.getGt()) && hasGte() == fixed32Rules.hasGte()) {
                            return (!hasGte() || getGte() == fixed32Rules.getGte()) && getInList().equals(fixed32Rules.getInList()) && getNotInList().equals(fixed32Rules.getNotInList()) && this.unknownFields.equals(fixed32Rules.unknownFields);
                        }
                        return false;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }

        public int getConst() {
            return this.const_;
        }

        public int getGt() {
            return this.gt_;
        }

        public int getGte() {
            return this.gte_;
        }

        public int getIn(int i9) {
            return this.in_.getInt(i9);
        }

        public int getInCount() {
            return this.in_.size();
        }

        public List<Integer> getInList() {
            return this.in_;
        }

        public int getLt() {
            return this.lt_;
        }

        public int getLte() {
            return this.lte_;
        }

        public int getNotIn(int i9) {
            return this.notIn_.getInt(i9);
        }

        public int getNotInCount() {
            return this.notIn_.size();
        }

        public List<Integer> getNotInList() {
            return this.notIn_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<Fixed32Rules> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int n9 = (this.bitField0_ & 1) != 0 ? 0 + CodedOutputStream.n(1, this.const_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                n9 += CodedOutputStream.n(2, this.lt_);
            }
            if ((this.bitField0_ & 4) != 0) {
                n9 += CodedOutputStream.n(3, this.lte_);
            }
            if ((this.bitField0_ & 8) != 0) {
                n9 += CodedOutputStream.n(4, this.gt_);
            }
            if ((this.bitField0_ & 16) != 0) {
                n9 += CodedOutputStream.n(5, this.gte_);
            }
            int size = n9 + (getInList().size() * 4) + (getInList().size() * 1) + (getNotInList().size() * 4) + (getNotInList().size() * 1) + this.unknownFields.getSerializedSize();
            this.memoizedSize = size;
            return size;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasConst() {
            return (this.bitField0_ & 1) != 0;
        }

        public boolean hasGt() {
            return (this.bitField0_ & 8) != 0;
        }

        public boolean hasGte() {
            return (this.bitField0_ & 16) != 0;
        }

        public boolean hasLt() {
            return (this.bitField0_ & 2) != 0;
        }

        public boolean hasLte() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (hasConst()) {
                hashCode = (((hashCode * 37) + 1) * 53) + getConst();
            }
            if (hasLt()) {
                hashCode = (((hashCode * 37) + 2) * 53) + getLt();
            }
            if (hasLte()) {
                hashCode = (((hashCode * 37) + 3) * 53) + getLte();
            }
            if (hasGt()) {
                hashCode = (((hashCode * 37) + 4) * 53) + getGt();
            }
            if (hasGte()) {
                hashCode = (((hashCode * 37) + 5) * 53) + getGte();
            }
            if (getInCount() > 0) {
                hashCode = (((hashCode * 37) + 6) * 53) + getInList().hashCode();
            }
            if (getNotInCount() > 0) {
                hashCode = (((hashCode * 37) + 7) * 53) + getNotInList().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return Validate.f50601w.d(Fixed32Rules.class, b.class);
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
            return new Fixed32Rules();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if ((this.bitField0_ & 1) != 0) {
                codedOutputStream.x0(1, this.const_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.x0(2, this.lt_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.x0(3, this.lte_);
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.x0(4, this.gt_);
            }
            if ((this.bitField0_ & 16) != 0) {
                codedOutputStream.x0(5, this.gte_);
            }
            for (int i9 = 0; i9 < this.in_.size(); i9++) {
                codedOutputStream.x0(6, this.in_.getInt(i9));
            }
            for (int i10 = 0; i10 < this.notIn_.size(); i10++) {
                codedOutputStream.x0(7, this.notIn_.getInt(i10));
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ Fixed32Rules(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(Fixed32Rules fixed32Rules) {
            return DEFAULT_INSTANCE.toBuilder().i0(fixed32Rules);
        }

        public static Fixed32Rules parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private Fixed32Rules(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Fixed32Rules parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Fixed32Rules) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static Fixed32Rules parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public Fixed32Rules getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).i0(this);
        }

        public static Fixed32Rules parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private Fixed32Rules() {
            this.memoizedIsInitialized = (byte) -1;
            this.in_ = GeneratedMessageV3.emptyIntList();
            this.notIn_ = GeneratedMessageV3.emptyIntList();
        }

        public static Fixed32Rules parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static Fixed32Rules parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static Fixed32Rules parseFrom(InputStream inputStream) throws IOException {
            return (Fixed32Rules) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private Fixed32Rules(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            this();
            Objects.requireNonNull(f0Var);
            h3.b h10 = h3.h();
            boolean z10 = false;
            boolean z11 = false;
            while (!z10) {
                try {
                    try {
                        try {
                            int L = pVar.L();
                            if (L != 0) {
                                if (L == 13) {
                                    this.bitField0_ |= 1;
                                    this.const_ = pVar.v();
                                } else if (L == 21) {
                                    this.bitField0_ |= 2;
                                    this.lt_ = pVar.v();
                                } else if (L == 29) {
                                    this.bitField0_ |= 4;
                                    this.lte_ = pVar.v();
                                } else if (L == 37) {
                                    this.bitField0_ |= 8;
                                    this.gt_ = pVar.v();
                                } else if (L == 45) {
                                    this.bitField0_ |= 16;
                                    this.gte_ = pVar.v();
                                } else if (L == 50) {
                                    int q10 = pVar.q(pVar.D());
                                    if (!(z11 & true) && pVar.e() > 0) {
                                        this.in_ = GeneratedMessageV3.newIntList();
                                        z11 |= true;
                                    }
                                    while (pVar.e() > 0) {
                                        this.in_.D0(pVar.v());
                                    }
                                    pVar.p(q10);
                                } else if (L == 53) {
                                    if (!(z11 & true)) {
                                        this.in_ = GeneratedMessageV3.newIntList();
                                        z11 |= true;
                                    }
                                    this.in_.D0(pVar.v());
                                } else if (L == 58) {
                                    int q11 = pVar.q(pVar.D());
                                    if (!(z11 & true) && pVar.e() > 0) {
                                        this.notIn_ = GeneratedMessageV3.newIntList();
                                        z11 |= true;
                                    }
                                    while (pVar.e() > 0) {
                                        this.notIn_.D0(pVar.v());
                                    }
                                    pVar.p(q11);
                                } else if (L != 61) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    if (!(z11 & true)) {
                                        this.notIn_ = GeneratedMessageV3.newIntList();
                                        z11 |= true;
                                    }
                                    this.notIn_.D0(pVar.v());
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
                    if (z11 & true) {
                        this.in_.C();
                    }
                    if (z11 & true) {
                        this.notIn_.C();
                    }
                    this.unknownFields = h10.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static Fixed32Rules parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Fixed32Rules) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static Fixed32Rules parseFrom(com.google.protobuf.p pVar) throws IOException {
            return (Fixed32Rules) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static Fixed32Rules parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
            return (Fixed32Rules) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes5.dex */
    public static final class Fixed64Rules extends GeneratedMessageV3 implements j {
        public static final int CONST_FIELD_NUMBER = 1;
        public static final int GTE_FIELD_NUMBER = 5;
        public static final int GT_FIELD_NUMBER = 4;
        public static final int IN_FIELD_NUMBER = 6;
        public static final int LTE_FIELD_NUMBER = 3;
        public static final int LT_FIELD_NUMBER = 2;
        public static final int NOT_IN_FIELD_NUMBER = 7;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private long const_;
        private long gt_;
        private long gte_;
        private u0.i in_;
        private long lt_;
        private long lte_;
        private byte memoizedIsInitialized;
        private u0.i notIn_;
        private static final Fixed64Rules DEFAULT_INSTANCE = new Fixed64Rules();
        @Deprecated
        public static final e2<Fixed64Rules> PARSER = new a();

        /* loaded from: classes5.dex */
        class a extends com.google.protobuf.c<Fixed64Rules> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public Fixed64Rules m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new Fixed64Rules(pVar, f0Var, null);
            }
        }

        /* loaded from: classes5.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements j {

            /* renamed from: e  reason: collision with root package name */
            private int f50683e;

            /* renamed from: f  reason: collision with root package name */
            private long f50684f;

            /* renamed from: g  reason: collision with root package name */
            private long f50685g;

            /* renamed from: h  reason: collision with root package name */
            private long f50686h;

            /* renamed from: i  reason: collision with root package name */
            private long f50687i;

            /* renamed from: j  reason: collision with root package name */
            private long f50688j;

            /* renamed from: k  reason: collision with root package name */
            private u0.i f50689k;

            /* renamed from: l  reason: collision with root package name */
            private u0.i f50690l;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void a0() {
                if ((this.f50683e & 32) == 0) {
                    this.f50689k = GeneratedMessageV3.mutableCopy(this.f50689k);
                    this.f50683e |= 32;
                }
            }

            private void b0() {
                if ((this.f50683e & 64) == 0) {
                    this.f50690l = GeneratedMessageV3.mutableCopy(this.f50690l);
                    this.f50683e |= 64;
                }
            }

            private void e0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return Validate.f50603y.d(Fixed64Rules.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public Fixed64Rules build() {
                Fixed64Rules I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public Fixed64Rules I() {
                int i9;
                Fixed64Rules fixed64Rules = new Fixed64Rules(this, (a) null);
                int i10 = this.f50683e;
                if ((i10 & 1) != 0) {
                    fixed64Rules.const_ = this.f50684f;
                    i9 = 1;
                } else {
                    i9 = 0;
                }
                if ((i10 & 2) != 0) {
                    fixed64Rules.lt_ = this.f50685g;
                    i9 |= 2;
                }
                if ((i10 & 4) != 0) {
                    fixed64Rules.lte_ = this.f50686h;
                    i9 |= 4;
                }
                if ((i10 & 8) != 0) {
                    fixed64Rules.gt_ = this.f50687i;
                    i9 |= 8;
                }
                if ((i10 & 16) != 0) {
                    fixed64Rules.gte_ = this.f50688j;
                    i9 |= 16;
                }
                if ((this.f50683e & 32) != 0) {
                    this.f50689k.C();
                    this.f50683e &= -33;
                }
                fixed64Rules.in_ = this.f50689k;
                if ((this.f50683e & 64) != 0) {
                    this.f50690l.C();
                    this.f50683e &= -65;
                }
                fixed64Rules.notIn_ = this.f50690l;
                fixed64Rules.bitField0_ = i9;
                Q();
                return fixed64Rules;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: d0 */
            public Fixed64Rules getDefaultInstanceForType() {
                return Fixed64Rules.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0021  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: g0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.Fixed64Rules.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2<io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$Fixed64Rules> r1 = io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.Fixed64Rules.PARSER     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$Fixed64Rules r3 = (io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.Fixed64Rules) r3     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    if (r3 == 0) goto Le
                    r2.i0(r3)
                Le:
                    return r2
                Lf:
                    r3 = move-exception
                    goto L1f
                L11:
                    r3 = move-exception
                    com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> Lf
                    io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$Fixed64Rules r4 = (io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.Fixed64Rules) r4     // Catch: java.lang.Throwable -> Lf
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1d
                    throw r3     // Catch: java.lang.Throwable -> L1d
                L1d:
                    r3 = move-exception
                    r0 = r4
                L1f:
                    if (r0 == 0) goto L24
                    r2.i0(r0)
                L24:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.Fixed64Rules.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$Fixed64Rules$b");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return Validate.f50602x;
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: h0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof Fixed64Rules) {
                    return i0((Fixed64Rules) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b i0(Fixed64Rules fixed64Rules) {
                if (fixed64Rules == Fixed64Rules.getDefaultInstance()) {
                    return this;
                }
                if (fixed64Rules.hasConst()) {
                    k0(fixed64Rules.getConst());
                }
                if (fixed64Rules.hasLt()) {
                    o0(fixed64Rules.getLt());
                }
                if (fixed64Rules.hasLte()) {
                    q0(fixed64Rules.getLte());
                }
                if (fixed64Rules.hasGt()) {
                    m0(fixed64Rules.getGt());
                }
                if (fixed64Rules.hasGte()) {
                    n0(fixed64Rules.getGte());
                }
                if (!fixed64Rules.in_.isEmpty()) {
                    if (this.f50689k.isEmpty()) {
                        this.f50689k = fixed64Rules.in_;
                        this.f50683e &= -33;
                    } else {
                        a0();
                        this.f50689k.addAll(fixed64Rules.in_);
                    }
                    R();
                }
                if (!fixed64Rules.notIn_.isEmpty()) {
                    if (this.f50690l.isEmpty()) {
                        this.f50690l = fixed64Rules.notIn_;
                        this.f50683e &= -65;
                    } else {
                        b0();
                        this.f50690l.addAll(fixed64Rules.notIn_);
                    }
                    R();
                }
                z(((GeneratedMessageV3) fixed64Rules).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: j0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            public b k0(long j10) {
                this.f50683e |= 1;
                this.f50684f = j10;
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: l0 */
            public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.c(fieldDescriptor, obj);
            }

            public b m0(long j10) {
                this.f50683e |= 8;
                this.f50687i = j10;
                R();
                return this;
            }

            public b n0(long j10) {
                this.f50683e |= 16;
                this.f50688j = j10;
                R();
                return this;
            }

            public b o0(long j10) {
                this.f50683e |= 2;
                this.f50685g = j10;
                R();
                return this;
            }

            public b q0(long j10) {
                this.f50683e |= 4;
                this.f50686h = j10;
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: r0 */
            public final b f1(h3 h3Var) {
                return (b) super.f1(h3Var);
            }

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                this.f50689k = Fixed64Rules.access$24500();
                this.f50690l = Fixed64Rules.access$24800();
                e0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f50689k = Fixed64Rules.access$24500();
                this.f50690l = Fixed64Rules.access$24800();
                e0();
            }
        }

        /* synthetic */ Fixed64Rules(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        static /* synthetic */ u0.i access$24500() {
            return GeneratedMessageV3.emptyLongList();
        }

        static /* synthetic */ u0.i access$24800() {
            return GeneratedMessageV3.emptyLongList();
        }

        public static Fixed64Rules getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return Validate.f50602x;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Fixed64Rules parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Fixed64Rules) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Fixed64Rules parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<Fixed64Rules> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Fixed64Rules)) {
                return super.equals(obj);
            }
            Fixed64Rules fixed64Rules = (Fixed64Rules) obj;
            if (hasConst() != fixed64Rules.hasConst()) {
                return false;
            }
            if ((!hasConst() || getConst() == fixed64Rules.getConst()) && hasLt() == fixed64Rules.hasLt()) {
                if ((!hasLt() || getLt() == fixed64Rules.getLt()) && hasLte() == fixed64Rules.hasLte()) {
                    if ((!hasLte() || getLte() == fixed64Rules.getLte()) && hasGt() == fixed64Rules.hasGt()) {
                        if ((!hasGt() || getGt() == fixed64Rules.getGt()) && hasGte() == fixed64Rules.hasGte()) {
                            return (!hasGte() || getGte() == fixed64Rules.getGte()) && getInList().equals(fixed64Rules.getInList()) && getNotInList().equals(fixed64Rules.getNotInList()) && this.unknownFields.equals(fixed64Rules.unknownFields);
                        }
                        return false;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }

        public long getConst() {
            return this.const_;
        }

        public long getGt() {
            return this.gt_;
        }

        public long getGte() {
            return this.gte_;
        }

        public long getIn(int i9) {
            return this.in_.getLong(i9);
        }

        public int getInCount() {
            return this.in_.size();
        }

        public List<Long> getInList() {
            return this.in_;
        }

        public long getLt() {
            return this.lt_;
        }

        public long getLte() {
            return this.lte_;
        }

        public long getNotIn(int i9) {
            return this.notIn_.getLong(i9);
        }

        public int getNotInCount() {
            return this.notIn_.size();
        }

        public List<Long> getNotInList() {
            return this.notIn_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<Fixed64Rules> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int p10 = (this.bitField0_ & 1) != 0 ? 0 + CodedOutputStream.p(1, this.const_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                p10 += CodedOutputStream.p(2, this.lt_);
            }
            if ((this.bitField0_ & 4) != 0) {
                p10 += CodedOutputStream.p(3, this.lte_);
            }
            if ((this.bitField0_ & 8) != 0) {
                p10 += CodedOutputStream.p(4, this.gt_);
            }
            if ((this.bitField0_ & 16) != 0) {
                p10 += CodedOutputStream.p(5, this.gte_);
            }
            int size = p10 + (getInList().size() * 8) + (getInList().size() * 1) + (getNotInList().size() * 8) + (getNotInList().size() * 1) + this.unknownFields.getSerializedSize();
            this.memoizedSize = size;
            return size;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasConst() {
            return (this.bitField0_ & 1) != 0;
        }

        public boolean hasGt() {
            return (this.bitField0_ & 8) != 0;
        }

        public boolean hasGte() {
            return (this.bitField0_ & 16) != 0;
        }

        public boolean hasLt() {
            return (this.bitField0_ & 2) != 0;
        }

        public boolean hasLte() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (hasConst()) {
                hashCode = (((hashCode * 37) + 1) * 53) + u0.i(getConst());
            }
            if (hasLt()) {
                hashCode = (((hashCode * 37) + 2) * 53) + u0.i(getLt());
            }
            if (hasLte()) {
                hashCode = (((hashCode * 37) + 3) * 53) + u0.i(getLte());
            }
            if (hasGt()) {
                hashCode = (((hashCode * 37) + 4) * 53) + u0.i(getGt());
            }
            if (hasGte()) {
                hashCode = (((hashCode * 37) + 5) * 53) + u0.i(getGte());
            }
            if (getInCount() > 0) {
                hashCode = (((hashCode * 37) + 6) * 53) + getInList().hashCode();
            }
            if (getNotInCount() > 0) {
                hashCode = (((hashCode * 37) + 7) * 53) + getNotInList().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return Validate.f50603y.d(Fixed64Rules.class, b.class);
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
            return new Fixed64Rules();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if ((this.bitField0_ & 1) != 0) {
                codedOutputStream.z0(1, this.const_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.z0(2, this.lt_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.z0(3, this.lte_);
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.z0(4, this.gt_);
            }
            if ((this.bitField0_ & 16) != 0) {
                codedOutputStream.z0(5, this.gte_);
            }
            for (int i9 = 0; i9 < this.in_.size(); i9++) {
                codedOutputStream.z0(6, this.in_.getLong(i9));
            }
            for (int i10 = 0; i10 < this.notIn_.size(); i10++) {
                codedOutputStream.z0(7, this.notIn_.getLong(i10));
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ Fixed64Rules(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(Fixed64Rules fixed64Rules) {
            return DEFAULT_INSTANCE.toBuilder().i0(fixed64Rules);
        }

        public static Fixed64Rules parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private Fixed64Rules(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Fixed64Rules parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Fixed64Rules) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static Fixed64Rules parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public Fixed64Rules getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).i0(this);
        }

        public static Fixed64Rules parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private Fixed64Rules() {
            this.memoizedIsInitialized = (byte) -1;
            this.in_ = GeneratedMessageV3.emptyLongList();
            this.notIn_ = GeneratedMessageV3.emptyLongList();
        }

        public static Fixed64Rules parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static Fixed64Rules parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static Fixed64Rules parseFrom(InputStream inputStream) throws IOException {
            return (Fixed64Rules) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private Fixed64Rules(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            this();
            Objects.requireNonNull(f0Var);
            h3.b h10 = h3.h();
            boolean z10 = false;
            boolean z11 = false;
            while (!z10) {
                try {
                    try {
                        try {
                            int L = pVar.L();
                            if (L != 0) {
                                if (L == 9) {
                                    this.bitField0_ |= 1;
                                    this.const_ = pVar.w();
                                } else if (L == 17) {
                                    this.bitField0_ |= 2;
                                    this.lt_ = pVar.w();
                                } else if (L == 25) {
                                    this.bitField0_ |= 4;
                                    this.lte_ = pVar.w();
                                } else if (L == 33) {
                                    this.bitField0_ |= 8;
                                    this.gt_ = pVar.w();
                                } else if (L == 41) {
                                    this.bitField0_ |= 16;
                                    this.gte_ = pVar.w();
                                } else if (L == 49) {
                                    if (!(z11 & true)) {
                                        this.in_ = GeneratedMessageV3.newLongList();
                                        z11 |= true;
                                    }
                                    this.in_.I0(pVar.w());
                                } else if (L == 50) {
                                    int q10 = pVar.q(pVar.D());
                                    if (!(z11 & true) && pVar.e() > 0) {
                                        this.in_ = GeneratedMessageV3.newLongList();
                                        z11 |= true;
                                    }
                                    while (pVar.e() > 0) {
                                        this.in_.I0(pVar.w());
                                    }
                                    pVar.p(q10);
                                } else if (L == 57) {
                                    if (!(z11 & true)) {
                                        this.notIn_ = GeneratedMessageV3.newLongList();
                                        z11 |= true;
                                    }
                                    this.notIn_.I0(pVar.w());
                                } else if (L != 58) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    int q11 = pVar.q(pVar.D());
                                    if (!(z11 & true) && pVar.e() > 0) {
                                        this.notIn_ = GeneratedMessageV3.newLongList();
                                        z11 |= true;
                                    }
                                    while (pVar.e() > 0) {
                                        this.notIn_.I0(pVar.w());
                                    }
                                    pVar.p(q11);
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
                    if (z11 & true) {
                        this.in_.C();
                    }
                    if (z11 & true) {
                        this.notIn_.C();
                    }
                    this.unknownFields = h10.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static Fixed64Rules parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Fixed64Rules) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static Fixed64Rules parseFrom(com.google.protobuf.p pVar) throws IOException {
            return (Fixed64Rules) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static Fixed64Rules parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
            return (Fixed64Rules) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes5.dex */
    public static final class FloatRules extends GeneratedMessageV3 implements k {
        public static final int CONST_FIELD_NUMBER = 1;
        public static final int GTE_FIELD_NUMBER = 5;
        public static final int GT_FIELD_NUMBER = 4;
        public static final int IN_FIELD_NUMBER = 6;
        public static final int LTE_FIELD_NUMBER = 3;
        public static final int LT_FIELD_NUMBER = 2;
        public static final int NOT_IN_FIELD_NUMBER = 7;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private float const_;
        private float gt_;
        private float gte_;
        private u0.f in_;
        private float lt_;
        private float lte_;
        private byte memoizedIsInitialized;
        private u0.f notIn_;
        private static final FloatRules DEFAULT_INSTANCE = new FloatRules();
        @Deprecated
        public static final e2<FloatRules> PARSER = new a();

        /* loaded from: classes5.dex */
        class a extends com.google.protobuf.c<FloatRules> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public FloatRules m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new FloatRules(pVar, f0Var, null);
            }
        }

        /* loaded from: classes5.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements k {

            /* renamed from: e  reason: collision with root package name */
            private int f50691e;

            /* renamed from: f  reason: collision with root package name */
            private float f50692f;

            /* renamed from: g  reason: collision with root package name */
            private float f50693g;

            /* renamed from: h  reason: collision with root package name */
            private float f50694h;

            /* renamed from: i  reason: collision with root package name */
            private float f50695i;

            /* renamed from: j  reason: collision with root package name */
            private float f50696j;

            /* renamed from: k  reason: collision with root package name */
            private u0.f f50697k;

            /* renamed from: l  reason: collision with root package name */
            private u0.f f50698l;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void a0() {
                if ((this.f50691e & 32) == 0) {
                    this.f50697k = GeneratedMessageV3.mutableCopy(this.f50697k);
                    this.f50691e |= 32;
                }
            }

            private void b0() {
                if ((this.f50691e & 64) == 0) {
                    this.f50698l = GeneratedMessageV3.mutableCopy(this.f50698l);
                    this.f50691e |= 64;
                }
            }

            private void e0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return Validate.f50585g.d(FloatRules.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public FloatRules build() {
                FloatRules I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public FloatRules I() {
                int i9;
                FloatRules floatRules = new FloatRules(this, (a) null);
                int i10 = this.f50691e;
                if ((i10 & 1) != 0) {
                    floatRules.const_ = this.f50692f;
                    i9 = 1;
                } else {
                    i9 = 0;
                }
                if ((i10 & 2) != 0) {
                    floatRules.lt_ = this.f50693g;
                    i9 |= 2;
                }
                if ((i10 & 4) != 0) {
                    floatRules.lte_ = this.f50694h;
                    i9 |= 4;
                }
                if ((i10 & 8) != 0) {
                    floatRules.gt_ = this.f50695i;
                    i9 |= 8;
                }
                if ((i10 & 16) != 0) {
                    floatRules.gte_ = this.f50696j;
                    i9 |= 16;
                }
                if ((this.f50691e & 32) != 0) {
                    this.f50697k.C();
                    this.f50691e &= -33;
                }
                floatRules.in_ = this.f50697k;
                if ((this.f50691e & 64) != 0) {
                    this.f50698l.C();
                    this.f50691e &= -65;
                }
                floatRules.notIn_ = this.f50698l;
                floatRules.bitField0_ = i9;
                Q();
                return floatRules;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: d0 */
            public FloatRules getDefaultInstanceForType() {
                return FloatRules.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0021  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: g0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.FloatRules.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2<io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$FloatRules> r1 = io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.FloatRules.PARSER     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$FloatRules r3 = (io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.FloatRules) r3     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    if (r3 == 0) goto Le
                    r2.i0(r3)
                Le:
                    return r2
                Lf:
                    r3 = move-exception
                    goto L1f
                L11:
                    r3 = move-exception
                    com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> Lf
                    io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$FloatRules r4 = (io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.FloatRules) r4     // Catch: java.lang.Throwable -> Lf
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1d
                    throw r3     // Catch: java.lang.Throwable -> L1d
                L1d:
                    r3 = move-exception
                    r0 = r4
                L1f:
                    if (r0 == 0) goto L24
                    r2.i0(r0)
                L24:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.FloatRules.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$FloatRules$b");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return Validate.f50584f;
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: h0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof FloatRules) {
                    return i0((FloatRules) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b i0(FloatRules floatRules) {
                if (floatRules == FloatRules.getDefaultInstance()) {
                    return this;
                }
                if (floatRules.hasConst()) {
                    k0(floatRules.getConst());
                }
                if (floatRules.hasLt()) {
                    o0(floatRules.getLt());
                }
                if (floatRules.hasLte()) {
                    q0(floatRules.getLte());
                }
                if (floatRules.hasGt()) {
                    m0(floatRules.getGt());
                }
                if (floatRules.hasGte()) {
                    n0(floatRules.getGte());
                }
                if (!floatRules.in_.isEmpty()) {
                    if (this.f50697k.isEmpty()) {
                        this.f50697k = floatRules.in_;
                        this.f50691e &= -33;
                    } else {
                        a0();
                        this.f50697k.addAll(floatRules.in_);
                    }
                    R();
                }
                if (!floatRules.notIn_.isEmpty()) {
                    if (this.f50698l.isEmpty()) {
                        this.f50698l = floatRules.notIn_;
                        this.f50691e &= -65;
                    } else {
                        b0();
                        this.f50698l.addAll(floatRules.notIn_);
                    }
                    R();
                }
                z(((GeneratedMessageV3) floatRules).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: j0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            public b k0(float f10) {
                this.f50691e |= 1;
                this.f50692f = f10;
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: l0 */
            public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.c(fieldDescriptor, obj);
            }

            public b m0(float f10) {
                this.f50691e |= 8;
                this.f50695i = f10;
                R();
                return this;
            }

            public b n0(float f10) {
                this.f50691e |= 16;
                this.f50696j = f10;
                R();
                return this;
            }

            public b o0(float f10) {
                this.f50691e |= 2;
                this.f50693g = f10;
                R();
                return this;
            }

            public b q0(float f10) {
                this.f50691e |= 4;
                this.f50694h = f10;
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: r0 */
            public final b f1(h3 h3Var) {
                return (b) super.f1(h3Var);
            }

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                this.f50697k = FloatRules.access$2900();
                this.f50698l = FloatRules.access$3200();
                e0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f50697k = FloatRules.access$2900();
                this.f50698l = FloatRules.access$3200();
                e0();
            }
        }

        /* synthetic */ FloatRules(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        static /* synthetic */ u0.f access$2900() {
            return GeneratedMessageV3.emptyFloatList();
        }

        static /* synthetic */ u0.f access$3200() {
            return GeneratedMessageV3.emptyFloatList();
        }

        public static FloatRules getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return Validate.f50584f;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static FloatRules parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (FloatRules) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static FloatRules parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<FloatRules> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof FloatRules)) {
                return super.equals(obj);
            }
            FloatRules floatRules = (FloatRules) obj;
            if (hasConst() != floatRules.hasConst()) {
                return false;
            }
            if ((!hasConst() || Float.floatToIntBits(getConst()) == Float.floatToIntBits(floatRules.getConst())) && hasLt() == floatRules.hasLt()) {
                if ((!hasLt() || Float.floatToIntBits(getLt()) == Float.floatToIntBits(floatRules.getLt())) && hasLte() == floatRules.hasLte()) {
                    if ((!hasLte() || Float.floatToIntBits(getLte()) == Float.floatToIntBits(floatRules.getLte())) && hasGt() == floatRules.hasGt()) {
                        if ((!hasGt() || Float.floatToIntBits(getGt()) == Float.floatToIntBits(floatRules.getGt())) && hasGte() == floatRules.hasGte()) {
                            return (!hasGte() || Float.floatToIntBits(getGte()) == Float.floatToIntBits(floatRules.getGte())) && getInList().equals(floatRules.getInList()) && getNotInList().equals(floatRules.getNotInList()) && this.unknownFields.equals(floatRules.unknownFields);
                        }
                        return false;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }

        public float getConst() {
            return this.const_;
        }

        public float getGt() {
            return this.gt_;
        }

        public float getGte() {
            return this.gte_;
        }

        public float getIn(int i9) {
            return this.in_.getFloat(i9);
        }

        public int getInCount() {
            return this.in_.size();
        }

        public List<Float> getInList() {
            return this.in_;
        }

        public float getLt() {
            return this.lt_;
        }

        public float getLte() {
            return this.lte_;
        }

        public float getNotIn(int i9) {
            return this.notIn_.getFloat(i9);
        }

        public int getNotInCount() {
            return this.notIn_.size();
        }

        public List<Float> getNotInList() {
            return this.notIn_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<FloatRules> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int r10 = (this.bitField0_ & 1) != 0 ? 0 + CodedOutputStream.r(1, this.const_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                r10 += CodedOutputStream.r(2, this.lt_);
            }
            if ((this.bitField0_ & 4) != 0) {
                r10 += CodedOutputStream.r(3, this.lte_);
            }
            if ((this.bitField0_ & 8) != 0) {
                r10 += CodedOutputStream.r(4, this.gt_);
            }
            if ((this.bitField0_ & 16) != 0) {
                r10 += CodedOutputStream.r(5, this.gte_);
            }
            int size = r10 + (getInList().size() * 4) + (getInList().size() * 1) + (getNotInList().size() * 4) + (getNotInList().size() * 1) + this.unknownFields.getSerializedSize();
            this.memoizedSize = size;
            return size;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasConst() {
            return (this.bitField0_ & 1) != 0;
        }

        public boolean hasGt() {
            return (this.bitField0_ & 8) != 0;
        }

        public boolean hasGte() {
            return (this.bitField0_ & 16) != 0;
        }

        public boolean hasLt() {
            return (this.bitField0_ & 2) != 0;
        }

        public boolean hasLte() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (hasConst()) {
                hashCode = (((hashCode * 37) + 1) * 53) + Float.floatToIntBits(getConst());
            }
            if (hasLt()) {
                hashCode = (((hashCode * 37) + 2) * 53) + Float.floatToIntBits(getLt());
            }
            if (hasLte()) {
                hashCode = (((hashCode * 37) + 3) * 53) + Float.floatToIntBits(getLte());
            }
            if (hasGt()) {
                hashCode = (((hashCode * 37) + 4) * 53) + Float.floatToIntBits(getGt());
            }
            if (hasGte()) {
                hashCode = (((hashCode * 37) + 5) * 53) + Float.floatToIntBits(getGte());
            }
            if (getInCount() > 0) {
                hashCode = (((hashCode * 37) + 6) * 53) + getInList().hashCode();
            }
            if (getNotInCount() > 0) {
                hashCode = (((hashCode * 37) + 7) * 53) + getNotInList().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return Validate.f50585g.d(FloatRules.class, b.class);
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
            return new FloatRules();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if ((this.bitField0_ & 1) != 0) {
                codedOutputStream.B0(1, this.const_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.B0(2, this.lt_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.B0(3, this.lte_);
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.B0(4, this.gt_);
            }
            if ((this.bitField0_ & 16) != 0) {
                codedOutputStream.B0(5, this.gte_);
            }
            for (int i9 = 0; i9 < this.in_.size(); i9++) {
                codedOutputStream.B0(6, this.in_.getFloat(i9));
            }
            for (int i10 = 0; i10 < this.notIn_.size(); i10++) {
                codedOutputStream.B0(7, this.notIn_.getFloat(i10));
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ FloatRules(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(FloatRules floatRules) {
            return DEFAULT_INSTANCE.toBuilder().i0(floatRules);
        }

        public static FloatRules parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private FloatRules(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static FloatRules parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (FloatRules) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static FloatRules parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public FloatRules getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).i0(this);
        }

        public static FloatRules parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private FloatRules() {
            this.memoizedIsInitialized = (byte) -1;
            this.in_ = GeneratedMessageV3.emptyFloatList();
            this.notIn_ = GeneratedMessageV3.emptyFloatList();
        }

        public static FloatRules parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static FloatRules parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static FloatRules parseFrom(InputStream inputStream) throws IOException {
            return (FloatRules) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private FloatRules(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            this();
            Objects.requireNonNull(f0Var);
            h3.b h10 = h3.h();
            boolean z10 = false;
            boolean z11 = false;
            while (!z10) {
                try {
                    try {
                        try {
                            int L = pVar.L();
                            if (L != 0) {
                                if (L == 13) {
                                    this.bitField0_ |= 1;
                                    this.const_ = pVar.x();
                                } else if (L == 21) {
                                    this.bitField0_ |= 2;
                                    this.lt_ = pVar.x();
                                } else if (L == 29) {
                                    this.bitField0_ |= 4;
                                    this.lte_ = pVar.x();
                                } else if (L == 37) {
                                    this.bitField0_ |= 8;
                                    this.gt_ = pVar.x();
                                } else if (L == 45) {
                                    this.bitField0_ |= 16;
                                    this.gte_ = pVar.x();
                                } else if (L == 50) {
                                    int q10 = pVar.q(pVar.D());
                                    if (!(z11 & true) && pVar.e() > 0) {
                                        this.in_ = GeneratedMessageV3.newFloatList();
                                        z11 |= true;
                                    }
                                    while (pVar.e() > 0) {
                                        this.in_.A(pVar.x());
                                    }
                                    pVar.p(q10);
                                } else if (L == 53) {
                                    if (!(z11 & true)) {
                                        this.in_ = GeneratedMessageV3.newFloatList();
                                        z11 |= true;
                                    }
                                    this.in_.A(pVar.x());
                                } else if (L == 58) {
                                    int q11 = pVar.q(pVar.D());
                                    if (!(z11 & true) && pVar.e() > 0) {
                                        this.notIn_ = GeneratedMessageV3.newFloatList();
                                        z11 |= true;
                                    }
                                    while (pVar.e() > 0) {
                                        this.notIn_.A(pVar.x());
                                    }
                                    pVar.p(q11);
                                } else if (L != 61) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    if (!(z11 & true)) {
                                        this.notIn_ = GeneratedMessageV3.newFloatList();
                                        z11 |= true;
                                    }
                                    this.notIn_.A(pVar.x());
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
                    if (z11 & true) {
                        this.in_.C();
                    }
                    if (z11 & true) {
                        this.notIn_.C();
                    }
                    this.unknownFields = h10.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static FloatRules parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (FloatRules) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static FloatRules parseFrom(com.google.protobuf.p pVar) throws IOException {
            return (FloatRules) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static FloatRules parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
            return (FloatRules) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes5.dex */
    public static final class Int32Rules extends GeneratedMessageV3 implements l {
        public static final int CONST_FIELD_NUMBER = 1;
        public static final int GTE_FIELD_NUMBER = 5;
        public static final int GT_FIELD_NUMBER = 4;
        public static final int IN_FIELD_NUMBER = 6;
        public static final int LTE_FIELD_NUMBER = 3;
        public static final int LT_FIELD_NUMBER = 2;
        public static final int NOT_IN_FIELD_NUMBER = 7;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private int const_;
        private int gt_;
        private int gte_;
        private u0.g in_;
        private int lt_;
        private int lte_;
        private byte memoizedIsInitialized;
        private u0.g notIn_;
        private static final Int32Rules DEFAULT_INSTANCE = new Int32Rules();
        @Deprecated
        public static final e2<Int32Rules> PARSER = new a();

        /* loaded from: classes5.dex */
        class a extends com.google.protobuf.c<Int32Rules> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public Int32Rules m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new Int32Rules(pVar, f0Var, null);
            }
        }

        /* loaded from: classes5.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements l {

            /* renamed from: e  reason: collision with root package name */
            private int f50699e;

            /* renamed from: f  reason: collision with root package name */
            private int f50700f;

            /* renamed from: g  reason: collision with root package name */
            private int f50701g;

            /* renamed from: h  reason: collision with root package name */
            private int f50702h;

            /* renamed from: i  reason: collision with root package name */
            private int f50703i;

            /* renamed from: j  reason: collision with root package name */
            private int f50704j;

            /* renamed from: k  reason: collision with root package name */
            private u0.g f50705k;

            /* renamed from: l  reason: collision with root package name */
            private u0.g f50706l;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void a0() {
                if ((this.f50699e & 32) == 0) {
                    this.f50705k = GeneratedMessageV3.mutableCopy(this.f50705k);
                    this.f50699e |= 32;
                }
            }

            private void b0() {
                if ((this.f50699e & 64) == 0) {
                    this.f50706l = GeneratedMessageV3.mutableCopy(this.f50706l);
                    this.f50699e |= 64;
                }
            }

            private void e0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return Validate.f50589k.d(Int32Rules.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public Int32Rules build() {
                Int32Rules I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public Int32Rules I() {
                int i9;
                Int32Rules int32Rules = new Int32Rules(this, (a) null);
                int i10 = this.f50699e;
                if ((i10 & 1) != 0) {
                    int32Rules.const_ = this.f50700f;
                    i9 = 1;
                } else {
                    i9 = 0;
                }
                if ((i10 & 2) != 0) {
                    int32Rules.lt_ = this.f50701g;
                    i9 |= 2;
                }
                if ((i10 & 4) != 0) {
                    int32Rules.lte_ = this.f50702h;
                    i9 |= 4;
                }
                if ((i10 & 8) != 0) {
                    int32Rules.gt_ = this.f50703i;
                    i9 |= 8;
                }
                if ((i10 & 16) != 0) {
                    int32Rules.gte_ = this.f50704j;
                    i9 |= 16;
                }
                if ((this.f50699e & 32) != 0) {
                    this.f50705k.C();
                    this.f50699e &= -33;
                }
                int32Rules.in_ = this.f50705k;
                if ((this.f50699e & 64) != 0) {
                    this.f50706l.C();
                    this.f50699e &= -65;
                }
                int32Rules.notIn_ = this.f50706l;
                int32Rules.bitField0_ = i9;
                Q();
                return int32Rules;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: d0 */
            public Int32Rules getDefaultInstanceForType() {
                return Int32Rules.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0021  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: g0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.Int32Rules.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2<io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$Int32Rules> r1 = io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.Int32Rules.PARSER     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$Int32Rules r3 = (io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.Int32Rules) r3     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    if (r3 == 0) goto Le
                    r2.i0(r3)
                Le:
                    return r2
                Lf:
                    r3 = move-exception
                    goto L1f
                L11:
                    r3 = move-exception
                    com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> Lf
                    io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$Int32Rules r4 = (io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.Int32Rules) r4     // Catch: java.lang.Throwable -> Lf
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1d
                    throw r3     // Catch: java.lang.Throwable -> L1d
                L1d:
                    r3 = move-exception
                    r0 = r4
                L1f:
                    if (r0 == 0) goto L24
                    r2.i0(r0)
                L24:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.Int32Rules.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$Int32Rules$b");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return Validate.f50588j;
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: h0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof Int32Rules) {
                    return i0((Int32Rules) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b i0(Int32Rules int32Rules) {
                if (int32Rules == Int32Rules.getDefaultInstance()) {
                    return this;
                }
                if (int32Rules.hasConst()) {
                    k0(int32Rules.getConst());
                }
                if (int32Rules.hasLt()) {
                    o0(int32Rules.getLt());
                }
                if (int32Rules.hasLte()) {
                    q0(int32Rules.getLte());
                }
                if (int32Rules.hasGt()) {
                    m0(int32Rules.getGt());
                }
                if (int32Rules.hasGte()) {
                    n0(int32Rules.getGte());
                }
                if (!int32Rules.in_.isEmpty()) {
                    if (this.f50705k.isEmpty()) {
                        this.f50705k = int32Rules.in_;
                        this.f50699e &= -33;
                    } else {
                        a0();
                        this.f50705k.addAll(int32Rules.in_);
                    }
                    R();
                }
                if (!int32Rules.notIn_.isEmpty()) {
                    if (this.f50706l.isEmpty()) {
                        this.f50706l = int32Rules.notIn_;
                        this.f50699e &= -65;
                    } else {
                        b0();
                        this.f50706l.addAll(int32Rules.notIn_);
                    }
                    R();
                }
                z(((GeneratedMessageV3) int32Rules).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: j0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            public b k0(int i9) {
                this.f50699e |= 1;
                this.f50700f = i9;
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: l0 */
            public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.c(fieldDescriptor, obj);
            }

            public b m0(int i9) {
                this.f50699e |= 8;
                this.f50703i = i9;
                R();
                return this;
            }

            public b n0(int i9) {
                this.f50699e |= 16;
                this.f50704j = i9;
                R();
                return this;
            }

            public b o0(int i9) {
                this.f50699e |= 2;
                this.f50701g = i9;
                R();
                return this;
            }

            public b q0(int i9) {
                this.f50699e |= 4;
                this.f50702h = i9;
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: r0 */
            public final b f1(h3 h3Var) {
                return (b) super.f1(h3Var);
            }

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                this.f50705k = Int32Rules.access$7700();
                this.f50706l = Int32Rules.access$8000();
                e0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f50705k = Int32Rules.access$7700();
                this.f50706l = Int32Rules.access$8000();
                e0();
            }
        }

        /* synthetic */ Int32Rules(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        static /* synthetic */ u0.g access$7700() {
            return GeneratedMessageV3.emptyIntList();
        }

        static /* synthetic */ u0.g access$8000() {
            return GeneratedMessageV3.emptyIntList();
        }

        public static Int32Rules getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return Validate.f50588j;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Int32Rules parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Int32Rules) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Int32Rules parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<Int32Rules> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Int32Rules)) {
                return super.equals(obj);
            }
            Int32Rules int32Rules = (Int32Rules) obj;
            if (hasConst() != int32Rules.hasConst()) {
                return false;
            }
            if ((!hasConst() || getConst() == int32Rules.getConst()) && hasLt() == int32Rules.hasLt()) {
                if ((!hasLt() || getLt() == int32Rules.getLt()) && hasLte() == int32Rules.hasLte()) {
                    if ((!hasLte() || getLte() == int32Rules.getLte()) && hasGt() == int32Rules.hasGt()) {
                        if ((!hasGt() || getGt() == int32Rules.getGt()) && hasGte() == int32Rules.hasGte()) {
                            return (!hasGte() || getGte() == int32Rules.getGte()) && getInList().equals(int32Rules.getInList()) && getNotInList().equals(int32Rules.getNotInList()) && this.unknownFields.equals(int32Rules.unknownFields);
                        }
                        return false;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }

        public int getConst() {
            return this.const_;
        }

        public int getGt() {
            return this.gt_;
        }

        public int getGte() {
            return this.gte_;
        }

        public int getIn(int i9) {
            return this.in_.getInt(i9);
        }

        public int getInCount() {
            return this.in_.size();
        }

        public List<Integer> getInList() {
            return this.in_;
        }

        public int getLt() {
            return this.lt_;
        }

        public int getLte() {
            return this.lte_;
        }

        public int getNotIn(int i9) {
            return this.notIn_.getInt(i9);
        }

        public int getNotInCount() {
            return this.notIn_.size();
        }

        public List<Integer> getNotInList() {
            return this.notIn_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<Int32Rules> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int x10 = (this.bitField0_ & 1) != 0 ? CodedOutputStream.x(1, this.const_) + 0 : 0;
            if ((this.bitField0_ & 2) != 0) {
                x10 += CodedOutputStream.x(2, this.lt_);
            }
            if ((this.bitField0_ & 4) != 0) {
                x10 += CodedOutputStream.x(3, this.lte_);
            }
            if ((this.bitField0_ & 8) != 0) {
                x10 += CodedOutputStream.x(4, this.gt_);
            }
            if ((this.bitField0_ & 16) != 0) {
                x10 += CodedOutputStream.x(5, this.gte_);
            }
            int i10 = 0;
            for (int i11 = 0; i11 < this.in_.size(); i11++) {
                i10 += CodedOutputStream.y(this.in_.getInt(i11));
            }
            int size = x10 + i10 + (getInList().size() * 1);
            int i12 = 0;
            for (int i13 = 0; i13 < this.notIn_.size(); i13++) {
                i12 += CodedOutputStream.y(this.notIn_.getInt(i13));
            }
            int size2 = size + i12 + (getNotInList().size() * 1) + this.unknownFields.getSerializedSize();
            this.memoizedSize = size2;
            return size2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasConst() {
            return (this.bitField0_ & 1) != 0;
        }

        public boolean hasGt() {
            return (this.bitField0_ & 8) != 0;
        }

        public boolean hasGte() {
            return (this.bitField0_ & 16) != 0;
        }

        public boolean hasLt() {
            return (this.bitField0_ & 2) != 0;
        }

        public boolean hasLte() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (hasConst()) {
                hashCode = (((hashCode * 37) + 1) * 53) + getConst();
            }
            if (hasLt()) {
                hashCode = (((hashCode * 37) + 2) * 53) + getLt();
            }
            if (hasLte()) {
                hashCode = (((hashCode * 37) + 3) * 53) + getLte();
            }
            if (hasGt()) {
                hashCode = (((hashCode * 37) + 4) * 53) + getGt();
            }
            if (hasGte()) {
                hashCode = (((hashCode * 37) + 5) * 53) + getGte();
            }
            if (getInCount() > 0) {
                hashCode = (((hashCode * 37) + 6) * 53) + getInList().hashCode();
            }
            if (getNotInCount() > 0) {
                hashCode = (((hashCode * 37) + 7) * 53) + getNotInList().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return Validate.f50589k.d(Int32Rules.class, b.class);
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
            return new Int32Rules();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if ((this.bitField0_ & 1) != 0) {
                codedOutputStream.H0(1, this.const_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.H0(2, this.lt_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.H0(3, this.lte_);
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.H0(4, this.gt_);
            }
            if ((this.bitField0_ & 16) != 0) {
                codedOutputStream.H0(5, this.gte_);
            }
            for (int i9 = 0; i9 < this.in_.size(); i9++) {
                codedOutputStream.H0(6, this.in_.getInt(i9));
            }
            for (int i10 = 0; i10 < this.notIn_.size(); i10++) {
                codedOutputStream.H0(7, this.notIn_.getInt(i10));
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ Int32Rules(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(Int32Rules int32Rules) {
            return DEFAULT_INSTANCE.toBuilder().i0(int32Rules);
        }

        public static Int32Rules parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private Int32Rules(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Int32Rules parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Int32Rules) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static Int32Rules parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public Int32Rules getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).i0(this);
        }

        public static Int32Rules parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private Int32Rules() {
            this.memoizedIsInitialized = (byte) -1;
            this.in_ = GeneratedMessageV3.emptyIntList();
            this.notIn_ = GeneratedMessageV3.emptyIntList();
        }

        public static Int32Rules parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static Int32Rules parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static Int32Rules parseFrom(InputStream inputStream) throws IOException {
            return (Int32Rules) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private Int32Rules(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            this();
            Objects.requireNonNull(f0Var);
            h3.b h10 = h3.h();
            boolean z10 = false;
            boolean z11 = false;
            while (!z10) {
                try {
                    try {
                        try {
                            int L = pVar.L();
                            if (L != 0) {
                                if (L == 8) {
                                    this.bitField0_ |= 1;
                                    this.const_ = pVar.z();
                                } else if (L == 16) {
                                    this.bitField0_ |= 2;
                                    this.lt_ = pVar.z();
                                } else if (L == 24) {
                                    this.bitField0_ |= 4;
                                    this.lte_ = pVar.z();
                                } else if (L == 32) {
                                    this.bitField0_ |= 8;
                                    this.gt_ = pVar.z();
                                } else if (L == 40) {
                                    this.bitField0_ |= 16;
                                    this.gte_ = pVar.z();
                                } else if (L == 48) {
                                    if (!(z11 & true)) {
                                        this.in_ = GeneratedMessageV3.newIntList();
                                        z11 |= true;
                                    }
                                    this.in_.D0(pVar.z());
                                } else if (L == 50) {
                                    int q10 = pVar.q(pVar.D());
                                    if (!(z11 & true) && pVar.e() > 0) {
                                        this.in_ = GeneratedMessageV3.newIntList();
                                        z11 |= true;
                                    }
                                    while (pVar.e() > 0) {
                                        this.in_.D0(pVar.z());
                                    }
                                    pVar.p(q10);
                                } else if (L == 56) {
                                    if (!(z11 & true)) {
                                        this.notIn_ = GeneratedMessageV3.newIntList();
                                        z11 |= true;
                                    }
                                    this.notIn_.D0(pVar.z());
                                } else if (L != 58) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    int q11 = pVar.q(pVar.D());
                                    if (!(z11 & true) && pVar.e() > 0) {
                                        this.notIn_ = GeneratedMessageV3.newIntList();
                                        z11 |= true;
                                    }
                                    while (pVar.e() > 0) {
                                        this.notIn_.D0(pVar.z());
                                    }
                                    pVar.p(q11);
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
                    if (z11 & true) {
                        this.in_.C();
                    }
                    if (z11 & true) {
                        this.notIn_.C();
                    }
                    this.unknownFields = h10.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static Int32Rules parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Int32Rules) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static Int32Rules parseFrom(com.google.protobuf.p pVar) throws IOException {
            return (Int32Rules) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static Int32Rules parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
            return (Int32Rules) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes5.dex */
    public static final class Int64Rules extends GeneratedMessageV3 implements m {
        public static final int CONST_FIELD_NUMBER = 1;
        public static final int GTE_FIELD_NUMBER = 5;
        public static final int GT_FIELD_NUMBER = 4;
        public static final int IN_FIELD_NUMBER = 6;
        public static final int LTE_FIELD_NUMBER = 3;
        public static final int LT_FIELD_NUMBER = 2;
        public static final int NOT_IN_FIELD_NUMBER = 7;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private long const_;
        private long gt_;
        private long gte_;
        private u0.i in_;
        private long lt_;
        private long lte_;
        private byte memoizedIsInitialized;
        private u0.i notIn_;
        private static final Int64Rules DEFAULT_INSTANCE = new Int64Rules();
        @Deprecated
        public static final e2<Int64Rules> PARSER = new a();

        /* loaded from: classes5.dex */
        class a extends com.google.protobuf.c<Int64Rules> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public Int64Rules m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new Int64Rules(pVar, f0Var, null);
            }
        }

        /* loaded from: classes5.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements m {

            /* renamed from: e  reason: collision with root package name */
            private int f50707e;

            /* renamed from: f  reason: collision with root package name */
            private long f50708f;

            /* renamed from: g  reason: collision with root package name */
            private long f50709g;

            /* renamed from: h  reason: collision with root package name */
            private long f50710h;

            /* renamed from: i  reason: collision with root package name */
            private long f50711i;

            /* renamed from: j  reason: collision with root package name */
            private long f50712j;

            /* renamed from: k  reason: collision with root package name */
            private u0.i f50713k;

            /* renamed from: l  reason: collision with root package name */
            private u0.i f50714l;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void a0() {
                if ((this.f50707e & 32) == 0) {
                    this.f50713k = GeneratedMessageV3.mutableCopy(this.f50713k);
                    this.f50707e |= 32;
                }
            }

            private void b0() {
                if ((this.f50707e & 64) == 0) {
                    this.f50714l = GeneratedMessageV3.mutableCopy(this.f50714l);
                    this.f50707e |= 64;
                }
            }

            private void e0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return Validate.f50591m.d(Int64Rules.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public Int64Rules build() {
                Int64Rules I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public Int64Rules I() {
                int i9;
                Int64Rules int64Rules = new Int64Rules(this, (a) null);
                int i10 = this.f50707e;
                if ((i10 & 1) != 0) {
                    int64Rules.const_ = this.f50708f;
                    i9 = 1;
                } else {
                    i9 = 0;
                }
                if ((i10 & 2) != 0) {
                    int64Rules.lt_ = this.f50709g;
                    i9 |= 2;
                }
                if ((i10 & 4) != 0) {
                    int64Rules.lte_ = this.f50710h;
                    i9 |= 4;
                }
                if ((i10 & 8) != 0) {
                    int64Rules.gt_ = this.f50711i;
                    i9 |= 8;
                }
                if ((i10 & 16) != 0) {
                    int64Rules.gte_ = this.f50712j;
                    i9 |= 16;
                }
                if ((this.f50707e & 32) != 0) {
                    this.f50713k.C();
                    this.f50707e &= -33;
                }
                int64Rules.in_ = this.f50713k;
                if ((this.f50707e & 64) != 0) {
                    this.f50714l.C();
                    this.f50707e &= -65;
                }
                int64Rules.notIn_ = this.f50714l;
                int64Rules.bitField0_ = i9;
                Q();
                return int64Rules;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: d0 */
            public Int64Rules getDefaultInstanceForType() {
                return Int64Rules.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0021  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: g0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.Int64Rules.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2<io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$Int64Rules> r1 = io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.Int64Rules.PARSER     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$Int64Rules r3 = (io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.Int64Rules) r3     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    if (r3 == 0) goto Le
                    r2.i0(r3)
                Le:
                    return r2
                Lf:
                    r3 = move-exception
                    goto L1f
                L11:
                    r3 = move-exception
                    com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> Lf
                    io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$Int64Rules r4 = (io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.Int64Rules) r4     // Catch: java.lang.Throwable -> Lf
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1d
                    throw r3     // Catch: java.lang.Throwable -> L1d
                L1d:
                    r3 = move-exception
                    r0 = r4
                L1f:
                    if (r0 == 0) goto L24
                    r2.i0(r0)
                L24:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.Int64Rules.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$Int64Rules$b");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return Validate.f50590l;
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: h0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof Int64Rules) {
                    return i0((Int64Rules) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b i0(Int64Rules int64Rules) {
                if (int64Rules == Int64Rules.getDefaultInstance()) {
                    return this;
                }
                if (int64Rules.hasConst()) {
                    k0(int64Rules.getConst());
                }
                if (int64Rules.hasLt()) {
                    o0(int64Rules.getLt());
                }
                if (int64Rules.hasLte()) {
                    q0(int64Rules.getLte());
                }
                if (int64Rules.hasGt()) {
                    m0(int64Rules.getGt());
                }
                if (int64Rules.hasGte()) {
                    n0(int64Rules.getGte());
                }
                if (!int64Rules.in_.isEmpty()) {
                    if (this.f50713k.isEmpty()) {
                        this.f50713k = int64Rules.in_;
                        this.f50707e &= -33;
                    } else {
                        a0();
                        this.f50713k.addAll(int64Rules.in_);
                    }
                    R();
                }
                if (!int64Rules.notIn_.isEmpty()) {
                    if (this.f50714l.isEmpty()) {
                        this.f50714l = int64Rules.notIn_;
                        this.f50707e &= -65;
                    } else {
                        b0();
                        this.f50714l.addAll(int64Rules.notIn_);
                    }
                    R();
                }
                z(((GeneratedMessageV3) int64Rules).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: j0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            public b k0(long j10) {
                this.f50707e |= 1;
                this.f50708f = j10;
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: l0 */
            public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.c(fieldDescriptor, obj);
            }

            public b m0(long j10) {
                this.f50707e |= 8;
                this.f50711i = j10;
                R();
                return this;
            }

            public b n0(long j10) {
                this.f50707e |= 16;
                this.f50712j = j10;
                R();
                return this;
            }

            public b o0(long j10) {
                this.f50707e |= 2;
                this.f50709g = j10;
                R();
                return this;
            }

            public b q0(long j10) {
                this.f50707e |= 4;
                this.f50710h = j10;
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: r0 */
            public final b f1(h3 h3Var) {
                return (b) super.f1(h3Var);
            }

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                this.f50713k = Int64Rules.access$10100();
                this.f50714l = Int64Rules.access$10400();
                e0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f50713k = Int64Rules.access$10100();
                this.f50714l = Int64Rules.access$10400();
                e0();
            }
        }

        /* synthetic */ Int64Rules(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        static /* synthetic */ u0.i access$10100() {
            return GeneratedMessageV3.emptyLongList();
        }

        static /* synthetic */ u0.i access$10400() {
            return GeneratedMessageV3.emptyLongList();
        }

        public static Int64Rules getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return Validate.f50590l;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Int64Rules parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Int64Rules) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Int64Rules parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<Int64Rules> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Int64Rules)) {
                return super.equals(obj);
            }
            Int64Rules int64Rules = (Int64Rules) obj;
            if (hasConst() != int64Rules.hasConst()) {
                return false;
            }
            if ((!hasConst() || getConst() == int64Rules.getConst()) && hasLt() == int64Rules.hasLt()) {
                if ((!hasLt() || getLt() == int64Rules.getLt()) && hasLte() == int64Rules.hasLte()) {
                    if ((!hasLte() || getLte() == int64Rules.getLte()) && hasGt() == int64Rules.hasGt()) {
                        if ((!hasGt() || getGt() == int64Rules.getGt()) && hasGte() == int64Rules.hasGte()) {
                            return (!hasGte() || getGte() == int64Rules.getGte()) && getInList().equals(int64Rules.getInList()) && getNotInList().equals(int64Rules.getNotInList()) && this.unknownFields.equals(int64Rules.unknownFields);
                        }
                        return false;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }

        public long getConst() {
            return this.const_;
        }

        public long getGt() {
            return this.gt_;
        }

        public long getGte() {
            return this.gte_;
        }

        public long getIn(int i9) {
            return this.in_.getLong(i9);
        }

        public int getInCount() {
            return this.in_.size();
        }

        public List<Long> getInList() {
            return this.in_;
        }

        public long getLt() {
            return this.lt_;
        }

        public long getLte() {
            return this.lte_;
        }

        public long getNotIn(int i9) {
            return this.notIn_.getLong(i9);
        }

        public int getNotInCount() {
            return this.notIn_.size();
        }

        public List<Long> getNotInList() {
            return this.notIn_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<Int64Rules> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int z10 = (this.bitField0_ & 1) != 0 ? CodedOutputStream.z(1, this.const_) + 0 : 0;
            if ((this.bitField0_ & 2) != 0) {
                z10 += CodedOutputStream.z(2, this.lt_);
            }
            if ((this.bitField0_ & 4) != 0) {
                z10 += CodedOutputStream.z(3, this.lte_);
            }
            if ((this.bitField0_ & 8) != 0) {
                z10 += CodedOutputStream.z(4, this.gt_);
            }
            if ((this.bitField0_ & 16) != 0) {
                z10 += CodedOutputStream.z(5, this.gte_);
            }
            int i10 = 0;
            for (int i11 = 0; i11 < this.in_.size(); i11++) {
                i10 += CodedOutputStream.A(this.in_.getLong(i11));
            }
            int size = z10 + i10 + (getInList().size() * 1);
            int i12 = 0;
            for (int i13 = 0; i13 < this.notIn_.size(); i13++) {
                i12 += CodedOutputStream.A(this.notIn_.getLong(i13));
            }
            int size2 = size + i12 + (getNotInList().size() * 1) + this.unknownFields.getSerializedSize();
            this.memoizedSize = size2;
            return size2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasConst() {
            return (this.bitField0_ & 1) != 0;
        }

        public boolean hasGt() {
            return (this.bitField0_ & 8) != 0;
        }

        public boolean hasGte() {
            return (this.bitField0_ & 16) != 0;
        }

        public boolean hasLt() {
            return (this.bitField0_ & 2) != 0;
        }

        public boolean hasLte() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (hasConst()) {
                hashCode = (((hashCode * 37) + 1) * 53) + u0.i(getConst());
            }
            if (hasLt()) {
                hashCode = (((hashCode * 37) + 2) * 53) + u0.i(getLt());
            }
            if (hasLte()) {
                hashCode = (((hashCode * 37) + 3) * 53) + u0.i(getLte());
            }
            if (hasGt()) {
                hashCode = (((hashCode * 37) + 4) * 53) + u0.i(getGt());
            }
            if (hasGte()) {
                hashCode = (((hashCode * 37) + 5) * 53) + u0.i(getGte());
            }
            if (getInCount() > 0) {
                hashCode = (((hashCode * 37) + 6) * 53) + getInList().hashCode();
            }
            if (getNotInCount() > 0) {
                hashCode = (((hashCode * 37) + 7) * 53) + getNotInList().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return Validate.f50591m.d(Int64Rules.class, b.class);
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
            return new Int64Rules();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if ((this.bitField0_ & 1) != 0) {
                codedOutputStream.J0(1, this.const_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.J0(2, this.lt_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.J0(3, this.lte_);
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.J0(4, this.gt_);
            }
            if ((this.bitField0_ & 16) != 0) {
                codedOutputStream.J0(5, this.gte_);
            }
            for (int i9 = 0; i9 < this.in_.size(); i9++) {
                codedOutputStream.J0(6, this.in_.getLong(i9));
            }
            for (int i10 = 0; i10 < this.notIn_.size(); i10++) {
                codedOutputStream.J0(7, this.notIn_.getLong(i10));
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ Int64Rules(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(Int64Rules int64Rules) {
            return DEFAULT_INSTANCE.toBuilder().i0(int64Rules);
        }

        public static Int64Rules parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private Int64Rules(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Int64Rules parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Int64Rules) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static Int64Rules parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public Int64Rules getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).i0(this);
        }

        public static Int64Rules parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private Int64Rules() {
            this.memoizedIsInitialized = (byte) -1;
            this.in_ = GeneratedMessageV3.emptyLongList();
            this.notIn_ = GeneratedMessageV3.emptyLongList();
        }

        public static Int64Rules parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static Int64Rules parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static Int64Rules parseFrom(InputStream inputStream) throws IOException {
            return (Int64Rules) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private Int64Rules(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            this();
            Objects.requireNonNull(f0Var);
            h3.b h10 = h3.h();
            boolean z10 = false;
            boolean z11 = false;
            while (!z10) {
                try {
                    try {
                        try {
                            int L = pVar.L();
                            if (L != 0) {
                                if (L == 8) {
                                    this.bitField0_ |= 1;
                                    this.const_ = pVar.A();
                                } else if (L == 16) {
                                    this.bitField0_ |= 2;
                                    this.lt_ = pVar.A();
                                } else if (L == 24) {
                                    this.bitField0_ |= 4;
                                    this.lte_ = pVar.A();
                                } else if (L == 32) {
                                    this.bitField0_ |= 8;
                                    this.gt_ = pVar.A();
                                } else if (L == 40) {
                                    this.bitField0_ |= 16;
                                    this.gte_ = pVar.A();
                                } else if (L == 48) {
                                    if (!(z11 & true)) {
                                        this.in_ = GeneratedMessageV3.newLongList();
                                        z11 |= true;
                                    }
                                    this.in_.I0(pVar.A());
                                } else if (L == 50) {
                                    int q10 = pVar.q(pVar.D());
                                    if (!(z11 & true) && pVar.e() > 0) {
                                        this.in_ = GeneratedMessageV3.newLongList();
                                        z11 |= true;
                                    }
                                    while (pVar.e() > 0) {
                                        this.in_.I0(pVar.A());
                                    }
                                    pVar.p(q10);
                                } else if (L == 56) {
                                    if (!(z11 & true)) {
                                        this.notIn_ = GeneratedMessageV3.newLongList();
                                        z11 |= true;
                                    }
                                    this.notIn_.I0(pVar.A());
                                } else if (L != 58) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    int q11 = pVar.q(pVar.D());
                                    if (!(z11 & true) && pVar.e() > 0) {
                                        this.notIn_ = GeneratedMessageV3.newLongList();
                                        z11 |= true;
                                    }
                                    while (pVar.e() > 0) {
                                        this.notIn_.I0(pVar.A());
                                    }
                                    pVar.p(q11);
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
                    if (z11 & true) {
                        this.in_.C();
                    }
                    if (z11 & true) {
                        this.notIn_.C();
                    }
                    this.unknownFields = h10.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static Int64Rules parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Int64Rules) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static Int64Rules parseFrom(com.google.protobuf.p pVar) throws IOException {
            return (Int64Rules) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static Int64Rules parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
            return (Int64Rules) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes5.dex */
    public enum KnownRegex implements h2 {
        UNKNOWN(0),
        HTTP_HEADER_NAME(1),
        HTTP_HEADER_VALUE(2);
        
        public static final int HTTP_HEADER_NAME_VALUE = 1;
        public static final int HTTP_HEADER_VALUE_VALUE = 2;
        public static final int UNKNOWN_VALUE = 0;
        private final int value;
        private static final u0.d<KnownRegex> internalValueMap = new a();
        private static final KnownRegex[] VALUES = values();

        /* loaded from: classes5.dex */
        class a implements u0.d<KnownRegex> {
            a() {
            }

            @Override // com.google.protobuf.u0.d
            /* renamed from: b */
            public KnownRegex a(int i9) {
                return KnownRegex.forNumber(i9);
            }
        }

        KnownRegex(int i9) {
            this.value = i9;
        }

        public static KnownRegex forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 != 2) {
                        return null;
                    }
                    return HTTP_HEADER_VALUE;
                }
                return HTTP_HEADER_NAME;
            }
            return UNKNOWN;
        }

        public static final Descriptors.d getDescriptor() {
            return Validate.U().k().get(0);
        }

        public static u0.d<KnownRegex> internalGetValueMap() {
            return internalValueMap;
        }

        public final Descriptors.d getDescriptorForType() {
            return getDescriptor();
        }

        @Override // com.google.protobuf.u0.c
        public final int getNumber() {
            return this.value;
        }

        public final Descriptors.e getValueDescriptor() {
            return getDescriptor().k().get(ordinal());
        }

        @Deprecated
        public static KnownRegex valueOf(int i9) {
            return forNumber(i9);
        }

        public static KnownRegex valueOf(Descriptors.e eVar) {
            if (eVar.h() == getDescriptor()) {
                return VALUES[eVar.g()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    /* loaded from: classes5.dex */
    public static final class MapRules extends GeneratedMessageV3 implements n {
        public static final int KEYS_FIELD_NUMBER = 4;
        public static final int MAX_PAIRS_FIELD_NUMBER = 2;
        public static final int MIN_PAIRS_FIELD_NUMBER = 1;
        public static final int NO_SPARSE_FIELD_NUMBER = 3;
        public static final int VALUES_FIELD_NUMBER = 5;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private FieldRules keys_;
        private long maxPairs_;
        private byte memoizedIsInitialized;
        private long minPairs_;
        private boolean noSparse_;
        private FieldRules values_;
        private static final MapRules DEFAULT_INSTANCE = new MapRules();
        @Deprecated
        public static final e2<MapRules> PARSER = new a();

        /* loaded from: classes5.dex */
        class a extends com.google.protobuf.c<MapRules> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public MapRules m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new MapRules(pVar, f0Var, null);
            }
        }

        /* loaded from: classes5.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements n {

            /* renamed from: e  reason: collision with root package name */
            private int f50715e;

            /* renamed from: f  reason: collision with root package name */
            private long f50716f;

            /* renamed from: g  reason: collision with root package name */
            private long f50717g;

            /* renamed from: h  reason: collision with root package name */
            private boolean f50718h;

            /* renamed from: i  reason: collision with root package name */
            private FieldRules f50719i;

            /* renamed from: j  reason: collision with root package name */
            private q2<FieldRules, FieldRules.b, h> f50720j;

            /* renamed from: k  reason: collision with root package name */
            private FieldRules f50721k;

            /* renamed from: l  reason: collision with root package name */
            private q2<FieldRules, FieldRules.b, h> f50722l;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private q2<FieldRules, FieldRules.b, h> d0() {
                if (this.f50720j == null) {
                    this.f50720j = new q2<>(b0(), H(), O());
                    this.f50719i = null;
                }
                return this.f50720j;
            }

            private q2<FieldRules, FieldRules.b, h> g0() {
                if (this.f50722l == null) {
                    this.f50722l = new q2<>(e0(), H(), O());
                    this.f50721k = null;
                }
                return this.f50722l;
            }

            private void h0() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    d0();
                    g0();
                }
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return Validate.Q.d(MapRules.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public MapRules build() {
                MapRules I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public MapRules I() {
                int i9;
                MapRules mapRules = new MapRules(this, (a) null);
                int i10 = this.f50715e;
                if ((i10 & 1) != 0) {
                    mapRules.minPairs_ = this.f50716f;
                    i9 = 1;
                } else {
                    i9 = 0;
                }
                if ((i10 & 2) != 0) {
                    mapRules.maxPairs_ = this.f50717g;
                    i9 |= 2;
                }
                if ((i10 & 4) != 0) {
                    mapRules.noSparse_ = this.f50718h;
                    i9 |= 4;
                }
                if ((i10 & 8) != 0) {
                    q2<FieldRules, FieldRules.b, h> q2Var = this.f50720j;
                    if (q2Var == null) {
                        mapRules.keys_ = this.f50719i;
                    } else {
                        mapRules.keys_ = q2Var.b();
                    }
                    i9 |= 8;
                }
                if ((i10 & 16) != 0) {
                    q2<FieldRules, FieldRules.b, h> q2Var2 = this.f50722l;
                    if (q2Var2 == null) {
                        mapRules.values_ = this.f50721k;
                    } else {
                        mapRules.values_ = q2Var2.b();
                    }
                    i9 |= 16;
                }
                mapRules.bitField0_ = i9;
                Q();
                return mapRules;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public MapRules getDefaultInstanceForType() {
                return MapRules.getDefaultInstance();
            }

            public FieldRules b0() {
                q2<FieldRules, FieldRules.b, h> q2Var = this.f50720j;
                if (q2Var == null) {
                    FieldRules fieldRules = this.f50719i;
                    return fieldRules == null ? FieldRules.getDefaultInstance() : fieldRules;
                }
                return q2Var.d();
            }

            public FieldRules e0() {
                q2<FieldRules, FieldRules.b, h> q2Var = this.f50722l;
                if (q2Var == null) {
                    FieldRules fieldRules = this.f50721k;
                    return fieldRules == null ? FieldRules.getDefaultInstance() : fieldRules;
                }
                return q2Var.d();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return Validate.P;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0021  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: i0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.MapRules.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2<io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$MapRules> r1 = io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.MapRules.PARSER     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$MapRules r3 = (io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.MapRules) r3     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    if (r3 == 0) goto Le
                    r2.k0(r3)
                Le:
                    return r2
                Lf:
                    r3 = move-exception
                    goto L1f
                L11:
                    r3 = move-exception
                    com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> Lf
                    io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$MapRules r4 = (io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.MapRules) r4     // Catch: java.lang.Throwable -> Lf
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1d
                    throw r3     // Catch: java.lang.Throwable -> L1d
                L1d:
                    r3 = move-exception
                    r0 = r4
                L1f:
                    if (r0 == 0) goto L24
                    r2.k0(r0)
                L24:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.MapRules.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$MapRules$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: j0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof MapRules) {
                    return k0((MapRules) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b k0(MapRules mapRules) {
                if (mapRules == MapRules.getDefaultInstance()) {
                    return this;
                }
                if (mapRules.hasMinPairs()) {
                    r0(mapRules.getMinPairs());
                }
                if (mapRules.hasMaxPairs()) {
                    q0(mapRules.getMaxPairs());
                }
                if (mapRules.hasNoSparse()) {
                    s0(mapRules.getNoSparse());
                }
                if (mapRules.hasKeys()) {
                    l0(mapRules.getKeys());
                }
                if (mapRules.hasValues()) {
                    n0(mapRules.getValues());
                }
                z(((GeneratedMessageV3) mapRules).unknownFields);
                R();
                return this;
            }

            public b l0(FieldRules fieldRules) {
                FieldRules fieldRules2;
                q2<FieldRules, FieldRules.b, h> q2Var = this.f50720j;
                if (q2Var == null) {
                    if ((this.f50715e & 8) != 0 && (fieldRules2 = this.f50719i) != null && fieldRules2 != FieldRules.getDefaultInstance()) {
                        this.f50719i = FieldRules.newBuilder(this.f50719i).s0(fieldRules).I();
                    } else {
                        this.f50719i = fieldRules;
                    }
                    R();
                } else {
                    q2Var.e(fieldRules);
                }
                this.f50715e |= 8;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: m0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            public b n0(FieldRules fieldRules) {
                FieldRules fieldRules2;
                q2<FieldRules, FieldRules.b, h> q2Var = this.f50722l;
                if (q2Var == null) {
                    if ((this.f50715e & 16) != 0 && (fieldRules2 = this.f50721k) != null && fieldRules2 != FieldRules.getDefaultInstance()) {
                        this.f50721k = FieldRules.newBuilder(this.f50721k).s0(fieldRules).I();
                    } else {
                        this.f50721k = fieldRules;
                    }
                    R();
                } else {
                    q2Var.e(fieldRules);
                }
                this.f50715e |= 16;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: o0 */
            public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.c(fieldDescriptor, obj);
            }

            public b q0(long j10) {
                this.f50715e |= 2;
                this.f50717g = j10;
                R();
                return this;
            }

            public b r0(long j10) {
                this.f50715e |= 1;
                this.f50716f = j10;
                R();
                return this;
            }

            public b s0(boolean z10) {
                this.f50715e |= 4;
                this.f50718h = z10;
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: t0 */
            public final b f1(h3 h3Var) {
                return (b) super.f1(h3Var);
            }

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                h0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                h0();
            }
        }

        /* synthetic */ MapRules(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static MapRules getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return Validate.P;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static MapRules parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (MapRules) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static MapRules parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<MapRules> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof MapRules)) {
                return super.equals(obj);
            }
            MapRules mapRules = (MapRules) obj;
            if (hasMinPairs() != mapRules.hasMinPairs()) {
                return false;
            }
            if ((!hasMinPairs() || getMinPairs() == mapRules.getMinPairs()) && hasMaxPairs() == mapRules.hasMaxPairs()) {
                if ((!hasMaxPairs() || getMaxPairs() == mapRules.getMaxPairs()) && hasNoSparse() == mapRules.hasNoSparse()) {
                    if ((!hasNoSparse() || getNoSparse() == mapRules.getNoSparse()) && hasKeys() == mapRules.hasKeys()) {
                        if ((!hasKeys() || getKeys().equals(mapRules.getKeys())) && hasValues() == mapRules.hasValues()) {
                            return (!hasValues() || getValues().equals(mapRules.getValues())) && this.unknownFields.equals(mapRules.unknownFields);
                        }
                        return false;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }

        public FieldRules getKeys() {
            FieldRules fieldRules = this.keys_;
            return fieldRules == null ? FieldRules.getDefaultInstance() : fieldRules;
        }

        public h getKeysOrBuilder() {
            FieldRules fieldRules = this.keys_;
            return fieldRules == null ? FieldRules.getDefaultInstance() : fieldRules;
        }

        public long getMaxPairs() {
            return this.maxPairs_;
        }

        public long getMinPairs() {
            return this.minPairs_;
        }

        public boolean getNoSparse() {
            return this.noSparse_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<MapRules> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int a02 = (this.bitField0_ & 1) != 0 ? 0 + CodedOutputStream.a0(1, this.minPairs_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                a02 += CodedOutputStream.a0(2, this.maxPairs_);
            }
            if ((this.bitField0_ & 4) != 0) {
                a02 += CodedOutputStream.e(3, this.noSparse_);
            }
            if ((this.bitField0_ & 8) != 0) {
                a02 += CodedOutputStream.G(4, getKeys());
            }
            if ((this.bitField0_ & 16) != 0) {
                a02 += CodedOutputStream.G(5, getValues());
            }
            int serializedSize = a02 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public FieldRules getValues() {
            FieldRules fieldRules = this.values_;
            return fieldRules == null ? FieldRules.getDefaultInstance() : fieldRules;
        }

        public h getValuesOrBuilder() {
            FieldRules fieldRules = this.values_;
            return fieldRules == null ? FieldRules.getDefaultInstance() : fieldRules;
        }

        public boolean hasKeys() {
            return (this.bitField0_ & 8) != 0;
        }

        public boolean hasMaxPairs() {
            return (this.bitField0_ & 2) != 0;
        }

        public boolean hasMinPairs() {
            return (this.bitField0_ & 1) != 0;
        }

        public boolean hasNoSparse() {
            return (this.bitField0_ & 4) != 0;
        }

        public boolean hasValues() {
            return (this.bitField0_ & 16) != 0;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (hasMinPairs()) {
                hashCode = (((hashCode * 37) + 1) * 53) + u0.i(getMinPairs());
            }
            if (hasMaxPairs()) {
                hashCode = (((hashCode * 37) + 2) * 53) + u0.i(getMaxPairs());
            }
            if (hasNoSparse()) {
                hashCode = (((hashCode * 37) + 3) * 53) + u0.d(getNoSparse());
            }
            if (hasKeys()) {
                hashCode = (((hashCode * 37) + 4) * 53) + getKeys().hashCode();
            }
            if (hasValues()) {
                hashCode = (((hashCode * 37) + 5) * 53) + getValues().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return Validate.Q.d(MapRules.class, b.class);
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
            return new MapRules();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if ((this.bitField0_ & 1) != 0) {
                codedOutputStream.e1(1, this.minPairs_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.e1(2, this.maxPairs_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.n0(3, this.noSparse_);
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.L0(4, getKeys());
            }
            if ((this.bitField0_ & 16) != 0) {
                codedOutputStream.L0(5, getValues());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ MapRules(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(MapRules mapRules) {
            return DEFAULT_INSTANCE.toBuilder().k0(mapRules);
        }

        public static MapRules parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private MapRules(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static MapRules parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (MapRules) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static MapRules parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public MapRules getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).k0(this);
        }

        public static MapRules parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private MapRules() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static MapRules parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static MapRules parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        private MapRules(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            this();
            FieldRules.b builder;
            Objects.requireNonNull(f0Var);
            h3.b h10 = h3.h();
            boolean z10 = false;
            while (!z10) {
                try {
                    try {
                        int L = pVar.L();
                        if (L != 0) {
                            if (L == 8) {
                                this.bitField0_ |= 1;
                                this.minPairs_ = pVar.N();
                            } else if (L == 16) {
                                this.bitField0_ |= 2;
                                this.maxPairs_ = pVar.N();
                            } else if (L != 24) {
                                if (L == 34) {
                                    builder = (this.bitField0_ & 8) != 0 ? this.keys_.toBuilder() : null;
                                    FieldRules fieldRules = (FieldRules) pVar.B(FieldRules.PARSER, f0Var);
                                    this.keys_ = fieldRules;
                                    if (builder != null) {
                                        builder.s0(fieldRules);
                                        this.keys_ = builder.I();
                                    }
                                    this.bitField0_ |= 8;
                                } else if (L != 42) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    builder = (this.bitField0_ & 16) != 0 ? this.values_.toBuilder() : null;
                                    FieldRules fieldRules2 = (FieldRules) pVar.B(FieldRules.PARSER, f0Var);
                                    this.values_ = fieldRules2;
                                    if (builder != null) {
                                        builder.s0(fieldRules2);
                                        this.values_ = builder.I();
                                    }
                                    this.bitField0_ |= 16;
                                }
                            } else {
                                this.bitField0_ |= 4;
                                this.noSparse_ = pVar.r();
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

        public static MapRules parseFrom(InputStream inputStream) throws IOException {
            return (MapRules) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static MapRules parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (MapRules) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static MapRules parseFrom(com.google.protobuf.p pVar) throws IOException {
            return (MapRules) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static MapRules parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
            return (MapRules) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes5.dex */
    public static final class MessageRules extends GeneratedMessageV3 implements o {
        private static final MessageRules DEFAULT_INSTANCE = new MessageRules();
        @Deprecated
        public static final e2<MessageRules> PARSER = new a();
        public static final int REQUIRED_FIELD_NUMBER = 2;
        public static final int SKIP_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private boolean required_;
        private boolean skip_;

        /* loaded from: classes5.dex */
        class a extends com.google.protobuf.c<MessageRules> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public MessageRules m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new MessageRules(pVar, f0Var, null);
            }
        }

        /* loaded from: classes5.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements o {

            /* renamed from: e  reason: collision with root package name */
            private int f50723e;

            /* renamed from: f  reason: collision with root package name */
            private boolean f50724f;

            /* renamed from: g  reason: collision with root package name */
            private boolean f50725g;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return Validate.M.d(MessageRules.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public MessageRules build() {
                MessageRules I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public MessageRules I() {
                int i9;
                MessageRules messageRules = new MessageRules(this, (a) null);
                int i10 = this.f50723e;
                if ((i10 & 1) != 0) {
                    messageRules.skip_ = this.f50724f;
                    i9 = 1;
                } else {
                    i9 = 0;
                }
                if ((i10 & 2) != 0) {
                    messageRules.required_ = this.f50725g;
                    i9 |= 2;
                }
                messageRules.bitField0_ = i9;
                Q();
                return messageRules;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public MessageRules getDefaultInstanceForType() {
                return MessageRules.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0021  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: d0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.MessageRules.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2<io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$MessageRules> r1 = io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.MessageRules.PARSER     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$MessageRules r3 = (io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.MessageRules) r3     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    if (r3 == 0) goto Le
                    r2.g0(r3)
                Le:
                    return r2
                Lf:
                    r3 = move-exception
                    goto L1f
                L11:
                    r3 = move-exception
                    com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> Lf
                    io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$MessageRules r4 = (io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.MessageRules) r4     // Catch: java.lang.Throwable -> Lf
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1d
                    throw r3     // Catch: java.lang.Throwable -> L1d
                L1d:
                    r3 = move-exception
                    r0 = r4
                L1f:
                    if (r0 == 0) goto L24
                    r2.g0(r0)
                L24:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.MessageRules.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$MessageRules$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof MessageRules) {
                    return g0((MessageRules) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b g0(MessageRules messageRules) {
                if (messageRules == MessageRules.getDefaultInstance()) {
                    return this;
                }
                if (messageRules.hasSkip()) {
                    k0(messageRules.getSkip());
                }
                if (messageRules.hasRequired()) {
                    j0(messageRules.getRequired());
                }
                z(((GeneratedMessageV3) messageRules).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return Validate.L;
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

            public b j0(boolean z10) {
                this.f50723e |= 2;
                this.f50725g = z10;
                R();
                return this;
            }

            public b k0(boolean z10) {
                this.f50723e |= 1;
                this.f50724f = z10;
                R();
                return this;
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

        /* synthetic */ MessageRules(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static MessageRules getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return Validate.L;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static MessageRules parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (MessageRules) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static MessageRules parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<MessageRules> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof MessageRules)) {
                return super.equals(obj);
            }
            MessageRules messageRules = (MessageRules) obj;
            if (hasSkip() != messageRules.hasSkip()) {
                return false;
            }
            if ((!hasSkip() || getSkip() == messageRules.getSkip()) && hasRequired() == messageRules.hasRequired()) {
                return (!hasRequired() || getRequired() == messageRules.getRequired()) && this.unknownFields.equals(messageRules.unknownFields);
            }
            return false;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<MessageRules> getParserForType() {
            return PARSER;
        }

        public boolean getRequired() {
            return this.required_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int e10 = (this.bitField0_ & 1) != 0 ? 0 + CodedOutputStream.e(1, this.skip_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                e10 += CodedOutputStream.e(2, this.required_);
            }
            int serializedSize = e10 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        public boolean getSkip() {
            return this.skip_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasRequired() {
            return (this.bitField0_ & 2) != 0;
        }

        public boolean hasSkip() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (hasSkip()) {
                hashCode = (((hashCode * 37) + 1) * 53) + u0.d(getSkip());
            }
            if (hasRequired()) {
                hashCode = (((hashCode * 37) + 2) * 53) + u0.d(getRequired());
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return Validate.M.d(MessageRules.class, b.class);
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
            return new MessageRules();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if ((this.bitField0_ & 1) != 0) {
                codedOutputStream.n0(1, this.skip_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.n0(2, this.required_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ MessageRules(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(MessageRules messageRules) {
            return DEFAULT_INSTANCE.toBuilder().g0(messageRules);
        }

        public static MessageRules parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private MessageRules(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static MessageRules parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (MessageRules) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static MessageRules parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public MessageRules getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
        }

        public static MessageRules parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private MessageRules() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static MessageRules parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static MessageRules parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        private MessageRules(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                this.bitField0_ |= 1;
                                this.skip_ = pVar.r();
                            } else if (L != 16) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                this.bitField0_ |= 2;
                                this.required_ = pVar.r();
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

        public static MessageRules parseFrom(InputStream inputStream) throws IOException {
            return (MessageRules) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static MessageRules parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (MessageRules) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static MessageRules parseFrom(com.google.protobuf.p pVar) throws IOException {
            return (MessageRules) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static MessageRules parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
            return (MessageRules) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes5.dex */
    public static final class RepeatedRules extends GeneratedMessageV3 implements p {
        public static final int ITEMS_FIELD_NUMBER = 4;
        public static final int MAX_ITEMS_FIELD_NUMBER = 2;
        public static final int MIN_ITEMS_FIELD_NUMBER = 1;
        public static final int UNIQUE_FIELD_NUMBER = 3;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private FieldRules items_;
        private long maxItems_;
        private byte memoizedIsInitialized;
        private long minItems_;
        private boolean unique_;
        private static final RepeatedRules DEFAULT_INSTANCE = new RepeatedRules();
        @Deprecated
        public static final e2<RepeatedRules> PARSER = new a();

        /* loaded from: classes5.dex */
        class a extends com.google.protobuf.c<RepeatedRules> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public RepeatedRules m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new RepeatedRules(pVar, f0Var, null);
            }
        }

        /* loaded from: classes5.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements p {

            /* renamed from: e  reason: collision with root package name */
            private int f50726e;

            /* renamed from: f  reason: collision with root package name */
            private long f50727f;

            /* renamed from: g  reason: collision with root package name */
            private long f50728g;

            /* renamed from: h  reason: collision with root package name */
            private boolean f50729h;

            /* renamed from: i  reason: collision with root package name */
            private FieldRules f50730i;

            /* renamed from: j  reason: collision with root package name */
            private q2<FieldRules, FieldRules.b, h> f50731j;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private q2<FieldRules, FieldRules.b, h> d0() {
                if (this.f50731j == null) {
                    this.f50731j = new q2<>(b0(), H(), O());
                    this.f50730i = null;
                }
                return this.f50731j;
            }

            private void e0() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    d0();
                }
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return Validate.O.d(RepeatedRules.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public RepeatedRules build() {
                RepeatedRules I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public RepeatedRules I() {
                int i9;
                RepeatedRules repeatedRules = new RepeatedRules(this, (a) null);
                int i10 = this.f50726e;
                if ((i10 & 1) != 0) {
                    repeatedRules.minItems_ = this.f50727f;
                    i9 = 1;
                } else {
                    i9 = 0;
                }
                if ((i10 & 2) != 0) {
                    repeatedRules.maxItems_ = this.f50728g;
                    i9 |= 2;
                }
                if ((i10 & 4) != 0) {
                    repeatedRules.unique_ = this.f50729h;
                    i9 |= 4;
                }
                if ((i10 & 8) != 0) {
                    q2<FieldRules, FieldRules.b, h> q2Var = this.f50731j;
                    if (q2Var == null) {
                        repeatedRules.items_ = this.f50730i;
                    } else {
                        repeatedRules.items_ = q2Var.b();
                    }
                    i9 |= 8;
                }
                repeatedRules.bitField0_ = i9;
                Q();
                return repeatedRules;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public RepeatedRules getDefaultInstanceForType() {
                return RepeatedRules.getDefaultInstance();
            }

            public FieldRules b0() {
                q2<FieldRules, FieldRules.b, h> q2Var = this.f50731j;
                if (q2Var == null) {
                    FieldRules fieldRules = this.f50730i;
                    return fieldRules == null ? FieldRules.getDefaultInstance() : fieldRules;
                }
                return q2Var.d();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0021  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: g0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.RepeatedRules.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2<io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$RepeatedRules> r1 = io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.RepeatedRules.PARSER     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$RepeatedRules r3 = (io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.RepeatedRules) r3     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    if (r3 == 0) goto Le
                    r2.i0(r3)
                Le:
                    return r2
                Lf:
                    r3 = move-exception
                    goto L1f
                L11:
                    r3 = move-exception
                    com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> Lf
                    io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$RepeatedRules r4 = (io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.RepeatedRules) r4     // Catch: java.lang.Throwable -> Lf
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1d
                    throw r3     // Catch: java.lang.Throwable -> L1d
                L1d:
                    r3 = move-exception
                    r0 = r4
                L1f:
                    if (r0 == 0) goto L24
                    r2.i0(r0)
                L24:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.RepeatedRules.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$RepeatedRules$b");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return Validate.N;
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: h0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof RepeatedRules) {
                    return i0((RepeatedRules) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b i0(RepeatedRules repeatedRules) {
                if (repeatedRules == RepeatedRules.getDefaultInstance()) {
                    return this;
                }
                if (repeatedRules.hasMinItems()) {
                    n0(repeatedRules.getMinItems());
                }
                if (repeatedRules.hasMaxItems()) {
                    m0(repeatedRules.getMaxItems());
                }
                if (repeatedRules.hasUnique()) {
                    o0(repeatedRules.getUnique());
                }
                if (repeatedRules.hasItems()) {
                    j0(repeatedRules.getItems());
                }
                z(((GeneratedMessageV3) repeatedRules).unknownFields);
                R();
                return this;
            }

            public b j0(FieldRules fieldRules) {
                FieldRules fieldRules2;
                q2<FieldRules, FieldRules.b, h> q2Var = this.f50731j;
                if (q2Var == null) {
                    if ((this.f50726e & 8) != 0 && (fieldRules2 = this.f50730i) != null && fieldRules2 != FieldRules.getDefaultInstance()) {
                        this.f50730i = FieldRules.newBuilder(this.f50730i).s0(fieldRules).I();
                    } else {
                        this.f50730i = fieldRules;
                    }
                    R();
                } else {
                    q2Var.e(fieldRules);
                }
                this.f50726e |= 8;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: k0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: l0 */
            public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.c(fieldDescriptor, obj);
            }

            public b m0(long j10) {
                this.f50726e |= 2;
                this.f50728g = j10;
                R();
                return this;
            }

            public b n0(long j10) {
                this.f50726e |= 1;
                this.f50727f = j10;
                R();
                return this;
            }

            public b o0(boolean z10) {
                this.f50726e |= 4;
                this.f50729h = z10;
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: q0 */
            public final b f1(h3 h3Var) {
                return (b) super.f1(h3Var);
            }

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                e0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                e0();
            }
        }

        /* synthetic */ RepeatedRules(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static RepeatedRules getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return Validate.N;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static RepeatedRules parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (RepeatedRules) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static RepeatedRules parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<RepeatedRules> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof RepeatedRules)) {
                return super.equals(obj);
            }
            RepeatedRules repeatedRules = (RepeatedRules) obj;
            if (hasMinItems() != repeatedRules.hasMinItems()) {
                return false;
            }
            if ((!hasMinItems() || getMinItems() == repeatedRules.getMinItems()) && hasMaxItems() == repeatedRules.hasMaxItems()) {
                if ((!hasMaxItems() || getMaxItems() == repeatedRules.getMaxItems()) && hasUnique() == repeatedRules.hasUnique()) {
                    if ((!hasUnique() || getUnique() == repeatedRules.getUnique()) && hasItems() == repeatedRules.hasItems()) {
                        return (!hasItems() || getItems().equals(repeatedRules.getItems())) && this.unknownFields.equals(repeatedRules.unknownFields);
                    }
                    return false;
                }
                return false;
            }
            return false;
        }

        public FieldRules getItems() {
            FieldRules fieldRules = this.items_;
            return fieldRules == null ? FieldRules.getDefaultInstance() : fieldRules;
        }

        public h getItemsOrBuilder() {
            FieldRules fieldRules = this.items_;
            return fieldRules == null ? FieldRules.getDefaultInstance() : fieldRules;
        }

        public long getMaxItems() {
            return this.maxItems_;
        }

        public long getMinItems() {
            return this.minItems_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<RepeatedRules> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int a02 = (this.bitField0_ & 1) != 0 ? 0 + CodedOutputStream.a0(1, this.minItems_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                a02 += CodedOutputStream.a0(2, this.maxItems_);
            }
            if ((this.bitField0_ & 4) != 0) {
                a02 += CodedOutputStream.e(3, this.unique_);
            }
            if ((this.bitField0_ & 8) != 0) {
                a02 += CodedOutputStream.G(4, getItems());
            }
            int serializedSize = a02 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        public boolean getUnique() {
            return this.unique_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasItems() {
            return (this.bitField0_ & 8) != 0;
        }

        public boolean hasMaxItems() {
            return (this.bitField0_ & 2) != 0;
        }

        public boolean hasMinItems() {
            return (this.bitField0_ & 1) != 0;
        }

        public boolean hasUnique() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (hasMinItems()) {
                hashCode = (((hashCode * 37) + 1) * 53) + u0.i(getMinItems());
            }
            if (hasMaxItems()) {
                hashCode = (((hashCode * 37) + 2) * 53) + u0.i(getMaxItems());
            }
            if (hasUnique()) {
                hashCode = (((hashCode * 37) + 3) * 53) + u0.d(getUnique());
            }
            if (hasItems()) {
                hashCode = (((hashCode * 37) + 4) * 53) + getItems().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return Validate.O.d(RepeatedRules.class, b.class);
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
            return new RepeatedRules();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if ((this.bitField0_ & 1) != 0) {
                codedOutputStream.e1(1, this.minItems_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.e1(2, this.maxItems_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.n0(3, this.unique_);
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.L0(4, getItems());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ RepeatedRules(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(RepeatedRules repeatedRules) {
            return DEFAULT_INSTANCE.toBuilder().i0(repeatedRules);
        }

        public static RepeatedRules parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private RepeatedRules(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static RepeatedRules parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (RepeatedRules) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static RepeatedRules parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public RepeatedRules getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).i0(this);
        }

        public static RepeatedRules parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private RepeatedRules() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static RepeatedRules parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static RepeatedRules parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        private RepeatedRules(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                this.bitField0_ |= 1;
                                this.minItems_ = pVar.N();
                            } else if (L == 16) {
                                this.bitField0_ |= 2;
                                this.maxItems_ = pVar.N();
                            } else if (L == 24) {
                                this.bitField0_ |= 4;
                                this.unique_ = pVar.r();
                            } else if (L != 34) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                FieldRules.b builder = (this.bitField0_ & 8) != 0 ? this.items_.toBuilder() : null;
                                FieldRules fieldRules = (FieldRules) pVar.B(FieldRules.PARSER, f0Var);
                                this.items_ = fieldRules;
                                if (builder != null) {
                                    builder.s0(fieldRules);
                                    this.items_ = builder.I();
                                }
                                this.bitField0_ |= 8;
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

        public static RepeatedRules parseFrom(InputStream inputStream) throws IOException {
            return (RepeatedRules) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static RepeatedRules parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (RepeatedRules) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static RepeatedRules parseFrom(com.google.protobuf.p pVar) throws IOException {
            return (RepeatedRules) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static RepeatedRules parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
            return (RepeatedRules) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes5.dex */
    public static final class SFixed32Rules extends GeneratedMessageV3 implements q {
        public static final int CONST_FIELD_NUMBER = 1;
        public static final int GTE_FIELD_NUMBER = 5;
        public static final int GT_FIELD_NUMBER = 4;
        public static final int IN_FIELD_NUMBER = 6;
        public static final int LTE_FIELD_NUMBER = 3;
        public static final int LT_FIELD_NUMBER = 2;
        public static final int NOT_IN_FIELD_NUMBER = 7;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private int const_;
        private int gt_;
        private int gte_;
        private u0.g in_;
        private int lt_;
        private int lte_;
        private byte memoizedIsInitialized;
        private u0.g notIn_;
        private static final SFixed32Rules DEFAULT_INSTANCE = new SFixed32Rules();
        @Deprecated
        public static final e2<SFixed32Rules> PARSER = new a();

        /* loaded from: classes5.dex */
        class a extends com.google.protobuf.c<SFixed32Rules> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public SFixed32Rules m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new SFixed32Rules(pVar, f0Var, null);
            }
        }

        /* loaded from: classes5.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements q {

            /* renamed from: e  reason: collision with root package name */
            private int f50732e;

            /* renamed from: f  reason: collision with root package name */
            private int f50733f;

            /* renamed from: g  reason: collision with root package name */
            private int f50734g;

            /* renamed from: h  reason: collision with root package name */
            private int f50735h;

            /* renamed from: i  reason: collision with root package name */
            private int f50736i;

            /* renamed from: j  reason: collision with root package name */
            private int f50737j;

            /* renamed from: k  reason: collision with root package name */
            private u0.g f50738k;

            /* renamed from: l  reason: collision with root package name */
            private u0.g f50739l;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void a0() {
                if ((this.f50732e & 32) == 0) {
                    this.f50738k = GeneratedMessageV3.mutableCopy(this.f50738k);
                    this.f50732e |= 32;
                }
            }

            private void b0() {
                if ((this.f50732e & 64) == 0) {
                    this.f50739l = GeneratedMessageV3.mutableCopy(this.f50739l);
                    this.f50732e |= 64;
                }
            }

            private void e0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return Validate.A.d(SFixed32Rules.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public SFixed32Rules build() {
                SFixed32Rules I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public SFixed32Rules I() {
                int i9;
                SFixed32Rules sFixed32Rules = new SFixed32Rules(this, (a) null);
                int i10 = this.f50732e;
                if ((i10 & 1) != 0) {
                    sFixed32Rules.const_ = this.f50733f;
                    i9 = 1;
                } else {
                    i9 = 0;
                }
                if ((i10 & 2) != 0) {
                    sFixed32Rules.lt_ = this.f50734g;
                    i9 |= 2;
                }
                if ((i10 & 4) != 0) {
                    sFixed32Rules.lte_ = this.f50735h;
                    i9 |= 4;
                }
                if ((i10 & 8) != 0) {
                    sFixed32Rules.gt_ = this.f50736i;
                    i9 |= 8;
                }
                if ((i10 & 16) != 0) {
                    sFixed32Rules.gte_ = this.f50737j;
                    i9 |= 16;
                }
                if ((this.f50732e & 32) != 0) {
                    this.f50738k.C();
                    this.f50732e &= -33;
                }
                sFixed32Rules.in_ = this.f50738k;
                if ((this.f50732e & 64) != 0) {
                    this.f50739l.C();
                    this.f50732e &= -65;
                }
                sFixed32Rules.notIn_ = this.f50739l;
                sFixed32Rules.bitField0_ = i9;
                Q();
                return sFixed32Rules;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: d0 */
            public SFixed32Rules getDefaultInstanceForType() {
                return SFixed32Rules.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0021  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: g0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.SFixed32Rules.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2<io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$SFixed32Rules> r1 = io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.SFixed32Rules.PARSER     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$SFixed32Rules r3 = (io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.SFixed32Rules) r3     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    if (r3 == 0) goto Le
                    r2.i0(r3)
                Le:
                    return r2
                Lf:
                    r3 = move-exception
                    goto L1f
                L11:
                    r3 = move-exception
                    com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> Lf
                    io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$SFixed32Rules r4 = (io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.SFixed32Rules) r4     // Catch: java.lang.Throwable -> Lf
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1d
                    throw r3     // Catch: java.lang.Throwable -> L1d
                L1d:
                    r3 = move-exception
                    r0 = r4
                L1f:
                    if (r0 == 0) goto L24
                    r2.i0(r0)
                L24:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.SFixed32Rules.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$SFixed32Rules$b");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return Validate.f50604z;
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: h0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof SFixed32Rules) {
                    return i0((SFixed32Rules) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b i0(SFixed32Rules sFixed32Rules) {
                if (sFixed32Rules == SFixed32Rules.getDefaultInstance()) {
                    return this;
                }
                if (sFixed32Rules.hasConst()) {
                    k0(sFixed32Rules.getConst());
                }
                if (sFixed32Rules.hasLt()) {
                    o0(sFixed32Rules.getLt());
                }
                if (sFixed32Rules.hasLte()) {
                    q0(sFixed32Rules.getLte());
                }
                if (sFixed32Rules.hasGt()) {
                    m0(sFixed32Rules.getGt());
                }
                if (sFixed32Rules.hasGte()) {
                    n0(sFixed32Rules.getGte());
                }
                if (!sFixed32Rules.in_.isEmpty()) {
                    if (this.f50738k.isEmpty()) {
                        this.f50738k = sFixed32Rules.in_;
                        this.f50732e &= -33;
                    } else {
                        a0();
                        this.f50738k.addAll(sFixed32Rules.in_);
                    }
                    R();
                }
                if (!sFixed32Rules.notIn_.isEmpty()) {
                    if (this.f50739l.isEmpty()) {
                        this.f50739l = sFixed32Rules.notIn_;
                        this.f50732e &= -65;
                    } else {
                        b0();
                        this.f50739l.addAll(sFixed32Rules.notIn_);
                    }
                    R();
                }
                z(((GeneratedMessageV3) sFixed32Rules).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: j0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            public b k0(int i9) {
                this.f50732e |= 1;
                this.f50733f = i9;
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: l0 */
            public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.c(fieldDescriptor, obj);
            }

            public b m0(int i9) {
                this.f50732e |= 8;
                this.f50736i = i9;
                R();
                return this;
            }

            public b n0(int i9) {
                this.f50732e |= 16;
                this.f50737j = i9;
                R();
                return this;
            }

            public b o0(int i9) {
                this.f50732e |= 2;
                this.f50734g = i9;
                R();
                return this;
            }

            public b q0(int i9) {
                this.f50732e |= 4;
                this.f50735h = i9;
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: r0 */
            public final b f1(h3 h3Var) {
                return (b) super.f1(h3Var);
            }

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                this.f50738k = SFixed32Rules.access$26900();
                this.f50739l = SFixed32Rules.access$27200();
                e0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f50738k = SFixed32Rules.access$26900();
                this.f50739l = SFixed32Rules.access$27200();
                e0();
            }
        }

        /* synthetic */ SFixed32Rules(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        static /* synthetic */ u0.g access$26900() {
            return GeneratedMessageV3.emptyIntList();
        }

        static /* synthetic */ u0.g access$27200() {
            return GeneratedMessageV3.emptyIntList();
        }

        public static SFixed32Rules getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return Validate.f50604z;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static SFixed32Rules parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (SFixed32Rules) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static SFixed32Rules parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<SFixed32Rules> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof SFixed32Rules)) {
                return super.equals(obj);
            }
            SFixed32Rules sFixed32Rules = (SFixed32Rules) obj;
            if (hasConst() != sFixed32Rules.hasConst()) {
                return false;
            }
            if ((!hasConst() || getConst() == sFixed32Rules.getConst()) && hasLt() == sFixed32Rules.hasLt()) {
                if ((!hasLt() || getLt() == sFixed32Rules.getLt()) && hasLte() == sFixed32Rules.hasLte()) {
                    if ((!hasLte() || getLte() == sFixed32Rules.getLte()) && hasGt() == sFixed32Rules.hasGt()) {
                        if ((!hasGt() || getGt() == sFixed32Rules.getGt()) && hasGte() == sFixed32Rules.hasGte()) {
                            return (!hasGte() || getGte() == sFixed32Rules.getGte()) && getInList().equals(sFixed32Rules.getInList()) && getNotInList().equals(sFixed32Rules.getNotInList()) && this.unknownFields.equals(sFixed32Rules.unknownFields);
                        }
                        return false;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }

        public int getConst() {
            return this.const_;
        }

        public int getGt() {
            return this.gt_;
        }

        public int getGte() {
            return this.gte_;
        }

        public int getIn(int i9) {
            return this.in_.getInt(i9);
        }

        public int getInCount() {
            return this.in_.size();
        }

        public List<Integer> getInList() {
            return this.in_;
        }

        public int getLt() {
            return this.lt_;
        }

        public int getLte() {
            return this.lte_;
        }

        public int getNotIn(int i9) {
            return this.notIn_.getInt(i9);
        }

        public int getNotInCount() {
            return this.notIn_.size();
        }

        public List<Integer> getNotInList() {
            return this.notIn_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<SFixed32Rules> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int N = (this.bitField0_ & 1) != 0 ? 0 + CodedOutputStream.N(1, this.const_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                N += CodedOutputStream.N(2, this.lt_);
            }
            if ((this.bitField0_ & 4) != 0) {
                N += CodedOutputStream.N(3, this.lte_);
            }
            if ((this.bitField0_ & 8) != 0) {
                N += CodedOutputStream.N(4, this.gt_);
            }
            if ((this.bitField0_ & 16) != 0) {
                N += CodedOutputStream.N(5, this.gte_);
            }
            int size = N + (getInList().size() * 4) + (getInList().size() * 1) + (getNotInList().size() * 4) + (getNotInList().size() * 1) + this.unknownFields.getSerializedSize();
            this.memoizedSize = size;
            return size;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasConst() {
            return (this.bitField0_ & 1) != 0;
        }

        public boolean hasGt() {
            return (this.bitField0_ & 8) != 0;
        }

        public boolean hasGte() {
            return (this.bitField0_ & 16) != 0;
        }

        public boolean hasLt() {
            return (this.bitField0_ & 2) != 0;
        }

        public boolean hasLte() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (hasConst()) {
                hashCode = (((hashCode * 37) + 1) * 53) + getConst();
            }
            if (hasLt()) {
                hashCode = (((hashCode * 37) + 2) * 53) + getLt();
            }
            if (hasLte()) {
                hashCode = (((hashCode * 37) + 3) * 53) + getLte();
            }
            if (hasGt()) {
                hashCode = (((hashCode * 37) + 4) * 53) + getGt();
            }
            if (hasGte()) {
                hashCode = (((hashCode * 37) + 5) * 53) + getGte();
            }
            if (getInCount() > 0) {
                hashCode = (((hashCode * 37) + 6) * 53) + getInList().hashCode();
            }
            if (getNotInCount() > 0) {
                hashCode = (((hashCode * 37) + 7) * 53) + getNotInList().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return Validate.A.d(SFixed32Rules.class, b.class);
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
            return new SFixed32Rules();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if ((this.bitField0_ & 1) != 0) {
                codedOutputStream.R0(1, this.const_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.R0(2, this.lt_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.R0(3, this.lte_);
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.R0(4, this.gt_);
            }
            if ((this.bitField0_ & 16) != 0) {
                codedOutputStream.R0(5, this.gte_);
            }
            for (int i9 = 0; i9 < this.in_.size(); i9++) {
                codedOutputStream.R0(6, this.in_.getInt(i9));
            }
            for (int i10 = 0; i10 < this.notIn_.size(); i10++) {
                codedOutputStream.R0(7, this.notIn_.getInt(i10));
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ SFixed32Rules(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(SFixed32Rules sFixed32Rules) {
            return DEFAULT_INSTANCE.toBuilder().i0(sFixed32Rules);
        }

        public static SFixed32Rules parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private SFixed32Rules(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static SFixed32Rules parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (SFixed32Rules) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static SFixed32Rules parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public SFixed32Rules getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).i0(this);
        }

        public static SFixed32Rules parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private SFixed32Rules() {
            this.memoizedIsInitialized = (byte) -1;
            this.in_ = GeneratedMessageV3.emptyIntList();
            this.notIn_ = GeneratedMessageV3.emptyIntList();
        }

        public static SFixed32Rules parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static SFixed32Rules parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static SFixed32Rules parseFrom(InputStream inputStream) throws IOException {
            return (SFixed32Rules) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private SFixed32Rules(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            this();
            Objects.requireNonNull(f0Var);
            h3.b h10 = h3.h();
            boolean z10 = false;
            boolean z11 = false;
            while (!z10) {
                try {
                    try {
                        try {
                            int L = pVar.L();
                            if (L != 0) {
                                if (L == 13) {
                                    this.bitField0_ |= 1;
                                    this.const_ = pVar.F();
                                } else if (L == 21) {
                                    this.bitField0_ |= 2;
                                    this.lt_ = pVar.F();
                                } else if (L == 29) {
                                    this.bitField0_ |= 4;
                                    this.lte_ = pVar.F();
                                } else if (L == 37) {
                                    this.bitField0_ |= 8;
                                    this.gt_ = pVar.F();
                                } else if (L == 45) {
                                    this.bitField0_ |= 16;
                                    this.gte_ = pVar.F();
                                } else if (L == 50) {
                                    int q10 = pVar.q(pVar.D());
                                    if (!(z11 & true) && pVar.e() > 0) {
                                        this.in_ = GeneratedMessageV3.newIntList();
                                        z11 |= true;
                                    }
                                    while (pVar.e() > 0) {
                                        this.in_.D0(pVar.F());
                                    }
                                    pVar.p(q10);
                                } else if (L == 53) {
                                    if (!(z11 & true)) {
                                        this.in_ = GeneratedMessageV3.newIntList();
                                        z11 |= true;
                                    }
                                    this.in_.D0(pVar.F());
                                } else if (L == 58) {
                                    int q11 = pVar.q(pVar.D());
                                    if (!(z11 & true) && pVar.e() > 0) {
                                        this.notIn_ = GeneratedMessageV3.newIntList();
                                        z11 |= true;
                                    }
                                    while (pVar.e() > 0) {
                                        this.notIn_.D0(pVar.F());
                                    }
                                    pVar.p(q11);
                                } else if (L != 61) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    if (!(z11 & true)) {
                                        this.notIn_ = GeneratedMessageV3.newIntList();
                                        z11 |= true;
                                    }
                                    this.notIn_.D0(pVar.F());
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
                    if (z11 & true) {
                        this.in_.C();
                    }
                    if (z11 & true) {
                        this.notIn_.C();
                    }
                    this.unknownFields = h10.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static SFixed32Rules parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (SFixed32Rules) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static SFixed32Rules parseFrom(com.google.protobuf.p pVar) throws IOException {
            return (SFixed32Rules) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static SFixed32Rules parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
            return (SFixed32Rules) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes5.dex */
    public static final class SFixed64Rules extends GeneratedMessageV3 implements r {
        public static final int CONST_FIELD_NUMBER = 1;
        public static final int GTE_FIELD_NUMBER = 5;
        public static final int GT_FIELD_NUMBER = 4;
        public static final int IN_FIELD_NUMBER = 6;
        public static final int LTE_FIELD_NUMBER = 3;
        public static final int LT_FIELD_NUMBER = 2;
        public static final int NOT_IN_FIELD_NUMBER = 7;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private long const_;
        private long gt_;
        private long gte_;
        private u0.i in_;
        private long lt_;
        private long lte_;
        private byte memoizedIsInitialized;
        private u0.i notIn_;
        private static final SFixed64Rules DEFAULT_INSTANCE = new SFixed64Rules();
        @Deprecated
        public static final e2<SFixed64Rules> PARSER = new a();

        /* loaded from: classes5.dex */
        class a extends com.google.protobuf.c<SFixed64Rules> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public SFixed64Rules m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new SFixed64Rules(pVar, f0Var, null);
            }
        }

        /* loaded from: classes5.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements r {

            /* renamed from: e  reason: collision with root package name */
            private int f50740e;

            /* renamed from: f  reason: collision with root package name */
            private long f50741f;

            /* renamed from: g  reason: collision with root package name */
            private long f50742g;

            /* renamed from: h  reason: collision with root package name */
            private long f50743h;

            /* renamed from: i  reason: collision with root package name */
            private long f50744i;

            /* renamed from: j  reason: collision with root package name */
            private long f50745j;

            /* renamed from: k  reason: collision with root package name */
            private u0.i f50746k;

            /* renamed from: l  reason: collision with root package name */
            private u0.i f50747l;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void a0() {
                if ((this.f50740e & 32) == 0) {
                    this.f50746k = GeneratedMessageV3.mutableCopy(this.f50746k);
                    this.f50740e |= 32;
                }
            }

            private void b0() {
                if ((this.f50740e & 64) == 0) {
                    this.f50747l = GeneratedMessageV3.mutableCopy(this.f50747l);
                    this.f50740e |= 64;
                }
            }

            private void e0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return Validate.C.d(SFixed64Rules.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public SFixed64Rules build() {
                SFixed64Rules I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public SFixed64Rules I() {
                int i9;
                SFixed64Rules sFixed64Rules = new SFixed64Rules(this, (a) null);
                int i10 = this.f50740e;
                if ((i10 & 1) != 0) {
                    sFixed64Rules.const_ = this.f50741f;
                    i9 = 1;
                } else {
                    i9 = 0;
                }
                if ((i10 & 2) != 0) {
                    sFixed64Rules.lt_ = this.f50742g;
                    i9 |= 2;
                }
                if ((i10 & 4) != 0) {
                    sFixed64Rules.lte_ = this.f50743h;
                    i9 |= 4;
                }
                if ((i10 & 8) != 0) {
                    sFixed64Rules.gt_ = this.f50744i;
                    i9 |= 8;
                }
                if ((i10 & 16) != 0) {
                    sFixed64Rules.gte_ = this.f50745j;
                    i9 |= 16;
                }
                if ((this.f50740e & 32) != 0) {
                    this.f50746k.C();
                    this.f50740e &= -33;
                }
                sFixed64Rules.in_ = this.f50746k;
                if ((this.f50740e & 64) != 0) {
                    this.f50747l.C();
                    this.f50740e &= -65;
                }
                sFixed64Rules.notIn_ = this.f50747l;
                sFixed64Rules.bitField0_ = i9;
                Q();
                return sFixed64Rules;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: d0 */
            public SFixed64Rules getDefaultInstanceForType() {
                return SFixed64Rules.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0021  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: g0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.SFixed64Rules.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2<io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$SFixed64Rules> r1 = io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.SFixed64Rules.PARSER     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$SFixed64Rules r3 = (io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.SFixed64Rules) r3     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    if (r3 == 0) goto Le
                    r2.i0(r3)
                Le:
                    return r2
                Lf:
                    r3 = move-exception
                    goto L1f
                L11:
                    r3 = move-exception
                    com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> Lf
                    io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$SFixed64Rules r4 = (io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.SFixed64Rules) r4     // Catch: java.lang.Throwable -> Lf
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1d
                    throw r3     // Catch: java.lang.Throwable -> L1d
                L1d:
                    r3 = move-exception
                    r0 = r4
                L1f:
                    if (r0 == 0) goto L24
                    r2.i0(r0)
                L24:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.SFixed64Rules.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$SFixed64Rules$b");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return Validate.B;
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: h0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof SFixed64Rules) {
                    return i0((SFixed64Rules) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b i0(SFixed64Rules sFixed64Rules) {
                if (sFixed64Rules == SFixed64Rules.getDefaultInstance()) {
                    return this;
                }
                if (sFixed64Rules.hasConst()) {
                    k0(sFixed64Rules.getConst());
                }
                if (sFixed64Rules.hasLt()) {
                    o0(sFixed64Rules.getLt());
                }
                if (sFixed64Rules.hasLte()) {
                    q0(sFixed64Rules.getLte());
                }
                if (sFixed64Rules.hasGt()) {
                    m0(sFixed64Rules.getGt());
                }
                if (sFixed64Rules.hasGte()) {
                    n0(sFixed64Rules.getGte());
                }
                if (!sFixed64Rules.in_.isEmpty()) {
                    if (this.f50746k.isEmpty()) {
                        this.f50746k = sFixed64Rules.in_;
                        this.f50740e &= -33;
                    } else {
                        a0();
                        this.f50746k.addAll(sFixed64Rules.in_);
                    }
                    R();
                }
                if (!sFixed64Rules.notIn_.isEmpty()) {
                    if (this.f50747l.isEmpty()) {
                        this.f50747l = sFixed64Rules.notIn_;
                        this.f50740e &= -65;
                    } else {
                        b0();
                        this.f50747l.addAll(sFixed64Rules.notIn_);
                    }
                    R();
                }
                z(((GeneratedMessageV3) sFixed64Rules).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: j0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            public b k0(long j10) {
                this.f50740e |= 1;
                this.f50741f = j10;
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: l0 */
            public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.c(fieldDescriptor, obj);
            }

            public b m0(long j10) {
                this.f50740e |= 8;
                this.f50744i = j10;
                R();
                return this;
            }

            public b n0(long j10) {
                this.f50740e |= 16;
                this.f50745j = j10;
                R();
                return this;
            }

            public b o0(long j10) {
                this.f50740e |= 2;
                this.f50742g = j10;
                R();
                return this;
            }

            public b q0(long j10) {
                this.f50740e |= 4;
                this.f50743h = j10;
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: r0 */
            public final b f1(h3 h3Var) {
                return (b) super.f1(h3Var);
            }

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                this.f50746k = SFixed64Rules.access$29300();
                this.f50747l = SFixed64Rules.access$29600();
                e0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f50746k = SFixed64Rules.access$29300();
                this.f50747l = SFixed64Rules.access$29600();
                e0();
            }
        }

        /* synthetic */ SFixed64Rules(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        static /* synthetic */ u0.i access$29300() {
            return GeneratedMessageV3.emptyLongList();
        }

        static /* synthetic */ u0.i access$29600() {
            return GeneratedMessageV3.emptyLongList();
        }

        public static SFixed64Rules getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return Validate.B;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static SFixed64Rules parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (SFixed64Rules) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static SFixed64Rules parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<SFixed64Rules> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof SFixed64Rules)) {
                return super.equals(obj);
            }
            SFixed64Rules sFixed64Rules = (SFixed64Rules) obj;
            if (hasConst() != sFixed64Rules.hasConst()) {
                return false;
            }
            if ((!hasConst() || getConst() == sFixed64Rules.getConst()) && hasLt() == sFixed64Rules.hasLt()) {
                if ((!hasLt() || getLt() == sFixed64Rules.getLt()) && hasLte() == sFixed64Rules.hasLte()) {
                    if ((!hasLte() || getLte() == sFixed64Rules.getLte()) && hasGt() == sFixed64Rules.hasGt()) {
                        if ((!hasGt() || getGt() == sFixed64Rules.getGt()) && hasGte() == sFixed64Rules.hasGte()) {
                            return (!hasGte() || getGte() == sFixed64Rules.getGte()) && getInList().equals(sFixed64Rules.getInList()) && getNotInList().equals(sFixed64Rules.getNotInList()) && this.unknownFields.equals(sFixed64Rules.unknownFields);
                        }
                        return false;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }

        public long getConst() {
            return this.const_;
        }

        public long getGt() {
            return this.gt_;
        }

        public long getGte() {
            return this.gte_;
        }

        public long getIn(int i9) {
            return this.in_.getLong(i9);
        }

        public int getInCount() {
            return this.in_.size();
        }

        public List<Long> getInList() {
            return this.in_;
        }

        public long getLt() {
            return this.lt_;
        }

        public long getLte() {
            return this.lte_;
        }

        public long getNotIn(int i9) {
            return this.notIn_.getLong(i9);
        }

        public int getNotInCount() {
            return this.notIn_.size();
        }

        public List<Long> getNotInList() {
            return this.notIn_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<SFixed64Rules> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int P = (this.bitField0_ & 1) != 0 ? 0 + CodedOutputStream.P(1, this.const_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                P += CodedOutputStream.P(2, this.lt_);
            }
            if ((this.bitField0_ & 4) != 0) {
                P += CodedOutputStream.P(3, this.lte_);
            }
            if ((this.bitField0_ & 8) != 0) {
                P += CodedOutputStream.P(4, this.gt_);
            }
            if ((this.bitField0_ & 16) != 0) {
                P += CodedOutputStream.P(5, this.gte_);
            }
            int size = P + (getInList().size() * 8) + (getInList().size() * 1) + (getNotInList().size() * 8) + (getNotInList().size() * 1) + this.unknownFields.getSerializedSize();
            this.memoizedSize = size;
            return size;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasConst() {
            return (this.bitField0_ & 1) != 0;
        }

        public boolean hasGt() {
            return (this.bitField0_ & 8) != 0;
        }

        public boolean hasGte() {
            return (this.bitField0_ & 16) != 0;
        }

        public boolean hasLt() {
            return (this.bitField0_ & 2) != 0;
        }

        public boolean hasLte() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (hasConst()) {
                hashCode = (((hashCode * 37) + 1) * 53) + u0.i(getConst());
            }
            if (hasLt()) {
                hashCode = (((hashCode * 37) + 2) * 53) + u0.i(getLt());
            }
            if (hasLte()) {
                hashCode = (((hashCode * 37) + 3) * 53) + u0.i(getLte());
            }
            if (hasGt()) {
                hashCode = (((hashCode * 37) + 4) * 53) + u0.i(getGt());
            }
            if (hasGte()) {
                hashCode = (((hashCode * 37) + 5) * 53) + u0.i(getGte());
            }
            if (getInCount() > 0) {
                hashCode = (((hashCode * 37) + 6) * 53) + getInList().hashCode();
            }
            if (getNotInCount() > 0) {
                hashCode = (((hashCode * 37) + 7) * 53) + getNotInList().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return Validate.C.d(SFixed64Rules.class, b.class);
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
            return new SFixed64Rules();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if ((this.bitField0_ & 1) != 0) {
                codedOutputStream.T0(1, this.const_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.T0(2, this.lt_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.T0(3, this.lte_);
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.T0(4, this.gt_);
            }
            if ((this.bitField0_ & 16) != 0) {
                codedOutputStream.T0(5, this.gte_);
            }
            for (int i9 = 0; i9 < this.in_.size(); i9++) {
                codedOutputStream.T0(6, this.in_.getLong(i9));
            }
            for (int i10 = 0; i10 < this.notIn_.size(); i10++) {
                codedOutputStream.T0(7, this.notIn_.getLong(i10));
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ SFixed64Rules(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(SFixed64Rules sFixed64Rules) {
            return DEFAULT_INSTANCE.toBuilder().i0(sFixed64Rules);
        }

        public static SFixed64Rules parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private SFixed64Rules(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static SFixed64Rules parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (SFixed64Rules) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static SFixed64Rules parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public SFixed64Rules getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).i0(this);
        }

        public static SFixed64Rules parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private SFixed64Rules() {
            this.memoizedIsInitialized = (byte) -1;
            this.in_ = GeneratedMessageV3.emptyLongList();
            this.notIn_ = GeneratedMessageV3.emptyLongList();
        }

        public static SFixed64Rules parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static SFixed64Rules parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static SFixed64Rules parseFrom(InputStream inputStream) throws IOException {
            return (SFixed64Rules) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private SFixed64Rules(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            this();
            Objects.requireNonNull(f0Var);
            h3.b h10 = h3.h();
            boolean z10 = false;
            boolean z11 = false;
            while (!z10) {
                try {
                    try {
                        try {
                            int L = pVar.L();
                            if (L != 0) {
                                if (L == 9) {
                                    this.bitField0_ |= 1;
                                    this.const_ = pVar.G();
                                } else if (L == 17) {
                                    this.bitField0_ |= 2;
                                    this.lt_ = pVar.G();
                                } else if (L == 25) {
                                    this.bitField0_ |= 4;
                                    this.lte_ = pVar.G();
                                } else if (L == 33) {
                                    this.bitField0_ |= 8;
                                    this.gt_ = pVar.G();
                                } else if (L == 41) {
                                    this.bitField0_ |= 16;
                                    this.gte_ = pVar.G();
                                } else if (L == 49) {
                                    if (!(z11 & true)) {
                                        this.in_ = GeneratedMessageV3.newLongList();
                                        z11 |= true;
                                    }
                                    this.in_.I0(pVar.G());
                                } else if (L == 50) {
                                    int q10 = pVar.q(pVar.D());
                                    if (!(z11 & true) && pVar.e() > 0) {
                                        this.in_ = GeneratedMessageV3.newLongList();
                                        z11 |= true;
                                    }
                                    while (pVar.e() > 0) {
                                        this.in_.I0(pVar.G());
                                    }
                                    pVar.p(q10);
                                } else if (L == 57) {
                                    if (!(z11 & true)) {
                                        this.notIn_ = GeneratedMessageV3.newLongList();
                                        z11 |= true;
                                    }
                                    this.notIn_.I0(pVar.G());
                                } else if (L != 58) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    int q11 = pVar.q(pVar.D());
                                    if (!(z11 & true) && pVar.e() > 0) {
                                        this.notIn_ = GeneratedMessageV3.newLongList();
                                        z11 |= true;
                                    }
                                    while (pVar.e() > 0) {
                                        this.notIn_.I0(pVar.G());
                                    }
                                    pVar.p(q11);
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
                    if (z11 & true) {
                        this.in_.C();
                    }
                    if (z11 & true) {
                        this.notIn_.C();
                    }
                    this.unknownFields = h10.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static SFixed64Rules parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (SFixed64Rules) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static SFixed64Rules parseFrom(com.google.protobuf.p pVar) throws IOException {
            return (SFixed64Rules) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static SFixed64Rules parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
            return (SFixed64Rules) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes5.dex */
    public static final class SInt32Rules extends GeneratedMessageV3 implements s {
        public static final int CONST_FIELD_NUMBER = 1;
        public static final int GTE_FIELD_NUMBER = 5;
        public static final int GT_FIELD_NUMBER = 4;
        public static final int IN_FIELD_NUMBER = 6;
        public static final int LTE_FIELD_NUMBER = 3;
        public static final int LT_FIELD_NUMBER = 2;
        public static final int NOT_IN_FIELD_NUMBER = 7;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private int const_;
        private int gt_;
        private int gte_;
        private u0.g in_;
        private int lt_;
        private int lte_;
        private byte memoizedIsInitialized;
        private u0.g notIn_;
        private static final SInt32Rules DEFAULT_INSTANCE = new SInt32Rules();
        @Deprecated
        public static final e2<SInt32Rules> PARSER = new a();

        /* loaded from: classes5.dex */
        class a extends com.google.protobuf.c<SInt32Rules> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public SInt32Rules m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new SInt32Rules(pVar, f0Var, null);
            }
        }

        /* loaded from: classes5.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements s {

            /* renamed from: e  reason: collision with root package name */
            private int f50748e;

            /* renamed from: f  reason: collision with root package name */
            private int f50749f;

            /* renamed from: g  reason: collision with root package name */
            private int f50750g;

            /* renamed from: h  reason: collision with root package name */
            private int f50751h;

            /* renamed from: i  reason: collision with root package name */
            private int f50752i;

            /* renamed from: j  reason: collision with root package name */
            private int f50753j;

            /* renamed from: k  reason: collision with root package name */
            private u0.g f50754k;

            /* renamed from: l  reason: collision with root package name */
            private u0.g f50755l;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void a0() {
                if ((this.f50748e & 32) == 0) {
                    this.f50754k = GeneratedMessageV3.mutableCopy(this.f50754k);
                    this.f50748e |= 32;
                }
            }

            private void b0() {
                if ((this.f50748e & 64) == 0) {
                    this.f50755l = GeneratedMessageV3.mutableCopy(this.f50755l);
                    this.f50748e |= 64;
                }
            }

            private void e0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return Validate.f50597s.d(SInt32Rules.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public SInt32Rules build() {
                SInt32Rules I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public SInt32Rules I() {
                int i9;
                SInt32Rules sInt32Rules = new SInt32Rules(this, (a) null);
                int i10 = this.f50748e;
                if ((i10 & 1) != 0) {
                    sInt32Rules.const_ = this.f50749f;
                    i9 = 1;
                } else {
                    i9 = 0;
                }
                if ((i10 & 2) != 0) {
                    sInt32Rules.lt_ = this.f50750g;
                    i9 |= 2;
                }
                if ((i10 & 4) != 0) {
                    sInt32Rules.lte_ = this.f50751h;
                    i9 |= 4;
                }
                if ((i10 & 8) != 0) {
                    sInt32Rules.gt_ = this.f50752i;
                    i9 |= 8;
                }
                if ((i10 & 16) != 0) {
                    sInt32Rules.gte_ = this.f50753j;
                    i9 |= 16;
                }
                if ((this.f50748e & 32) != 0) {
                    this.f50754k.C();
                    this.f50748e &= -33;
                }
                sInt32Rules.in_ = this.f50754k;
                if ((this.f50748e & 64) != 0) {
                    this.f50755l.C();
                    this.f50748e &= -65;
                }
                sInt32Rules.notIn_ = this.f50755l;
                sInt32Rules.bitField0_ = i9;
                Q();
                return sInt32Rules;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: d0 */
            public SInt32Rules getDefaultInstanceForType() {
                return SInt32Rules.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0021  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: g0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.SInt32Rules.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2<io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$SInt32Rules> r1 = io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.SInt32Rules.PARSER     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$SInt32Rules r3 = (io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.SInt32Rules) r3     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    if (r3 == 0) goto Le
                    r2.i0(r3)
                Le:
                    return r2
                Lf:
                    r3 = move-exception
                    goto L1f
                L11:
                    r3 = move-exception
                    com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> Lf
                    io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$SInt32Rules r4 = (io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.SInt32Rules) r4     // Catch: java.lang.Throwable -> Lf
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1d
                    throw r3     // Catch: java.lang.Throwable -> L1d
                L1d:
                    r3 = move-exception
                    r0 = r4
                L1f:
                    if (r0 == 0) goto L24
                    r2.i0(r0)
                L24:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.SInt32Rules.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$SInt32Rules$b");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return Validate.f50596r;
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: h0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof SInt32Rules) {
                    return i0((SInt32Rules) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b i0(SInt32Rules sInt32Rules) {
                if (sInt32Rules == SInt32Rules.getDefaultInstance()) {
                    return this;
                }
                if (sInt32Rules.hasConst()) {
                    k0(sInt32Rules.getConst());
                }
                if (sInt32Rules.hasLt()) {
                    o0(sInt32Rules.getLt());
                }
                if (sInt32Rules.hasLte()) {
                    q0(sInt32Rules.getLte());
                }
                if (sInt32Rules.hasGt()) {
                    m0(sInt32Rules.getGt());
                }
                if (sInt32Rules.hasGte()) {
                    n0(sInt32Rules.getGte());
                }
                if (!sInt32Rules.in_.isEmpty()) {
                    if (this.f50754k.isEmpty()) {
                        this.f50754k = sInt32Rules.in_;
                        this.f50748e &= -33;
                    } else {
                        a0();
                        this.f50754k.addAll(sInt32Rules.in_);
                    }
                    R();
                }
                if (!sInt32Rules.notIn_.isEmpty()) {
                    if (this.f50755l.isEmpty()) {
                        this.f50755l = sInt32Rules.notIn_;
                        this.f50748e &= -65;
                    } else {
                        b0();
                        this.f50755l.addAll(sInt32Rules.notIn_);
                    }
                    R();
                }
                z(((GeneratedMessageV3) sInt32Rules).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: j0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            public b k0(int i9) {
                this.f50748e |= 1;
                this.f50749f = i9;
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: l0 */
            public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.c(fieldDescriptor, obj);
            }

            public b m0(int i9) {
                this.f50748e |= 8;
                this.f50752i = i9;
                R();
                return this;
            }

            public b n0(int i9) {
                this.f50748e |= 16;
                this.f50753j = i9;
                R();
                return this;
            }

            public b o0(int i9) {
                this.f50748e |= 2;
                this.f50750g = i9;
                R();
                return this;
            }

            public b q0(int i9) {
                this.f50748e |= 4;
                this.f50751h = i9;
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: r0 */
            public final b f1(h3 h3Var) {
                return (b) super.f1(h3Var);
            }

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                this.f50754k = SInt32Rules.access$17300();
                this.f50755l = SInt32Rules.access$17600();
                e0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f50754k = SInt32Rules.access$17300();
                this.f50755l = SInt32Rules.access$17600();
                e0();
            }
        }

        /* synthetic */ SInt32Rules(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        static /* synthetic */ u0.g access$17300() {
            return GeneratedMessageV3.emptyIntList();
        }

        static /* synthetic */ u0.g access$17600() {
            return GeneratedMessageV3.emptyIntList();
        }

        public static SInt32Rules getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return Validate.f50596r;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static SInt32Rules parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (SInt32Rules) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static SInt32Rules parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<SInt32Rules> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof SInt32Rules)) {
                return super.equals(obj);
            }
            SInt32Rules sInt32Rules = (SInt32Rules) obj;
            if (hasConst() != sInt32Rules.hasConst()) {
                return false;
            }
            if ((!hasConst() || getConst() == sInt32Rules.getConst()) && hasLt() == sInt32Rules.hasLt()) {
                if ((!hasLt() || getLt() == sInt32Rules.getLt()) && hasLte() == sInt32Rules.hasLte()) {
                    if ((!hasLte() || getLte() == sInt32Rules.getLte()) && hasGt() == sInt32Rules.hasGt()) {
                        if ((!hasGt() || getGt() == sInt32Rules.getGt()) && hasGte() == sInt32Rules.hasGte()) {
                            return (!hasGte() || getGte() == sInt32Rules.getGte()) && getInList().equals(sInt32Rules.getInList()) && getNotInList().equals(sInt32Rules.getNotInList()) && this.unknownFields.equals(sInt32Rules.unknownFields);
                        }
                        return false;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }

        public int getConst() {
            return this.const_;
        }

        public int getGt() {
            return this.gt_;
        }

        public int getGte() {
            return this.gte_;
        }

        public int getIn(int i9) {
            return this.in_.getInt(i9);
        }

        public int getInCount() {
            return this.in_.size();
        }

        public List<Integer> getInList() {
            return this.in_;
        }

        public int getLt() {
            return this.lt_;
        }

        public int getLte() {
            return this.lte_;
        }

        public int getNotIn(int i9) {
            return this.notIn_.getInt(i9);
        }

        public int getNotInCount() {
            return this.notIn_.size();
        }

        public List<Integer> getNotInList() {
            return this.notIn_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<SInt32Rules> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int R = (this.bitField0_ & 1) != 0 ? CodedOutputStream.R(1, this.const_) + 0 : 0;
            if ((this.bitField0_ & 2) != 0) {
                R += CodedOutputStream.R(2, this.lt_);
            }
            if ((this.bitField0_ & 4) != 0) {
                R += CodedOutputStream.R(3, this.lte_);
            }
            if ((this.bitField0_ & 8) != 0) {
                R += CodedOutputStream.R(4, this.gt_);
            }
            if ((this.bitField0_ & 16) != 0) {
                R += CodedOutputStream.R(5, this.gte_);
            }
            int i10 = 0;
            for (int i11 = 0; i11 < this.in_.size(); i11++) {
                i10 += CodedOutputStream.S(this.in_.getInt(i11));
            }
            int size = R + i10 + (getInList().size() * 1);
            int i12 = 0;
            for (int i13 = 0; i13 < this.notIn_.size(); i13++) {
                i12 += CodedOutputStream.S(this.notIn_.getInt(i13));
            }
            int size2 = size + i12 + (getNotInList().size() * 1) + this.unknownFields.getSerializedSize();
            this.memoizedSize = size2;
            return size2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasConst() {
            return (this.bitField0_ & 1) != 0;
        }

        public boolean hasGt() {
            return (this.bitField0_ & 8) != 0;
        }

        public boolean hasGte() {
            return (this.bitField0_ & 16) != 0;
        }

        public boolean hasLt() {
            return (this.bitField0_ & 2) != 0;
        }

        public boolean hasLte() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (hasConst()) {
                hashCode = (((hashCode * 37) + 1) * 53) + getConst();
            }
            if (hasLt()) {
                hashCode = (((hashCode * 37) + 2) * 53) + getLt();
            }
            if (hasLte()) {
                hashCode = (((hashCode * 37) + 3) * 53) + getLte();
            }
            if (hasGt()) {
                hashCode = (((hashCode * 37) + 4) * 53) + getGt();
            }
            if (hasGte()) {
                hashCode = (((hashCode * 37) + 5) * 53) + getGte();
            }
            if (getInCount() > 0) {
                hashCode = (((hashCode * 37) + 6) * 53) + getInList().hashCode();
            }
            if (getNotInCount() > 0) {
                hashCode = (((hashCode * 37) + 7) * 53) + getNotInList().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return Validate.f50597s.d(SInt32Rules.class, b.class);
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
            return new SInt32Rules();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if ((this.bitField0_ & 1) != 0) {
                codedOutputStream.V0(1, this.const_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.V0(2, this.lt_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.V0(3, this.lte_);
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.V0(4, this.gt_);
            }
            if ((this.bitField0_ & 16) != 0) {
                codedOutputStream.V0(5, this.gte_);
            }
            for (int i9 = 0; i9 < this.in_.size(); i9++) {
                codedOutputStream.V0(6, this.in_.getInt(i9));
            }
            for (int i10 = 0; i10 < this.notIn_.size(); i10++) {
                codedOutputStream.V0(7, this.notIn_.getInt(i10));
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ SInt32Rules(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(SInt32Rules sInt32Rules) {
            return DEFAULT_INSTANCE.toBuilder().i0(sInt32Rules);
        }

        public static SInt32Rules parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private SInt32Rules(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static SInt32Rules parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (SInt32Rules) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static SInt32Rules parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public SInt32Rules getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).i0(this);
        }

        public static SInt32Rules parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private SInt32Rules() {
            this.memoizedIsInitialized = (byte) -1;
            this.in_ = GeneratedMessageV3.emptyIntList();
            this.notIn_ = GeneratedMessageV3.emptyIntList();
        }

        public static SInt32Rules parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static SInt32Rules parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static SInt32Rules parseFrom(InputStream inputStream) throws IOException {
            return (SInt32Rules) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private SInt32Rules(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            this();
            Objects.requireNonNull(f0Var);
            h3.b h10 = h3.h();
            boolean z10 = false;
            boolean z11 = false;
            while (!z10) {
                try {
                    try {
                        try {
                            int L = pVar.L();
                            if (L != 0) {
                                if (L == 8) {
                                    this.bitField0_ |= 1;
                                    this.const_ = pVar.H();
                                } else if (L == 16) {
                                    this.bitField0_ |= 2;
                                    this.lt_ = pVar.H();
                                } else if (L == 24) {
                                    this.bitField0_ |= 4;
                                    this.lte_ = pVar.H();
                                } else if (L == 32) {
                                    this.bitField0_ |= 8;
                                    this.gt_ = pVar.H();
                                } else if (L == 40) {
                                    this.bitField0_ |= 16;
                                    this.gte_ = pVar.H();
                                } else if (L == 48) {
                                    if (!(z11 & true)) {
                                        this.in_ = GeneratedMessageV3.newIntList();
                                        z11 |= true;
                                    }
                                    this.in_.D0(pVar.H());
                                } else if (L == 50) {
                                    int q10 = pVar.q(pVar.D());
                                    if (!(z11 & true) && pVar.e() > 0) {
                                        this.in_ = GeneratedMessageV3.newIntList();
                                        z11 |= true;
                                    }
                                    while (pVar.e() > 0) {
                                        this.in_.D0(pVar.H());
                                    }
                                    pVar.p(q10);
                                } else if (L == 56) {
                                    if (!(z11 & true)) {
                                        this.notIn_ = GeneratedMessageV3.newIntList();
                                        z11 |= true;
                                    }
                                    this.notIn_.D0(pVar.H());
                                } else if (L != 58) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    int q11 = pVar.q(pVar.D());
                                    if (!(z11 & true) && pVar.e() > 0) {
                                        this.notIn_ = GeneratedMessageV3.newIntList();
                                        z11 |= true;
                                    }
                                    while (pVar.e() > 0) {
                                        this.notIn_.D0(pVar.H());
                                    }
                                    pVar.p(q11);
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
                    if (z11 & true) {
                        this.in_.C();
                    }
                    if (z11 & true) {
                        this.notIn_.C();
                    }
                    this.unknownFields = h10.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static SInt32Rules parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (SInt32Rules) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static SInt32Rules parseFrom(com.google.protobuf.p pVar) throws IOException {
            return (SInt32Rules) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static SInt32Rules parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
            return (SInt32Rules) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes5.dex */
    public static final class SInt64Rules extends GeneratedMessageV3 implements t {
        public static final int CONST_FIELD_NUMBER = 1;
        public static final int GTE_FIELD_NUMBER = 5;
        public static final int GT_FIELD_NUMBER = 4;
        public static final int IN_FIELD_NUMBER = 6;
        public static final int LTE_FIELD_NUMBER = 3;
        public static final int LT_FIELD_NUMBER = 2;
        public static final int NOT_IN_FIELD_NUMBER = 7;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private long const_;
        private long gt_;
        private long gte_;
        private u0.i in_;
        private long lt_;
        private long lte_;
        private byte memoizedIsInitialized;
        private u0.i notIn_;
        private static final SInt64Rules DEFAULT_INSTANCE = new SInt64Rules();
        @Deprecated
        public static final e2<SInt64Rules> PARSER = new a();

        /* loaded from: classes5.dex */
        class a extends com.google.protobuf.c<SInt64Rules> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public SInt64Rules m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new SInt64Rules(pVar, f0Var, null);
            }
        }

        /* loaded from: classes5.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements t {

            /* renamed from: e  reason: collision with root package name */
            private int f50756e;

            /* renamed from: f  reason: collision with root package name */
            private long f50757f;

            /* renamed from: g  reason: collision with root package name */
            private long f50758g;

            /* renamed from: h  reason: collision with root package name */
            private long f50759h;

            /* renamed from: i  reason: collision with root package name */
            private long f50760i;

            /* renamed from: j  reason: collision with root package name */
            private long f50761j;

            /* renamed from: k  reason: collision with root package name */
            private u0.i f50762k;

            /* renamed from: l  reason: collision with root package name */
            private u0.i f50763l;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void a0() {
                if ((this.f50756e & 32) == 0) {
                    this.f50762k = GeneratedMessageV3.mutableCopy(this.f50762k);
                    this.f50756e |= 32;
                }
            }

            private void b0() {
                if ((this.f50756e & 64) == 0) {
                    this.f50763l = GeneratedMessageV3.mutableCopy(this.f50763l);
                    this.f50756e |= 64;
                }
            }

            private void e0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return Validate.f50599u.d(SInt64Rules.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public SInt64Rules build() {
                SInt64Rules I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public SInt64Rules I() {
                int i9;
                SInt64Rules sInt64Rules = new SInt64Rules(this, (a) null);
                int i10 = this.f50756e;
                if ((i10 & 1) != 0) {
                    sInt64Rules.const_ = this.f50757f;
                    i9 = 1;
                } else {
                    i9 = 0;
                }
                if ((i10 & 2) != 0) {
                    sInt64Rules.lt_ = this.f50758g;
                    i9 |= 2;
                }
                if ((i10 & 4) != 0) {
                    sInt64Rules.lte_ = this.f50759h;
                    i9 |= 4;
                }
                if ((i10 & 8) != 0) {
                    sInt64Rules.gt_ = this.f50760i;
                    i9 |= 8;
                }
                if ((i10 & 16) != 0) {
                    sInt64Rules.gte_ = this.f50761j;
                    i9 |= 16;
                }
                if ((this.f50756e & 32) != 0) {
                    this.f50762k.C();
                    this.f50756e &= -33;
                }
                sInt64Rules.in_ = this.f50762k;
                if ((this.f50756e & 64) != 0) {
                    this.f50763l.C();
                    this.f50756e &= -65;
                }
                sInt64Rules.notIn_ = this.f50763l;
                sInt64Rules.bitField0_ = i9;
                Q();
                return sInt64Rules;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: d0 */
            public SInt64Rules getDefaultInstanceForType() {
                return SInt64Rules.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0021  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: g0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.SInt64Rules.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2<io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$SInt64Rules> r1 = io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.SInt64Rules.PARSER     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$SInt64Rules r3 = (io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.SInt64Rules) r3     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    if (r3 == 0) goto Le
                    r2.i0(r3)
                Le:
                    return r2
                Lf:
                    r3 = move-exception
                    goto L1f
                L11:
                    r3 = move-exception
                    com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> Lf
                    io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$SInt64Rules r4 = (io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.SInt64Rules) r4     // Catch: java.lang.Throwable -> Lf
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1d
                    throw r3     // Catch: java.lang.Throwable -> L1d
                L1d:
                    r3 = move-exception
                    r0 = r4
                L1f:
                    if (r0 == 0) goto L24
                    r2.i0(r0)
                L24:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.SInt64Rules.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$SInt64Rules$b");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return Validate.f50598t;
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: h0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof SInt64Rules) {
                    return i0((SInt64Rules) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b i0(SInt64Rules sInt64Rules) {
                if (sInt64Rules == SInt64Rules.getDefaultInstance()) {
                    return this;
                }
                if (sInt64Rules.hasConst()) {
                    k0(sInt64Rules.getConst());
                }
                if (sInt64Rules.hasLt()) {
                    o0(sInt64Rules.getLt());
                }
                if (sInt64Rules.hasLte()) {
                    q0(sInt64Rules.getLte());
                }
                if (sInt64Rules.hasGt()) {
                    m0(sInt64Rules.getGt());
                }
                if (sInt64Rules.hasGte()) {
                    n0(sInt64Rules.getGte());
                }
                if (!sInt64Rules.in_.isEmpty()) {
                    if (this.f50762k.isEmpty()) {
                        this.f50762k = sInt64Rules.in_;
                        this.f50756e &= -33;
                    } else {
                        a0();
                        this.f50762k.addAll(sInt64Rules.in_);
                    }
                    R();
                }
                if (!sInt64Rules.notIn_.isEmpty()) {
                    if (this.f50763l.isEmpty()) {
                        this.f50763l = sInt64Rules.notIn_;
                        this.f50756e &= -65;
                    } else {
                        b0();
                        this.f50763l.addAll(sInt64Rules.notIn_);
                    }
                    R();
                }
                z(((GeneratedMessageV3) sInt64Rules).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: j0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            public b k0(long j10) {
                this.f50756e |= 1;
                this.f50757f = j10;
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: l0 */
            public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.c(fieldDescriptor, obj);
            }

            public b m0(long j10) {
                this.f50756e |= 8;
                this.f50760i = j10;
                R();
                return this;
            }

            public b n0(long j10) {
                this.f50756e |= 16;
                this.f50761j = j10;
                R();
                return this;
            }

            public b o0(long j10) {
                this.f50756e |= 2;
                this.f50758g = j10;
                R();
                return this;
            }

            public b q0(long j10) {
                this.f50756e |= 4;
                this.f50759h = j10;
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: r0 */
            public final b f1(h3 h3Var) {
                return (b) super.f1(h3Var);
            }

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                this.f50762k = SInt64Rules.access$19700();
                this.f50763l = SInt64Rules.access$20000();
                e0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f50762k = SInt64Rules.access$19700();
                this.f50763l = SInt64Rules.access$20000();
                e0();
            }
        }

        /* synthetic */ SInt64Rules(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        static /* synthetic */ u0.i access$19700() {
            return GeneratedMessageV3.emptyLongList();
        }

        static /* synthetic */ u0.i access$20000() {
            return GeneratedMessageV3.emptyLongList();
        }

        public static SInt64Rules getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return Validate.f50598t;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static SInt64Rules parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (SInt64Rules) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static SInt64Rules parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<SInt64Rules> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof SInt64Rules)) {
                return super.equals(obj);
            }
            SInt64Rules sInt64Rules = (SInt64Rules) obj;
            if (hasConst() != sInt64Rules.hasConst()) {
                return false;
            }
            if ((!hasConst() || getConst() == sInt64Rules.getConst()) && hasLt() == sInt64Rules.hasLt()) {
                if ((!hasLt() || getLt() == sInt64Rules.getLt()) && hasLte() == sInt64Rules.hasLte()) {
                    if ((!hasLte() || getLte() == sInt64Rules.getLte()) && hasGt() == sInt64Rules.hasGt()) {
                        if ((!hasGt() || getGt() == sInt64Rules.getGt()) && hasGte() == sInt64Rules.hasGte()) {
                            return (!hasGte() || getGte() == sInt64Rules.getGte()) && getInList().equals(sInt64Rules.getInList()) && getNotInList().equals(sInt64Rules.getNotInList()) && this.unknownFields.equals(sInt64Rules.unknownFields);
                        }
                        return false;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }

        public long getConst() {
            return this.const_;
        }

        public long getGt() {
            return this.gt_;
        }

        public long getGte() {
            return this.gte_;
        }

        public long getIn(int i9) {
            return this.in_.getLong(i9);
        }

        public int getInCount() {
            return this.in_.size();
        }

        public List<Long> getInList() {
            return this.in_;
        }

        public long getLt() {
            return this.lt_;
        }

        public long getLte() {
            return this.lte_;
        }

        public long getNotIn(int i9) {
            return this.notIn_.getLong(i9);
        }

        public int getNotInCount() {
            return this.notIn_.size();
        }

        public List<Long> getNotInList() {
            return this.notIn_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<SInt64Rules> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int T = (this.bitField0_ & 1) != 0 ? CodedOutputStream.T(1, this.const_) + 0 : 0;
            if ((this.bitField0_ & 2) != 0) {
                T += CodedOutputStream.T(2, this.lt_);
            }
            if ((this.bitField0_ & 4) != 0) {
                T += CodedOutputStream.T(3, this.lte_);
            }
            if ((this.bitField0_ & 8) != 0) {
                T += CodedOutputStream.T(4, this.gt_);
            }
            if ((this.bitField0_ & 16) != 0) {
                T += CodedOutputStream.T(5, this.gte_);
            }
            int i10 = 0;
            for (int i11 = 0; i11 < this.in_.size(); i11++) {
                i10 += CodedOutputStream.U(this.in_.getLong(i11));
            }
            int size = T + i10 + (getInList().size() * 1);
            int i12 = 0;
            for (int i13 = 0; i13 < this.notIn_.size(); i13++) {
                i12 += CodedOutputStream.U(this.notIn_.getLong(i13));
            }
            int size2 = size + i12 + (getNotInList().size() * 1) + this.unknownFields.getSerializedSize();
            this.memoizedSize = size2;
            return size2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasConst() {
            return (this.bitField0_ & 1) != 0;
        }

        public boolean hasGt() {
            return (this.bitField0_ & 8) != 0;
        }

        public boolean hasGte() {
            return (this.bitField0_ & 16) != 0;
        }

        public boolean hasLt() {
            return (this.bitField0_ & 2) != 0;
        }

        public boolean hasLte() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (hasConst()) {
                hashCode = (((hashCode * 37) + 1) * 53) + u0.i(getConst());
            }
            if (hasLt()) {
                hashCode = (((hashCode * 37) + 2) * 53) + u0.i(getLt());
            }
            if (hasLte()) {
                hashCode = (((hashCode * 37) + 3) * 53) + u0.i(getLte());
            }
            if (hasGt()) {
                hashCode = (((hashCode * 37) + 4) * 53) + u0.i(getGt());
            }
            if (hasGte()) {
                hashCode = (((hashCode * 37) + 5) * 53) + u0.i(getGte());
            }
            if (getInCount() > 0) {
                hashCode = (((hashCode * 37) + 6) * 53) + getInList().hashCode();
            }
            if (getNotInCount() > 0) {
                hashCode = (((hashCode * 37) + 7) * 53) + getNotInList().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return Validate.f50599u.d(SInt64Rules.class, b.class);
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
            return new SInt64Rules();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if ((this.bitField0_ & 1) != 0) {
                codedOutputStream.X0(1, this.const_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.X0(2, this.lt_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.X0(3, this.lte_);
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.X0(4, this.gt_);
            }
            if ((this.bitField0_ & 16) != 0) {
                codedOutputStream.X0(5, this.gte_);
            }
            for (int i9 = 0; i9 < this.in_.size(); i9++) {
                codedOutputStream.X0(6, this.in_.getLong(i9));
            }
            for (int i10 = 0; i10 < this.notIn_.size(); i10++) {
                codedOutputStream.X0(7, this.notIn_.getLong(i10));
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ SInt64Rules(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(SInt64Rules sInt64Rules) {
            return DEFAULT_INSTANCE.toBuilder().i0(sInt64Rules);
        }

        public static SInt64Rules parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private SInt64Rules(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static SInt64Rules parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (SInt64Rules) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static SInt64Rules parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public SInt64Rules getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).i0(this);
        }

        public static SInt64Rules parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private SInt64Rules() {
            this.memoizedIsInitialized = (byte) -1;
            this.in_ = GeneratedMessageV3.emptyLongList();
            this.notIn_ = GeneratedMessageV3.emptyLongList();
        }

        public static SInt64Rules parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static SInt64Rules parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static SInt64Rules parseFrom(InputStream inputStream) throws IOException {
            return (SInt64Rules) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private SInt64Rules(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            this();
            Objects.requireNonNull(f0Var);
            h3.b h10 = h3.h();
            boolean z10 = false;
            boolean z11 = false;
            while (!z10) {
                try {
                    try {
                        try {
                            int L = pVar.L();
                            if (L != 0) {
                                if (L == 8) {
                                    this.bitField0_ |= 1;
                                    this.const_ = pVar.I();
                                } else if (L == 16) {
                                    this.bitField0_ |= 2;
                                    this.lt_ = pVar.I();
                                } else if (L == 24) {
                                    this.bitField0_ |= 4;
                                    this.lte_ = pVar.I();
                                } else if (L == 32) {
                                    this.bitField0_ |= 8;
                                    this.gt_ = pVar.I();
                                } else if (L == 40) {
                                    this.bitField0_ |= 16;
                                    this.gte_ = pVar.I();
                                } else if (L == 48) {
                                    if (!(z11 & true)) {
                                        this.in_ = GeneratedMessageV3.newLongList();
                                        z11 |= true;
                                    }
                                    this.in_.I0(pVar.I());
                                } else if (L == 50) {
                                    int q10 = pVar.q(pVar.D());
                                    if (!(z11 & true) && pVar.e() > 0) {
                                        this.in_ = GeneratedMessageV3.newLongList();
                                        z11 |= true;
                                    }
                                    while (pVar.e() > 0) {
                                        this.in_.I0(pVar.I());
                                    }
                                    pVar.p(q10);
                                } else if (L == 56) {
                                    if (!(z11 & true)) {
                                        this.notIn_ = GeneratedMessageV3.newLongList();
                                        z11 |= true;
                                    }
                                    this.notIn_.I0(pVar.I());
                                } else if (L != 58) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    int q11 = pVar.q(pVar.D());
                                    if (!(z11 & true) && pVar.e() > 0) {
                                        this.notIn_ = GeneratedMessageV3.newLongList();
                                        z11 |= true;
                                    }
                                    while (pVar.e() > 0) {
                                        this.notIn_.I0(pVar.I());
                                    }
                                    pVar.p(q11);
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
                    if (z11 & true) {
                        this.in_.C();
                    }
                    if (z11 & true) {
                        this.notIn_.C();
                    }
                    this.unknownFields = h10.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static SInt64Rules parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (SInt64Rules) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static SInt64Rules parseFrom(com.google.protobuf.p pVar) throws IOException {
            return (SInt64Rules) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static SInt64Rules parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
            return (SInt64Rules) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes5.dex */
    public static final class StringRules extends GeneratedMessageV3 implements u {
        public static final int ADDRESS_FIELD_NUMBER = 21;
        public static final int CONST_FIELD_NUMBER = 1;
        public static final int CONTAINS_FIELD_NUMBER = 9;
        public static final int EMAIL_FIELD_NUMBER = 12;
        public static final int HOSTNAME_FIELD_NUMBER = 13;
        public static final int IN_FIELD_NUMBER = 10;
        public static final int IPV4_FIELD_NUMBER = 15;
        public static final int IPV6_FIELD_NUMBER = 16;
        public static final int IP_FIELD_NUMBER = 14;
        public static final int LEN_BYTES_FIELD_NUMBER = 20;
        public static final int LEN_FIELD_NUMBER = 19;
        public static final int MAX_BYTES_FIELD_NUMBER = 5;
        public static final int MAX_LEN_FIELD_NUMBER = 3;
        public static final int MIN_BYTES_FIELD_NUMBER = 4;
        public static final int MIN_LEN_FIELD_NUMBER = 2;
        public static final int NOT_CONTAINS_FIELD_NUMBER = 23;
        public static final int NOT_IN_FIELD_NUMBER = 11;
        public static final int PATTERN_FIELD_NUMBER = 6;
        public static final int PREFIX_FIELD_NUMBER = 7;
        public static final int STRICT_FIELD_NUMBER = 25;
        public static final int SUFFIX_FIELD_NUMBER = 8;
        public static final int URI_FIELD_NUMBER = 17;
        public static final int URI_REF_FIELD_NUMBER = 18;
        public static final int UUID_FIELD_NUMBER = 22;
        public static final int WELL_KNOWN_REGEX_FIELD_NUMBER = 24;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private volatile Object const_;
        private volatile Object contains_;
        private z0 in_;
        private long lenBytes_;
        private long len_;
        private long maxBytes_;
        private long maxLen_;
        private byte memoizedIsInitialized;
        private long minBytes_;
        private long minLen_;
        private volatile Object notContains_;
        private z0 notIn_;
        private volatile Object pattern_;
        private volatile Object prefix_;
        private boolean strict_;
        private volatile Object suffix_;
        private int wellKnownCase_;
        private Object wellKnown_;
        private static final StringRules DEFAULT_INSTANCE = new StringRules();
        @Deprecated
        public static final e2<StringRules> PARSER = new a();

        /* loaded from: classes5.dex */
        public enum WellKnownCase implements u0.c {
            EMAIL(12),
            HOSTNAME(13),
            IP(14),
            IPV4(15),
            IPV6(16),
            URI(17),
            URI_REF(18),
            ADDRESS(21),
            UUID(22),
            WELL_KNOWN_REGEX(24),
            WELLKNOWN_NOT_SET(0);
            
            private final int value;

            WellKnownCase(int i9) {
                this.value = i9;
            }

            public static WellKnownCase forNumber(int i9) {
                if (i9 != 0) {
                    if (i9 != 24) {
                        if (i9 != 21) {
                            if (i9 != 22) {
                                switch (i9) {
                                    case 12:
                                        return EMAIL;
                                    case 13:
                                        return HOSTNAME;
                                    case 14:
                                        return IP;
                                    case 15:
                                        return IPV4;
                                    case 16:
                                        return IPV6;
                                    case 17:
                                        return URI;
                                    case 18:
                                        return URI_REF;
                                    default:
                                        return null;
                                }
                            }
                            return UUID;
                        }
                        return ADDRESS;
                    }
                    return WELL_KNOWN_REGEX;
                }
                return WELLKNOWN_NOT_SET;
            }

            @Override // com.google.protobuf.u0.c
            public int getNumber() {
                return this.value;
            }

            @Deprecated
            public static WellKnownCase valueOf(int i9) {
                return forNumber(i9);
            }
        }

        /* loaded from: classes5.dex */
        class a extends com.google.protobuf.c<StringRules> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public StringRules m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new StringRules(pVar, f0Var, null);
            }
        }

        /* loaded from: classes5.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements u {

            /* renamed from: e  reason: collision with root package name */
            private int f50764e;

            /* renamed from: f  reason: collision with root package name */
            private Object f50765f;

            /* renamed from: g  reason: collision with root package name */
            private int f50766g;

            /* renamed from: h  reason: collision with root package name */
            private Object f50767h;

            /* renamed from: i  reason: collision with root package name */
            private long f50768i;

            /* renamed from: j  reason: collision with root package name */
            private long f50769j;

            /* renamed from: k  reason: collision with root package name */
            private long f50770k;

            /* renamed from: l  reason: collision with root package name */
            private long f50771l;

            /* renamed from: m  reason: collision with root package name */
            private long f50772m;

            /* renamed from: n  reason: collision with root package name */
            private long f50773n;

            /* renamed from: o  reason: collision with root package name */
            private Object f50774o;

            /* renamed from: p  reason: collision with root package name */
            private Object f50775p;

            /* renamed from: q  reason: collision with root package name */
            private Object f50776q;

            /* renamed from: r  reason: collision with root package name */
            private Object f50777r;

            /* renamed from: s  reason: collision with root package name */
            private Object f50778s;

            /* renamed from: t  reason: collision with root package name */
            private z0 f50779t;

            /* renamed from: u  reason: collision with root package name */
            private z0 f50780u;

            /* renamed from: v  reason: collision with root package name */
            private boolean f50781v;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void a0() {
                if ((this.f50766g & 4096) == 0) {
                    this.f50779t = new y0(this.f50779t);
                    this.f50766g |= 4096;
                }
            }

            private void b0() {
                if ((this.f50766g & 8192) == 0) {
                    this.f50780u = new y0(this.f50780u);
                    this.f50766g |= 8192;
                }
            }

            private void e0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: B0 */
            public final b f1(h3 h3Var) {
                return (b) super.f1(h3Var);
            }

            public b D0(boolean z10) {
                this.f50764e = 17;
                this.f50765f = Boolean.valueOf(z10);
                R();
                return this;
            }

            public b H0(boolean z10) {
                this.f50764e = 18;
                this.f50765f = Boolean.valueOf(z10);
                R();
                return this;
            }

            public b I0(boolean z10) {
                this.f50764e = 22;
                this.f50765f = Boolean.valueOf(z10);
                R();
                return this;
            }

            public b J0(KnownRegex knownRegex) {
                Objects.requireNonNull(knownRegex);
                this.f50764e = 24;
                this.f50765f = Integer.valueOf(knownRegex.getNumber());
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return Validate.G.d(StringRules.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public StringRules build() {
                StringRules I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public StringRules I() {
                StringRules stringRules = new StringRules(this, (a) null);
                int i9 = this.f50766g;
                int i10 = (i9 & 1) != 0 ? 1 : 0;
                stringRules.const_ = this.f50767h;
                if ((i9 & 2) != 0) {
                    stringRules.len_ = this.f50768i;
                    i10 |= 2;
                }
                if ((i9 & 4) != 0) {
                    stringRules.minLen_ = this.f50769j;
                    i10 |= 4;
                }
                if ((i9 & 8) != 0) {
                    stringRules.maxLen_ = this.f50770k;
                    i10 |= 8;
                }
                if ((i9 & 16) != 0) {
                    stringRules.lenBytes_ = this.f50771l;
                    i10 |= 16;
                }
                if ((i9 & 32) != 0) {
                    stringRules.minBytes_ = this.f50772m;
                    i10 |= 32;
                }
                if ((i9 & 64) != 0) {
                    stringRules.maxBytes_ = this.f50773n;
                    i10 |= 64;
                }
                if ((i9 & 128) != 0) {
                    i10 |= 128;
                }
                stringRules.pattern_ = this.f50774o;
                if ((i9 & 256) != 0) {
                    i10 |= 256;
                }
                stringRules.prefix_ = this.f50775p;
                if ((i9 & 512) != 0) {
                    i10 |= 512;
                }
                stringRules.suffix_ = this.f50776q;
                if ((i9 & 1024) != 0) {
                    i10 |= 1024;
                }
                stringRules.contains_ = this.f50777r;
                if ((i9 & 2048) != 0) {
                    i10 |= 2048;
                }
                stringRules.notContains_ = this.f50778s;
                if ((this.f50766g & 4096) != 0) {
                    this.f50779t = this.f50779t.V0();
                    this.f50766g &= -4097;
                }
                stringRules.in_ = this.f50779t;
                if ((this.f50766g & 8192) != 0) {
                    this.f50780u = this.f50780u.V0();
                    this.f50766g &= -8193;
                }
                stringRules.notIn_ = this.f50780u;
                if (this.f50764e == 12) {
                    stringRules.wellKnown_ = this.f50765f;
                }
                if (this.f50764e == 13) {
                    stringRules.wellKnown_ = this.f50765f;
                }
                if (this.f50764e == 14) {
                    stringRules.wellKnown_ = this.f50765f;
                }
                if (this.f50764e == 15) {
                    stringRules.wellKnown_ = this.f50765f;
                }
                if (this.f50764e == 16) {
                    stringRules.wellKnown_ = this.f50765f;
                }
                if (this.f50764e == 17) {
                    stringRules.wellKnown_ = this.f50765f;
                }
                if (this.f50764e == 18) {
                    stringRules.wellKnown_ = this.f50765f;
                }
                if (this.f50764e == 21) {
                    stringRules.wellKnown_ = this.f50765f;
                }
                if (this.f50764e == 22) {
                    stringRules.wellKnown_ = this.f50765f;
                }
                if (this.f50764e == 24) {
                    stringRules.wellKnown_ = this.f50765f;
                }
                if ((i9 & 16777216) != 0) {
                    i10 |= 4194304;
                }
                stringRules.strict_ = this.f50781v;
                stringRules.bitField0_ = i10;
                stringRules.wellKnownCase_ = this.f50764e;
                Q();
                return stringRules;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: d0 */
            public StringRules getDefaultInstanceForType() {
                return StringRules.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0021  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: g0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.StringRules.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2<io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$StringRules> r1 = io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.StringRules.PARSER     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$StringRules r3 = (io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.StringRules) r3     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    if (r3 == 0) goto Le
                    r2.i0(r3)
                Le:
                    return r2
                Lf:
                    r3 = move-exception
                    goto L1f
                L11:
                    r3 = move-exception
                    com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> Lf
                    io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$StringRules r4 = (io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.StringRules) r4     // Catch: java.lang.Throwable -> Lf
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1d
                    throw r3     // Catch: java.lang.Throwable -> L1d
                L1d:
                    r3 = move-exception
                    r0 = r4
                L1f:
                    if (r0 == 0) goto L24
                    r2.i0(r0)
                L24:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.StringRules.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$StringRules$b");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return Validate.F;
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: h0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof StringRules) {
                    return i0((StringRules) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b i0(StringRules stringRules) {
                if (stringRules == StringRules.getDefaultInstance()) {
                    return this;
                }
                if (stringRules.hasConst()) {
                    this.f50766g |= 1;
                    this.f50767h = stringRules.const_;
                    R();
                }
                if (stringRules.hasLen()) {
                    s0(stringRules.getLen());
                }
                if (stringRules.hasMinLen()) {
                    y0(stringRules.getMinLen());
                }
                if (stringRules.hasMaxLen()) {
                    v0(stringRules.getMaxLen());
                }
                if (stringRules.hasLenBytes()) {
                    t0(stringRules.getLenBytes());
                }
                if (stringRules.hasMinBytes()) {
                    x0(stringRules.getMinBytes());
                }
                if (stringRules.hasMaxBytes()) {
                    u0(stringRules.getMaxBytes());
                }
                if (stringRules.hasPattern()) {
                    this.f50766g |= 128;
                    this.f50774o = stringRules.pattern_;
                    R();
                }
                if (stringRules.hasPrefix()) {
                    this.f50766g |= 256;
                    this.f50775p = stringRules.prefix_;
                    R();
                }
                if (stringRules.hasSuffix()) {
                    this.f50766g |= 512;
                    this.f50776q = stringRules.suffix_;
                    R();
                }
                if (stringRules.hasContains()) {
                    this.f50766g |= 1024;
                    this.f50777r = stringRules.contains_;
                    R();
                }
                if (stringRules.hasNotContains()) {
                    this.f50766g |= 2048;
                    this.f50778s = stringRules.notContains_;
                    R();
                }
                if (!stringRules.in_.isEmpty()) {
                    if (this.f50779t.isEmpty()) {
                        this.f50779t = stringRules.in_;
                        this.f50766g &= -4097;
                    } else {
                        a0();
                        this.f50779t.addAll(stringRules.in_);
                    }
                    R();
                }
                if (!stringRules.notIn_.isEmpty()) {
                    if (this.f50780u.isEmpty()) {
                        this.f50780u = stringRules.notIn_;
                        this.f50766g &= -8193;
                    } else {
                        b0();
                        this.f50780u.addAll(stringRules.notIn_);
                    }
                    R();
                }
                if (stringRules.hasStrict()) {
                    z0(stringRules.getStrict());
                }
                switch (a.f50815b[stringRules.getWellKnownCase().ordinal()]) {
                    case 1:
                        l0(stringRules.getEmail());
                        break;
                    case 2:
                        n0(stringRules.getHostname());
                        break;
                    case 3:
                        o0(stringRules.getIp());
                        break;
                    case 4:
                        q0(stringRules.getIpv4());
                        break;
                    case 5:
                        r0(stringRules.getIpv6());
                        break;
                    case 6:
                        D0(stringRules.getUri());
                        break;
                    case 7:
                        H0(stringRules.getUriRef());
                        break;
                    case 8:
                        k0(stringRules.getAddress());
                        break;
                    case 9:
                        I0(stringRules.getUuid());
                        break;
                    case 10:
                        J0(stringRules.getWellKnownRegex());
                        break;
                }
                z(((GeneratedMessageV3) stringRules).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: j0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            public b k0(boolean z10) {
                this.f50764e = 21;
                this.f50765f = Boolean.valueOf(z10);
                R();
                return this;
            }

            public b l0(boolean z10) {
                this.f50764e = 12;
                this.f50765f = Boolean.valueOf(z10);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: m0 */
            public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.c(fieldDescriptor, obj);
            }

            public b n0(boolean z10) {
                this.f50764e = 13;
                this.f50765f = Boolean.valueOf(z10);
                R();
                return this;
            }

            public b o0(boolean z10) {
                this.f50764e = 14;
                this.f50765f = Boolean.valueOf(z10);
                R();
                return this;
            }

            public b q0(boolean z10) {
                this.f50764e = 15;
                this.f50765f = Boolean.valueOf(z10);
                R();
                return this;
            }

            public b r0(boolean z10) {
                this.f50764e = 16;
                this.f50765f = Boolean.valueOf(z10);
                R();
                return this;
            }

            public b s0(long j10) {
                this.f50766g |= 2;
                this.f50768i = j10;
                R();
                return this;
            }

            public b t0(long j10) {
                this.f50766g |= 16;
                this.f50771l = j10;
                R();
                return this;
            }

            public b u0(long j10) {
                this.f50766g |= 64;
                this.f50773n = j10;
                R();
                return this;
            }

            public b v0(long j10) {
                this.f50766g |= 8;
                this.f50770k = j10;
                R();
                return this;
            }

            public b x0(long j10) {
                this.f50766g |= 32;
                this.f50772m = j10;
                R();
                return this;
            }

            public b y0(long j10) {
                this.f50766g |= 4;
                this.f50769j = j10;
                R();
                return this;
            }

            public b z0(boolean z10) {
                this.f50766g |= 16777216;
                this.f50781v = z10;
                R();
                return this;
            }

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                this.f50764e = 0;
                this.f50767h = "";
                this.f50774o = "";
                this.f50775p = "";
                this.f50776q = "";
                this.f50777r = "";
                this.f50778s = "";
                z0 z0Var = y0.f15344d;
                this.f50779t = z0Var;
                this.f50780u = z0Var;
                this.f50781v = true;
                e0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f50764e = 0;
                this.f50767h = "";
                this.f50774o = "";
                this.f50775p = "";
                this.f50776q = "";
                this.f50777r = "";
                this.f50778s = "";
                z0 z0Var = y0.f15344d;
                this.f50779t = z0Var;
                this.f50780u = z0Var;
                this.f50781v = true;
                e0();
            }
        }

        /* synthetic */ StringRules(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static StringRules getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return Validate.F;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static StringRules parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (StringRules) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static StringRules parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<StringRules> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof StringRules)) {
                return super.equals(obj);
            }
            StringRules stringRules = (StringRules) obj;
            if (hasConst() != stringRules.hasConst()) {
                return false;
            }
            if ((!hasConst() || getConst().equals(stringRules.getConst())) && hasLen() == stringRules.hasLen()) {
                if ((!hasLen() || getLen() == stringRules.getLen()) && hasMinLen() == stringRules.hasMinLen()) {
                    if ((!hasMinLen() || getMinLen() == stringRules.getMinLen()) && hasMaxLen() == stringRules.hasMaxLen()) {
                        if ((!hasMaxLen() || getMaxLen() == stringRules.getMaxLen()) && hasLenBytes() == stringRules.hasLenBytes()) {
                            if ((!hasLenBytes() || getLenBytes() == stringRules.getLenBytes()) && hasMinBytes() == stringRules.hasMinBytes()) {
                                if ((!hasMinBytes() || getMinBytes() == stringRules.getMinBytes()) && hasMaxBytes() == stringRules.hasMaxBytes()) {
                                    if ((!hasMaxBytes() || getMaxBytes() == stringRules.getMaxBytes()) && hasPattern() == stringRules.hasPattern()) {
                                        if ((!hasPattern() || getPattern().equals(stringRules.getPattern())) && hasPrefix() == stringRules.hasPrefix()) {
                                            if ((!hasPrefix() || getPrefix().equals(stringRules.getPrefix())) && hasSuffix() == stringRules.hasSuffix()) {
                                                if ((!hasSuffix() || getSuffix().equals(stringRules.getSuffix())) && hasContains() == stringRules.hasContains()) {
                                                    if ((!hasContains() || getContains().equals(stringRules.getContains())) && hasNotContains() == stringRules.hasNotContains()) {
                                                        if ((!hasNotContains() || getNotContains().equals(stringRules.getNotContains())) && m1650getInList().equals(stringRules.m1650getInList()) && m1651getNotInList().equals(stringRules.m1651getNotInList()) && hasStrict() == stringRules.hasStrict()) {
                                                            if ((!hasStrict() || getStrict() == stringRules.getStrict()) && getWellKnownCase().equals(stringRules.getWellKnownCase())) {
                                                                switch (this.wellKnownCase_) {
                                                                    case 12:
                                                                        if (getEmail() != stringRules.getEmail()) {
                                                                            return false;
                                                                        }
                                                                        break;
                                                                    case 13:
                                                                        if (getHostname() != stringRules.getHostname()) {
                                                                            return false;
                                                                        }
                                                                        break;
                                                                    case 14:
                                                                        if (getIp() != stringRules.getIp()) {
                                                                            return false;
                                                                        }
                                                                        break;
                                                                    case 15:
                                                                        if (getIpv4() != stringRules.getIpv4()) {
                                                                            return false;
                                                                        }
                                                                        break;
                                                                    case 16:
                                                                        if (getIpv6() != stringRules.getIpv6()) {
                                                                            return false;
                                                                        }
                                                                        break;
                                                                    case 17:
                                                                        if (getUri() != stringRules.getUri()) {
                                                                            return false;
                                                                        }
                                                                        break;
                                                                    case 18:
                                                                        if (getUriRef() != stringRules.getUriRef()) {
                                                                            return false;
                                                                        }
                                                                        break;
                                                                    case 21:
                                                                        if (getAddress() != stringRules.getAddress()) {
                                                                            return false;
                                                                        }
                                                                        break;
                                                                    case 22:
                                                                        if (getUuid() != stringRules.getUuid()) {
                                                                            return false;
                                                                        }
                                                                        break;
                                                                    case 24:
                                                                        if (!getWellKnownRegex().equals(stringRules.getWellKnownRegex())) {
                                                                            return false;
                                                                        }
                                                                        break;
                                                                }
                                                                return this.unknownFields.equals(stringRules.unknownFields);
                                                            }
                                                            return false;
                                                        }
                                                        return false;
                                                    }
                                                    return false;
                                                }
                                                return false;
                                            }
                                            return false;
                                        }
                                        return false;
                                    }
                                    return false;
                                }
                                return false;
                            }
                            return false;
                        }
                        return false;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }

        public boolean getAddress() {
            if (this.wellKnownCase_ == 21) {
                return ((Boolean) this.wellKnown_).booleanValue();
            }
            return false;
        }

        public String getConst() {
            Object obj = this.const_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.const_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getConstBytes() {
            Object obj = this.const_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.const_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        public String getContains() {
            Object obj = this.contains_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.contains_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getContainsBytes() {
            Object obj = this.contains_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.contains_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        public boolean getEmail() {
            if (this.wellKnownCase_ == 12) {
                return ((Boolean) this.wellKnown_).booleanValue();
            }
            return false;
        }

        public boolean getHostname() {
            if (this.wellKnownCase_ == 13) {
                return ((Boolean) this.wellKnown_).booleanValue();
            }
            return false;
        }

        public String getIn(int i9) {
            return this.in_.get(i9);
        }

        public ByteString getInBytes(int i9) {
            return this.in_.j0(i9);
        }

        public int getInCount() {
            return this.in_.size();
        }

        public boolean getIp() {
            if (this.wellKnownCase_ == 14) {
                return ((Boolean) this.wellKnown_).booleanValue();
            }
            return false;
        }

        public boolean getIpv4() {
            if (this.wellKnownCase_ == 15) {
                return ((Boolean) this.wellKnown_).booleanValue();
            }
            return false;
        }

        public boolean getIpv6() {
            if (this.wellKnownCase_ == 16) {
                return ((Boolean) this.wellKnown_).booleanValue();
            }
            return false;
        }

        public long getLen() {
            return this.len_;
        }

        public long getLenBytes() {
            return this.lenBytes_;
        }

        public long getMaxBytes() {
            return this.maxBytes_;
        }

        public long getMaxLen() {
            return this.maxLen_;
        }

        public long getMinBytes() {
            return this.minBytes_;
        }

        public long getMinLen() {
            return this.minLen_;
        }

        public String getNotContains() {
            Object obj = this.notContains_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.notContains_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getNotContainsBytes() {
            Object obj = this.notContains_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.notContains_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        public String getNotIn(int i9) {
            return this.notIn_.get(i9);
        }

        public ByteString getNotInBytes(int i9) {
            return this.notIn_.j0(i9);
        }

        public int getNotInCount() {
            return this.notIn_.size();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<StringRules> getParserForType() {
            return PARSER;
        }

        public String getPattern() {
            Object obj = this.pattern_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.pattern_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getPatternBytes() {
            Object obj = this.pattern_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.pattern_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        public String getPrefix() {
            Object obj = this.prefix_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.prefix_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getPrefixBytes() {
            Object obj = this.prefix_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.prefix_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int computeStringSize = (this.bitField0_ & 1) != 0 ? GeneratedMessageV3.computeStringSize(1, this.const_) + 0 : 0;
            if ((this.bitField0_ & 4) != 0) {
                computeStringSize += CodedOutputStream.a0(2, this.minLen_);
            }
            if ((this.bitField0_ & 8) != 0) {
                computeStringSize += CodedOutputStream.a0(3, this.maxLen_);
            }
            if ((this.bitField0_ & 32) != 0) {
                computeStringSize += CodedOutputStream.a0(4, this.minBytes_);
            }
            if ((this.bitField0_ & 64) != 0) {
                computeStringSize += CodedOutputStream.a0(5, this.maxBytes_);
            }
            if ((this.bitField0_ & 128) != 0) {
                computeStringSize += GeneratedMessageV3.computeStringSize(6, this.pattern_);
            }
            if ((this.bitField0_ & 256) != 0) {
                computeStringSize += GeneratedMessageV3.computeStringSize(7, this.prefix_);
            }
            if ((this.bitField0_ & 512) != 0) {
                computeStringSize += GeneratedMessageV3.computeStringSize(8, this.suffix_);
            }
            if ((this.bitField0_ & 1024) != 0) {
                computeStringSize += GeneratedMessageV3.computeStringSize(9, this.contains_);
            }
            int i10 = 0;
            for (int i11 = 0; i11 < this.in_.size(); i11++) {
                i10 += GeneratedMessageV3.computeStringSizeNoTag(this.in_.c1(i11));
            }
            int size = computeStringSize + i10 + (m1650getInList().size() * 1);
            int i12 = 0;
            for (int i13 = 0; i13 < this.notIn_.size(); i13++) {
                i12 += GeneratedMessageV3.computeStringSizeNoTag(this.notIn_.c1(i13));
            }
            int size2 = size + i12 + (m1651getNotInList().size() * 1);
            if (this.wellKnownCase_ == 12) {
                size2 += CodedOutputStream.e(12, ((Boolean) this.wellKnown_).booleanValue());
            }
            if (this.wellKnownCase_ == 13) {
                size2 += CodedOutputStream.e(13, ((Boolean) this.wellKnown_).booleanValue());
            }
            if (this.wellKnownCase_ == 14) {
                size2 += CodedOutputStream.e(14, ((Boolean) this.wellKnown_).booleanValue());
            }
            if (this.wellKnownCase_ == 15) {
                size2 += CodedOutputStream.e(15, ((Boolean) this.wellKnown_).booleanValue());
            }
            if (this.wellKnownCase_ == 16) {
                size2 += CodedOutputStream.e(16, ((Boolean) this.wellKnown_).booleanValue());
            }
            if (this.wellKnownCase_ == 17) {
                size2 += CodedOutputStream.e(17, ((Boolean) this.wellKnown_).booleanValue());
            }
            if (this.wellKnownCase_ == 18) {
                size2 += CodedOutputStream.e(18, ((Boolean) this.wellKnown_).booleanValue());
            }
            if ((this.bitField0_ & 2) != 0) {
                size2 += CodedOutputStream.a0(19, this.len_);
            }
            if ((this.bitField0_ & 16) != 0) {
                size2 += CodedOutputStream.a0(20, this.lenBytes_);
            }
            if (this.wellKnownCase_ == 21) {
                size2 += CodedOutputStream.e(21, ((Boolean) this.wellKnown_).booleanValue());
            }
            if (this.wellKnownCase_ == 22) {
                size2 += CodedOutputStream.e(22, ((Boolean) this.wellKnown_).booleanValue());
            }
            if ((this.bitField0_ & 2048) != 0) {
                size2 += GeneratedMessageV3.computeStringSize(23, this.notContains_);
            }
            if (this.wellKnownCase_ == 24) {
                size2 += CodedOutputStream.l(24, ((Integer) this.wellKnown_).intValue());
            }
            if ((this.bitField0_ & 4194304) != 0) {
                size2 += CodedOutputStream.e(25, this.strict_);
            }
            int serializedSize = size2 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        public boolean getStrict() {
            return this.strict_;
        }

        public String getSuffix() {
            Object obj = this.suffix_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.suffix_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getSuffixBytes() {
            Object obj = this.suffix_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.suffix_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean getUri() {
            if (this.wellKnownCase_ == 17) {
                return ((Boolean) this.wellKnown_).booleanValue();
            }
            return false;
        }

        public boolean getUriRef() {
            if (this.wellKnownCase_ == 18) {
                return ((Boolean) this.wellKnown_).booleanValue();
            }
            return false;
        }

        public boolean getUuid() {
            if (this.wellKnownCase_ == 22) {
                return ((Boolean) this.wellKnown_).booleanValue();
            }
            return false;
        }

        public WellKnownCase getWellKnownCase() {
            return WellKnownCase.forNumber(this.wellKnownCase_);
        }

        public KnownRegex getWellKnownRegex() {
            if (this.wellKnownCase_ == 24) {
                KnownRegex valueOf = KnownRegex.valueOf(((Integer) this.wellKnown_).intValue());
                return valueOf == null ? KnownRegex.UNKNOWN : valueOf;
            }
            return KnownRegex.UNKNOWN;
        }

        public boolean hasAddress() {
            return this.wellKnownCase_ == 21;
        }

        public boolean hasConst() {
            return (this.bitField0_ & 1) != 0;
        }

        public boolean hasContains() {
            return (this.bitField0_ & 1024) != 0;
        }

        public boolean hasEmail() {
            return this.wellKnownCase_ == 12;
        }

        public boolean hasHostname() {
            return this.wellKnownCase_ == 13;
        }

        public boolean hasIp() {
            return this.wellKnownCase_ == 14;
        }

        public boolean hasIpv4() {
            return this.wellKnownCase_ == 15;
        }

        public boolean hasIpv6() {
            return this.wellKnownCase_ == 16;
        }

        public boolean hasLen() {
            return (this.bitField0_ & 2) != 0;
        }

        public boolean hasLenBytes() {
            return (this.bitField0_ & 16) != 0;
        }

        public boolean hasMaxBytes() {
            return (this.bitField0_ & 64) != 0;
        }

        public boolean hasMaxLen() {
            return (this.bitField0_ & 8) != 0;
        }

        public boolean hasMinBytes() {
            return (this.bitField0_ & 32) != 0;
        }

        public boolean hasMinLen() {
            return (this.bitField0_ & 4) != 0;
        }

        public boolean hasNotContains() {
            return (this.bitField0_ & 2048) != 0;
        }

        public boolean hasPattern() {
            return (this.bitField0_ & 128) != 0;
        }

        public boolean hasPrefix() {
            return (this.bitField0_ & 256) != 0;
        }

        public boolean hasStrict() {
            return (this.bitField0_ & 4194304) != 0;
        }

        public boolean hasSuffix() {
            return (this.bitField0_ & 512) != 0;
        }

        public boolean hasUri() {
            return this.wellKnownCase_ == 17;
        }

        public boolean hasUriRef() {
            return this.wellKnownCase_ == 18;
        }

        public boolean hasUuid() {
            return this.wellKnownCase_ == 22;
        }

        public boolean hasWellKnownRegex() {
            return this.wellKnownCase_ == 24;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9;
            int d10;
            int i10 = this.memoizedHashCode;
            if (i10 != 0) {
                return i10;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (hasConst()) {
                hashCode = (((hashCode * 37) + 1) * 53) + getConst().hashCode();
            }
            if (hasLen()) {
                hashCode = (((hashCode * 37) + 19) * 53) + u0.i(getLen());
            }
            if (hasMinLen()) {
                hashCode = (((hashCode * 37) + 2) * 53) + u0.i(getMinLen());
            }
            if (hasMaxLen()) {
                hashCode = (((hashCode * 37) + 3) * 53) + u0.i(getMaxLen());
            }
            if (hasLenBytes()) {
                hashCode = (((hashCode * 37) + 20) * 53) + u0.i(getLenBytes());
            }
            if (hasMinBytes()) {
                hashCode = (((hashCode * 37) + 4) * 53) + u0.i(getMinBytes());
            }
            if (hasMaxBytes()) {
                hashCode = (((hashCode * 37) + 5) * 53) + u0.i(getMaxBytes());
            }
            if (hasPattern()) {
                hashCode = (((hashCode * 37) + 6) * 53) + getPattern().hashCode();
            }
            if (hasPrefix()) {
                hashCode = (((hashCode * 37) + 7) * 53) + getPrefix().hashCode();
            }
            if (hasSuffix()) {
                hashCode = (((hashCode * 37) + 8) * 53) + getSuffix().hashCode();
            }
            if (hasContains()) {
                hashCode = (((hashCode * 37) + 9) * 53) + getContains().hashCode();
            }
            if (hasNotContains()) {
                hashCode = (((hashCode * 37) + 23) * 53) + getNotContains().hashCode();
            }
            if (getInCount() > 0) {
                hashCode = (((hashCode * 37) + 10) * 53) + m1650getInList().hashCode();
            }
            if (getNotInCount() > 0) {
                hashCode = (((hashCode * 37) + 11) * 53) + m1651getNotInList().hashCode();
            }
            if (hasStrict()) {
                hashCode = (((hashCode * 37) + 25) * 53) + u0.d(getStrict());
            }
            switch (this.wellKnownCase_) {
                case 12:
                    i9 = ((hashCode * 37) + 12) * 53;
                    d10 = u0.d(getEmail());
                    hashCode = i9 + d10;
                    int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
                    this.memoizedHashCode = hashCode2;
                    return hashCode2;
                case 13:
                    i9 = ((hashCode * 37) + 13) * 53;
                    d10 = u0.d(getHostname());
                    hashCode = i9 + d10;
                    int hashCode22 = (hashCode * 29) + this.unknownFields.hashCode();
                    this.memoizedHashCode = hashCode22;
                    return hashCode22;
                case 14:
                    i9 = ((hashCode * 37) + 14) * 53;
                    d10 = u0.d(getIp());
                    hashCode = i9 + d10;
                    int hashCode222 = (hashCode * 29) + this.unknownFields.hashCode();
                    this.memoizedHashCode = hashCode222;
                    return hashCode222;
                case 15:
                    i9 = ((hashCode * 37) + 15) * 53;
                    d10 = u0.d(getIpv4());
                    hashCode = i9 + d10;
                    int hashCode2222 = (hashCode * 29) + this.unknownFields.hashCode();
                    this.memoizedHashCode = hashCode2222;
                    return hashCode2222;
                case 16:
                    i9 = ((hashCode * 37) + 16) * 53;
                    d10 = u0.d(getIpv6());
                    hashCode = i9 + d10;
                    int hashCode22222 = (hashCode * 29) + this.unknownFields.hashCode();
                    this.memoizedHashCode = hashCode22222;
                    return hashCode22222;
                case 17:
                    i9 = ((hashCode * 37) + 17) * 53;
                    d10 = u0.d(getUri());
                    hashCode = i9 + d10;
                    int hashCode222222 = (hashCode * 29) + this.unknownFields.hashCode();
                    this.memoizedHashCode = hashCode222222;
                    return hashCode222222;
                case 18:
                    i9 = ((hashCode * 37) + 18) * 53;
                    d10 = u0.d(getUriRef());
                    hashCode = i9 + d10;
                    int hashCode2222222 = (hashCode * 29) + this.unknownFields.hashCode();
                    this.memoizedHashCode = hashCode2222222;
                    return hashCode2222222;
                case 19:
                case 20:
                case 23:
                default:
                    int hashCode22222222 = (hashCode * 29) + this.unknownFields.hashCode();
                    this.memoizedHashCode = hashCode22222222;
                    return hashCode22222222;
                case 21:
                    i9 = ((hashCode * 37) + 21) * 53;
                    d10 = u0.d(getAddress());
                    hashCode = i9 + d10;
                    int hashCode222222222 = (hashCode * 29) + this.unknownFields.hashCode();
                    this.memoizedHashCode = hashCode222222222;
                    return hashCode222222222;
                case 22:
                    i9 = ((hashCode * 37) + 22) * 53;
                    d10 = u0.d(getUuid());
                    hashCode = i9 + d10;
                    int hashCode2222222222 = (hashCode * 29) + this.unknownFields.hashCode();
                    this.memoizedHashCode = hashCode2222222222;
                    return hashCode2222222222;
                case 24:
                    i9 = ((hashCode * 37) + 24) * 53;
                    d10 = getWellKnownRegex().getNumber();
                    hashCode = i9 + d10;
                    int hashCode22222222222 = (hashCode * 29) + this.unknownFields.hashCode();
                    this.memoizedHashCode = hashCode22222222222;
                    return hashCode22222222222;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return Validate.G.d(StringRules.class, b.class);
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
            return new StringRules();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if ((this.bitField0_ & 1) != 0) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.const_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.e1(2, this.minLen_);
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.e1(3, this.maxLen_);
            }
            if ((this.bitField0_ & 32) != 0) {
                codedOutputStream.e1(4, this.minBytes_);
            }
            if ((this.bitField0_ & 64) != 0) {
                codedOutputStream.e1(5, this.maxBytes_);
            }
            if ((this.bitField0_ & 128) != 0) {
                GeneratedMessageV3.writeString(codedOutputStream, 6, this.pattern_);
            }
            if ((this.bitField0_ & 256) != 0) {
                GeneratedMessageV3.writeString(codedOutputStream, 7, this.prefix_);
            }
            if ((this.bitField0_ & 512) != 0) {
                GeneratedMessageV3.writeString(codedOutputStream, 8, this.suffix_);
            }
            if ((this.bitField0_ & 1024) != 0) {
                GeneratedMessageV3.writeString(codedOutputStream, 9, this.contains_);
            }
            for (int i9 = 0; i9 < this.in_.size(); i9++) {
                GeneratedMessageV3.writeString(codedOutputStream, 10, this.in_.c1(i9));
            }
            for (int i10 = 0; i10 < this.notIn_.size(); i10++) {
                GeneratedMessageV3.writeString(codedOutputStream, 11, this.notIn_.c1(i10));
            }
            if (this.wellKnownCase_ == 12) {
                codedOutputStream.n0(12, ((Boolean) this.wellKnown_).booleanValue());
            }
            if (this.wellKnownCase_ == 13) {
                codedOutputStream.n0(13, ((Boolean) this.wellKnown_).booleanValue());
            }
            if (this.wellKnownCase_ == 14) {
                codedOutputStream.n0(14, ((Boolean) this.wellKnown_).booleanValue());
            }
            if (this.wellKnownCase_ == 15) {
                codedOutputStream.n0(15, ((Boolean) this.wellKnown_).booleanValue());
            }
            if (this.wellKnownCase_ == 16) {
                codedOutputStream.n0(16, ((Boolean) this.wellKnown_).booleanValue());
            }
            if (this.wellKnownCase_ == 17) {
                codedOutputStream.n0(17, ((Boolean) this.wellKnown_).booleanValue());
            }
            if (this.wellKnownCase_ == 18) {
                codedOutputStream.n0(18, ((Boolean) this.wellKnown_).booleanValue());
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.e1(19, this.len_);
            }
            if ((this.bitField0_ & 16) != 0) {
                codedOutputStream.e1(20, this.lenBytes_);
            }
            if (this.wellKnownCase_ == 21) {
                codedOutputStream.n0(21, ((Boolean) this.wellKnown_).booleanValue());
            }
            if (this.wellKnownCase_ == 22) {
                codedOutputStream.n0(22, ((Boolean) this.wellKnown_).booleanValue());
            }
            if ((this.bitField0_ & 2048) != 0) {
                GeneratedMessageV3.writeString(codedOutputStream, 23, this.notContains_);
            }
            if (this.wellKnownCase_ == 24) {
                codedOutputStream.v0(24, ((Integer) this.wellKnown_).intValue());
            }
            if ((this.bitField0_ & 4194304) != 0) {
                codedOutputStream.n0(25, this.strict_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ StringRules(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(StringRules stringRules) {
            return DEFAULT_INSTANCE.toBuilder().i0(stringRules);
        }

        public static StringRules parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        /* renamed from: getInList */
        public i2 m1650getInList() {
            return this.in_;
        }

        /* renamed from: getNotInList */
        public i2 m1651getNotInList() {
            return this.notIn_;
        }

        private StringRules(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.wellKnownCase_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static StringRules parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (StringRules) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static StringRules parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public StringRules getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).i0(this);
        }

        public static StringRules parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        public static StringRules parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        private StringRules() {
            this.wellKnownCase_ = 0;
            this.memoizedIsInitialized = (byte) -1;
            this.const_ = "";
            this.pattern_ = "";
            this.prefix_ = "";
            this.suffix_ = "";
            this.contains_ = "";
            this.notContains_ = "";
            z0 z0Var = y0.f15344d;
            this.in_ = z0Var;
            this.notIn_ = z0Var;
            this.strict_ = true;
        }

        public static StringRules parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static StringRules parseFrom(InputStream inputStream) throws IOException {
            return (StringRules) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static StringRules parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (StringRules) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static StringRules parseFrom(com.google.protobuf.p pVar) throws IOException {
            return (StringRules) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static StringRules parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
            return (StringRules) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }

        private StringRules(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            this();
            Objects.requireNonNull(f0Var);
            h3.b h10 = h3.h();
            boolean z10 = false;
            boolean z11 = false;
            while (!z10) {
                try {
                    try {
                        int L = pVar.L();
                        switch (L) {
                            case 0:
                                break;
                            case 10:
                                ByteString s10 = pVar.s();
                                this.bitField0_ |= 1;
                                this.const_ = s10;
                                continue;
                            case 16:
                                this.bitField0_ |= 4;
                                this.minLen_ = pVar.N();
                                continue;
                            case 24:
                                this.bitField0_ |= 8;
                                this.maxLen_ = pVar.N();
                                continue;
                            case 32:
                                this.bitField0_ |= 32;
                                this.minBytes_ = pVar.N();
                                continue;
                            case 40:
                                this.bitField0_ |= 64;
                                this.maxBytes_ = pVar.N();
                                continue;
                            case 50:
                                ByteString s11 = pVar.s();
                                this.bitField0_ |= 128;
                                this.pattern_ = s11;
                                continue;
                            case 58:
                                ByteString s12 = pVar.s();
                                this.bitField0_ |= 256;
                                this.prefix_ = s12;
                                continue;
                            case 66:
                                ByteString s13 = pVar.s();
                                this.bitField0_ |= 512;
                                this.suffix_ = s13;
                                continue;
                            case 74:
                                ByteString s14 = pVar.s();
                                this.bitField0_ |= 1024;
                                this.contains_ = s14;
                                continue;
                            case 82:
                                ByteString s15 = pVar.s();
                                if (!(z11 & true)) {
                                    this.in_ = new y0();
                                    z11 |= true;
                                }
                                this.in_.X(s15);
                                continue;
                            case 90:
                                ByteString s16 = pVar.s();
                                if (!(z11 & true)) {
                                    this.notIn_ = new y0();
                                    z11 |= true;
                                }
                                this.notIn_.X(s16);
                                continue;
                            case 96:
                                this.wellKnown_ = Boolean.valueOf(pVar.r());
                                this.wellKnownCase_ = 12;
                                continue;
                            case 104:
                                this.wellKnown_ = Boolean.valueOf(pVar.r());
                                this.wellKnownCase_ = 13;
                                continue;
                            case 112:
                                this.wellKnown_ = Boolean.valueOf(pVar.r());
                                this.wellKnownCase_ = 14;
                                continue;
                            case 120:
                                this.wellKnown_ = Boolean.valueOf(pVar.r());
                                this.wellKnownCase_ = 15;
                                continue;
                            case 128:
                                this.wellKnown_ = Boolean.valueOf(pVar.r());
                                this.wellKnownCase_ = 16;
                                continue;
                            case TPOptionalID.OPTION_ID_BEFORE_LONG_DEMXUER_TYPE /* 136 */:
                                this.wellKnown_ = Boolean.valueOf(pVar.r());
                                this.wellKnownCase_ = 17;
                                continue;
                            case 144:
                                this.wellKnown_ = Boolean.valueOf(pVar.r());
                                this.wellKnownCase_ = 18;
                                continue;
                            case 152:
                                this.bitField0_ |= 2;
                                this.len_ = pVar.N();
                                continue;
                            case 160:
                                this.bitField0_ |= 16;
                                this.lenBytes_ = pVar.N();
                                continue;
                            case 168:
                                this.wellKnown_ = Boolean.valueOf(pVar.r());
                                this.wellKnownCase_ = 21;
                                continue;
                            case 176:
                                this.wellKnown_ = Boolean.valueOf(pVar.r());
                                this.wellKnownCase_ = 22;
                                continue;
                            case 186:
                                ByteString s17 = pVar.s();
                                this.bitField0_ |= 2048;
                                this.notContains_ = s17;
                                continue;
                            case 192:
                                int u10 = pVar.u();
                                if (KnownRegex.valueOf(u10) == null) {
                                    h10.r(24, u10);
                                } else {
                                    this.wellKnownCase_ = 24;
                                    this.wellKnown_ = Integer.valueOf(u10);
                                    continue;
                                }
                            case 200:
                                this.bitField0_ |= 4194304;
                                this.strict_ = pVar.r();
                                continue;
                            default:
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    break;
                                } else {
                                    continue;
                                }
                        }
                        z10 = true;
                    } catch (InvalidProtocolBufferException e10) {
                        throw e10.setUnfinishedMessage(this);
                    } catch (IOException e11) {
                        throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                    }
                } finally {
                    if (z11 & true) {
                        this.in_ = this.in_.V0();
                    }
                    if (z11 & true) {
                        this.notIn_ = this.notIn_.V0();
                    }
                    this.unknownFields = h10.build();
                    makeExtensionsImmutable();
                }
            }
        }
    }

    /* loaded from: classes5.dex */
    public static final class TimestampRules extends GeneratedMessageV3 implements v {
        public static final int CONST_FIELD_NUMBER = 2;
        public static final int GTE_FIELD_NUMBER = 6;
        public static final int GT_FIELD_NUMBER = 5;
        public static final int GT_NOW_FIELD_NUMBER = 8;
        public static final int LTE_FIELD_NUMBER = 4;
        public static final int LT_FIELD_NUMBER = 3;
        public static final int LT_NOW_FIELD_NUMBER = 7;
        public static final int REQUIRED_FIELD_NUMBER = 1;
        public static final int WITHIN_FIELD_NUMBER = 9;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private Timestamp const_;
        private boolean gtNow_;
        private Timestamp gt_;
        private Timestamp gte_;
        private boolean ltNow_;
        private Timestamp lt_;
        private Timestamp lte_;
        private byte memoizedIsInitialized;
        private boolean required_;
        private Duration within_;
        private static final TimestampRules DEFAULT_INSTANCE = new TimestampRules();
        @Deprecated
        public static final e2<TimestampRules> PARSER = new a();

        /* loaded from: classes5.dex */
        class a extends com.google.protobuf.c<TimestampRules> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public TimestampRules m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new TimestampRules(pVar, f0Var, null);
            }
        }

        /* loaded from: classes5.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements v {

            /* renamed from: e  reason: collision with root package name */
            private int f50782e;

            /* renamed from: f  reason: collision with root package name */
            private boolean f50783f;

            /* renamed from: g  reason: collision with root package name */
            private Timestamp f50784g;

            /* renamed from: h  reason: collision with root package name */
            private q2<Timestamp, Timestamp.b, z2> f50785h;

            /* renamed from: i  reason: collision with root package name */
            private Timestamp f50786i;

            /* renamed from: j  reason: collision with root package name */
            private q2<Timestamp, Timestamp.b, z2> f50787j;

            /* renamed from: k  reason: collision with root package name */
            private Timestamp f50788k;

            /* renamed from: l  reason: collision with root package name */
            private q2<Timestamp, Timestamp.b, z2> f50789l;

            /* renamed from: m  reason: collision with root package name */
            private Timestamp f50790m;

            /* renamed from: n  reason: collision with root package name */
            private q2<Timestamp, Timestamp.b, z2> f50791n;

            /* renamed from: o  reason: collision with root package name */
            private Timestamp f50792o;

            /* renamed from: p  reason: collision with root package name */
            private q2<Timestamp, Timestamp.b, z2> f50793p;

            /* renamed from: q  reason: collision with root package name */
            private boolean f50794q;

            /* renamed from: r  reason: collision with root package name */
            private boolean f50795r;

            /* renamed from: s  reason: collision with root package name */
            private Duration f50796s;

            /* renamed from: t  reason: collision with root package name */
            private q2<Duration, Duration.b, com.google.protobuf.v> f50797t;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private q2<Timestamp, Timestamp.b, z2> b0() {
                if (this.f50785h == null) {
                    this.f50785h = new q2<>(a0(), H(), O());
                    this.f50784g = null;
                }
                return this.f50785h;
            }

            private q2<Timestamp, Timestamp.b, z2> g0() {
                if (this.f50791n == null) {
                    this.f50791n = new q2<>(e0(), H(), O());
                    this.f50790m = null;
                }
                return this.f50791n;
            }

            private q2<Timestamp, Timestamp.b, z2> i0() {
                if (this.f50793p == null) {
                    this.f50793p = new q2<>(h0(), H(), O());
                    this.f50792o = null;
                }
                return this.f50793p;
            }

            private q2<Timestamp, Timestamp.b, z2> k0() {
                if (this.f50787j == null) {
                    this.f50787j = new q2<>(j0(), H(), O());
                    this.f50786i = null;
                }
                return this.f50787j;
            }

            private q2<Timestamp, Timestamp.b, z2> m0() {
                if (this.f50789l == null) {
                    this.f50789l = new q2<>(l0(), H(), O());
                    this.f50788k = null;
                }
                return this.f50789l;
            }

            private q2<Duration, Duration.b, com.google.protobuf.v> o0() {
                if (this.f50797t == null) {
                    this.f50797t = new q2<>(n0(), H(), O());
                    this.f50796s = null;
                }
                return this.f50797t;
            }

            private void q0() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    b0();
                    k0();
                    m0();
                    g0();
                    i0();
                    o0();
                }
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: B0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            public b D0(Duration duration) {
                Duration duration2;
                q2<Duration, Duration.b, com.google.protobuf.v> q2Var = this.f50797t;
                if (q2Var == null) {
                    if ((this.f50782e & 256) != 0 && (duration2 = this.f50796s) != null && duration2 != Duration.getDefaultInstance()) {
                        this.f50796s = Duration.newBuilder(this.f50796s).e0(duration).I();
                    } else {
                        this.f50796s = duration;
                    }
                    R();
                } else {
                    q2Var.e(duration);
                }
                this.f50782e |= 256;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: H0 */
            public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.c(fieldDescriptor, obj);
            }

            public b I0(boolean z10) {
                this.f50782e |= 128;
                this.f50795r = z10;
                R();
                return this;
            }

            public b J0(boolean z10) {
                this.f50782e |= 64;
                this.f50794q = z10;
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return Validate.W.d(TimestampRules.class, b.class);
            }

            public b K0(boolean z10) {
                this.f50782e |= 1;
                this.f50783f = z10;
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: L0 */
            public final b f1(h3 h3Var) {
                return (b) super.f1(h3Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public TimestampRules build() {
                TimestampRules I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public TimestampRules I() {
                int i9;
                TimestampRules timestampRules = new TimestampRules(this, (a) null);
                int i10 = this.f50782e;
                if ((i10 & 1) != 0) {
                    timestampRules.required_ = this.f50783f;
                    i9 = 1;
                } else {
                    i9 = 0;
                }
                if ((i10 & 2) != 0) {
                    q2<Timestamp, Timestamp.b, z2> q2Var = this.f50785h;
                    if (q2Var == null) {
                        timestampRules.const_ = this.f50784g;
                    } else {
                        timestampRules.const_ = q2Var.b();
                    }
                    i9 |= 2;
                }
                if ((i10 & 4) != 0) {
                    q2<Timestamp, Timestamp.b, z2> q2Var2 = this.f50787j;
                    if (q2Var2 == null) {
                        timestampRules.lt_ = this.f50786i;
                    } else {
                        timestampRules.lt_ = q2Var2.b();
                    }
                    i9 |= 4;
                }
                if ((i10 & 8) != 0) {
                    q2<Timestamp, Timestamp.b, z2> q2Var3 = this.f50789l;
                    if (q2Var3 == null) {
                        timestampRules.lte_ = this.f50788k;
                    } else {
                        timestampRules.lte_ = q2Var3.b();
                    }
                    i9 |= 8;
                }
                if ((i10 & 16) != 0) {
                    q2<Timestamp, Timestamp.b, z2> q2Var4 = this.f50791n;
                    if (q2Var4 == null) {
                        timestampRules.gt_ = this.f50790m;
                    } else {
                        timestampRules.gt_ = q2Var4.b();
                    }
                    i9 |= 16;
                }
                if ((i10 & 32) != 0) {
                    q2<Timestamp, Timestamp.b, z2> q2Var5 = this.f50793p;
                    if (q2Var5 == null) {
                        timestampRules.gte_ = this.f50792o;
                    } else {
                        timestampRules.gte_ = q2Var5.b();
                    }
                    i9 |= 32;
                }
                if ((i10 & 64) != 0) {
                    timestampRules.ltNow_ = this.f50794q;
                    i9 |= 64;
                }
                if ((i10 & 128) != 0) {
                    timestampRules.gtNow_ = this.f50795r;
                    i9 |= 128;
                }
                if ((i10 & 256) != 0) {
                    q2<Duration, Duration.b, com.google.protobuf.v> q2Var6 = this.f50797t;
                    if (q2Var6 == null) {
                        timestampRules.within_ = this.f50796s;
                    } else {
                        timestampRules.within_ = q2Var6.b();
                    }
                    i9 |= 256;
                }
                timestampRules.bitField0_ = i9;
                Q();
                return timestampRules;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            public Timestamp a0() {
                q2<Timestamp, Timestamp.b, z2> q2Var = this.f50785h;
                if (q2Var == null) {
                    Timestamp timestamp = this.f50784g;
                    return timestamp == null ? Timestamp.getDefaultInstance() : timestamp;
                }
                return q2Var.d();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: d0 */
            public TimestampRules getDefaultInstanceForType() {
                return TimestampRules.getDefaultInstance();
            }

            public Timestamp e0() {
                q2<Timestamp, Timestamp.b, z2> q2Var = this.f50791n;
                if (q2Var == null) {
                    Timestamp timestamp = this.f50790m;
                    return timestamp == null ? Timestamp.getDefaultInstance() : timestamp;
                }
                return q2Var.d();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return Validate.V;
            }

            public Timestamp h0() {
                q2<Timestamp, Timestamp.b, z2> q2Var = this.f50793p;
                if (q2Var == null) {
                    Timestamp timestamp = this.f50792o;
                    return timestamp == null ? Timestamp.getDefaultInstance() : timestamp;
                }
                return q2Var.d();
            }

            public Timestamp j0() {
                q2<Timestamp, Timestamp.b, z2> q2Var = this.f50787j;
                if (q2Var == null) {
                    Timestamp timestamp = this.f50786i;
                    return timestamp == null ? Timestamp.getDefaultInstance() : timestamp;
                }
                return q2Var.d();
            }

            public Timestamp l0() {
                q2<Timestamp, Timestamp.b, z2> q2Var = this.f50789l;
                if (q2Var == null) {
                    Timestamp timestamp = this.f50788k;
                    return timestamp == null ? Timestamp.getDefaultInstance() : timestamp;
                }
                return q2Var.d();
            }

            public Duration n0() {
                q2<Duration, Duration.b, com.google.protobuf.v> q2Var = this.f50797t;
                if (q2Var == null) {
                    Duration duration = this.f50796s;
                    return duration == null ? Duration.getDefaultInstance() : duration;
                }
                return q2Var.d();
            }

            public b r0(Timestamp timestamp) {
                Timestamp timestamp2;
                q2<Timestamp, Timestamp.b, z2> q2Var = this.f50785h;
                if (q2Var == null) {
                    if ((this.f50782e & 2) != 0 && (timestamp2 = this.f50784g) != null && timestamp2 != Timestamp.getDefaultInstance()) {
                        this.f50784g = Timestamp.newBuilder(this.f50784g).g0(timestamp).I();
                    } else {
                        this.f50784g = timestamp;
                    }
                    R();
                } else {
                    q2Var.e(timestamp);
                }
                this.f50782e |= 2;
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0021  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: s0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.TimestampRules.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2<io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$TimestampRules> r1 = io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.TimestampRules.PARSER     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$TimestampRules r3 = (io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.TimestampRules) r3     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    if (r3 == 0) goto Le
                    r2.u0(r3)
                Le:
                    return r2
                Lf:
                    r3 = move-exception
                    goto L1f
                L11:
                    r3 = move-exception
                    com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> Lf
                    io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$TimestampRules r4 = (io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.TimestampRules) r4     // Catch: java.lang.Throwable -> Lf
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1d
                    throw r3     // Catch: java.lang.Throwable -> L1d
                L1d:
                    r3 = move-exception
                    r0 = r4
                L1f:
                    if (r0 == 0) goto L24
                    r2.u0(r0)
                L24:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.TimestampRules.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$TimestampRules$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: t0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof TimestampRules) {
                    return u0((TimestampRules) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b u0(TimestampRules timestampRules) {
                if (timestampRules == TimestampRules.getDefaultInstance()) {
                    return this;
                }
                if (timestampRules.hasRequired()) {
                    K0(timestampRules.getRequired());
                }
                if (timestampRules.hasConst()) {
                    r0(timestampRules.getConst());
                }
                if (timestampRules.hasLt()) {
                    y0(timestampRules.getLt());
                }
                if (timestampRules.hasLte()) {
                    z0(timestampRules.getLte());
                }
                if (timestampRules.hasGt()) {
                    v0(timestampRules.getGt());
                }
                if (timestampRules.hasGte()) {
                    x0(timestampRules.getGte());
                }
                if (timestampRules.hasLtNow()) {
                    J0(timestampRules.getLtNow());
                }
                if (timestampRules.hasGtNow()) {
                    I0(timestampRules.getGtNow());
                }
                if (timestampRules.hasWithin()) {
                    D0(timestampRules.getWithin());
                }
                z(((GeneratedMessageV3) timestampRules).unknownFields);
                R();
                return this;
            }

            public b v0(Timestamp timestamp) {
                Timestamp timestamp2;
                q2<Timestamp, Timestamp.b, z2> q2Var = this.f50791n;
                if (q2Var == null) {
                    if ((this.f50782e & 16) != 0 && (timestamp2 = this.f50790m) != null && timestamp2 != Timestamp.getDefaultInstance()) {
                        this.f50790m = Timestamp.newBuilder(this.f50790m).g0(timestamp).I();
                    } else {
                        this.f50790m = timestamp;
                    }
                    R();
                } else {
                    q2Var.e(timestamp);
                }
                this.f50782e |= 16;
                return this;
            }

            public b x0(Timestamp timestamp) {
                Timestamp timestamp2;
                q2<Timestamp, Timestamp.b, z2> q2Var = this.f50793p;
                if (q2Var == null) {
                    if ((this.f50782e & 32) != 0 && (timestamp2 = this.f50792o) != null && timestamp2 != Timestamp.getDefaultInstance()) {
                        this.f50792o = Timestamp.newBuilder(this.f50792o).g0(timestamp).I();
                    } else {
                        this.f50792o = timestamp;
                    }
                    R();
                } else {
                    q2Var.e(timestamp);
                }
                this.f50782e |= 32;
                return this;
            }

            public b y0(Timestamp timestamp) {
                Timestamp timestamp2;
                q2<Timestamp, Timestamp.b, z2> q2Var = this.f50787j;
                if (q2Var == null) {
                    if ((this.f50782e & 4) != 0 && (timestamp2 = this.f50786i) != null && timestamp2 != Timestamp.getDefaultInstance()) {
                        this.f50786i = Timestamp.newBuilder(this.f50786i).g0(timestamp).I();
                    } else {
                        this.f50786i = timestamp;
                    }
                    R();
                } else {
                    q2Var.e(timestamp);
                }
                this.f50782e |= 4;
                return this;
            }

            public b z0(Timestamp timestamp) {
                Timestamp timestamp2;
                q2<Timestamp, Timestamp.b, z2> q2Var = this.f50789l;
                if (q2Var == null) {
                    if ((this.f50782e & 8) != 0 && (timestamp2 = this.f50788k) != null && timestamp2 != Timestamp.getDefaultInstance()) {
                        this.f50788k = Timestamp.newBuilder(this.f50788k).g0(timestamp).I();
                    } else {
                        this.f50788k = timestamp;
                    }
                    R();
                } else {
                    q2Var.e(timestamp);
                }
                this.f50782e |= 8;
                return this;
            }

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                q0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                q0();
            }
        }

        /* synthetic */ TimestampRules(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static TimestampRules getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return Validate.V;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static TimestampRules parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (TimestampRules) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static TimestampRules parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<TimestampRules> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof TimestampRules)) {
                return super.equals(obj);
            }
            TimestampRules timestampRules = (TimestampRules) obj;
            if (hasRequired() != timestampRules.hasRequired()) {
                return false;
            }
            if ((!hasRequired() || getRequired() == timestampRules.getRequired()) && hasConst() == timestampRules.hasConst()) {
                if ((!hasConst() || getConst().equals(timestampRules.getConst())) && hasLt() == timestampRules.hasLt()) {
                    if ((!hasLt() || getLt().equals(timestampRules.getLt())) && hasLte() == timestampRules.hasLte()) {
                        if ((!hasLte() || getLte().equals(timestampRules.getLte())) && hasGt() == timestampRules.hasGt()) {
                            if ((!hasGt() || getGt().equals(timestampRules.getGt())) && hasGte() == timestampRules.hasGte()) {
                                if ((!hasGte() || getGte().equals(timestampRules.getGte())) && hasLtNow() == timestampRules.hasLtNow()) {
                                    if ((!hasLtNow() || getLtNow() == timestampRules.getLtNow()) && hasGtNow() == timestampRules.hasGtNow()) {
                                        if ((!hasGtNow() || getGtNow() == timestampRules.getGtNow()) && hasWithin() == timestampRules.hasWithin()) {
                                            return (!hasWithin() || getWithin().equals(timestampRules.getWithin())) && this.unknownFields.equals(timestampRules.unknownFields);
                                        }
                                        return false;
                                    }
                                    return false;
                                }
                                return false;
                            }
                            return false;
                        }
                        return false;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }

        public Timestamp getConst() {
            Timestamp timestamp = this.const_;
            return timestamp == null ? Timestamp.getDefaultInstance() : timestamp;
        }

        public z2 getConstOrBuilder() {
            Timestamp timestamp = this.const_;
            return timestamp == null ? Timestamp.getDefaultInstance() : timestamp;
        }

        public Timestamp getGt() {
            Timestamp timestamp = this.gt_;
            return timestamp == null ? Timestamp.getDefaultInstance() : timestamp;
        }

        public boolean getGtNow() {
            return this.gtNow_;
        }

        public z2 getGtOrBuilder() {
            Timestamp timestamp = this.gt_;
            return timestamp == null ? Timestamp.getDefaultInstance() : timestamp;
        }

        public Timestamp getGte() {
            Timestamp timestamp = this.gte_;
            return timestamp == null ? Timestamp.getDefaultInstance() : timestamp;
        }

        public z2 getGteOrBuilder() {
            Timestamp timestamp = this.gte_;
            return timestamp == null ? Timestamp.getDefaultInstance() : timestamp;
        }

        public Timestamp getLt() {
            Timestamp timestamp = this.lt_;
            return timestamp == null ? Timestamp.getDefaultInstance() : timestamp;
        }

        public boolean getLtNow() {
            return this.ltNow_;
        }

        public z2 getLtOrBuilder() {
            Timestamp timestamp = this.lt_;
            return timestamp == null ? Timestamp.getDefaultInstance() : timestamp;
        }

        public Timestamp getLte() {
            Timestamp timestamp = this.lte_;
            return timestamp == null ? Timestamp.getDefaultInstance() : timestamp;
        }

        public z2 getLteOrBuilder() {
            Timestamp timestamp = this.lte_;
            return timestamp == null ? Timestamp.getDefaultInstance() : timestamp;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<TimestampRules> getParserForType() {
            return PARSER;
        }

        public boolean getRequired() {
            return this.required_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int e10 = (this.bitField0_ & 1) != 0 ? 0 + CodedOutputStream.e(1, this.required_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                e10 += CodedOutputStream.G(2, getConst());
            }
            if ((this.bitField0_ & 4) != 0) {
                e10 += CodedOutputStream.G(3, getLt());
            }
            if ((this.bitField0_ & 8) != 0) {
                e10 += CodedOutputStream.G(4, getLte());
            }
            if ((this.bitField0_ & 16) != 0) {
                e10 += CodedOutputStream.G(5, getGt());
            }
            if ((this.bitField0_ & 32) != 0) {
                e10 += CodedOutputStream.G(6, getGte());
            }
            if ((this.bitField0_ & 64) != 0) {
                e10 += CodedOutputStream.e(7, this.ltNow_);
            }
            if ((this.bitField0_ & 128) != 0) {
                e10 += CodedOutputStream.e(8, this.gtNow_);
            }
            if ((this.bitField0_ & 256) != 0) {
                e10 += CodedOutputStream.G(9, getWithin());
            }
            int serializedSize = e10 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public Duration getWithin() {
            Duration duration = this.within_;
            return duration == null ? Duration.getDefaultInstance() : duration;
        }

        public com.google.protobuf.v getWithinOrBuilder() {
            Duration duration = this.within_;
            return duration == null ? Duration.getDefaultInstance() : duration;
        }

        public boolean hasConst() {
            return (this.bitField0_ & 2) != 0;
        }

        public boolean hasGt() {
            return (this.bitField0_ & 16) != 0;
        }

        public boolean hasGtNow() {
            return (this.bitField0_ & 128) != 0;
        }

        public boolean hasGte() {
            return (this.bitField0_ & 32) != 0;
        }

        public boolean hasLt() {
            return (this.bitField0_ & 4) != 0;
        }

        public boolean hasLtNow() {
            return (this.bitField0_ & 64) != 0;
        }

        public boolean hasLte() {
            return (this.bitField0_ & 8) != 0;
        }

        public boolean hasRequired() {
            return (this.bitField0_ & 1) != 0;
        }

        public boolean hasWithin() {
            return (this.bitField0_ & 256) != 0;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (hasRequired()) {
                hashCode = (((hashCode * 37) + 1) * 53) + u0.d(getRequired());
            }
            if (hasConst()) {
                hashCode = (((hashCode * 37) + 2) * 53) + getConst().hashCode();
            }
            if (hasLt()) {
                hashCode = (((hashCode * 37) + 3) * 53) + getLt().hashCode();
            }
            if (hasLte()) {
                hashCode = (((hashCode * 37) + 4) * 53) + getLte().hashCode();
            }
            if (hasGt()) {
                hashCode = (((hashCode * 37) + 5) * 53) + getGt().hashCode();
            }
            if (hasGte()) {
                hashCode = (((hashCode * 37) + 6) * 53) + getGte().hashCode();
            }
            if (hasLtNow()) {
                hashCode = (((hashCode * 37) + 7) * 53) + u0.d(getLtNow());
            }
            if (hasGtNow()) {
                hashCode = (((hashCode * 37) + 8) * 53) + u0.d(getGtNow());
            }
            if (hasWithin()) {
                hashCode = (((hashCode * 37) + 9) * 53) + getWithin().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return Validate.W.d(TimestampRules.class, b.class);
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
            return new TimestampRules();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if ((this.bitField0_ & 1) != 0) {
                codedOutputStream.n0(1, this.required_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.L0(2, getConst());
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.L0(3, getLt());
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.L0(4, getLte());
            }
            if ((this.bitField0_ & 16) != 0) {
                codedOutputStream.L0(5, getGt());
            }
            if ((this.bitField0_ & 32) != 0) {
                codedOutputStream.L0(6, getGte());
            }
            if ((this.bitField0_ & 64) != 0) {
                codedOutputStream.n0(7, this.ltNow_);
            }
            if ((this.bitField0_ & 128) != 0) {
                codedOutputStream.n0(8, this.gtNow_);
            }
            if ((this.bitField0_ & 256) != 0) {
                codedOutputStream.L0(9, getWithin());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ TimestampRules(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(TimestampRules timestampRules) {
            return DEFAULT_INSTANCE.toBuilder().u0(timestampRules);
        }

        public static TimestampRules parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private TimestampRules(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static TimestampRules parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (TimestampRules) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static TimestampRules parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public TimestampRules getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).u0(this);
        }

        public static TimestampRules parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private TimestampRules() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static TimestampRules parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static TimestampRules parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        private TimestampRules(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                if (L == 18) {
                                    Timestamp.b builder = (this.bitField0_ & 2) != 0 ? this.const_.toBuilder() : null;
                                    Timestamp timestamp = (Timestamp) pVar.B(Timestamp.parser(), f0Var);
                                    this.const_ = timestamp;
                                    if (builder != null) {
                                        builder.g0(timestamp);
                                        this.const_ = builder.I();
                                    }
                                    this.bitField0_ |= 2;
                                } else if (L == 26) {
                                    Timestamp.b builder2 = (this.bitField0_ & 4) != 0 ? this.lt_.toBuilder() : null;
                                    Timestamp timestamp2 = (Timestamp) pVar.B(Timestamp.parser(), f0Var);
                                    this.lt_ = timestamp2;
                                    if (builder2 != null) {
                                        builder2.g0(timestamp2);
                                        this.lt_ = builder2.I();
                                    }
                                    this.bitField0_ |= 4;
                                } else if (L == 34) {
                                    Timestamp.b builder3 = (this.bitField0_ & 8) != 0 ? this.lte_.toBuilder() : null;
                                    Timestamp timestamp3 = (Timestamp) pVar.B(Timestamp.parser(), f0Var);
                                    this.lte_ = timestamp3;
                                    if (builder3 != null) {
                                        builder3.g0(timestamp3);
                                        this.lte_ = builder3.I();
                                    }
                                    this.bitField0_ |= 8;
                                } else if (L == 42) {
                                    Timestamp.b builder4 = (this.bitField0_ & 16) != 0 ? this.gt_.toBuilder() : null;
                                    Timestamp timestamp4 = (Timestamp) pVar.B(Timestamp.parser(), f0Var);
                                    this.gt_ = timestamp4;
                                    if (builder4 != null) {
                                        builder4.g0(timestamp4);
                                        this.gt_ = builder4.I();
                                    }
                                    this.bitField0_ |= 16;
                                } else if (L == 50) {
                                    Timestamp.b builder5 = (this.bitField0_ & 32) != 0 ? this.gte_.toBuilder() : null;
                                    Timestamp timestamp5 = (Timestamp) pVar.B(Timestamp.parser(), f0Var);
                                    this.gte_ = timestamp5;
                                    if (builder5 != null) {
                                        builder5.g0(timestamp5);
                                        this.gte_ = builder5.I();
                                    }
                                    this.bitField0_ |= 32;
                                } else if (L == 56) {
                                    this.bitField0_ |= 64;
                                    this.ltNow_ = pVar.r();
                                } else if (L == 64) {
                                    this.bitField0_ |= 128;
                                    this.gtNow_ = pVar.r();
                                } else if (L != 74) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    Duration.b builder6 = (this.bitField0_ & 256) != 0 ? this.within_.toBuilder() : null;
                                    Duration duration = (Duration) pVar.B(Duration.parser(), f0Var);
                                    this.within_ = duration;
                                    if (builder6 != null) {
                                        builder6.e0(duration);
                                        this.within_ = builder6.I();
                                    }
                                    this.bitField0_ |= 256;
                                }
                            } else {
                                this.bitField0_ |= 1;
                                this.required_ = pVar.r();
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

        public static TimestampRules parseFrom(InputStream inputStream) throws IOException {
            return (TimestampRules) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static TimestampRules parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (TimestampRules) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static TimestampRules parseFrom(com.google.protobuf.p pVar) throws IOException {
            return (TimestampRules) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static TimestampRules parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
            return (TimestampRules) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes5.dex */
    public static final class UInt32Rules extends GeneratedMessageV3 implements w {
        public static final int CONST_FIELD_NUMBER = 1;
        public static final int GTE_FIELD_NUMBER = 5;
        public static final int GT_FIELD_NUMBER = 4;
        public static final int IN_FIELD_NUMBER = 6;
        public static final int LTE_FIELD_NUMBER = 3;
        public static final int LT_FIELD_NUMBER = 2;
        public static final int NOT_IN_FIELD_NUMBER = 7;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private int const_;
        private int gt_;
        private int gte_;
        private u0.g in_;
        private int lt_;
        private int lte_;
        private byte memoizedIsInitialized;
        private u0.g notIn_;
        private static final UInt32Rules DEFAULT_INSTANCE = new UInt32Rules();
        @Deprecated
        public static final e2<UInt32Rules> PARSER = new a();

        /* loaded from: classes5.dex */
        class a extends com.google.protobuf.c<UInt32Rules> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public UInt32Rules m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new UInt32Rules(pVar, f0Var, null);
            }
        }

        /* loaded from: classes5.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements w {

            /* renamed from: e  reason: collision with root package name */
            private int f50798e;

            /* renamed from: f  reason: collision with root package name */
            private int f50799f;

            /* renamed from: g  reason: collision with root package name */
            private int f50800g;

            /* renamed from: h  reason: collision with root package name */
            private int f50801h;

            /* renamed from: i  reason: collision with root package name */
            private int f50802i;

            /* renamed from: j  reason: collision with root package name */
            private int f50803j;

            /* renamed from: k  reason: collision with root package name */
            private u0.g f50804k;

            /* renamed from: l  reason: collision with root package name */
            private u0.g f50805l;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void a0() {
                if ((this.f50798e & 32) == 0) {
                    this.f50804k = GeneratedMessageV3.mutableCopy(this.f50804k);
                    this.f50798e |= 32;
                }
            }

            private void b0() {
                if ((this.f50798e & 64) == 0) {
                    this.f50805l = GeneratedMessageV3.mutableCopy(this.f50805l);
                    this.f50798e |= 64;
                }
            }

            private void e0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return Validate.f50593o.d(UInt32Rules.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public UInt32Rules build() {
                UInt32Rules I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public UInt32Rules I() {
                int i9;
                UInt32Rules uInt32Rules = new UInt32Rules(this, (a) null);
                int i10 = this.f50798e;
                if ((i10 & 1) != 0) {
                    uInt32Rules.const_ = this.f50799f;
                    i9 = 1;
                } else {
                    i9 = 0;
                }
                if ((i10 & 2) != 0) {
                    uInt32Rules.lt_ = this.f50800g;
                    i9 |= 2;
                }
                if ((i10 & 4) != 0) {
                    uInt32Rules.lte_ = this.f50801h;
                    i9 |= 4;
                }
                if ((i10 & 8) != 0) {
                    uInt32Rules.gt_ = this.f50802i;
                    i9 |= 8;
                }
                if ((i10 & 16) != 0) {
                    uInt32Rules.gte_ = this.f50803j;
                    i9 |= 16;
                }
                if ((this.f50798e & 32) != 0) {
                    this.f50804k.C();
                    this.f50798e &= -33;
                }
                uInt32Rules.in_ = this.f50804k;
                if ((this.f50798e & 64) != 0) {
                    this.f50805l.C();
                    this.f50798e &= -65;
                }
                uInt32Rules.notIn_ = this.f50805l;
                uInt32Rules.bitField0_ = i9;
                Q();
                return uInt32Rules;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: d0 */
            public UInt32Rules getDefaultInstanceForType() {
                return UInt32Rules.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0021  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: g0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.UInt32Rules.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2<io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$UInt32Rules> r1 = io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.UInt32Rules.PARSER     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$UInt32Rules r3 = (io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.UInt32Rules) r3     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    if (r3 == 0) goto Le
                    r2.i0(r3)
                Le:
                    return r2
                Lf:
                    r3 = move-exception
                    goto L1f
                L11:
                    r3 = move-exception
                    com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> Lf
                    io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$UInt32Rules r4 = (io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.UInt32Rules) r4     // Catch: java.lang.Throwable -> Lf
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1d
                    throw r3     // Catch: java.lang.Throwable -> L1d
                L1d:
                    r3 = move-exception
                    r0 = r4
                L1f:
                    if (r0 == 0) goto L24
                    r2.i0(r0)
                L24:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.UInt32Rules.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$UInt32Rules$b");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return Validate.f50592n;
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: h0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof UInt32Rules) {
                    return i0((UInt32Rules) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b i0(UInt32Rules uInt32Rules) {
                if (uInt32Rules == UInt32Rules.getDefaultInstance()) {
                    return this;
                }
                if (uInt32Rules.hasConst()) {
                    k0(uInt32Rules.getConst());
                }
                if (uInt32Rules.hasLt()) {
                    o0(uInt32Rules.getLt());
                }
                if (uInt32Rules.hasLte()) {
                    q0(uInt32Rules.getLte());
                }
                if (uInt32Rules.hasGt()) {
                    m0(uInt32Rules.getGt());
                }
                if (uInt32Rules.hasGte()) {
                    n0(uInt32Rules.getGte());
                }
                if (!uInt32Rules.in_.isEmpty()) {
                    if (this.f50804k.isEmpty()) {
                        this.f50804k = uInt32Rules.in_;
                        this.f50798e &= -33;
                    } else {
                        a0();
                        this.f50804k.addAll(uInt32Rules.in_);
                    }
                    R();
                }
                if (!uInt32Rules.notIn_.isEmpty()) {
                    if (this.f50805l.isEmpty()) {
                        this.f50805l = uInt32Rules.notIn_;
                        this.f50798e &= -65;
                    } else {
                        b0();
                        this.f50805l.addAll(uInt32Rules.notIn_);
                    }
                    R();
                }
                z(((GeneratedMessageV3) uInt32Rules).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: j0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            public b k0(int i9) {
                this.f50798e |= 1;
                this.f50799f = i9;
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: l0 */
            public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.c(fieldDescriptor, obj);
            }

            public b m0(int i9) {
                this.f50798e |= 8;
                this.f50802i = i9;
                R();
                return this;
            }

            public b n0(int i9) {
                this.f50798e |= 16;
                this.f50803j = i9;
                R();
                return this;
            }

            public b o0(int i9) {
                this.f50798e |= 2;
                this.f50800g = i9;
                R();
                return this;
            }

            public b q0(int i9) {
                this.f50798e |= 4;
                this.f50801h = i9;
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: r0 */
            public final b f1(h3 h3Var) {
                return (b) super.f1(h3Var);
            }

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                this.f50804k = UInt32Rules.access$12500();
                this.f50805l = UInt32Rules.access$12800();
                e0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f50804k = UInt32Rules.access$12500();
                this.f50805l = UInt32Rules.access$12800();
                e0();
            }
        }

        /* synthetic */ UInt32Rules(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        static /* synthetic */ u0.g access$12500() {
            return GeneratedMessageV3.emptyIntList();
        }

        static /* synthetic */ u0.g access$12800() {
            return GeneratedMessageV3.emptyIntList();
        }

        public static UInt32Rules getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return Validate.f50592n;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static UInt32Rules parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (UInt32Rules) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static UInt32Rules parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<UInt32Rules> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof UInt32Rules)) {
                return super.equals(obj);
            }
            UInt32Rules uInt32Rules = (UInt32Rules) obj;
            if (hasConst() != uInt32Rules.hasConst()) {
                return false;
            }
            if ((!hasConst() || getConst() == uInt32Rules.getConst()) && hasLt() == uInt32Rules.hasLt()) {
                if ((!hasLt() || getLt() == uInt32Rules.getLt()) && hasLte() == uInt32Rules.hasLte()) {
                    if ((!hasLte() || getLte() == uInt32Rules.getLte()) && hasGt() == uInt32Rules.hasGt()) {
                        if ((!hasGt() || getGt() == uInt32Rules.getGt()) && hasGte() == uInt32Rules.hasGte()) {
                            return (!hasGte() || getGte() == uInt32Rules.getGte()) && getInList().equals(uInt32Rules.getInList()) && getNotInList().equals(uInt32Rules.getNotInList()) && this.unknownFields.equals(uInt32Rules.unknownFields);
                        }
                        return false;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }

        public int getConst() {
            return this.const_;
        }

        public int getGt() {
            return this.gt_;
        }

        public int getGte() {
            return this.gte_;
        }

        public int getIn(int i9) {
            return this.in_.getInt(i9);
        }

        public int getInCount() {
            return this.in_.size();
        }

        public List<Integer> getInList() {
            return this.in_;
        }

        public int getLt() {
            return this.lt_;
        }

        public int getLte() {
            return this.lte_;
        }

        public int getNotIn(int i9) {
            return this.notIn_.getInt(i9);
        }

        public int getNotInCount() {
            return this.notIn_.size();
        }

        public List<Integer> getNotInList() {
            return this.notIn_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<UInt32Rules> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int Y = (this.bitField0_ & 1) != 0 ? CodedOutputStream.Y(1, this.const_) + 0 : 0;
            if ((this.bitField0_ & 2) != 0) {
                Y += CodedOutputStream.Y(2, this.lt_);
            }
            if ((this.bitField0_ & 4) != 0) {
                Y += CodedOutputStream.Y(3, this.lte_);
            }
            if ((this.bitField0_ & 8) != 0) {
                Y += CodedOutputStream.Y(4, this.gt_);
            }
            if ((this.bitField0_ & 16) != 0) {
                Y += CodedOutputStream.Y(5, this.gte_);
            }
            int i10 = 0;
            for (int i11 = 0; i11 < this.in_.size(); i11++) {
                i10 += CodedOutputStream.Z(this.in_.getInt(i11));
            }
            int size = Y + i10 + (getInList().size() * 1);
            int i12 = 0;
            for (int i13 = 0; i13 < this.notIn_.size(); i13++) {
                i12 += CodedOutputStream.Z(this.notIn_.getInt(i13));
            }
            int size2 = size + i12 + (getNotInList().size() * 1) + this.unknownFields.getSerializedSize();
            this.memoizedSize = size2;
            return size2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasConst() {
            return (this.bitField0_ & 1) != 0;
        }

        public boolean hasGt() {
            return (this.bitField0_ & 8) != 0;
        }

        public boolean hasGte() {
            return (this.bitField0_ & 16) != 0;
        }

        public boolean hasLt() {
            return (this.bitField0_ & 2) != 0;
        }

        public boolean hasLte() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (hasConst()) {
                hashCode = (((hashCode * 37) + 1) * 53) + getConst();
            }
            if (hasLt()) {
                hashCode = (((hashCode * 37) + 2) * 53) + getLt();
            }
            if (hasLte()) {
                hashCode = (((hashCode * 37) + 3) * 53) + getLte();
            }
            if (hasGt()) {
                hashCode = (((hashCode * 37) + 4) * 53) + getGt();
            }
            if (hasGte()) {
                hashCode = (((hashCode * 37) + 5) * 53) + getGte();
            }
            if (getInCount() > 0) {
                hashCode = (((hashCode * 37) + 6) * 53) + getInList().hashCode();
            }
            if (getNotInCount() > 0) {
                hashCode = (((hashCode * 37) + 7) * 53) + getNotInList().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return Validate.f50593o.d(UInt32Rules.class, b.class);
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
            return new UInt32Rules();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if ((this.bitField0_ & 1) != 0) {
                codedOutputStream.c1(1, this.const_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.c1(2, this.lt_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.c1(3, this.lte_);
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.c1(4, this.gt_);
            }
            if ((this.bitField0_ & 16) != 0) {
                codedOutputStream.c1(5, this.gte_);
            }
            for (int i9 = 0; i9 < this.in_.size(); i9++) {
                codedOutputStream.c1(6, this.in_.getInt(i9));
            }
            for (int i10 = 0; i10 < this.notIn_.size(); i10++) {
                codedOutputStream.c1(7, this.notIn_.getInt(i10));
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ UInt32Rules(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(UInt32Rules uInt32Rules) {
            return DEFAULT_INSTANCE.toBuilder().i0(uInt32Rules);
        }

        public static UInt32Rules parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private UInt32Rules(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static UInt32Rules parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (UInt32Rules) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static UInt32Rules parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public UInt32Rules getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).i0(this);
        }

        public static UInt32Rules parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private UInt32Rules() {
            this.memoizedIsInitialized = (byte) -1;
            this.in_ = GeneratedMessageV3.emptyIntList();
            this.notIn_ = GeneratedMessageV3.emptyIntList();
        }

        public static UInt32Rules parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static UInt32Rules parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static UInt32Rules parseFrom(InputStream inputStream) throws IOException {
            return (UInt32Rules) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private UInt32Rules(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            this();
            Objects.requireNonNull(f0Var);
            h3.b h10 = h3.h();
            boolean z10 = false;
            boolean z11 = false;
            while (!z10) {
                try {
                    try {
                        try {
                            int L = pVar.L();
                            if (L != 0) {
                                if (L == 8) {
                                    this.bitField0_ |= 1;
                                    this.const_ = pVar.M();
                                } else if (L == 16) {
                                    this.bitField0_ |= 2;
                                    this.lt_ = pVar.M();
                                } else if (L == 24) {
                                    this.bitField0_ |= 4;
                                    this.lte_ = pVar.M();
                                } else if (L == 32) {
                                    this.bitField0_ |= 8;
                                    this.gt_ = pVar.M();
                                } else if (L == 40) {
                                    this.bitField0_ |= 16;
                                    this.gte_ = pVar.M();
                                } else if (L == 48) {
                                    if (!(z11 & true)) {
                                        this.in_ = GeneratedMessageV3.newIntList();
                                        z11 |= true;
                                    }
                                    this.in_.D0(pVar.M());
                                } else if (L == 50) {
                                    int q10 = pVar.q(pVar.D());
                                    if (!(z11 & true) && pVar.e() > 0) {
                                        this.in_ = GeneratedMessageV3.newIntList();
                                        z11 |= true;
                                    }
                                    while (pVar.e() > 0) {
                                        this.in_.D0(pVar.M());
                                    }
                                    pVar.p(q10);
                                } else if (L == 56) {
                                    if (!(z11 & true)) {
                                        this.notIn_ = GeneratedMessageV3.newIntList();
                                        z11 |= true;
                                    }
                                    this.notIn_.D0(pVar.M());
                                } else if (L != 58) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    int q11 = pVar.q(pVar.D());
                                    if (!(z11 & true) && pVar.e() > 0) {
                                        this.notIn_ = GeneratedMessageV3.newIntList();
                                        z11 |= true;
                                    }
                                    while (pVar.e() > 0) {
                                        this.notIn_.D0(pVar.M());
                                    }
                                    pVar.p(q11);
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
                    if (z11 & true) {
                        this.in_.C();
                    }
                    if (z11 & true) {
                        this.notIn_.C();
                    }
                    this.unknownFields = h10.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static UInt32Rules parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (UInt32Rules) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static UInt32Rules parseFrom(com.google.protobuf.p pVar) throws IOException {
            return (UInt32Rules) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static UInt32Rules parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
            return (UInt32Rules) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes5.dex */
    public static final class UInt64Rules extends GeneratedMessageV3 implements x {
        public static final int CONST_FIELD_NUMBER = 1;
        public static final int GTE_FIELD_NUMBER = 5;
        public static final int GT_FIELD_NUMBER = 4;
        public static final int IN_FIELD_NUMBER = 6;
        public static final int LTE_FIELD_NUMBER = 3;
        public static final int LT_FIELD_NUMBER = 2;
        public static final int NOT_IN_FIELD_NUMBER = 7;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private long const_;
        private long gt_;
        private long gte_;
        private u0.i in_;
        private long lt_;
        private long lte_;
        private byte memoizedIsInitialized;
        private u0.i notIn_;
        private static final UInt64Rules DEFAULT_INSTANCE = new UInt64Rules();
        @Deprecated
        public static final e2<UInt64Rules> PARSER = new a();

        /* loaded from: classes5.dex */
        class a extends com.google.protobuf.c<UInt64Rules> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public UInt64Rules m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new UInt64Rules(pVar, f0Var, null);
            }
        }

        /* loaded from: classes5.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements x {

            /* renamed from: e  reason: collision with root package name */
            private int f50806e;

            /* renamed from: f  reason: collision with root package name */
            private long f50807f;

            /* renamed from: g  reason: collision with root package name */
            private long f50808g;

            /* renamed from: h  reason: collision with root package name */
            private long f50809h;

            /* renamed from: i  reason: collision with root package name */
            private long f50810i;

            /* renamed from: j  reason: collision with root package name */
            private long f50811j;

            /* renamed from: k  reason: collision with root package name */
            private u0.i f50812k;

            /* renamed from: l  reason: collision with root package name */
            private u0.i f50813l;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void a0() {
                if ((this.f50806e & 32) == 0) {
                    this.f50812k = GeneratedMessageV3.mutableCopy(this.f50812k);
                    this.f50806e |= 32;
                }
            }

            private void b0() {
                if ((this.f50806e & 64) == 0) {
                    this.f50813l = GeneratedMessageV3.mutableCopy(this.f50813l);
                    this.f50806e |= 64;
                }
            }

            private void e0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return Validate.f50595q.d(UInt64Rules.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public UInt64Rules build() {
                UInt64Rules I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public UInt64Rules I() {
                int i9;
                UInt64Rules uInt64Rules = new UInt64Rules(this, (a) null);
                int i10 = this.f50806e;
                if ((i10 & 1) != 0) {
                    uInt64Rules.const_ = this.f50807f;
                    i9 = 1;
                } else {
                    i9 = 0;
                }
                if ((i10 & 2) != 0) {
                    uInt64Rules.lt_ = this.f50808g;
                    i9 |= 2;
                }
                if ((i10 & 4) != 0) {
                    uInt64Rules.lte_ = this.f50809h;
                    i9 |= 4;
                }
                if ((i10 & 8) != 0) {
                    uInt64Rules.gt_ = this.f50810i;
                    i9 |= 8;
                }
                if ((i10 & 16) != 0) {
                    uInt64Rules.gte_ = this.f50811j;
                    i9 |= 16;
                }
                if ((this.f50806e & 32) != 0) {
                    this.f50812k.C();
                    this.f50806e &= -33;
                }
                uInt64Rules.in_ = this.f50812k;
                if ((this.f50806e & 64) != 0) {
                    this.f50813l.C();
                    this.f50806e &= -65;
                }
                uInt64Rules.notIn_ = this.f50813l;
                uInt64Rules.bitField0_ = i9;
                Q();
                return uInt64Rules;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: d0 */
            public UInt64Rules getDefaultInstanceForType() {
                return UInt64Rules.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0021  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: g0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.UInt64Rules.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2<io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$UInt64Rules> r1 = io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.UInt64Rules.PARSER     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$UInt64Rules r3 = (io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.UInt64Rules) r3     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    if (r3 == 0) goto Le
                    r2.i0(r3)
                Le:
                    return r2
                Lf:
                    r3 = move-exception
                    goto L1f
                L11:
                    r3 = move-exception
                    com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> Lf
                    io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$UInt64Rules r4 = (io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.UInt64Rules) r4     // Catch: java.lang.Throwable -> Lf
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1d
                    throw r3     // Catch: java.lang.Throwable -> L1d
                L1d:
                    r3 = move-exception
                    r0 = r4
                L1f:
                    if (r0 == 0) goto L24
                    r2.i0(r0)
                L24:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate.UInt64Rules.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate$UInt64Rules$b");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return Validate.f50594p;
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: h0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof UInt64Rules) {
                    return i0((UInt64Rules) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b i0(UInt64Rules uInt64Rules) {
                if (uInt64Rules == UInt64Rules.getDefaultInstance()) {
                    return this;
                }
                if (uInt64Rules.hasConst()) {
                    k0(uInt64Rules.getConst());
                }
                if (uInt64Rules.hasLt()) {
                    o0(uInt64Rules.getLt());
                }
                if (uInt64Rules.hasLte()) {
                    q0(uInt64Rules.getLte());
                }
                if (uInt64Rules.hasGt()) {
                    m0(uInt64Rules.getGt());
                }
                if (uInt64Rules.hasGte()) {
                    n0(uInt64Rules.getGte());
                }
                if (!uInt64Rules.in_.isEmpty()) {
                    if (this.f50812k.isEmpty()) {
                        this.f50812k = uInt64Rules.in_;
                        this.f50806e &= -33;
                    } else {
                        a0();
                        this.f50812k.addAll(uInt64Rules.in_);
                    }
                    R();
                }
                if (!uInt64Rules.notIn_.isEmpty()) {
                    if (this.f50813l.isEmpty()) {
                        this.f50813l = uInt64Rules.notIn_;
                        this.f50806e &= -65;
                    } else {
                        b0();
                        this.f50813l.addAll(uInt64Rules.notIn_);
                    }
                    R();
                }
                z(((GeneratedMessageV3) uInt64Rules).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: j0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            public b k0(long j10) {
                this.f50806e |= 1;
                this.f50807f = j10;
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: l0 */
            public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.c(fieldDescriptor, obj);
            }

            public b m0(long j10) {
                this.f50806e |= 8;
                this.f50810i = j10;
                R();
                return this;
            }

            public b n0(long j10) {
                this.f50806e |= 16;
                this.f50811j = j10;
                R();
                return this;
            }

            public b o0(long j10) {
                this.f50806e |= 2;
                this.f50808g = j10;
                R();
                return this;
            }

            public b q0(long j10) {
                this.f50806e |= 4;
                this.f50809h = j10;
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: r0 */
            public final b f1(h3 h3Var) {
                return (b) super.f1(h3Var);
            }

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                this.f50812k = UInt64Rules.access$14900();
                this.f50813l = UInt64Rules.access$15200();
                e0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f50812k = UInt64Rules.access$14900();
                this.f50813l = UInt64Rules.access$15200();
                e0();
            }
        }

        /* synthetic */ UInt64Rules(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        static /* synthetic */ u0.i access$14900() {
            return GeneratedMessageV3.emptyLongList();
        }

        static /* synthetic */ u0.i access$15200() {
            return GeneratedMessageV3.emptyLongList();
        }

        public static UInt64Rules getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return Validate.f50594p;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static UInt64Rules parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (UInt64Rules) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static UInt64Rules parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<UInt64Rules> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof UInt64Rules)) {
                return super.equals(obj);
            }
            UInt64Rules uInt64Rules = (UInt64Rules) obj;
            if (hasConst() != uInt64Rules.hasConst()) {
                return false;
            }
            if ((!hasConst() || getConst() == uInt64Rules.getConst()) && hasLt() == uInt64Rules.hasLt()) {
                if ((!hasLt() || getLt() == uInt64Rules.getLt()) && hasLte() == uInt64Rules.hasLte()) {
                    if ((!hasLte() || getLte() == uInt64Rules.getLte()) && hasGt() == uInt64Rules.hasGt()) {
                        if ((!hasGt() || getGt() == uInt64Rules.getGt()) && hasGte() == uInt64Rules.hasGte()) {
                            return (!hasGte() || getGte() == uInt64Rules.getGte()) && getInList().equals(uInt64Rules.getInList()) && getNotInList().equals(uInt64Rules.getNotInList()) && this.unknownFields.equals(uInt64Rules.unknownFields);
                        }
                        return false;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }

        public long getConst() {
            return this.const_;
        }

        public long getGt() {
            return this.gt_;
        }

        public long getGte() {
            return this.gte_;
        }

        public long getIn(int i9) {
            return this.in_.getLong(i9);
        }

        public int getInCount() {
            return this.in_.size();
        }

        public List<Long> getInList() {
            return this.in_;
        }

        public long getLt() {
            return this.lt_;
        }

        public long getLte() {
            return this.lte_;
        }

        public long getNotIn(int i9) {
            return this.notIn_.getLong(i9);
        }

        public int getNotInCount() {
            return this.notIn_.size();
        }

        public List<Long> getNotInList() {
            return this.notIn_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<UInt64Rules> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int a02 = (this.bitField0_ & 1) != 0 ? CodedOutputStream.a0(1, this.const_) + 0 : 0;
            if ((this.bitField0_ & 2) != 0) {
                a02 += CodedOutputStream.a0(2, this.lt_);
            }
            if ((this.bitField0_ & 4) != 0) {
                a02 += CodedOutputStream.a0(3, this.lte_);
            }
            if ((this.bitField0_ & 8) != 0) {
                a02 += CodedOutputStream.a0(4, this.gt_);
            }
            if ((this.bitField0_ & 16) != 0) {
                a02 += CodedOutputStream.a0(5, this.gte_);
            }
            int i10 = 0;
            for (int i11 = 0; i11 < this.in_.size(); i11++) {
                i10 += CodedOutputStream.b0(this.in_.getLong(i11));
            }
            int size = a02 + i10 + (getInList().size() * 1);
            int i12 = 0;
            for (int i13 = 0; i13 < this.notIn_.size(); i13++) {
                i12 += CodedOutputStream.b0(this.notIn_.getLong(i13));
            }
            int size2 = size + i12 + (getNotInList().size() * 1) + this.unknownFields.getSerializedSize();
            this.memoizedSize = size2;
            return size2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasConst() {
            return (this.bitField0_ & 1) != 0;
        }

        public boolean hasGt() {
            return (this.bitField0_ & 8) != 0;
        }

        public boolean hasGte() {
            return (this.bitField0_ & 16) != 0;
        }

        public boolean hasLt() {
            return (this.bitField0_ & 2) != 0;
        }

        public boolean hasLte() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (hasConst()) {
                hashCode = (((hashCode * 37) + 1) * 53) + u0.i(getConst());
            }
            if (hasLt()) {
                hashCode = (((hashCode * 37) + 2) * 53) + u0.i(getLt());
            }
            if (hasLte()) {
                hashCode = (((hashCode * 37) + 3) * 53) + u0.i(getLte());
            }
            if (hasGt()) {
                hashCode = (((hashCode * 37) + 4) * 53) + u0.i(getGt());
            }
            if (hasGte()) {
                hashCode = (((hashCode * 37) + 5) * 53) + u0.i(getGte());
            }
            if (getInCount() > 0) {
                hashCode = (((hashCode * 37) + 6) * 53) + getInList().hashCode();
            }
            if (getNotInCount() > 0) {
                hashCode = (((hashCode * 37) + 7) * 53) + getNotInList().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return Validate.f50595q.d(UInt64Rules.class, b.class);
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
            return new UInt64Rules();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if ((this.bitField0_ & 1) != 0) {
                codedOutputStream.e1(1, this.const_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.e1(2, this.lt_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.e1(3, this.lte_);
            }
            if ((this.bitField0_ & 8) != 0) {
                codedOutputStream.e1(4, this.gt_);
            }
            if ((this.bitField0_ & 16) != 0) {
                codedOutputStream.e1(5, this.gte_);
            }
            for (int i9 = 0; i9 < this.in_.size(); i9++) {
                codedOutputStream.e1(6, this.in_.getLong(i9));
            }
            for (int i10 = 0; i10 < this.notIn_.size(); i10++) {
                codedOutputStream.e1(7, this.notIn_.getLong(i10));
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ UInt64Rules(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(UInt64Rules uInt64Rules) {
            return DEFAULT_INSTANCE.toBuilder().i0(uInt64Rules);
        }

        public static UInt64Rules parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private UInt64Rules(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static UInt64Rules parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (UInt64Rules) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static UInt64Rules parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public UInt64Rules getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).i0(this);
        }

        public static UInt64Rules parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private UInt64Rules() {
            this.memoizedIsInitialized = (byte) -1;
            this.in_ = GeneratedMessageV3.emptyLongList();
            this.notIn_ = GeneratedMessageV3.emptyLongList();
        }

        public static UInt64Rules parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static UInt64Rules parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static UInt64Rules parseFrom(InputStream inputStream) throws IOException {
            return (UInt64Rules) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private UInt64Rules(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            this();
            Objects.requireNonNull(f0Var);
            h3.b h10 = h3.h();
            boolean z10 = false;
            boolean z11 = false;
            while (!z10) {
                try {
                    try {
                        try {
                            int L = pVar.L();
                            if (L != 0) {
                                if (L == 8) {
                                    this.bitField0_ |= 1;
                                    this.const_ = pVar.N();
                                } else if (L == 16) {
                                    this.bitField0_ |= 2;
                                    this.lt_ = pVar.N();
                                } else if (L == 24) {
                                    this.bitField0_ |= 4;
                                    this.lte_ = pVar.N();
                                } else if (L == 32) {
                                    this.bitField0_ |= 8;
                                    this.gt_ = pVar.N();
                                } else if (L == 40) {
                                    this.bitField0_ |= 16;
                                    this.gte_ = pVar.N();
                                } else if (L == 48) {
                                    if (!(z11 & true)) {
                                        this.in_ = GeneratedMessageV3.newLongList();
                                        z11 |= true;
                                    }
                                    this.in_.I0(pVar.N());
                                } else if (L == 50) {
                                    int q10 = pVar.q(pVar.D());
                                    if (!(z11 & true) && pVar.e() > 0) {
                                        this.in_ = GeneratedMessageV3.newLongList();
                                        z11 |= true;
                                    }
                                    while (pVar.e() > 0) {
                                        this.in_.I0(pVar.N());
                                    }
                                    pVar.p(q10);
                                } else if (L == 56) {
                                    if (!(z11 & true)) {
                                        this.notIn_ = GeneratedMessageV3.newLongList();
                                        z11 |= true;
                                    }
                                    this.notIn_.I0(pVar.N());
                                } else if (L != 58) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    int q11 = pVar.q(pVar.D());
                                    if (!(z11 & true) && pVar.e() > 0) {
                                        this.notIn_ = GeneratedMessageV3.newLongList();
                                        z11 |= true;
                                    }
                                    while (pVar.e() > 0) {
                                        this.notIn_.I0(pVar.N());
                                    }
                                    pVar.p(q11);
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
                    if (z11 & true) {
                        this.in_.C();
                    }
                    if (z11 & true) {
                        this.notIn_.C();
                    }
                    this.unknownFields = h10.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static UInt64Rules parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (UInt64Rules) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static UInt64Rules parseFrom(com.google.protobuf.p pVar) throws IOException {
            return (UInt64Rules) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static UInt64Rules parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
            return (UInt64Rules) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f50814a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f50815b;

        /* renamed from: c  reason: collision with root package name */
        static final /* synthetic */ int[] f50816c;

        static {
            int[] iArr = new int[BytesRules.WellKnownCase.values().length];
            f50816c = iArr;
            try {
                iArr[BytesRules.WellKnownCase.IP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f50816c[BytesRules.WellKnownCase.IPV4.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f50816c[BytesRules.WellKnownCase.IPV6.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f50816c[BytesRules.WellKnownCase.WELLKNOWN_NOT_SET.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[StringRules.WellKnownCase.values().length];
            f50815b = iArr2;
            try {
                iArr2[StringRules.WellKnownCase.EMAIL.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f50815b[StringRules.WellKnownCase.HOSTNAME.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f50815b[StringRules.WellKnownCase.IP.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f50815b[StringRules.WellKnownCase.IPV4.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f50815b[StringRules.WellKnownCase.IPV6.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f50815b[StringRules.WellKnownCase.URI.ordinal()] = 6;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f50815b[StringRules.WellKnownCase.URI_REF.ordinal()] = 7;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f50815b[StringRules.WellKnownCase.ADDRESS.ordinal()] = 8;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f50815b[StringRules.WellKnownCase.UUID.ordinal()] = 9;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f50815b[StringRules.WellKnownCase.WELL_KNOWN_REGEX.ordinal()] = 10;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f50815b[StringRules.WellKnownCase.WELLKNOWN_NOT_SET.ordinal()] = 11;
            } catch (NoSuchFieldError unused15) {
            }
            int[] iArr3 = new int[FieldRules.TypeCase.values().length];
            f50814a = iArr3;
            try {
                iArr3[FieldRules.TypeCase.FLOAT.ordinal()] = 1;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f50814a[FieldRules.TypeCase.DOUBLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f50814a[FieldRules.TypeCase.INT32.ordinal()] = 3;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                f50814a[FieldRules.TypeCase.INT64.ordinal()] = 4;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f50814a[FieldRules.TypeCase.UINT32.ordinal()] = 5;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                f50814a[FieldRules.TypeCase.UINT64.ordinal()] = 6;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                f50814a[FieldRules.TypeCase.SINT32.ordinal()] = 7;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                f50814a[FieldRules.TypeCase.SINT64.ordinal()] = 8;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                f50814a[FieldRules.TypeCase.FIXED32.ordinal()] = 9;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                f50814a[FieldRules.TypeCase.FIXED64.ordinal()] = 10;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                f50814a[FieldRules.TypeCase.SFIXED32.ordinal()] = 11;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                f50814a[FieldRules.TypeCase.SFIXED64.ordinal()] = 12;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                f50814a[FieldRules.TypeCase.BOOL.ordinal()] = 13;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                f50814a[FieldRules.TypeCase.STRING.ordinal()] = 14;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                f50814a[FieldRules.TypeCase.BYTES.ordinal()] = 15;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                f50814a[FieldRules.TypeCase.ENUM.ordinal()] = 16;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                f50814a[FieldRules.TypeCase.REPEATED.ordinal()] = 17;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                f50814a[FieldRules.TypeCase.MAP.ordinal()] = 18;
            } catch (NoSuchFieldError unused33) {
            }
            try {
                f50814a[FieldRules.TypeCase.ANY.ordinal()] = 19;
            } catch (NoSuchFieldError unused34) {
            }
            try {
                f50814a[FieldRules.TypeCase.DURATION.ordinal()] = 20;
            } catch (NoSuchFieldError unused35) {
            }
            try {
                f50814a[FieldRules.TypeCase.TIMESTAMP.ordinal()] = 21;
            } catch (NoSuchFieldError unused36) {
            }
            try {
                f50814a[FieldRules.TypeCase.TYPE_NOT_SET.ordinal()] = 22;
            } catch (NoSuchFieldError unused37) {
            }
        }
    }

    /* loaded from: classes5.dex */
    public interface b extends r1 {
    }

    /* loaded from: classes5.dex */
    public interface c extends r1 {
    }

    /* loaded from: classes5.dex */
    public interface d extends r1 {
    }

    /* loaded from: classes5.dex */
    public interface e extends r1 {
    }

    /* loaded from: classes5.dex */
    public interface f extends r1 {
    }

    /* loaded from: classes5.dex */
    public interface g extends r1 {
    }

    /* loaded from: classes5.dex */
    public interface h extends r1 {
    }

    /* loaded from: classes5.dex */
    public interface i extends r1 {
    }

    /* loaded from: classes5.dex */
    public interface j extends r1 {
    }

    /* loaded from: classes5.dex */
    public interface k extends r1 {
    }

    /* loaded from: classes5.dex */
    public interface l extends r1 {
    }

    /* loaded from: classes5.dex */
    public interface m extends r1 {
    }

    /* loaded from: classes5.dex */
    public interface n extends r1 {
    }

    /* loaded from: classes5.dex */
    public interface o extends r1 {
    }

    /* loaded from: classes5.dex */
    public interface p extends r1 {
    }

    /* loaded from: classes5.dex */
    public interface q extends r1 {
    }

    /* loaded from: classes5.dex */
    public interface r extends r1 {
    }

    /* loaded from: classes5.dex */
    public interface s extends r1 {
    }

    /* loaded from: classes5.dex */
    public interface t extends r1 {
    }

    /* loaded from: classes5.dex */
    public interface u extends r1 {
    }

    /* loaded from: classes5.dex */
    public interface v extends r1 {
    }

    /* loaded from: classes5.dex */
    public interface w extends r1 {
    }

    /* loaded from: classes5.dex */
    public interface x extends r1 {
    }

    static {
        GeneratedMessage.l<DescriptorProtos.MessageOptions, Boolean> newFileScopedGeneratedExtension = GeneratedMessage.newFileScopedGeneratedExtension(Boolean.class, null);
        f50579a = newFileScopedGeneratedExtension;
        GeneratedMessage.l<DescriptorProtos.OneofOptions, Boolean> newFileScopedGeneratedExtension2 = GeneratedMessage.newFileScopedGeneratedExtension(Boolean.class, null);
        f50580b = newFileScopedGeneratedExtension2;
        GeneratedMessage.l<DescriptorProtos.FieldOptions, FieldRules> newFileScopedGeneratedExtension3 = GeneratedMessage.newFileScopedGeneratedExtension(FieldRules.class, FieldRules.getDefaultInstance());
        f50581c = newFileScopedGeneratedExtension3;
        X = Descriptors.FileDescriptor.s(new String[]{"\n\u0017validate/validate.proto\u0012\bvalidate\u001a google/protobuf/descriptor.proto\u001a\u001egoogle/protobuf/duration.proto\u001a\u001fgoogle/protobuf/timestamp.proto\"\u0098\u0007\n\nFieldRules\u0012'\n\u0007message\u0018\u0011 \u0001(\u000b2\u0016.validate.MessageRules\u0012%\n\u0005float\u0018\u0001 \u0001(\u000b2\u0014.validate.FloatRulesH\u0000\u0012'\n\u0006double\u0018\u0002 \u0001(\u000b2\u0015.validate.DoubleRulesH\u0000\u0012%\n\u0005int32\u0018\u0003 \u0001(\u000b2\u0014.validate.Int32RulesH\u0000\u0012%\n\u0005int64\u0018\u0004 \u0001(\u000b2\u0014.validate.Int64RulesH\u0000\u0012'\n\u0006uint32\u0018\u0005 \u0001(\u000b2\u0015.validate.UInt32RulesH\u0000\u0012'\n\u0006uint64\u0018\u0006 \u0001(\u000b2\u0015.validate.UInt64RulesH\u0000\u0012'\n\u0006sint32\u0018\u0007 \u0001(\u000b2\u0015.validate.SInt32RulesH\u0000\u0012'\n\u0006sint64\u0018\b \u0001(\u000b2\u0015.validate.SInt64RulesH\u0000\u0012)\n\u0007fixed32\u0018\t \u0001(\u000b2\u0016.validate.Fixed32RulesH\u0000\u0012)\n\u0007fixed64\u0018\n \u0001(\u000b2\u0016.validate.Fixed64RulesH\u0000\u0012+\n\bsfixed32\u0018\u000b \u0001(\u000b2\u0017.validate.SFixed32RulesH\u0000\u0012+\n\bsfixed64\u0018\f \u0001(\u000b2\u0017.validate.SFixed64RulesH\u0000\u0012#\n\u0004bool\u0018\r \u0001(\u000b2\u0013.validate.BoolRulesH\u0000\u0012'\n\u0006string\u0018\u000e \u0001(\u000b2\u0015.validate.StringRulesH\u0000\u0012%\n\u0005bytes\u0018\u000f \u0001(\u000b2\u0014.validate.BytesRulesH\u0000\u0012#\n\u0004enum\u0018\u0010 \u0001(\u000b2\u0013.validate.EnumRulesH\u0000\u0012+\n\brepeated\u0018\u0012 \u0001(\u000b2\u0017.validate.RepeatedRulesH\u0000\u0012!\n\u0003map\u0018\u0013 \u0001(\u000b2\u0012.validate.MapRulesH\u0000\u0012!\n\u0003any\u0018\u0014 \u0001(\u000b2\u0012.validate.AnyRulesH\u0000\u0012+\n\bduration\u0018\u0015 \u0001(\u000b2\u0017.validate.DurationRulesH\u0000\u0012-\n\ttimestamp\u0018\u0016 \u0001(\u000b2\u0018.validate.TimestampRulesH\u0000B\u0006\n\u0004type\"i\n\nFloatRules\u0012\r\n\u0005const\u0018\u0001 \u0001(\u0002\u0012\n\n\u0002lt\u0018\u0002 \u0001(\u0002\u0012\u000b\n\u0003lte\u0018\u0003 \u0001(\u0002\u0012\n\n\u0002gt\u0018\u0004 \u0001(\u0002\u0012\u000b\n\u0003gte\u0018\u0005 \u0001(\u0002\u0012\n\n\u0002in\u0018\u0006 \u0003(\u0002\u0012\u000e\n\u0006not_in\u0018\u0007 \u0003(\u0002\"j\n\u000bDoubleRules\u0012\r\n\u0005const\u0018\u0001 \u0001(\u0001\u0012\n\n\u0002lt\u0018\u0002 \u0001(\u0001\u0012\u000b\n\u0003lte\u0018\u0003 \u0001(\u0001\u0012\n\n\u0002gt\u0018\u0004 \u0001(\u0001\u0012\u000b\n\u0003gte\u0018\u0005 \u0001(\u0001\u0012\n\n\u0002in\u0018\u0006 \u0003(\u0001\u0012\u000e\n\u0006not_in\u0018\u0007 \u0003(\u0001\"i\n\nInt32Rules\u0012\r\n\u0005const\u0018\u0001 \u0001(\u0005\u0012\n\n\u0002lt\u0018\u0002 \u0001(\u0005\u0012\u000b\n\u0003lte\u0018\u0003 \u0001(\u0005\u0012\n\n\u0002gt\u0018\u0004 \u0001(\u0005\u0012\u000b\n\u0003gte\u0018\u0005 \u0001(\u0005\u0012\n\n\u0002in\u0018\u0006 \u0003(\u0005\u0012\u000e\n\u0006not_in\u0018\u0007 \u0003(\u0005\"i\n\nInt64Rules\u0012\r\n\u0005const\u0018\u0001 \u0001(\u0003\u0012\n\n\u0002lt\u0018\u0002 \u0001(\u0003\u0012\u000b\n\u0003lte\u0018\u0003 \u0001(\u0003\u0012\n\n\u0002gt\u0018\u0004 \u0001(\u0003\u0012\u000b\n\u0003gte\u0018\u0005 \u0001(\u0003\u0012\n\n\u0002in\u0018\u0006 \u0003(\u0003\u0012\u000e\n\u0006not_in\u0018\u0007 \u0003(\u0003\"j\n\u000bUInt32Rules\u0012\r\n\u0005const\u0018\u0001 \u0001(\r\u0012\n\n\u0002lt\u0018\u0002 \u0001(\r\u0012\u000b\n\u0003lte\u0018\u0003 \u0001(\r\u0012\n\n\u0002gt\u0018\u0004 \u0001(\r\u0012\u000b\n\u0003gte\u0018\u0005 \u0001(\r\u0012\n\n\u0002in\u0018\u0006 \u0003(\r\u0012\u000e\n\u0006not_in\u0018\u0007 \u0003(\r\"j\n\u000bUInt64Rules\u0012\r\n\u0005const\u0018\u0001 \u0001(\u0004\u0012\n\n\u0002lt\u0018\u0002 \u0001(\u0004\u0012\u000b\n\u0003lte\u0018\u0003 \u0001(\u0004\u0012\n\n\u0002gt\u0018\u0004 \u0001(\u0004\u0012\u000b\n\u0003gte\u0018\u0005 \u0001(\u0004\u0012\n\n\u0002in\u0018\u0006 \u0003(\u0004\u0012\u000e\n\u0006not_in\u0018\u0007 \u0003(\u0004\"j\n\u000bSInt32Rules\u0012\r\n\u0005const\u0018\u0001 \u0001(\u0011\u0012\n\n\u0002lt\u0018\u0002 \u0001(\u0011\u0012\u000b\n\u0003lte\u0018\u0003 \u0001(\u0011\u0012\n\n\u0002gt\u0018\u0004 \u0001(\u0011\u0012\u000b\n\u0003gte\u0018\u0005 \u0001(\u0011\u0012\n\n\u0002in\u0018\u0006 \u0003(\u0011\u0012\u000e\n\u0006not_in\u0018\u0007 \u0003(\u0011\"j\n\u000bSInt64Rules\u0012\r\n\u0005const\u0018\u0001 \u0001(\u0012\u0012\n\n\u0002lt\u0018\u0002 \u0001(\u0012\u0012\u000b\n\u0003lte\u0018\u0003 \u0001(\u0012\u0012\n\n\u0002gt\u0018\u0004 \u0001(\u0012\u0012\u000b\n\u0003gte\u0018\u0005 \u0001(\u0012\u0012\n\n\u0002in\u0018\u0006 \u0003(\u0012\u0012\u000e\n\u0006not_in\u0018\u0007 \u0003(\u0012\"k\n\fFixed32Rules\u0012\r\n\u0005const\u0018\u0001 \u0001(\u0007\u0012\n\n\u0002lt\u0018\u0002 \u0001(\u0007\u0012\u000b\n\u0003lte\u0018\u0003 \u0001(\u0007\u0012\n\n\u0002gt\u0018\u0004 \u0001(\u0007\u0012\u000b\n\u0003gte\u0018\u0005 \u0001(\u0007\u0012\n\n\u0002in\u0018\u0006 \u0003(\u0007\u0012\u000e\n\u0006not_in\u0018\u0007 \u0003(\u0007\"k\n\fFixed64Rules\u0012\r\n\u0005const\u0018\u0001 \u0001(\u0006\u0012\n\n\u0002lt\u0018\u0002 \u0001(\u0006\u0012\u000b\n\u0003lte\u0018\u0003 \u0001(\u0006\u0012\n\n\u0002gt\u0018\u0004 \u0001(\u0006\u0012\u000b\n\u0003gte\u0018\u0005 \u0001(\u0006\u0012\n\n\u0002in\u0018\u0006 \u0003(\u0006\u0012\u000e\n\u0006not_in\u0018\u0007 \u0003(\u0006\"l\n\rSFixed32Rules\u0012\r\n\u0005const\u0018\u0001 \u0001(\u000f\u0012\n\n\u0002lt\u0018\u0002 \u0001(\u000f\u0012\u000b\n\u0003lte\u0018\u0003 \u0001(\u000f\u0012\n\n\u0002gt\u0018\u0004 \u0001(\u000f\u0012\u000b\n\u0003gte\u0018\u0005 \u0001(\u000f\u0012\n\n\u0002in\u0018\u0006 \u0003(\u000f\u0012\u000e\n\u0006not_in\u0018\u0007 \u0003(\u000f\"l\n\rSFixed64Rules\u0012\r\n\u0005const\u0018\u0001 \u0001(\u0010\u0012\n\n\u0002lt\u0018\u0002 \u0001(\u0010\u0012\u000b\n\u0003lte\u0018\u0003 \u0001(\u0010\u0012\n\n\u0002gt\u0018\u0004 \u0001(\u0010\u0012\u000b\n\u0003gte\u0018\u0005 \u0001(\u0010\u0012\n\n\u0002in\u0018\u0006 \u0003(\u0010\u0012\u000e\n\u0006not_in\u0018\u0007 \u0003(\u0010\"\u001a\n\tBoolRules\u0012\r\n\u0005const\u0018\u0001 \u0001(\b\"ç\u0003\n\u000bStringRules\u0012\r\n\u0005const\u0018\u0001 \u0001(\t\u0012\u000b\n\u0003len\u0018\u0013 \u0001(\u0004\u0012\u000f\n\u0007min_len\u0018\u0002 \u0001(\u0004\u0012\u000f\n\u0007max_len\u0018\u0003 \u0001(\u0004\u0012\u0011\n\tlen_bytes\u0018\u0014 \u0001(\u0004\u0012\u0011\n\tmin_bytes\u0018\u0004 \u0001(\u0004\u0012\u0011\n\tmax_bytes\u0018\u0005 \u0001(\u0004\u0012\u000f\n\u0007pattern\u0018\u0006 \u0001(\t\u0012\u000e\n\u0006prefix\u0018\u0007 \u0001(\t\u0012\u000e\n\u0006suffix\u0018\b \u0001(\t\u0012\u0010\n\bcontains\u0018\t \u0001(\t\u0012\u0014\n\fnot_contains\u0018\u0017 \u0001(\t\u0012\n\n\u0002in\u0018\n \u0003(\t\u0012\u000e\n\u0006not_in\u0018\u000b \u0003(\t\u0012\u000f\n\u0005email\u0018\f \u0001(\bH\u0000\u0012\u0012\n\bhostname\u0018\r \u0001(\bH\u0000\u0012\f\n\u0002ip\u0018\u000e \u0001(\bH\u0000\u0012\u000e\n\u0004ipv4\u0018\u000f \u0001(\bH\u0000\u0012\u000e\n\u0004ipv6\u0018\u0010 \u0001(\bH\u0000\u0012\r\n\u0003uri\u0018\u0011 \u0001(\bH\u0000\u0012\u0011\n\u0007uri_ref\u0018\u0012 \u0001(\bH\u0000\u0012\u0011\n\u0007address\u0018\u0015 \u0001(\bH\u0000\u0012\u000e\n\u0004uuid\u0018\u0016 \u0001(\bH\u0000\u00120\n\u0010well_known_regex\u0018\u0018 \u0001(\u000e2\u0014.validate.KnownRegexH\u0000\u0012\u0014\n\u0006strict\u0018\u0019 \u0001(\b:\u0004trueB\f\n\nwell_known\"å\u0001\n\nBytesRules\u0012\r\n\u0005const\u0018\u0001 \u0001(\f\u0012\u000b\n\u0003len\u0018\r \u0001(\u0004\u0012\u000f\n\u0007min_len\u0018\u0002 \u0001(\u0004\u0012\u000f\n\u0007max_len\u0018\u0003 \u0001(\u0004\u0012\u000f\n\u0007pattern\u0018\u0004 \u0001(\t\u0012\u000e\n\u0006prefix\u0018\u0005 \u0001(\f\u0012\u000e\n\u0006suffix\u0018\u0006 \u0001(\f\u0012\u0010\n\bcontains\u0018\u0007 \u0001(\f\u0012\n\n\u0002in\u0018\b \u0003(\f\u0012\u000e\n\u0006not_in\u0018\t \u0003(\f\u0012\f\n\u0002ip\u0018\n \u0001(\bH\u0000\u0012\u000e\n\u0004ipv4\u0018\u000b \u0001(\bH\u0000\u0012\u000e\n\u0004ipv6\u0018\f \u0001(\bH\u0000B\f\n\nwell_known\"L\n\tEnumRules\u0012\r\n\u0005const\u0018\u0001 \u0001(\u0005\u0012\u0014\n\fdefined_only\u0018\u0002 \u0001(\b\u0012\n\n\u0002in\u0018\u0003 \u0003(\u0005\u0012\u000e\n\u0006not_in\u0018\u0004 \u0003(\u0005\".\n\fMessageRules\u0012\f\n\u0004skip\u0018\u0001 \u0001(\b\u0012\u0010\n\brequired\u0018\u0002 \u0001(\b\"j\n\rRepeatedRules\u0012\u0011\n\tmin_items\u0018\u0001 \u0001(\u0004\u0012\u0011\n\tmax_items\u0018\u0002 \u0001(\u0004\u0012\u000e\n\u0006unique\u0018\u0003 \u0001(\b\u0012#\n\u0005items\u0018\u0004 \u0001(\u000b2\u0014.validate.FieldRules\"\u008d\u0001\n\bMapRules\u0012\u0011\n\tmin_pairs\u0018\u0001 \u0001(\u0004\u0012\u0011\n\tmax_pairs\u0018\u0002 \u0001(\u0004\u0012\u0011\n\tno_sparse\u0018\u0003 \u0001(\b\u0012\"\n\u0004keys\u0018\u0004 \u0001(\u000b2\u0014.validate.FieldRules\u0012$\n\u0006values\u0018\u0005 \u0001(\u000b2\u0014.validate.FieldRules\"8\n\bAnyRules\u0012\u0010\n\brequired\u0018\u0001 \u0001(\b\u0012\n\n\u0002in\u0018\u0002 \u0003(\t\u0012\u000e\n\u0006not_in\u0018\u0003 \u0003(\t\"»\u0002\n\rDurationRules\u0012\u0010\n\brequired\u0018\u0001 \u0001(\b\u0012(\n\u0005const\u0018\u0002 \u0001(\u000b2\u0019.google.protobuf.Duration\u0012%\n\u0002lt\u0018\u0003 \u0001(\u000b2\u0019.google.protobuf.Duration\u0012&\n\u0003lte\u0018\u0004 \u0001(\u000b2\u0019.google.protobuf.Duration\u0012%\n\u0002gt\u0018\u0005 \u0001(\u000b2\u0019.google.protobuf.Duration\u0012&\n\u0003gte\u0018\u0006 \u0001(\u000b2\u0019.google.protobuf.Duration\u0012%\n\u0002in\u0018\u0007 \u0003(\u000b2\u0019.google.protobuf.Duration\u0012)\n\u0006not_in\u0018\b \u0003(\u000b2\u0019.google.protobuf.Duration\"º\u0002\n\u000eTimestampRules\u0012\u0010\n\brequired\u0018\u0001 \u0001(\b\u0012)\n\u0005const\u0018\u0002 \u0001(\u000b2\u001a.google.protobuf.Timestamp\u0012&\n\u0002lt\u0018\u0003 \u0001(\u000b2\u001a.google.protobuf.Timestamp\u0012'\n\u0003lte\u0018\u0004 \u0001(\u000b2\u001a.google.protobuf.Timestamp\u0012&\n\u0002gt\u0018\u0005 \u0001(\u000b2\u001a.google.protobuf.Timestamp\u0012'\n\u0003gte\u0018\u0006 \u0001(\u000b2\u001a.google.protobuf.Timestamp\u0012\u000e\n\u0006lt_now\u0018\u0007 \u0001(\b\u0012\u000e\n\u0006gt_now\u0018\b \u0001(\b\u0012)\n\u0006within\u0018\t \u0001(\u000b2\u0019.google.protobuf.Duration*F\n\nKnownRegex\u0012\u000b\n\u0007UNKNOWN\u0010\u0000\u0012\u0014\n\u0010HTTP_HEADER_NAME\u0010\u0001\u0012\u0015\n\u0011HTTP_HEADER_VALUE\u0010\u0002:2\n\bdisabled\u0012\u001f.google.protobuf.MessageOptions\u0018¯\b \u0001(\b:0\n\brequired\u0012\u001d.google.protobuf.OneofOptions\u0018¯\b \u0001(\b:C\n\u0005rules\u0012\u001d.google.protobuf.FieldOptions\u0018¯\b \u0001(\u000b2\u0014.validate.FieldRulesBP\n\u001aio.envoyproxy.pgv.validateZ2github.com/envoyproxy/protoc-gen-validate/validate"}, new Descriptors.FileDescriptor[]{DescriptorProtos.c0(), com.google.protobuf.w.a(), a3.a()});
        Descriptors.b bVar = U().m().get(0);
        f50582d = bVar;
        f50583e = new GeneratedMessageV3.e(bVar, new String[]{"Message", "Float", "Double", "Int32", "Int64", "Uint32", "Uint64", "Sint32", "Sint64", "Fixed32", "Fixed64", "Sfixed32", "Sfixed64", "Bool", "String", "Bytes", "Enum", "Repeated", "Map", "Any", "Duration", "Timestamp", "Type"});
        Descriptors.b bVar2 = U().m().get(1);
        f50584f = bVar2;
        f50585g = new GeneratedMessageV3.e(bVar2, new String[]{"Const", "Lt", "Lte", "Gt", "Gte", "In", "NotIn"});
        Descriptors.b bVar3 = U().m().get(2);
        f50586h = bVar3;
        f50587i = new GeneratedMessageV3.e(bVar3, new String[]{"Const", "Lt", "Lte", "Gt", "Gte", "In", "NotIn"});
        Descriptors.b bVar4 = U().m().get(3);
        f50588j = bVar4;
        f50589k = new GeneratedMessageV3.e(bVar4, new String[]{"Const", "Lt", "Lte", "Gt", "Gte", "In", "NotIn"});
        Descriptors.b bVar5 = U().m().get(4);
        f50590l = bVar5;
        f50591m = new GeneratedMessageV3.e(bVar5, new String[]{"Const", "Lt", "Lte", "Gt", "Gte", "In", "NotIn"});
        Descriptors.b bVar6 = U().m().get(5);
        f50592n = bVar6;
        f50593o = new GeneratedMessageV3.e(bVar6, new String[]{"Const", "Lt", "Lte", "Gt", "Gte", "In", "NotIn"});
        Descriptors.b bVar7 = U().m().get(6);
        f50594p = bVar7;
        f50595q = new GeneratedMessageV3.e(bVar7, new String[]{"Const", "Lt", "Lte", "Gt", "Gte", "In", "NotIn"});
        Descriptors.b bVar8 = U().m().get(7);
        f50596r = bVar8;
        f50597s = new GeneratedMessageV3.e(bVar8, new String[]{"Const", "Lt", "Lte", "Gt", "Gte", "In", "NotIn"});
        Descriptors.b bVar9 = U().m().get(8);
        f50598t = bVar9;
        f50599u = new GeneratedMessageV3.e(bVar9, new String[]{"Const", "Lt", "Lte", "Gt", "Gte", "In", "NotIn"});
        Descriptors.b bVar10 = U().m().get(9);
        f50600v = bVar10;
        f50601w = new GeneratedMessageV3.e(bVar10, new String[]{"Const", "Lt", "Lte", "Gt", "Gte", "In", "NotIn"});
        Descriptors.b bVar11 = U().m().get(10);
        f50602x = bVar11;
        f50603y = new GeneratedMessageV3.e(bVar11, new String[]{"Const", "Lt", "Lte", "Gt", "Gte", "In", "NotIn"});
        Descriptors.b bVar12 = U().m().get(11);
        f50604z = bVar12;
        A = new GeneratedMessageV3.e(bVar12, new String[]{"Const", "Lt", "Lte", "Gt", "Gte", "In", "NotIn"});
        Descriptors.b bVar13 = U().m().get(12);
        B = bVar13;
        C = new GeneratedMessageV3.e(bVar13, new String[]{"Const", "Lt", "Lte", "Gt", "Gte", "In", "NotIn"});
        Descriptors.b bVar14 = U().m().get(13);
        D = bVar14;
        E = new GeneratedMessageV3.e(bVar14, new String[]{"Const"});
        Descriptors.b bVar15 = U().m().get(14);
        F = bVar15;
        G = new GeneratedMessageV3.e(bVar15, new String[]{"Const", "Len", "MinLen", "MaxLen", "LenBytes", "MinBytes", "MaxBytes", "Pattern", "Prefix", "Suffix", "Contains", "NotContains", "In", "NotIn", "Email", "Hostname", "Ip", "Ipv4", "Ipv6", "Uri", "UriRef", "Address", "Uuid", "WellKnownRegex", "Strict", "WellKnown"});
        Descriptors.b bVar16 = U().m().get(15);
        H = bVar16;
        I = new GeneratedMessageV3.e(bVar16, new String[]{"Const", "Len", "MinLen", "MaxLen", "Pattern", "Prefix", "Suffix", "Contains", "In", "NotIn", "Ip", "Ipv4", "Ipv6", "WellKnown"});
        Descriptors.b bVar17 = U().m().get(16);
        J = bVar17;
        K = new GeneratedMessageV3.e(bVar17, new String[]{"Const", "DefinedOnly", "In", "NotIn"});
        Descriptors.b bVar18 = U().m().get(17);
        L = bVar18;
        M = new GeneratedMessageV3.e(bVar18, new String[]{"Skip", "Required"});
        Descriptors.b bVar19 = U().m().get(18);
        N = bVar19;
        O = new GeneratedMessageV3.e(bVar19, new String[]{"MinItems", "MaxItems", "Unique", "Items"});
        Descriptors.b bVar20 = U().m().get(19);
        P = bVar20;
        Q = new GeneratedMessageV3.e(bVar20, new String[]{"MinPairs", "MaxPairs", "NoSparse", "Keys", "Values"});
        Descriptors.b bVar21 = U().m().get(20);
        R = bVar21;
        S = new GeneratedMessageV3.e(bVar21, new String[]{"Required", "In", "NotIn"});
        Descriptors.b bVar22 = U().m().get(21);
        T = bVar22;
        U = new GeneratedMessageV3.e(bVar22, new String[]{"Required", "Const", "Lt", "Lte", "Gt", "Gte", "In", "NotIn"});
        Descriptors.b bVar23 = U().m().get(22);
        V = bVar23;
        W = new GeneratedMessageV3.e(bVar23, new String[]{"Required", "Const", "Lt", "Lte", "Gt", "Gte", "LtNow", "GtNow", "Within"});
        newFileScopedGeneratedExtension.g(X.l().get(0));
        newFileScopedGeneratedExtension2.g(X.l().get(1));
        newFileScopedGeneratedExtension3.g(X.l().get(2));
        DescriptorProtos.c0();
        com.google.protobuf.w.a();
        a3.a();
    }

    public static Descriptors.FileDescriptor U() {
        return X;
    }
}
