package com.google.cloud.speech.v1p1beta1;

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
import com.google.protobuf.r1;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class ListCustomClassesRequest extends GeneratedMessageV3 implements r1 {
    public static final int PAGE_SIZE_FIELD_NUMBER = 2;
    public static final int PAGE_TOKEN_FIELD_NUMBER = 3;
    public static final int PARENT_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private int pageSize_;
    private volatile Object pageToken_;
    private volatile Object parent_;
    private static final ListCustomClassesRequest DEFAULT_INSTANCE = new ListCustomClassesRequest();
    private static final e2<ListCustomClassesRequest> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a extends com.google.protobuf.c<ListCustomClassesRequest> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public ListCustomClassesRequest m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new ListCustomClassesRequest(pVar, f0Var, null);
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private Object f12100e;

        /* renamed from: f  reason: collision with root package name */
        private int f12101f;

        /* renamed from: g  reason: collision with root package name */
        private Object f12102g;

        /* synthetic */ b(a aVar) {
            this();
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return h.f12280t.d(ListCustomClassesRequest.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public ListCustomClassesRequest build() {
            ListCustomClassesRequest I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public ListCustomClassesRequest I() {
            ListCustomClassesRequest listCustomClassesRequest = new ListCustomClassesRequest(this, (a) null);
            listCustomClassesRequest.parent_ = this.f12100e;
            listCustomClassesRequest.pageSize_ = this.f12101f;
            listCustomClassesRequest.pageToken_ = this.f12102g;
            Q();
            return listCustomClassesRequest;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public ListCustomClassesRequest getDefaultInstanceForType() {
            return ListCustomClassesRequest.getDefaultInstance();
        }

        public b d0(ListCustomClassesRequest listCustomClassesRequest) {
            if (listCustomClassesRequest == ListCustomClassesRequest.getDefaultInstance()) {
                return this;
            }
            if (!listCustomClassesRequest.getParent().isEmpty()) {
                this.f12100e = listCustomClassesRequest.parent_;
                R();
            }
            if (listCustomClassesRequest.getPageSize() != 0) {
                j0(listCustomClassesRequest.getPageSize());
            }
            if (!listCustomClassesRequest.getPageToken().isEmpty()) {
                this.f12102g = listCustomClassesRequest.pageToken_;
                R();
            }
            z(((GeneratedMessageV3) listCustomClassesRequest).unknownFields);
            R();
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.cloud.speech.v1p1beta1.ListCustomClassesRequest.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.cloud.speech.v1p1beta1.ListCustomClassesRequest.access$800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.cloud.speech.v1p1beta1.ListCustomClassesRequest r3 = (com.google.cloud.speech.v1p1beta1.ListCustomClassesRequest) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.d0(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                com.google.cloud.speech.v1p1beta1.ListCustomClassesRequest r4 = (com.google.cloud.speech.v1p1beta1.ListCustomClassesRequest) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.d0(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.cloud.speech.v1p1beta1.ListCustomClassesRequest.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.cloud.speech.v1p1beta1.ListCustomClassesRequest$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof ListCustomClassesRequest) {
                return d0((ListCustomClassesRequest) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return h.f12279s;
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

        public b j0(int i9) {
            this.f12101f = i9;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: k0 */
        public final b f1(h3 h3Var) {
            return (b) super.f1(h3Var);
        }

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private b() {
            this.f12100e = "";
            this.f12102g = "";
            b0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f12100e = "";
            this.f12102g = "";
            b0();
        }
    }

    /* synthetic */ ListCustomClassesRequest(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static ListCustomClassesRequest getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return h.f12279s;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static ListCustomClassesRequest parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (ListCustomClassesRequest) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static ListCustomClassesRequest parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<ListCustomClassesRequest> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ListCustomClassesRequest)) {
            return super.equals(obj);
        }
        ListCustomClassesRequest listCustomClassesRequest = (ListCustomClassesRequest) obj;
        return getParent().equals(listCustomClassesRequest.getParent()) && getPageSize() == listCustomClassesRequest.getPageSize() && getPageToken().equals(listCustomClassesRequest.getPageToken()) && this.unknownFields.equals(listCustomClassesRequest.unknownFields);
    }

    public int getPageSize() {
        return this.pageSize_;
    }

    public String getPageToken() {
        Object obj = this.pageToken_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.pageToken_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getPageTokenBytes() {
        Object obj = this.pageToken_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.pageToken_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public String getParent() {
        Object obj = this.parent_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.parent_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getParentBytes() {
        Object obj = this.parent_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.parent_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<ListCustomClassesRequest> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = GeneratedMessageV3.isStringEmpty(this.parent_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.parent_);
        int i10 = this.pageSize_;
        if (i10 != 0) {
            computeStringSize += CodedOutputStream.x(2, i10);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.pageToken_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(3, this.pageToken_);
        }
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
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
        int hashCode = ((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getParent().hashCode()) * 37) + 2) * 53) + getPageSize()) * 37) + 3) * 53) + getPageToken().hashCode()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode;
        return hashCode;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return h.f12280t.d(ListCustomClassesRequest.class, b.class);
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
        return new ListCustomClassesRequest();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.parent_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.parent_);
        }
        int i9 = this.pageSize_;
        if (i9 != 0) {
            codedOutputStream.H0(2, i9);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.pageToken_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 3, this.pageToken_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ ListCustomClassesRequest(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(ListCustomClassesRequest listCustomClassesRequest) {
        return DEFAULT_INSTANCE.toBuilder().d0(listCustomClassesRequest);
    }

    public static ListCustomClassesRequest parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ListCustomClassesRequest) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static ListCustomClassesRequest parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private ListCustomClassesRequest(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static ListCustomClassesRequest parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public ListCustomClassesRequest getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).d0(this);
    }

    public static ListCustomClassesRequest parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private ListCustomClassesRequest() {
        this.memoizedIsInitialized = (byte) -1;
        this.parent_ = "";
        this.pageToken_ = "";
    }

    public static ListCustomClassesRequest parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static ListCustomClassesRequest parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static ListCustomClassesRequest parseFrom(InputStream inputStream) throws IOException {
        return (ListCustomClassesRequest) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static ListCustomClassesRequest parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ListCustomClassesRequest) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    private ListCustomClassesRequest(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            this.parent_ = pVar.K();
                        } else if (L == 16) {
                            this.pageSize_ = pVar.z();
                        } else if (L != 26) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            this.pageToken_ = pVar.K();
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

    public static ListCustomClassesRequest parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (ListCustomClassesRequest) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static ListCustomClassesRequest parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
        return (ListCustomClassesRequest) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
