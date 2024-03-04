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
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class HandshakerStatus extends GeneratedMessageV3 implements u {
    public static final int CODE_FIELD_NUMBER = 1;
    public static final int DETAILS_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private int code_;
    private volatile Object details_;
    private byte memoizedIsInitialized;
    private static final HandshakerStatus DEFAULT_INSTANCE = new HandshakerStatus();
    private static final e2<HandshakerStatus> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends com.google.protobuf.c<HandshakerStatus> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public HandshakerStatus m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return new HandshakerStatus(pVar, f0Var, null);
        }
    }

    /* loaded from: classes5.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements u {

        /* renamed from: e  reason: collision with root package name */
        private int f41786e;

        /* renamed from: f  reason: collision with root package name */
        private Object f41787f;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return r.f41967v.d(HandshakerStatus.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public HandshakerStatus build() {
            HandshakerStatus I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public HandshakerStatus I() {
            HandshakerStatus handshakerStatus = new HandshakerStatus(this, (a) null);
            handshakerStatus.code_ = this.f41786e;
            handshakerStatus.details_ = this.f41787f;
            Q();
            return handshakerStatus;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public HandshakerStatus getDefaultInstanceForType() {
            return HandshakerStatus.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.alts.internal.HandshakerStatus.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.alts.internal.HandshakerStatus.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.alts.internal.HandshakerStatus r3 = (io.grpc.alts.internal.HandshakerStatus) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.alts.internal.HandshakerStatus r4 = (io.grpc.alts.internal.HandshakerStatus) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.alts.internal.HandshakerStatus.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.alts.internal.HandshakerStatus$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof HandshakerStatus) {
                return g0((HandshakerStatus) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b g0(HandshakerStatus handshakerStatus) {
            if (handshakerStatus == HandshakerStatus.getDefaultInstance()) {
                return this;
            }
            if (handshakerStatus.getCode() != 0) {
                i0(handshakerStatus.getCode());
            }
            if (!handshakerStatus.getDetails().isEmpty()) {
                this.f41787f = handshakerStatus.details_;
                R();
            }
            z(((GeneratedMessageV3) handshakerStatus).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return r.f41966u;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        public b i0(int i9) {
            this.f41786e = i9;
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
            this.f41787f = "";
            b0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f41787f = "";
            b0();
        }
    }

    /* synthetic */ HandshakerStatus(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static HandshakerStatus getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return r.f41966u;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static HandshakerStatus parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (HandshakerStatus) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static HandshakerStatus parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<HandshakerStatus> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof HandshakerStatus)) {
            return super.equals(obj);
        }
        HandshakerStatus handshakerStatus = (HandshakerStatus) obj;
        return getCode() == handshakerStatus.getCode() && getDetails().equals(handshakerStatus.getDetails()) && this.unknownFields.equals(handshakerStatus.unknownFields);
    }

    public int getCode() {
        return this.code_;
    }

    public String getDetails() {
        Object obj = this.details_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.details_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getDetailsBytes() {
        Object obj = this.details_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.details_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<HandshakerStatus> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int i10 = this.code_;
        int Y = i10 != 0 ? 0 + CodedOutputStream.Y(1, i10) : 0;
        if (!GeneratedMessageV3.isStringEmpty(this.details_)) {
            Y += GeneratedMessageV3.computeStringSize(2, this.details_);
        }
        int serializedSize = Y + this.unknownFields.getSerializedSize();
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
        int hashCode = ((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getCode()) * 37) + 2) * 53) + getDetails().hashCode()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode;
        return hashCode;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return r.f41967v.d(HandshakerStatus.class, b.class);
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
        return new HandshakerStatus();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        int i9 = this.code_;
        if (i9 != 0) {
            codedOutputStream.c1(1, i9);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.details_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.details_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ HandshakerStatus(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(HandshakerStatus handshakerStatus) {
        return DEFAULT_INSTANCE.toBuilder().g0(handshakerStatus);
    }

    public static HandshakerStatus parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private HandshakerStatus(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static HandshakerStatus parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (HandshakerStatus) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static HandshakerStatus parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public HandshakerStatus getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static HandshakerStatus parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private HandshakerStatus() {
        this.memoizedIsInitialized = (byte) -1;
        this.details_ = "";
    }

    public static HandshakerStatus parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static HandshakerStatus parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static HandshakerStatus parseFrom(InputStream inputStream) throws IOException {
        return (HandshakerStatus) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private HandshakerStatus(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                            if (L == 8) {
                                this.code_ = pVar.M();
                            } else if (L != 18) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                this.details_ = pVar.K();
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

    public static HandshakerStatus parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (HandshakerStatus) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static HandshakerStatus parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (HandshakerStatus) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static HandshakerStatus parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
        return (HandshakerStatus) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
