package com.google.longrunning;

import com.google.longrunning.Operation;
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
import com.google.protobuf.l2;
import com.google.protobuf.p;
import com.google.protobuf.r1;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class ListOperationsResponse extends GeneratedMessageV3 implements r1 {
    public static final int NEXT_PAGE_TOKEN_FIELD_NUMBER = 2;
    public static final int OPERATIONS_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private volatile Object nextPageToken_;
    private List<Operation> operations_;
    private static final ListOperationsResponse DEFAULT_INSTANCE = new ListOperationsResponse();
    private static final e2<ListOperationsResponse> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a extends com.google.protobuf.c<ListOperationsResponse> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public ListOperationsResponse m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new ListOperationsResponse(pVar, f0Var, null);
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private int f14236e;

        /* renamed from: f  reason: collision with root package name */
        private List<Operation> f14237f;

        /* renamed from: g  reason: collision with root package name */
        private l2<Operation, Operation.c, com.google.longrunning.a> f14238g;

        /* renamed from: h  reason: collision with root package name */
        private Object f14239h;

        /* synthetic */ b(a aVar) {
            this();
        }

        private void a0() {
            if ((this.f14236e & 1) == 0) {
                this.f14237f = new ArrayList(this.f14237f);
                this.f14236e |= 1;
            }
        }

        private l2<Operation, Operation.c, com.google.longrunning.a> d0() {
            if (this.f14238g == null) {
                this.f14238g = new l2<>(this.f14237f, (this.f14236e & 1) != 0, H(), O());
                this.f14237f = null;
            }
            return this.f14238g;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                d0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return c.f14263i.d(ListOperationsResponse.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public ListOperationsResponse build() {
            ListOperationsResponse I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public ListOperationsResponse I() {
            ListOperationsResponse listOperationsResponse = new ListOperationsResponse(this, (a) null);
            int i9 = this.f14236e;
            l2<Operation, Operation.c, com.google.longrunning.a> l2Var = this.f14238g;
            if (l2Var == null) {
                if ((i9 & 1) != 0) {
                    this.f14237f = Collections.unmodifiableList(this.f14237f);
                    this.f14236e &= -2;
                }
                listOperationsResponse.operations_ = this.f14237f;
            } else {
                listOperationsResponse.operations_ = l2Var.e();
            }
            listOperationsResponse.nextPageToken_ = this.f14239h;
            Q();
            return listOperationsResponse;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: b0 */
        public ListOperationsResponse getDefaultInstanceForType() {
            return ListOperationsResponse.getDefaultInstance();
        }

        public b g0(ListOperationsResponse listOperationsResponse) {
            if (listOperationsResponse == ListOperationsResponse.getDefaultInstance()) {
                return this;
            }
            if (this.f14238g == null) {
                if (!listOperationsResponse.operations_.isEmpty()) {
                    if (this.f14237f.isEmpty()) {
                        this.f14237f = listOperationsResponse.operations_;
                        this.f14236e &= -2;
                    } else {
                        a0();
                        this.f14237f.addAll(listOperationsResponse.operations_);
                    }
                    R();
                }
            } else if (!listOperationsResponse.operations_.isEmpty()) {
                if (this.f14238g.k()) {
                    this.f14238g.f();
                    this.f14238g = null;
                    this.f14237f = listOperationsResponse.operations_;
                    this.f14236e &= -2;
                    this.f14238g = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                } else {
                    this.f14238g.b(listOperationsResponse.operations_);
                }
            }
            if (!listOperationsResponse.getNextPageToken().isEmpty()) {
                this.f14239h = listOperationsResponse.nextPageToken_;
                R();
            }
            z(((GeneratedMessageV3) listOperationsResponse).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return c.f14262h;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.longrunning.ListOperationsResponse.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.longrunning.ListOperationsResponse.access$800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.longrunning.ListOperationsResponse r3 = (com.google.longrunning.ListOperationsResponse) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                com.google.longrunning.ListOperationsResponse r4 = (com.google.longrunning.ListOperationsResponse) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.longrunning.ListOperationsResponse.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.longrunning.ListOperationsResponse$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof ListOperationsResponse) {
                return g0((ListOperationsResponse) l1Var);
            }
            super.P0(l1Var);
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

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: l0 */
        public final b f1(h3 h3Var) {
            return (b) super.f1(h3Var);
        }

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private b() {
            this.f14237f = Collections.emptyList();
            this.f14239h = "";
            e0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f14237f = Collections.emptyList();
            this.f14239h = "";
            e0();
        }
    }

    /* synthetic */ ListOperationsResponse(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static ListOperationsResponse getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return c.f14262h;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static ListOperationsResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (ListOperationsResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static ListOperationsResponse parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<ListOperationsResponse> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ListOperationsResponse)) {
            return super.equals(obj);
        }
        ListOperationsResponse listOperationsResponse = (ListOperationsResponse) obj;
        return getOperationsList().equals(listOperationsResponse.getOperationsList()) && getNextPageToken().equals(listOperationsResponse.getNextPageToken()) && this.unknownFields.equals(listOperationsResponse.unknownFields);
    }

    public String getNextPageToken() {
        Object obj = this.nextPageToken_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.nextPageToken_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getNextPageTokenBytes() {
        Object obj = this.nextPageToken_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.nextPageToken_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public Operation getOperations(int i9) {
        return this.operations_.get(i9);
    }

    public int getOperationsCount() {
        return this.operations_.size();
    }

    public List<Operation> getOperationsList() {
        return this.operations_;
    }

    public com.google.longrunning.a getOperationsOrBuilder(int i9) {
        return this.operations_.get(i9);
    }

    public List<? extends com.google.longrunning.a> getOperationsOrBuilderList() {
        return this.operations_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<ListOperationsResponse> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < this.operations_.size(); i11++) {
            i10 += CodedOutputStream.G(1, this.operations_.get(i11));
        }
        if (!GeneratedMessageV3.isStringEmpty(this.nextPageToken_)) {
            i10 += GeneratedMessageV3.computeStringSize(2, this.nextPageToken_);
        }
        int serializedSize = i10 + this.unknownFields.getSerializedSize();
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
        int hashCode = 779 + getDescriptor().hashCode();
        if (getOperationsCount() > 0) {
            hashCode = (((hashCode * 37) + 1) * 53) + getOperationsList().hashCode();
        }
        int hashCode2 = (((((hashCode * 37) + 2) * 53) + getNextPageToken().hashCode()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return c.f14263i.d(ListOperationsResponse.class, b.class);
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
        return new ListOperationsResponse();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        for (int i9 = 0; i9 < this.operations_.size(); i9++) {
            codedOutputStream.L0(1, this.operations_.get(i9));
        }
        if (!GeneratedMessageV3.isStringEmpty(this.nextPageToken_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.nextPageToken_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ ListOperationsResponse(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(ListOperationsResponse listOperationsResponse) {
        return DEFAULT_INSTANCE.toBuilder().g0(listOperationsResponse);
    }

    public static ListOperationsResponse parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ListOperationsResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static ListOperationsResponse parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private ListOperationsResponse(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static ListOperationsResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public ListOperationsResponse getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static ListOperationsResponse parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private ListOperationsResponse() {
        this.memoizedIsInitialized = (byte) -1;
        this.operations_ = Collections.emptyList();
        this.nextPageToken_ = "";
    }

    public static ListOperationsResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static ListOperationsResponse parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static ListOperationsResponse parseFrom(InputStream inputStream) throws IOException {
        return (ListOperationsResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static ListOperationsResponse parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ListOperationsResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private ListOperationsResponse(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                        if (L == 10) {
                            if (!(z11 & true)) {
                                this.operations_ = new ArrayList();
                                z11 |= true;
                            }
                            this.operations_.add(pVar.B(Operation.parser(), f0Var));
                        } else if (L != 18) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            this.nextPageToken_ = pVar.K();
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
                    this.operations_ = Collections.unmodifiableList(this.operations_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static ListOperationsResponse parseFrom(p pVar) throws IOException {
        return (ListOperationsResponse) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static ListOperationsResponse parseFrom(p pVar, f0 f0Var) throws IOException {
        return (ListOperationsResponse) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
