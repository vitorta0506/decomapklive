package io.grpc.reflection.v1alpha;

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
import io.grpc.reflection.v1alpha.ServiceResponse;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class ListServiceResponse extends GeneratedMessageV3 implements e {
    private static final ListServiceResponse DEFAULT_INSTANCE = new ListServiceResponse();
    private static final e2<ListServiceResponse> PARSER = new a();
    public static final int SERVICE_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private List<ServiceResponse> service_;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends com.google.protobuf.c<ListServiceResponse> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public ListServiceResponse m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new ListServiceResponse(pVar, f0Var, null);
        }
    }

    /* loaded from: classes5.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements e {

        /* renamed from: e  reason: collision with root package name */
        private int f45345e;

        /* renamed from: f  reason: collision with root package name */
        private List<ServiceResponse> f45346f;

        /* renamed from: g  reason: collision with root package name */
        private l2<ServiceResponse, ServiceResponse.b, h> f45347g;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f45345e & 1) == 0) {
                this.f45346f = new ArrayList(this.f45346f);
                this.f45345e |= 1;
            }
        }

        private l2<ServiceResponse, ServiceResponse.b, h> d0() {
            if (this.f45347g == null) {
                this.f45347g = new l2<>(this.f45346f, (this.f45345e & 1) != 0, H(), O());
                this.f45346f = null;
            }
            return this.f45347g;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                d0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return f.f45375l.d(ListServiceResponse.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public ListServiceResponse build() {
            ListServiceResponse I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public ListServiceResponse I() {
            ListServiceResponse listServiceResponse = new ListServiceResponse(this, (a) null);
            int i9 = this.f45345e;
            l2<ServiceResponse, ServiceResponse.b, h> l2Var = this.f45347g;
            if (l2Var == null) {
                if ((i9 & 1) != 0) {
                    this.f45346f = Collections.unmodifiableList(this.f45346f);
                    this.f45345e &= -2;
                }
                listServiceResponse.service_ = this.f45346f;
            } else {
                listServiceResponse.service_ = l2Var.e();
            }
            Q();
            return listServiceResponse;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: b0 */
        public ListServiceResponse getDefaultInstanceForType() {
            return ListServiceResponse.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.reflection.v1alpha.ListServiceResponse.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.reflection.v1alpha.ListServiceResponse.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.reflection.v1alpha.ListServiceResponse r3 = (io.grpc.reflection.v1alpha.ListServiceResponse) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.reflection.v1alpha.ListServiceResponse r4 = (io.grpc.reflection.v1alpha.ListServiceResponse) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.reflection.v1alpha.ListServiceResponse.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.reflection.v1alpha.ListServiceResponse$b");
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return f.f45374k;
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof ListServiceResponse) {
                return i0((ListServiceResponse) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b i0(ListServiceResponse listServiceResponse) {
            if (listServiceResponse == ListServiceResponse.getDefaultInstance()) {
                return this;
            }
            if (this.f45347g == null) {
                if (!listServiceResponse.service_.isEmpty()) {
                    if (this.f45346f.isEmpty()) {
                        this.f45346f = listServiceResponse.service_;
                        this.f45345e &= -2;
                    } else {
                        a0();
                        this.f45346f.addAll(listServiceResponse.service_);
                    }
                    R();
                }
            } else if (!listServiceResponse.service_.isEmpty()) {
                if (this.f45347g.k()) {
                    this.f45347g.f();
                    this.f45347g = null;
                    this.f45346f = listServiceResponse.service_;
                    this.f45345e &= -2;
                    this.f45347g = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                } else {
                    this.f45347g.b(listServiceResponse.service_);
                }
            }
            z(((GeneratedMessageV3) listServiceResponse).unknownFields);
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

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: l0 */
        public final b f1(h3 h3Var) {
            return (b) super.f1(h3Var);
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            this.f45346f = Collections.emptyList();
            e0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f45346f = Collections.emptyList();
            e0();
        }
    }

    /* synthetic */ ListServiceResponse(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static ListServiceResponse getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return f.f45374k;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static ListServiceResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (ListServiceResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static ListServiceResponse parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<ListServiceResponse> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ListServiceResponse)) {
            return super.equals(obj);
        }
        ListServiceResponse listServiceResponse = (ListServiceResponse) obj;
        return getServiceList().equals(listServiceResponse.getServiceList()) && this.unknownFields.equals(listServiceResponse.unknownFields);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<ListServiceResponse> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < this.service_.size(); i11++) {
            i10 += CodedOutputStream.G(1, this.service_.get(i11));
        }
        int serializedSize = i10 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public ServiceResponse getService(int i9) {
        return this.service_.get(i9);
    }

    public int getServiceCount() {
        return this.service_.size();
    }

    public List<ServiceResponse> getServiceList() {
        return this.service_;
    }

    public h getServiceOrBuilder(int i9) {
        return this.service_.get(i9);
    }

    public List<? extends h> getServiceOrBuilderList() {
        return this.service_;
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
        if (getServiceCount() > 0) {
            hashCode = (((hashCode * 37) + 1) * 53) + getServiceList().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return f.f45375l.d(ListServiceResponse.class, b.class);
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
        return new ListServiceResponse();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        for (int i9 = 0; i9 < this.service_.size(); i9++) {
            codedOutputStream.L0(1, this.service_.get(i9));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ ListServiceResponse(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(ListServiceResponse listServiceResponse) {
        return DEFAULT_INSTANCE.toBuilder().i0(listServiceResponse);
    }

    public static ListServiceResponse parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private ListServiceResponse(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static ListServiceResponse parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ListServiceResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static ListServiceResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public ListServiceResponse getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).i0(this);
    }

    public static ListServiceResponse parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private ListServiceResponse() {
        this.memoizedIsInitialized = (byte) -1;
        this.service_ = Collections.emptyList();
    }

    public static ListServiceResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static ListServiceResponse parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static ListServiceResponse parseFrom(InputStream inputStream) throws IOException {
        return (ListServiceResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private ListServiceResponse(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                        if (L != 10) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            if (!(z11 & true)) {
                                this.service_ = new ArrayList();
                                z11 |= true;
                            }
                            this.service_.add((ServiceResponse) pVar.B(ServiceResponse.parser(), f0Var));
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
                    this.service_ = Collections.unmodifiableList(this.service_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static ListServiceResponse parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ListServiceResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static ListServiceResponse parseFrom(p pVar) throws IOException {
        return (ListServiceResponse) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static ListServiceResponse parseFrom(p pVar, f0 f0Var) throws IOException {
        return (ListServiceResponse) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
