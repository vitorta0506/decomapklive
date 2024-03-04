package com.google.rpc;

import com.google.protobuf.Any;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.f;
import com.google.protobuf.f0;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.l2;
import com.google.protobuf.p;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes3.dex */
public final class Status extends GeneratedMessageV3 implements c {
    public static final int CODE_FIELD_NUMBER = 1;
    public static final int DETAILS_FIELD_NUMBER = 3;
    public static final int MESSAGE_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private int code_;
    private List<Any> details_;
    private byte memoizedIsInitialized;
    private volatile Object message_;
    private static final Status DEFAULT_INSTANCE = new Status();
    private static final e2<Status> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class a extends com.google.protobuf.c<Status> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public Status m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new Status(pVar, f0Var, null);
        }
    }

    /* loaded from: classes3.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements c {

        /* renamed from: e  reason: collision with root package name */
        private int f15588e;

        /* renamed from: f  reason: collision with root package name */
        private int f15589f;

        /* renamed from: g  reason: collision with root package name */
        private Object f15590g;

        /* renamed from: h  reason: collision with root package name */
        private List<Any> f15591h;

        /* renamed from: i  reason: collision with root package name */
        private l2<Any, Any.b, f> f15592i;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f15588e & 1) == 0) {
                this.f15591h = new ArrayList(this.f15591h);
                this.f15588e |= 1;
            }
        }

        private l2<Any, Any.b, f> d0() {
            if (this.f15592i == null) {
                this.f15592i = new l2<>(this.f15591h, (this.f15588e & 1) != 0, H(), O());
                this.f15591h = null;
            }
            return this.f15592i;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                d0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return d.f15720b.d(Status.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public Status build() {
            Status I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public Status I() {
            Status status = new Status(this, (a) null);
            status.code_ = this.f15589f;
            status.message_ = this.f15590g;
            l2<Any, Any.b, f> l2Var = this.f15592i;
            if (l2Var == null) {
                if ((this.f15588e & 1) != 0) {
                    this.f15591h = Collections.unmodifiableList(this.f15591h);
                    this.f15588e &= -2;
                }
                status.details_ = this.f15591h;
            } else {
                status.details_ = l2Var.e();
            }
            Q();
            return status;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: b0 */
        public Status getDefaultInstanceForType() {
            return Status.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.rpc.Status.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.rpc.Status.access$900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.rpc.Status r3 = (com.google.rpc.Status) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.i0(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                com.google.rpc.Status r4 = (com.google.rpc.Status) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.i0(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.rpc.Status.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.rpc.Status$b");
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return d.f15719a;
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof Status) {
                return i0((Status) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b i0(Status status) {
            if (status == Status.getDefaultInstance()) {
                return this;
            }
            if (status.getCode() != 0) {
                k0(status.getCode());
            }
            if (!status.getMessage().isEmpty()) {
                this.f15590g = status.message_;
                R();
            }
            if (this.f15592i == null) {
                if (!status.details_.isEmpty()) {
                    if (this.f15591h.isEmpty()) {
                        this.f15591h = status.details_;
                        this.f15588e &= -2;
                    } else {
                        a0();
                        this.f15591h.addAll(status.details_);
                    }
                    R();
                }
            } else if (!status.details_.isEmpty()) {
                if (this.f15592i.k()) {
                    this.f15592i.f();
                    this.f15592i = null;
                    this.f15591h = status.details_;
                    this.f15588e &= -2;
                    this.f15592i = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                } else {
                    this.f15592i.b(status.details_);
                }
            }
            z(((GeneratedMessageV3) status).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: j0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        public b k0(int i9) {
            this.f15589f = i9;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: l0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
        }

        public b m0(String str) {
            Objects.requireNonNull(str);
            this.f15590g = str;
            R();
            return this;
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
            this.f15590g = "";
            this.f15591h = Collections.emptyList();
            e0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f15590g = "";
            this.f15591h = Collections.emptyList();
            e0();
        }
    }

    /* synthetic */ Status(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static Status getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return d.f15719a;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Status parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Status) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Status parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<Status> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Status)) {
            return super.equals(obj);
        }
        Status status = (Status) obj;
        return getCode() == status.getCode() && getMessage().equals(status.getMessage()) && getDetailsList().equals(status.getDetailsList()) && this.unknownFields.equals(status.unknownFields);
    }

    public int getCode() {
        return this.code_;
    }

    public Any getDetails(int i9) {
        return this.details_.get(i9);
    }

    public int getDetailsCount() {
        return this.details_.size();
    }

    public List<Any> getDetailsList() {
        return this.details_;
    }

    public f getDetailsOrBuilder(int i9) {
        return this.details_.get(i9);
    }

    public List<? extends f> getDetailsOrBuilderList() {
        return this.details_;
    }

    public String getMessage() {
        Object obj = this.message_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.message_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getMessageBytes() {
        Object obj = this.message_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.message_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<Status> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int i10 = this.code_;
        int x10 = i10 != 0 ? CodedOutputStream.x(1, i10) + 0 : 0;
        if (!GeneratedMessageV3.isStringEmpty(this.message_)) {
            x10 += GeneratedMessageV3.computeStringSize(2, this.message_);
        }
        for (int i11 = 0; i11 < this.details_.size(); i11++) {
            x10 += CodedOutputStream.G(3, this.details_.get(i11));
        }
        int serializedSize = x10 + this.unknownFields.getSerializedSize();
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
        int hashCode = ((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getCode()) * 37) + 2) * 53) + getMessage().hashCode();
        if (getDetailsCount() > 0) {
            hashCode = (((hashCode * 37) + 3) * 53) + getDetailsList().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return d.f15720b.d(Status.class, b.class);
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
        return new Status();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        int i9 = this.code_;
        if (i9 != 0) {
            codedOutputStream.H0(1, i9);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.message_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.message_);
        }
        for (int i10 = 0; i10 < this.details_.size(); i10++) {
            codedOutputStream.L0(3, this.details_.get(i10));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ Status(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(Status status) {
        return DEFAULT_INSTANCE.toBuilder().i0(status);
    }

    public static Status parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Status) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static Status parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private Status(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Status parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public Status getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).i0(this);
    }

    public static Status parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private Status() {
        this.memoizedIsInitialized = (byte) -1;
        this.message_ = "";
        this.details_ = Collections.emptyList();
    }

    public static Status parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static Status parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static Status parseFrom(InputStream inputStream) throws IOException {
        return (Status) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static Status parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Status) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Status(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                this.code_ = pVar.z();
                            } else if (L == 18) {
                                this.message_ = pVar.K();
                            } else if (L != 26) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                if (!(z11 & true)) {
                                    this.details_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.details_.add(pVar.B(Any.parser(), f0Var));
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
                    this.details_ = Collections.unmodifiableList(this.details_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static Status parseFrom(p pVar) throws IOException {
        return (Status) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static Status parseFrom(p pVar, f0 f0Var) throws IOException {
        return (Status) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
