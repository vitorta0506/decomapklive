package com.google.longrunning;

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
import com.google.protobuf.o1;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.u0;
import com.google.rpc.Status;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class Operation extends GeneratedMessageV3 implements com.google.longrunning.a {
    public static final int DONE_FIELD_NUMBER = 3;
    public static final int ERROR_FIELD_NUMBER = 4;
    public static final int METADATA_FIELD_NUMBER = 2;
    public static final int NAME_FIELD_NUMBER = 1;
    public static final int RESPONSE_FIELD_NUMBER = 5;
    private static final long serialVersionUID = 0;
    private boolean done_;
    private byte memoizedIsInitialized;
    private Any metadata_;
    private volatile Object name_;
    private int resultCase_;
    private Object result_;
    private static final Operation DEFAULT_INSTANCE = new Operation();
    private static final e2<Operation> PARSER = new a();

    /* loaded from: classes2.dex */
    public enum ResultCase implements u0.c {
        ERROR(4),
        RESPONSE(5),
        RESULT_NOT_SET(0);
        
        private final int value;

        ResultCase(int i9) {
            this.value = i9;
        }

        public static ResultCase forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 4) {
                    if (i9 != 5) {
                        return null;
                    }
                    return RESPONSE;
                }
                return ERROR;
            }
            return RESULT_NOT_SET;
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static ResultCase valueOf(int i9) {
            return forNumber(i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a extends com.google.protobuf.c<Operation> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public Operation m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new Operation(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f14240a;

        static {
            int[] iArr = new int[ResultCase.values().length];
            f14240a = iArr;
            try {
                iArr[ResultCase.ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f14240a[ResultCase.RESPONSE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f14240a[ResultCase.RESULT_NOT_SET.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements com.google.longrunning.a {

        /* renamed from: e  reason: collision with root package name */
        private int f14241e;

        /* renamed from: f  reason: collision with root package name */
        private Object f14242f;

        /* renamed from: g  reason: collision with root package name */
        private Object f14243g;

        /* renamed from: h  reason: collision with root package name */
        private Any f14244h;

        /* renamed from: i  reason: collision with root package name */
        private q2<Any, Any.b, f> f14245i;

        /* renamed from: j  reason: collision with root package name */
        private boolean f14246j;

        /* renamed from: k  reason: collision with root package name */
        private q2<Status, Status.b, com.google.rpc.c> f14247k;

        /* renamed from: l  reason: collision with root package name */
        private q2<Any, Any.b, f> f14248l;

        /* synthetic */ c(a aVar) {
            this();
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return com.google.longrunning.c.f14257c.d(Operation.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public Operation build() {
            Operation I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public Operation I() {
            Operation operation = new Operation(this, (a) null);
            operation.name_ = this.f14243g;
            q2<Any, Any.b, f> q2Var = this.f14245i;
            if (q2Var == null) {
                operation.metadata_ = this.f14244h;
            } else {
                operation.metadata_ = q2Var.b();
            }
            operation.done_ = this.f14246j;
            if (this.f14241e == 4) {
                q2<Status, Status.b, com.google.rpc.c> q2Var2 = this.f14247k;
                if (q2Var2 == null) {
                    operation.result_ = this.f14242f;
                } else {
                    operation.result_ = q2Var2.b();
                }
            }
            if (this.f14241e == 5) {
                q2<Any, Any.b, f> q2Var3 = this.f14248l;
                if (q2Var3 == null) {
                    operation.result_ = this.f14242f;
                } else {
                    operation.result_ = q2Var3.b();
                }
            }
            operation.resultCase_ = this.f14241e;
            Q();
            return operation;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public Operation getDefaultInstanceForType() {
            return Operation.getDefaultInstance();
        }

        public c d0(Status status) {
            q2<Status, Status.b, com.google.rpc.c> q2Var = this.f14247k;
            if (q2Var == null) {
                if (this.f14241e == 4 && this.f14242f != Status.getDefaultInstance()) {
                    this.f14242f = Status.newBuilder((Status) this.f14242f).i0(status).I();
                } else {
                    this.f14242f = status;
                }
                R();
            } else {
                if (this.f14241e == 4) {
                    q2Var.e(status);
                }
                this.f14247k.g(status);
            }
            this.f14241e = 4;
            return this;
        }

        public c e0(Operation operation) {
            if (operation == Operation.getDefaultInstance()) {
                return this;
            }
            if (!operation.getName().isEmpty()) {
                this.f14243g = operation.name_;
                R();
            }
            if (operation.hasMetadata()) {
                i0(operation.getMetadata());
            }
            if (operation.getDone()) {
                l0(operation.getDone());
            }
            int i9 = b.f14240a[operation.getResultCase().ordinal()];
            if (i9 == 1) {
                d0(operation.getError());
            } else if (i9 == 2) {
                j0(operation.getResponse());
            }
            z(((GeneratedMessageV3) operation).unknownFields);
            R();
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.longrunning.Operation.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.longrunning.Operation.access$1000()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.longrunning.Operation r3 = (com.google.longrunning.Operation) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.e0(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                com.google.longrunning.Operation r4 = (com.google.longrunning.Operation) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.e0(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.longrunning.Operation.c.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.longrunning.Operation$c");
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return com.google.longrunning.c.f14256b;
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public c v(l1 l1Var) {
            if (l1Var instanceof Operation) {
                return e0((Operation) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public c i0(Any any) {
            q2<Any, Any.b, f> q2Var = this.f14245i;
            if (q2Var == null) {
                Any any2 = this.f14244h;
                if (any2 != null) {
                    this.f14244h = Any.newBuilder(any2).d0(any).I();
                } else {
                    this.f14244h = any;
                }
                R();
            } else {
                q2Var.e(any);
            }
            return this;
        }

        public c j0(Any any) {
            q2<Any, Any.b, f> q2Var = this.f14248l;
            if (q2Var == null) {
                if (this.f14241e == 5 && this.f14242f != Any.getDefaultInstance()) {
                    this.f14242f = Any.newBuilder((Any) this.f14242f).d0(any).I();
                } else {
                    this.f14242f = any;
                }
                R();
            } else {
                if (this.f14241e == 5) {
                    q2Var.e(any);
                }
                this.f14248l.g(any);
            }
            this.f14241e = 5;
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: k0 */
        public final c z(h3 h3Var) {
            return (c) super.z(h3Var);
        }

        public c l0(boolean z10) {
            this.f14246j = z10;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: m0 */
        public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.c(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: n0 */
        public final c f1(h3 h3Var) {
            return (c) super.f1(h3Var);
        }

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private c() {
            this.f14241e = 0;
            this.f14243g = "";
            b0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f14241e = 0;
            this.f14243g = "";
            b0();
        }
    }

    /* synthetic */ Operation(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static Operation getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return com.google.longrunning.c.f14256b;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Operation parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Operation) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Operation parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<Operation> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Operation)) {
            return super.equals(obj);
        }
        Operation operation = (Operation) obj;
        if (getName().equals(operation.getName()) && hasMetadata() == operation.hasMetadata()) {
            if ((!hasMetadata() || getMetadata().equals(operation.getMetadata())) && getDone() == operation.getDone() && getResultCase().equals(operation.getResultCase())) {
                int i9 = this.resultCase_;
                if (i9 != 4) {
                    if (i9 == 5 && !getResponse().equals(operation.getResponse())) {
                        return false;
                    }
                } else if (!getError().equals(operation.getError())) {
                    return false;
                }
                return this.unknownFields.equals(operation.unknownFields);
            }
            return false;
        }
        return false;
    }

    public boolean getDone() {
        return this.done_;
    }

    public Status getError() {
        if (this.resultCase_ == 4) {
            return (Status) this.result_;
        }
        return Status.getDefaultInstance();
    }

    public com.google.rpc.c getErrorOrBuilder() {
        if (this.resultCase_ == 4) {
            return (Status) this.result_;
        }
        return Status.getDefaultInstance();
    }

    public Any getMetadata() {
        Any any = this.metadata_;
        return any == null ? Any.getDefaultInstance() : any;
    }

    public f getMetadataOrBuilder() {
        return getMetadata();
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
    public e2<Operation> getParserForType() {
        return PARSER;
    }

    public Any getResponse() {
        if (this.resultCase_ == 5) {
            return (Any) this.result_;
        }
        return Any.getDefaultInstance();
    }

    public f getResponseOrBuilder() {
        if (this.resultCase_ == 5) {
            return (Any) this.result_;
        }
        return Any.getDefaultInstance();
    }

    public ResultCase getResultCase() {
        return ResultCase.forNumber(this.resultCase_);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = GeneratedMessageV3.isStringEmpty(this.name_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.name_);
        if (this.metadata_ != null) {
            computeStringSize += CodedOutputStream.G(2, getMetadata());
        }
        boolean z10 = this.done_;
        if (z10) {
            computeStringSize += CodedOutputStream.e(3, z10);
        }
        if (this.resultCase_ == 4) {
            computeStringSize += CodedOutputStream.G(4, (Status) this.result_);
        }
        if (this.resultCase_ == 5) {
            computeStringSize += CodedOutputStream.G(5, (Any) this.result_);
        }
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasError() {
        return this.resultCase_ == 4;
    }

    public boolean hasMetadata() {
        return this.metadata_ != null;
    }

    public boolean hasResponse() {
        return this.resultCase_ == 5;
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
        if (hasMetadata()) {
            hashCode2 = (((hashCode2 * 37) + 2) * 53) + getMetadata().hashCode();
        }
        int d10 = (((hashCode2 * 37) + 3) * 53) + u0.d(getDone());
        int i11 = this.resultCase_;
        if (i11 == 4) {
            i9 = ((d10 * 37) + 4) * 53;
            hashCode = getError().hashCode();
        } else {
            if (i11 == 5) {
                i9 = ((d10 * 37) + 5) * 53;
                hashCode = getResponse().hashCode();
            }
            int hashCode3 = (d10 * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode3;
            return hashCode3;
        }
        d10 = i9 + hashCode;
        int hashCode32 = (d10 * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode32;
        return hashCode32;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return com.google.longrunning.c.f14257c.d(Operation.class, c.class);
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
        return new Operation();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.name_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.name_);
        }
        if (this.metadata_ != null) {
            codedOutputStream.L0(2, getMetadata());
        }
        boolean z10 = this.done_;
        if (z10) {
            codedOutputStream.n0(3, z10);
        }
        if (this.resultCase_ == 4) {
            codedOutputStream.L0(4, (Status) this.result_);
        }
        if (this.resultCase_ == 5) {
            codedOutputStream.L0(5, (Any) this.result_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ Operation(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(Operation operation) {
        return DEFAULT_INSTANCE.toBuilder().e0(operation);
    }

    public static Operation parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Operation) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static Operation parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private Operation(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.resultCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Operation parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public Operation getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).e0(this);
    }

    public static Operation parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    public static Operation parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    private Operation() {
        this.resultCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
        this.name_ = "";
    }

    public static Operation parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static Operation parseFrom(InputStream inputStream) throws IOException {
        return (Operation) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static Operation parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Operation) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static Operation parseFrom(p pVar) throws IOException {
        return (Operation) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    private Operation(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            if (L != 10) {
                                if (L == 18) {
                                    Any any = this.metadata_;
                                    Any.b builder = any != null ? any.toBuilder() : null;
                                    Any any2 = (Any) pVar.B(Any.parser(), f0Var);
                                    this.metadata_ = any2;
                                    if (builder != null) {
                                        builder.d0(any2);
                                        this.metadata_ = builder.I();
                                    }
                                } else if (L == 24) {
                                    this.done_ = pVar.r();
                                } else if (L == 34) {
                                    Status.b builder2 = this.resultCase_ == 4 ? ((Status) this.result_).toBuilder() : null;
                                    o1 B = pVar.B(Status.parser(), f0Var);
                                    this.result_ = B;
                                    if (builder2 != null) {
                                        builder2.i0((Status) B);
                                        this.result_ = builder2.I();
                                    }
                                    this.resultCase_ = 4;
                                } else if (L != 42) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    Any.b builder3 = this.resultCase_ == 5 ? ((Any) this.result_).toBuilder() : null;
                                    o1 B2 = pVar.B(Any.parser(), f0Var);
                                    this.result_ = B2;
                                    if (builder3 != null) {
                                        builder3.d0((Any) B2);
                                        this.result_ = builder3.I();
                                    }
                                    this.resultCase_ = 5;
                                }
                            } else {
                                this.name_ = pVar.K();
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

    public static Operation parseFrom(p pVar, f0 f0Var) throws IOException {
        return (Operation) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
