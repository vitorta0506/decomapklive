package io.grpc.alts.internal;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.o1;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import com.google.protobuf.u0;
import io.grpc.alts.internal.NextHandshakeMessageReq;
import io.grpc.alts.internal.StartClientHandshakeReq;
import io.grpc.alts.internal.StartServerHandshakeReq;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class HandshakerReq extends GeneratedMessageV3 implements r1 {
    public static final int CLIENT_START_FIELD_NUMBER = 1;
    public static final int NEXT_FIELD_NUMBER = 3;
    public static final int SERVER_START_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private int reqOneofCase_;
    private Object reqOneof_;
    private static final HandshakerReq DEFAULT_INSTANCE = new HandshakerReq();
    private static final e2<HandshakerReq> PARSER = new a();

    /* loaded from: classes5.dex */
    public enum ReqOneofCase implements u0.c {
        CLIENT_START(1),
        SERVER_START(2),
        NEXT(3),
        REQONEOF_NOT_SET(0);
        
        private final int value;

        ReqOneofCase(int i9) {
            this.value = i9;
        }

        public static ReqOneofCase forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 != 2) {
                        if (i9 != 3) {
                            return null;
                        }
                        return NEXT;
                    }
                    return SERVER_START;
                }
                return CLIENT_START;
            }
            return REQONEOF_NOT_SET;
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static ReqOneofCase valueOf(int i9) {
            return forNumber(i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends com.google.protobuf.c<HandshakerReq> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public HandshakerReq m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return new HandshakerReq(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f41763a;

        static {
            int[] iArr = new int[ReqOneofCase.values().length];
            f41763a = iArr;
            try {
                iArr[ReqOneofCase.CLIENT_START.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f41763a[ReqOneofCase.SERVER_START.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f41763a[ReqOneofCase.NEXT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f41763a[ReqOneofCase.REQONEOF_NOT_SET.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* loaded from: classes5.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private int f41764e;

        /* renamed from: f  reason: collision with root package name */
        private Object f41765f;

        /* renamed from: g  reason: collision with root package name */
        private q2<StartClientHandshakeReq, StartClientHandshakeReq.b, b0> f41766g;

        /* renamed from: h  reason: collision with root package name */
        private q2<StartServerHandshakeReq, StartServerHandshakeReq.b, c0> f41767h;

        /* renamed from: i  reason: collision with root package name */
        private q2<NextHandshakeMessageReq, NextHandshakeMessageReq.b, x> f41768i;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return r.f41963r.d(HandshakerReq.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public HandshakerReq build() {
            HandshakerReq I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public HandshakerReq I() {
            HandshakerReq handshakerReq = new HandshakerReq(this, (a) null);
            if (this.f41764e == 1) {
                q2<StartClientHandshakeReq, StartClientHandshakeReq.b, b0> q2Var = this.f41766g;
                if (q2Var == null) {
                    handshakerReq.reqOneof_ = this.f41765f;
                } else {
                    handshakerReq.reqOneof_ = q2Var.b();
                }
            }
            if (this.f41764e == 2) {
                q2<StartServerHandshakeReq, StartServerHandshakeReq.b, c0> q2Var2 = this.f41767h;
                if (q2Var2 == null) {
                    handshakerReq.reqOneof_ = this.f41765f;
                } else {
                    handshakerReq.reqOneof_ = q2Var2.b();
                }
            }
            if (this.f41764e == 3) {
                q2<NextHandshakeMessageReq, NextHandshakeMessageReq.b, x> q2Var3 = this.f41768i;
                if (q2Var3 == null) {
                    handshakerReq.reqOneof_ = this.f41765f;
                } else {
                    handshakerReq.reqOneof_ = q2Var3.b();
                }
            }
            handshakerReq.reqOneofCase_ = this.f41764e;
            Q();
            return handshakerReq;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public HandshakerReq getDefaultInstanceForType() {
            return HandshakerReq.getDefaultInstance();
        }

        public c d0(StartClientHandshakeReq startClientHandshakeReq) {
            q2<StartClientHandshakeReq, StartClientHandshakeReq.b, b0> q2Var = this.f41766g;
            if (q2Var == null) {
                if (this.f41764e == 1 && this.f41765f != StartClientHandshakeReq.getDefaultInstance()) {
                    this.f41765f = StartClientHandshakeReq.newBuilder((StartClientHandshakeReq) this.f41765f).n0(startClientHandshakeReq).I();
                } else {
                    this.f41765f = startClientHandshakeReq;
                }
                R();
            } else {
                if (this.f41764e == 1) {
                    q2Var.e(startClientHandshakeReq);
                }
                this.f41766g.g(startClientHandshakeReq);
            }
            this.f41764e = 1;
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.alts.internal.HandshakerReq.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.alts.internal.HandshakerReq.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.alts.internal.HandshakerReq r3 = (io.grpc.alts.internal.HandshakerReq) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.alts.internal.HandshakerReq r4 = (io.grpc.alts.internal.HandshakerReq) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.alts.internal.HandshakerReq.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.alts.internal.HandshakerReq$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        public c v(l1 l1Var) {
            if (l1Var instanceof HandshakerReq) {
                return h0((HandshakerReq) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return r.f41962q;
        }

        public c h0(HandshakerReq handshakerReq) {
            if (handshakerReq == HandshakerReq.getDefaultInstance()) {
                return this;
            }
            int i9 = b.f41763a[handshakerReq.getReqOneofCase().ordinal()];
            if (i9 == 1) {
                d0(handshakerReq.getClientStart());
            } else if (i9 == 2) {
                j0(handshakerReq.getServerStart());
            } else if (i9 == 3) {
                i0(handshakerReq.getNext());
            }
            z(((GeneratedMessageV3) handshakerReq).unknownFields);
            R();
            return this;
        }

        public c i0(NextHandshakeMessageReq nextHandshakeMessageReq) {
            q2<NextHandshakeMessageReq, NextHandshakeMessageReq.b, x> q2Var = this.f41768i;
            if (q2Var == null) {
                if (this.f41764e == 3 && this.f41765f != NextHandshakeMessageReq.getDefaultInstance()) {
                    this.f41765f = NextHandshakeMessageReq.newBuilder((NextHandshakeMessageReq) this.f41765f).g0(nextHandshakeMessageReq).I();
                } else {
                    this.f41765f = nextHandshakeMessageReq;
                }
                R();
            } else {
                if (this.f41764e == 3) {
                    q2Var.e(nextHandshakeMessageReq);
                }
                this.f41768i.g(nextHandshakeMessageReq);
            }
            this.f41764e = 3;
            return this;
        }

        public c j0(StartServerHandshakeReq startServerHandshakeReq) {
            q2<StartServerHandshakeReq, StartServerHandshakeReq.b, c0> q2Var = this.f41767h;
            if (q2Var == null) {
                if (this.f41764e == 2 && this.f41765f != StartServerHandshakeReq.getDefaultInstance()) {
                    this.f41765f = StartServerHandshakeReq.newBuilder((StartServerHandshakeReq) this.f41765f).k0(startServerHandshakeReq).I();
                } else {
                    this.f41765f = startServerHandshakeReq;
                }
                R();
            } else {
                if (this.f41764e == 2) {
                    q2Var.e(startServerHandshakeReq);
                }
                this.f41767h.g(startServerHandshakeReq);
            }
            this.f41764e = 2;
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: k0 */
        public final c z(h3 h3Var) {
            return (c) super.z(h3Var);
        }

        public c l0(StartClientHandshakeReq.b bVar) {
            q2<StartClientHandshakeReq, StartClientHandshakeReq.b, b0> q2Var = this.f41766g;
            if (q2Var == null) {
                this.f41765f = bVar.build();
                R();
            } else {
                q2Var.g(bVar.build());
            }
            this.f41764e = 1;
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: m0 */
        public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.c(fieldDescriptor, obj);
        }

        public c n0(NextHandshakeMessageReq nextHandshakeMessageReq) {
            q2<NextHandshakeMessageReq, NextHandshakeMessageReq.b, x> q2Var = this.f41768i;
            if (q2Var == null) {
                Objects.requireNonNull(nextHandshakeMessageReq);
                this.f41765f = nextHandshakeMessageReq;
                R();
            } else {
                q2Var.g(nextHandshakeMessageReq);
            }
            this.f41764e = 3;
            return this;
        }

        public c o0(StartServerHandshakeReq.b bVar) {
            q2<StartServerHandshakeReq, StartServerHandshakeReq.b, c0> q2Var = this.f41767h;
            if (q2Var == null) {
                this.f41765f = bVar.build();
                R();
            } else {
                q2Var.g(bVar.build());
            }
            this.f41764e = 2;
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: q0 */
        public final c f1(h3 h3Var) {
            return (c) super.f1(h3Var);
        }

        /* synthetic */ c(a aVar) {
            this();
        }

        private c() {
            this.f41764e = 0;
            b0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f41764e = 0;
            b0();
        }
    }

    /* synthetic */ HandshakerReq(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static HandshakerReq getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return r.f41962q;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static HandshakerReq parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (HandshakerReq) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static HandshakerReq parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<HandshakerReq> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof HandshakerReq)) {
            return super.equals(obj);
        }
        HandshakerReq handshakerReq = (HandshakerReq) obj;
        if (getReqOneofCase().equals(handshakerReq.getReqOneofCase())) {
            int i9 = this.reqOneofCase_;
            if (i9 != 1) {
                if (i9 != 2) {
                    if (i9 == 3 && !getNext().equals(handshakerReq.getNext())) {
                        return false;
                    }
                } else if (!getServerStart().equals(handshakerReq.getServerStart())) {
                    return false;
                }
            } else if (!getClientStart().equals(handshakerReq.getClientStart())) {
                return false;
            }
            return this.unknownFields.equals(handshakerReq.unknownFields);
        }
        return false;
    }

    public StartClientHandshakeReq getClientStart() {
        if (this.reqOneofCase_ == 1) {
            return (StartClientHandshakeReq) this.reqOneof_;
        }
        return StartClientHandshakeReq.getDefaultInstance();
    }

    public b0 getClientStartOrBuilder() {
        if (this.reqOneofCase_ == 1) {
            return (StartClientHandshakeReq) this.reqOneof_;
        }
        return StartClientHandshakeReq.getDefaultInstance();
    }

    public NextHandshakeMessageReq getNext() {
        if (this.reqOneofCase_ == 3) {
            return (NextHandshakeMessageReq) this.reqOneof_;
        }
        return NextHandshakeMessageReq.getDefaultInstance();
    }

    public x getNextOrBuilder() {
        if (this.reqOneofCase_ == 3) {
            return (NextHandshakeMessageReq) this.reqOneof_;
        }
        return NextHandshakeMessageReq.getDefaultInstance();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<HandshakerReq> getParserForType() {
        return PARSER;
    }

    public ReqOneofCase getReqOneofCase() {
        return ReqOneofCase.forNumber(this.reqOneofCase_);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.reqOneofCase_ == 1 ? 0 + CodedOutputStream.G(1, (StartClientHandshakeReq) this.reqOneof_) : 0;
        if (this.reqOneofCase_ == 2) {
            G += CodedOutputStream.G(2, (StartServerHandshakeReq) this.reqOneof_);
        }
        if (this.reqOneofCase_ == 3) {
            G += CodedOutputStream.G(3, (NextHandshakeMessageReq) this.reqOneof_);
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public StartServerHandshakeReq getServerStart() {
        if (this.reqOneofCase_ == 2) {
            return (StartServerHandshakeReq) this.reqOneof_;
        }
        return StartServerHandshakeReq.getDefaultInstance();
    }

    public c0 getServerStartOrBuilder() {
        if (this.reqOneofCase_ == 2) {
            return (StartServerHandshakeReq) this.reqOneof_;
        }
        return StartServerHandshakeReq.getDefaultInstance();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasClientStart() {
        return this.reqOneofCase_ == 1;
    }

    public boolean hasNext() {
        return this.reqOneofCase_ == 3;
    }

    public boolean hasServerStart() {
        return this.reqOneofCase_ == 2;
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
        int i11 = this.reqOneofCase_;
        if (i11 == 1) {
            i9 = ((hashCode2 * 37) + 1) * 53;
            hashCode = getClientStart().hashCode();
        } else if (i11 == 2) {
            i9 = ((hashCode2 * 37) + 2) * 53;
            hashCode = getServerStart().hashCode();
        } else {
            if (i11 == 3) {
                i9 = ((hashCode2 * 37) + 3) * 53;
                hashCode = getNext().hashCode();
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
        return r.f41963r.d(HandshakerReq.class, c.class);
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
        return new HandshakerReq();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.reqOneofCase_ == 1) {
            codedOutputStream.L0(1, (StartClientHandshakeReq) this.reqOneof_);
        }
        if (this.reqOneofCase_ == 2) {
            codedOutputStream.L0(2, (StartServerHandshakeReq) this.reqOneof_);
        }
        if (this.reqOneofCase_ == 3) {
            codedOutputStream.L0(3, (NextHandshakeMessageReq) this.reqOneof_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ HandshakerReq(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(HandshakerReq handshakerReq) {
        return DEFAULT_INSTANCE.toBuilder().h0(handshakerReq);
    }

    public static HandshakerReq parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private HandshakerReq(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.reqOneofCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static HandshakerReq parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (HandshakerReq) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static HandshakerReq parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public HandshakerReq getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).h0(this);
    }

    public static HandshakerReq parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    public static HandshakerReq parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    private HandshakerReq() {
        this.reqOneofCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static HandshakerReq parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static HandshakerReq parseFrom(InputStream inputStream) throws IOException {
        return (HandshakerReq) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private HandshakerReq(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                                StartClientHandshakeReq.b builder = this.reqOneofCase_ == 1 ? ((StartClientHandshakeReq) this.reqOneof_).toBuilder() : null;
                                o1 B = pVar.B(StartClientHandshakeReq.parser(), f0Var);
                                this.reqOneof_ = B;
                                if (builder != null) {
                                    builder.n0((StartClientHandshakeReq) B);
                                    this.reqOneof_ = builder.I();
                                }
                                this.reqOneofCase_ = 1;
                            } else if (L == 18) {
                                StartServerHandshakeReq.b builder2 = this.reqOneofCase_ == 2 ? ((StartServerHandshakeReq) this.reqOneof_).toBuilder() : null;
                                o1 B2 = pVar.B(StartServerHandshakeReq.parser(), f0Var);
                                this.reqOneof_ = B2;
                                if (builder2 != null) {
                                    builder2.k0((StartServerHandshakeReq) B2);
                                    this.reqOneof_ = builder2.I();
                                }
                                this.reqOneofCase_ = 2;
                            } else if (L != 26) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                NextHandshakeMessageReq.b builder3 = this.reqOneofCase_ == 3 ? ((NextHandshakeMessageReq) this.reqOneof_).toBuilder() : null;
                                o1 B3 = pVar.B(NextHandshakeMessageReq.parser(), f0Var);
                                this.reqOneof_ = B3;
                                if (builder3 != null) {
                                    builder3.g0((NextHandshakeMessageReq) B3);
                                    this.reqOneof_ = builder3.I();
                                }
                                this.reqOneofCase_ = 3;
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

    public static HandshakerReq parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (HandshakerReq) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static HandshakerReq parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (HandshakerReq) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static HandshakerReq parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
        return (HandshakerReq) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
