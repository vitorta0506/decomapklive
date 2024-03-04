package com.google.cloud.location;

import com.google.cloud.location.Location;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.c;
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
public final class ListLocationsResponse extends GeneratedMessageV3 implements r1 {
    public static final int LOCATIONS_FIELD_NUMBER = 1;
    public static final int NEXT_PAGE_TOKEN_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private List<Location> locations_;
    private byte memoizedIsInitialized;
    private volatile Object nextPageToken_;
    private static final ListLocationsResponse DEFAULT_INSTANCE = new ListLocationsResponse();
    private static final e2<ListLocationsResponse> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a extends c<ListLocationsResponse> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public ListLocationsResponse m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new ListLocationsResponse(pVar, f0Var, null);
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private int f11802e;

        /* renamed from: f  reason: collision with root package name */
        private List<Location> f11803f;

        /* renamed from: g  reason: collision with root package name */
        private l2<Location, Location.b, com.google.cloud.location.a> f11804g;

        /* renamed from: h  reason: collision with root package name */
        private Object f11805h;

        /* synthetic */ b(a aVar) {
            this();
        }

        private void a0() {
            if ((this.f11802e & 1) == 0) {
                this.f11803f = new ArrayList(this.f11803f);
                this.f11802e |= 1;
            }
        }

        private l2<Location, Location.b, com.google.cloud.location.a> d0() {
            if (this.f11804g == null) {
                this.f11804g = new l2<>(this.f11803f, (this.f11802e & 1) != 0, H(), O());
                this.f11803f = null;
            }
            return this.f11804g;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                d0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return com.google.cloud.location.b.f11816d.d(ListLocationsResponse.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public ListLocationsResponse build() {
            ListLocationsResponse I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public ListLocationsResponse I() {
            ListLocationsResponse listLocationsResponse = new ListLocationsResponse(this, (a) null);
            int i9 = this.f11802e;
            l2<Location, Location.b, com.google.cloud.location.a> l2Var = this.f11804g;
            if (l2Var == null) {
                if ((i9 & 1) != 0) {
                    this.f11803f = Collections.unmodifiableList(this.f11803f);
                    this.f11802e &= -2;
                }
                listLocationsResponse.locations_ = this.f11803f;
            } else {
                listLocationsResponse.locations_ = l2Var.e();
            }
            listLocationsResponse.nextPageToken_ = this.f11805h;
            Q();
            return listLocationsResponse;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: b0 */
        public ListLocationsResponse getDefaultInstanceForType() {
            return ListLocationsResponse.getDefaultInstance();
        }

        public b g0(ListLocationsResponse listLocationsResponse) {
            if (listLocationsResponse == ListLocationsResponse.getDefaultInstance()) {
                return this;
            }
            if (this.f11804g == null) {
                if (!listLocationsResponse.locations_.isEmpty()) {
                    if (this.f11803f.isEmpty()) {
                        this.f11803f = listLocationsResponse.locations_;
                        this.f11802e &= -2;
                    } else {
                        a0();
                        this.f11803f.addAll(listLocationsResponse.locations_);
                    }
                    R();
                }
            } else if (!listLocationsResponse.locations_.isEmpty()) {
                if (this.f11804g.k()) {
                    this.f11804g.f();
                    this.f11804g = null;
                    this.f11803f = listLocationsResponse.locations_;
                    this.f11802e &= -2;
                    this.f11804g = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                } else {
                    this.f11804g.b(listLocationsResponse.locations_);
                }
            }
            if (!listLocationsResponse.getNextPageToken().isEmpty()) {
                this.f11805h = listLocationsResponse.nextPageToken_;
                R();
            }
            z(((GeneratedMessageV3) listLocationsResponse).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return com.google.cloud.location.b.f11815c;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.cloud.location.ListLocationsResponse.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.cloud.location.ListLocationsResponse.access$800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.cloud.location.ListLocationsResponse r3 = (com.google.cloud.location.ListLocationsResponse) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                com.google.cloud.location.ListLocationsResponse r4 = (com.google.cloud.location.ListLocationsResponse) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.cloud.location.ListLocationsResponse.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.cloud.location.ListLocationsResponse$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof ListLocationsResponse) {
                return g0((ListLocationsResponse) l1Var);
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
            this.f11803f = Collections.emptyList();
            this.f11805h = "";
            e0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f11803f = Collections.emptyList();
            this.f11805h = "";
            e0();
        }
    }

    /* synthetic */ ListLocationsResponse(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static ListLocationsResponse getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return com.google.cloud.location.b.f11815c;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static ListLocationsResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (ListLocationsResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static ListLocationsResponse parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<ListLocationsResponse> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ListLocationsResponse)) {
            return super.equals(obj);
        }
        ListLocationsResponse listLocationsResponse = (ListLocationsResponse) obj;
        return getLocationsList().equals(listLocationsResponse.getLocationsList()) && getNextPageToken().equals(listLocationsResponse.getNextPageToken()) && this.unknownFields.equals(listLocationsResponse.unknownFields);
    }

    public Location getLocations(int i9) {
        return this.locations_.get(i9);
    }

    public int getLocationsCount() {
        return this.locations_.size();
    }

    public List<Location> getLocationsList() {
        return this.locations_;
    }

    public com.google.cloud.location.a getLocationsOrBuilder(int i9) {
        return this.locations_.get(i9);
    }

    public List<? extends com.google.cloud.location.a> getLocationsOrBuilderList() {
        return this.locations_;
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
    public e2<ListLocationsResponse> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < this.locations_.size(); i11++) {
            i10 += CodedOutputStream.G(1, this.locations_.get(i11));
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
        if (getLocationsCount() > 0) {
            hashCode = (((hashCode * 37) + 1) * 53) + getLocationsList().hashCode();
        }
        int hashCode2 = (((((hashCode * 37) + 2) * 53) + getNextPageToken().hashCode()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return com.google.cloud.location.b.f11816d.d(ListLocationsResponse.class, b.class);
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
        return new ListLocationsResponse();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        for (int i9 = 0; i9 < this.locations_.size(); i9++) {
            codedOutputStream.L0(1, this.locations_.get(i9));
        }
        if (!GeneratedMessageV3.isStringEmpty(this.nextPageToken_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.nextPageToken_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ ListLocationsResponse(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(ListLocationsResponse listLocationsResponse) {
        return DEFAULT_INSTANCE.toBuilder().g0(listLocationsResponse);
    }

    public static ListLocationsResponse parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ListLocationsResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static ListLocationsResponse parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private ListLocationsResponse(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static ListLocationsResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public ListLocationsResponse getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static ListLocationsResponse parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private ListLocationsResponse() {
        this.memoizedIsInitialized = (byte) -1;
        this.locations_ = Collections.emptyList();
        this.nextPageToken_ = "";
    }

    public static ListLocationsResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static ListLocationsResponse parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static ListLocationsResponse parseFrom(InputStream inputStream) throws IOException {
        return (ListLocationsResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static ListLocationsResponse parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ListLocationsResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private ListLocationsResponse(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                this.locations_ = new ArrayList();
                                z11 |= true;
                            }
                            this.locations_.add(pVar.B(Location.parser(), f0Var));
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
                    this.locations_ = Collections.unmodifiableList(this.locations_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static ListLocationsResponse parseFrom(p pVar) throws IOException {
        return (ListLocationsResponse) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static ListLocationsResponse parseFrom(p pVar, f0 f0Var) throws IOException {
        return (ListLocationsResponse) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
