package com.google.cloud.speech.v1p1beta1;

import com.google.cloud.speech.v1p1beta1.CustomClass;
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
import com.google.protobuf.r1;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class ListCustomClassesResponse extends GeneratedMessageV3 implements r1 {
    public static final int CUSTOM_CLASSES_FIELD_NUMBER = 1;
    public static final int NEXT_PAGE_TOKEN_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private List<CustomClass> customClasses_;
    private byte memoizedIsInitialized;
    private volatile Object nextPageToken_;
    private static final ListCustomClassesResponse DEFAULT_INSTANCE = new ListCustomClassesResponse();
    private static final e2<ListCustomClassesResponse> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a extends com.google.protobuf.c<ListCustomClassesResponse> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public ListCustomClassesResponse m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new ListCustomClassesResponse(pVar, f0Var, null);
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private int f12103e;

        /* renamed from: f  reason: collision with root package name */
        private List<CustomClass> f12104f;

        /* renamed from: g  reason: collision with root package name */
        private l2<CustomClass, CustomClass.b, com.google.cloud.speech.v1p1beta1.a> f12105g;

        /* renamed from: h  reason: collision with root package name */
        private Object f12106h;

        /* synthetic */ b(a aVar) {
            this();
        }

        private void a0() {
            if ((this.f12103e & 1) == 0) {
                this.f12104f = new ArrayList(this.f12104f);
                this.f12103e |= 1;
            }
        }

        private l2<CustomClass, CustomClass.b, com.google.cloud.speech.v1p1beta1.a> b0() {
            if (this.f12105g == null) {
                this.f12105g = new l2<>(this.f12104f, (this.f12103e & 1) != 0, H(), O());
                this.f12104f = null;
            }
            return this.f12105g;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                b0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return h.f12282v.d(ListCustomClassesResponse.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public ListCustomClassesResponse build() {
            ListCustomClassesResponse I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public ListCustomClassesResponse I() {
            ListCustomClassesResponse listCustomClassesResponse = new ListCustomClassesResponse(this, (a) null);
            int i9 = this.f12103e;
            l2<CustomClass, CustomClass.b, com.google.cloud.speech.v1p1beta1.a> l2Var = this.f12105g;
            if (l2Var == null) {
                if ((i9 & 1) != 0) {
                    this.f12104f = Collections.unmodifiableList(this.f12104f);
                    this.f12103e &= -2;
                }
                listCustomClassesResponse.customClasses_ = this.f12104f;
            } else {
                listCustomClassesResponse.customClasses_ = l2Var.e();
            }
            listCustomClassesResponse.nextPageToken_ = this.f12106h;
            Q();
            return listCustomClassesResponse;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: d0 */
        public ListCustomClassesResponse getDefaultInstanceForType() {
            return ListCustomClassesResponse.getDefaultInstance();
        }

        public b g0(ListCustomClassesResponse listCustomClassesResponse) {
            if (listCustomClassesResponse == ListCustomClassesResponse.getDefaultInstance()) {
                return this;
            }
            if (this.f12105g == null) {
                if (!listCustomClassesResponse.customClasses_.isEmpty()) {
                    if (this.f12104f.isEmpty()) {
                        this.f12104f = listCustomClassesResponse.customClasses_;
                        this.f12103e &= -2;
                    } else {
                        a0();
                        this.f12104f.addAll(listCustomClassesResponse.customClasses_);
                    }
                    R();
                }
            } else if (!listCustomClassesResponse.customClasses_.isEmpty()) {
                if (this.f12105g.k()) {
                    this.f12105g.f();
                    this.f12105g = null;
                    this.f12104f = listCustomClassesResponse.customClasses_;
                    this.f12103e &= -2;
                    this.f12105g = GeneratedMessageV3.alwaysUseFieldBuilders ? b0() : null;
                } else {
                    this.f12105g.b(listCustomClassesResponse.customClasses_);
                }
            }
            if (!listCustomClassesResponse.getNextPageToken().isEmpty()) {
                this.f12106h = listCustomClassesResponse.nextPageToken_;
                R();
            }
            z(((GeneratedMessageV3) listCustomClassesResponse).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return h.f12281u;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.cloud.speech.v1p1beta1.ListCustomClassesResponse.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.cloud.speech.v1p1beta1.ListCustomClassesResponse.access$800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.cloud.speech.v1p1beta1.ListCustomClassesResponse r3 = (com.google.cloud.speech.v1p1beta1.ListCustomClassesResponse) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                com.google.cloud.speech.v1p1beta1.ListCustomClassesResponse r4 = (com.google.cloud.speech.v1p1beta1.ListCustomClassesResponse) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.cloud.speech.v1p1beta1.ListCustomClassesResponse.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.cloud.speech.v1p1beta1.ListCustomClassesResponse$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof ListCustomClassesResponse) {
                return g0((ListCustomClassesResponse) l1Var);
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
            this.f12104f = Collections.emptyList();
            this.f12106h = "";
            e0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f12104f = Collections.emptyList();
            this.f12106h = "";
            e0();
        }
    }

    /* synthetic */ ListCustomClassesResponse(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static ListCustomClassesResponse getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return h.f12281u;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static ListCustomClassesResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (ListCustomClassesResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static ListCustomClassesResponse parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<ListCustomClassesResponse> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ListCustomClassesResponse)) {
            return super.equals(obj);
        }
        ListCustomClassesResponse listCustomClassesResponse = (ListCustomClassesResponse) obj;
        return getCustomClassesList().equals(listCustomClassesResponse.getCustomClassesList()) && getNextPageToken().equals(listCustomClassesResponse.getNextPageToken()) && this.unknownFields.equals(listCustomClassesResponse.unknownFields);
    }

    public CustomClass getCustomClasses(int i9) {
        return this.customClasses_.get(i9);
    }

    public int getCustomClassesCount() {
        return this.customClasses_.size();
    }

    public List<CustomClass> getCustomClassesList() {
        return this.customClasses_;
    }

    public com.google.cloud.speech.v1p1beta1.a getCustomClassesOrBuilder(int i9) {
        return this.customClasses_.get(i9);
    }

    public List<? extends com.google.cloud.speech.v1p1beta1.a> getCustomClassesOrBuilderList() {
        return this.customClasses_;
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

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<ListCustomClassesResponse> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < this.customClasses_.size(); i11++) {
            i10 += CodedOutputStream.G(1, this.customClasses_.get(i11));
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
        if (getCustomClassesCount() > 0) {
            hashCode = (((hashCode * 37) + 1) * 53) + getCustomClassesList().hashCode();
        }
        int hashCode2 = (((((hashCode * 37) + 2) * 53) + getNextPageToken().hashCode()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return h.f12282v.d(ListCustomClassesResponse.class, b.class);
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
        return new ListCustomClassesResponse();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        for (int i9 = 0; i9 < this.customClasses_.size(); i9++) {
            codedOutputStream.L0(1, this.customClasses_.get(i9));
        }
        if (!GeneratedMessageV3.isStringEmpty(this.nextPageToken_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.nextPageToken_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ ListCustomClassesResponse(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(ListCustomClassesResponse listCustomClassesResponse) {
        return DEFAULT_INSTANCE.toBuilder().g0(listCustomClassesResponse);
    }

    public static ListCustomClassesResponse parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ListCustomClassesResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static ListCustomClassesResponse parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private ListCustomClassesResponse(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static ListCustomClassesResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public ListCustomClassesResponse getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static ListCustomClassesResponse parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private ListCustomClassesResponse() {
        this.memoizedIsInitialized = (byte) -1;
        this.customClasses_ = Collections.emptyList();
        this.nextPageToken_ = "";
    }

    public static ListCustomClassesResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static ListCustomClassesResponse parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static ListCustomClassesResponse parseFrom(InputStream inputStream) throws IOException {
        return (ListCustomClassesResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static ListCustomClassesResponse parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ListCustomClassesResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private ListCustomClassesResponse(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                this.customClasses_ = new ArrayList();
                                z11 |= true;
                            }
                            this.customClasses_.add(pVar.B(CustomClass.parser(), f0Var));
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
                    this.customClasses_ = Collections.unmodifiableList(this.customClasses_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static ListCustomClassesResponse parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (ListCustomClassesResponse) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static ListCustomClassesResponse parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
        return (ListCustomClassesResponse) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
