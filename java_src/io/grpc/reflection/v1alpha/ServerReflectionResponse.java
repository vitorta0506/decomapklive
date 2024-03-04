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
import com.google.protobuf.o1;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import com.google.protobuf.u0;
import io.grpc.reflection.v1alpha.ErrorResponse;
import io.grpc.reflection.v1alpha.ExtensionNumberResponse;
import io.grpc.reflection.v1alpha.FileDescriptorResponse;
import io.grpc.reflection.v1alpha.ListServiceResponse;
import io.grpc.reflection.v1alpha.ServerReflectionRequest;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class ServerReflectionResponse extends GeneratedMessageV3 implements r1 {
    public static final int ALL_EXTENSION_NUMBERS_RESPONSE_FIELD_NUMBER = 5;
    public static final int ERROR_RESPONSE_FIELD_NUMBER = 7;
    public static final int FILE_DESCRIPTOR_RESPONSE_FIELD_NUMBER = 4;
    public static final int LIST_SERVICES_RESPONSE_FIELD_NUMBER = 6;
    public static final int ORIGINAL_REQUEST_FIELD_NUMBER = 2;
    public static final int VALID_HOST_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private int messageResponseCase_;
    private Object messageResponse_;
    private ServerReflectionRequest originalRequest_;
    private volatile Object validHost_;
    private static final ServerReflectionResponse DEFAULT_INSTANCE = new ServerReflectionResponse();
    private static final e2<ServerReflectionResponse> PARSER = new a();

    /* loaded from: classes5.dex */
    public enum MessageResponseCase implements u0.c {
        FILE_DESCRIPTOR_RESPONSE(4),
        ALL_EXTENSION_NUMBERS_RESPONSE(5),
        LIST_SERVICES_RESPONSE(6),
        ERROR_RESPONSE(7),
        MESSAGERESPONSE_NOT_SET(0);
        
        private final int value;

        MessageResponseCase(int i9) {
            this.value = i9;
        }

        public static MessageResponseCase forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 4) {
                    if (i9 != 5) {
                        if (i9 != 6) {
                            if (i9 != 7) {
                                return null;
                            }
                            return ERROR_RESPONSE;
                        }
                        return LIST_SERVICES_RESPONSE;
                    }
                    return ALL_EXTENSION_NUMBERS_RESPONSE;
                }
                return FILE_DESCRIPTOR_RESPONSE;
            }
            return MESSAGERESPONSE_NOT_SET;
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static MessageResponseCase valueOf(int i9) {
            return forNumber(i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends com.google.protobuf.c<ServerReflectionResponse> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public ServerReflectionResponse m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new ServerReflectionResponse(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f45353a;

        static {
            int[] iArr = new int[MessageResponseCase.values().length];
            f45353a = iArr;
            try {
                iArr[MessageResponseCase.FILE_DESCRIPTOR_RESPONSE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f45353a[MessageResponseCase.ALL_EXTENSION_NUMBERS_RESPONSE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f45353a[MessageResponseCase.LIST_SERVICES_RESPONSE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f45353a[MessageResponseCase.ERROR_RESPONSE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f45353a[MessageResponseCase.MESSAGERESPONSE_NOT_SET.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* loaded from: classes5.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private int f45354e;

        /* renamed from: f  reason: collision with root package name */
        private Object f45355f;

        /* renamed from: g  reason: collision with root package name */
        private Object f45356g;

        /* renamed from: h  reason: collision with root package name */
        private ServerReflectionRequest f45357h;

        /* renamed from: i  reason: collision with root package name */
        private q2<ServerReflectionRequest, ServerReflectionRequest.c, g> f45358i;

        /* renamed from: j  reason: collision with root package name */
        private q2<FileDescriptorResponse, FileDescriptorResponse.b, d> f45359j;

        /* renamed from: k  reason: collision with root package name */
        private q2<ExtensionNumberResponse, ExtensionNumberResponse.b, io.grpc.reflection.v1alpha.b> f45360k;

        /* renamed from: l  reason: collision with root package name */
        private q2<ListServiceResponse, ListServiceResponse.b, e> f45361l;

        /* renamed from: m  reason: collision with root package name */
        private q2<ErrorResponse, ErrorResponse.b, io.grpc.reflection.v1alpha.a> f45362m;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return f.f45369f.d(ServerReflectionResponse.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public ServerReflectionResponse build() {
            ServerReflectionResponse I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public ServerReflectionResponse I() {
            ServerReflectionResponse serverReflectionResponse = new ServerReflectionResponse(this, (a) null);
            serverReflectionResponse.validHost_ = this.f45356g;
            q2<ServerReflectionRequest, ServerReflectionRequest.c, g> q2Var = this.f45358i;
            if (q2Var == null) {
                serverReflectionResponse.originalRequest_ = this.f45357h;
            } else {
                serverReflectionResponse.originalRequest_ = q2Var.b();
            }
            if (this.f45354e == 4) {
                q2<FileDescriptorResponse, FileDescriptorResponse.b, d> q2Var2 = this.f45359j;
                if (q2Var2 == null) {
                    serverReflectionResponse.messageResponse_ = this.f45355f;
                } else {
                    serverReflectionResponse.messageResponse_ = q2Var2.b();
                }
            }
            if (this.f45354e == 5) {
                q2<ExtensionNumberResponse, ExtensionNumberResponse.b, io.grpc.reflection.v1alpha.b> q2Var3 = this.f45360k;
                if (q2Var3 == null) {
                    serverReflectionResponse.messageResponse_ = this.f45355f;
                } else {
                    serverReflectionResponse.messageResponse_ = q2Var3.b();
                }
            }
            if (this.f45354e == 6) {
                q2<ListServiceResponse, ListServiceResponse.b, e> q2Var4 = this.f45361l;
                if (q2Var4 == null) {
                    serverReflectionResponse.messageResponse_ = this.f45355f;
                } else {
                    serverReflectionResponse.messageResponse_ = q2Var4.b();
                }
            }
            if (this.f45354e == 7) {
                q2<ErrorResponse, ErrorResponse.b, io.grpc.reflection.v1alpha.a> q2Var5 = this.f45362m;
                if (q2Var5 == null) {
                    serverReflectionResponse.messageResponse_ = this.f45355f;
                } else {
                    serverReflectionResponse.messageResponse_ = q2Var5.b();
                }
            }
            serverReflectionResponse.messageResponseCase_ = this.f45354e;
            Q();
            return serverReflectionResponse;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public ServerReflectionResponse getDefaultInstanceForType() {
            return ServerReflectionResponse.getDefaultInstance();
        }

        public c d0(ExtensionNumberResponse extensionNumberResponse) {
            q2<ExtensionNumberResponse, ExtensionNumberResponse.b, io.grpc.reflection.v1alpha.b> q2Var = this.f45360k;
            if (q2Var == null) {
                if (this.f45354e == 5 && this.f45355f != ExtensionNumberResponse.getDefaultInstance()) {
                    this.f45355f = ExtensionNumberResponse.newBuilder((ExtensionNumberResponse) this.f45355f).h0(extensionNumberResponse).I();
                } else {
                    this.f45355f = extensionNumberResponse;
                }
                R();
            } else {
                if (this.f45354e == 5) {
                    q2Var.e(extensionNumberResponse);
                }
                this.f45360k.g(extensionNumberResponse);
            }
            this.f45354e = 5;
            return this;
        }

        public c e0(ErrorResponse errorResponse) {
            q2<ErrorResponse, ErrorResponse.b, io.grpc.reflection.v1alpha.a> q2Var = this.f45362m;
            if (q2Var == null) {
                if (this.f45354e == 7 && this.f45355f != ErrorResponse.getDefaultInstance()) {
                    this.f45355f = ErrorResponse.newBuilder((ErrorResponse) this.f45355f).g0(errorResponse).I();
                } else {
                    this.f45355f = errorResponse;
                }
                R();
            } else {
                if (this.f45354e == 7) {
                    q2Var.e(errorResponse);
                }
                this.f45362m.g(errorResponse);
            }
            this.f45354e = 7;
            return this;
        }

        public c g0(FileDescriptorResponse fileDescriptorResponse) {
            q2<FileDescriptorResponse, FileDescriptorResponse.b, d> q2Var = this.f45359j;
            if (q2Var == null) {
                if (this.f45354e == 4 && this.f45355f != FileDescriptorResponse.getDefaultInstance()) {
                    this.f45355f = FileDescriptorResponse.newBuilder((FileDescriptorResponse) this.f45355f).h0(fileDescriptorResponse).I();
                } else {
                    this.f45355f = fileDescriptorResponse;
                }
                R();
            } else {
                if (this.f45354e == 4) {
                    q2Var.e(fileDescriptorResponse);
                }
                this.f45359j.g(fileDescriptorResponse);
            }
            this.f45354e = 4;
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return f.f45368e;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.reflection.v1alpha.ServerReflectionResponse.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.reflection.v1alpha.ServerReflectionResponse.access$900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.reflection.v1alpha.ServerReflectionResponse r3 = (io.grpc.reflection.v1alpha.ServerReflectionResponse) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.j0(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                io.grpc.reflection.v1alpha.ServerReflectionResponse r4 = (io.grpc.reflection.v1alpha.ServerReflectionResponse) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.j0(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.reflection.v1alpha.ServerReflectionResponse.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.reflection.v1alpha.ServerReflectionResponse$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public c v(l1 l1Var) {
            if (l1Var instanceof ServerReflectionResponse) {
                return j0((ServerReflectionResponse) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public c j0(ServerReflectionResponse serverReflectionResponse) {
            if (serverReflectionResponse == ServerReflectionResponse.getDefaultInstance()) {
                return this;
            }
            if (!serverReflectionResponse.getValidHost().isEmpty()) {
                this.f45356g = serverReflectionResponse.validHost_;
                R();
            }
            if (serverReflectionResponse.hasOriginalRequest()) {
                l0(serverReflectionResponse.getOriginalRequest());
            }
            int i9 = b.f45353a[serverReflectionResponse.getMessageResponseCase().ordinal()];
            if (i9 == 1) {
                g0(serverReflectionResponse.getFileDescriptorResponse());
            } else if (i9 == 2) {
                d0(serverReflectionResponse.getAllExtensionNumbersResponse());
            } else if (i9 == 3) {
                k0(serverReflectionResponse.getListServicesResponse());
            } else if (i9 == 4) {
                e0(serverReflectionResponse.getErrorResponse());
            }
            z(((GeneratedMessageV3) serverReflectionResponse).unknownFields);
            R();
            return this;
        }

        public c k0(ListServiceResponse listServiceResponse) {
            q2<ListServiceResponse, ListServiceResponse.b, e> q2Var = this.f45361l;
            if (q2Var == null) {
                if (this.f45354e == 6 && this.f45355f != ListServiceResponse.getDefaultInstance()) {
                    this.f45355f = ListServiceResponse.newBuilder((ListServiceResponse) this.f45355f).i0(listServiceResponse).I();
                } else {
                    this.f45355f = listServiceResponse;
                }
                R();
            } else {
                if (this.f45354e == 6) {
                    q2Var.e(listServiceResponse);
                }
                this.f45361l.g(listServiceResponse);
            }
            this.f45354e = 6;
            return this;
        }

        public c l0(ServerReflectionRequest serverReflectionRequest) {
            q2<ServerReflectionRequest, ServerReflectionRequest.c, g> q2Var = this.f45358i;
            if (q2Var == null) {
                ServerReflectionRequest serverReflectionRequest2 = this.f45357h;
                if (serverReflectionRequest2 != null) {
                    this.f45357h = ServerReflectionRequest.newBuilder(serverReflectionRequest2).h0(serverReflectionRequest).I();
                } else {
                    this.f45357h = serverReflectionRequest;
                }
                R();
            } else {
                q2Var.e(serverReflectionRequest);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: m0 */
        public final c z(h3 h3Var) {
            return (c) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: n0 */
        public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.c(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: o0 */
        public final c f1(h3 h3Var) {
            return (c) super.f1(h3Var);
        }

        /* synthetic */ c(a aVar) {
            this();
        }

        private c() {
            this.f45354e = 0;
            this.f45356g = "";
            b0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f45354e = 0;
            this.f45356g = "";
            b0();
        }
    }

    /* synthetic */ ServerReflectionResponse(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static ServerReflectionResponse getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return f.f45368e;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static ServerReflectionResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (ServerReflectionResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static ServerReflectionResponse parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<ServerReflectionResponse> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ServerReflectionResponse)) {
            return super.equals(obj);
        }
        ServerReflectionResponse serverReflectionResponse = (ServerReflectionResponse) obj;
        if (getValidHost().equals(serverReflectionResponse.getValidHost()) && hasOriginalRequest() == serverReflectionResponse.hasOriginalRequest()) {
            if ((!hasOriginalRequest() || getOriginalRequest().equals(serverReflectionResponse.getOriginalRequest())) && getMessageResponseCase().equals(serverReflectionResponse.getMessageResponseCase())) {
                int i9 = this.messageResponseCase_;
                if (i9 != 4) {
                    if (i9 != 5) {
                        if (i9 != 6) {
                            if (i9 == 7 && !getErrorResponse().equals(serverReflectionResponse.getErrorResponse())) {
                                return false;
                            }
                        } else if (!getListServicesResponse().equals(serverReflectionResponse.getListServicesResponse())) {
                            return false;
                        }
                    } else if (!getAllExtensionNumbersResponse().equals(serverReflectionResponse.getAllExtensionNumbersResponse())) {
                        return false;
                    }
                } else if (!getFileDescriptorResponse().equals(serverReflectionResponse.getFileDescriptorResponse())) {
                    return false;
                }
                return this.unknownFields.equals(serverReflectionResponse.unknownFields);
            }
            return false;
        }
        return false;
    }

    public ExtensionNumberResponse getAllExtensionNumbersResponse() {
        if (this.messageResponseCase_ == 5) {
            return (ExtensionNumberResponse) this.messageResponse_;
        }
        return ExtensionNumberResponse.getDefaultInstance();
    }

    public io.grpc.reflection.v1alpha.b getAllExtensionNumbersResponseOrBuilder() {
        if (this.messageResponseCase_ == 5) {
            return (ExtensionNumberResponse) this.messageResponse_;
        }
        return ExtensionNumberResponse.getDefaultInstance();
    }

    public ErrorResponse getErrorResponse() {
        if (this.messageResponseCase_ == 7) {
            return (ErrorResponse) this.messageResponse_;
        }
        return ErrorResponse.getDefaultInstance();
    }

    public io.grpc.reflection.v1alpha.a getErrorResponseOrBuilder() {
        if (this.messageResponseCase_ == 7) {
            return (ErrorResponse) this.messageResponse_;
        }
        return ErrorResponse.getDefaultInstance();
    }

    public FileDescriptorResponse getFileDescriptorResponse() {
        if (this.messageResponseCase_ == 4) {
            return (FileDescriptorResponse) this.messageResponse_;
        }
        return FileDescriptorResponse.getDefaultInstance();
    }

    public d getFileDescriptorResponseOrBuilder() {
        if (this.messageResponseCase_ == 4) {
            return (FileDescriptorResponse) this.messageResponse_;
        }
        return FileDescriptorResponse.getDefaultInstance();
    }

    public ListServiceResponse getListServicesResponse() {
        if (this.messageResponseCase_ == 6) {
            return (ListServiceResponse) this.messageResponse_;
        }
        return ListServiceResponse.getDefaultInstance();
    }

    public e getListServicesResponseOrBuilder() {
        if (this.messageResponseCase_ == 6) {
            return (ListServiceResponse) this.messageResponse_;
        }
        return ListServiceResponse.getDefaultInstance();
    }

    public MessageResponseCase getMessageResponseCase() {
        return MessageResponseCase.forNumber(this.messageResponseCase_);
    }

    public ServerReflectionRequest getOriginalRequest() {
        ServerReflectionRequest serverReflectionRequest = this.originalRequest_;
        return serverReflectionRequest == null ? ServerReflectionRequest.getDefaultInstance() : serverReflectionRequest;
    }

    public g getOriginalRequestOrBuilder() {
        return getOriginalRequest();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<ServerReflectionResponse> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = GeneratedMessageV3.isStringEmpty(this.validHost_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.validHost_);
        if (this.originalRequest_ != null) {
            computeStringSize += CodedOutputStream.G(2, getOriginalRequest());
        }
        if (this.messageResponseCase_ == 4) {
            computeStringSize += CodedOutputStream.G(4, (FileDescriptorResponse) this.messageResponse_);
        }
        if (this.messageResponseCase_ == 5) {
            computeStringSize += CodedOutputStream.G(5, (ExtensionNumberResponse) this.messageResponse_);
        }
        if (this.messageResponseCase_ == 6) {
            computeStringSize += CodedOutputStream.G(6, (ListServiceResponse) this.messageResponse_);
        }
        if (this.messageResponseCase_ == 7) {
            computeStringSize += CodedOutputStream.G(7, (ErrorResponse) this.messageResponse_);
        }
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public String getValidHost() {
        Object obj = this.validHost_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.validHost_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getValidHostBytes() {
        Object obj = this.validHost_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.validHost_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public boolean hasAllExtensionNumbersResponse() {
        return this.messageResponseCase_ == 5;
    }

    public boolean hasErrorResponse() {
        return this.messageResponseCase_ == 7;
    }

    public boolean hasFileDescriptorResponse() {
        return this.messageResponseCase_ == 4;
    }

    public boolean hasListServicesResponse() {
        return this.messageResponseCase_ == 6;
    }

    public boolean hasOriginalRequest() {
        return this.originalRequest_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9;
        int hashCode;
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int hashCode2 = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getValidHost().hashCode();
        if (hasOriginalRequest()) {
            hashCode2 = (((hashCode2 * 37) + 2) * 53) + getOriginalRequest().hashCode();
        }
        int i11 = this.messageResponseCase_;
        if (i11 == 4) {
            i9 = ((hashCode2 * 37) + 4) * 53;
            hashCode = getFileDescriptorResponse().hashCode();
        } else if (i11 == 5) {
            i9 = ((hashCode2 * 37) + 5) * 53;
            hashCode = getAllExtensionNumbersResponse().hashCode();
        } else if (i11 == 6) {
            i9 = ((hashCode2 * 37) + 6) * 53;
            hashCode = getListServicesResponse().hashCode();
        } else {
            if (i11 == 7) {
                i9 = ((hashCode2 * 37) + 7) * 53;
                hashCode = getErrorResponse().hashCode();
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
        return f.f45369f.d(ServerReflectionResponse.class, c.class);
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
        return new ServerReflectionResponse();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.validHost_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.validHost_);
        }
        if (this.originalRequest_ != null) {
            codedOutputStream.L0(2, getOriginalRequest());
        }
        if (this.messageResponseCase_ == 4) {
            codedOutputStream.L0(4, (FileDescriptorResponse) this.messageResponse_);
        }
        if (this.messageResponseCase_ == 5) {
            codedOutputStream.L0(5, (ExtensionNumberResponse) this.messageResponse_);
        }
        if (this.messageResponseCase_ == 6) {
            codedOutputStream.L0(6, (ListServiceResponse) this.messageResponse_);
        }
        if (this.messageResponseCase_ == 7) {
            codedOutputStream.L0(7, (ErrorResponse) this.messageResponse_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ ServerReflectionResponse(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(ServerReflectionResponse serverReflectionResponse) {
        return DEFAULT_INSTANCE.toBuilder().j0(serverReflectionResponse);
    }

    public static ServerReflectionResponse parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private ServerReflectionResponse(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.messageResponseCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static ServerReflectionResponse parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ServerReflectionResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static ServerReflectionResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public ServerReflectionResponse getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).j0(this);
    }

    public static ServerReflectionResponse parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    public static ServerReflectionResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    private ServerReflectionResponse() {
        this.messageResponseCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
        this.validHost_ = "";
    }

    public static ServerReflectionResponse parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static ServerReflectionResponse parseFrom(InputStream inputStream) throws IOException {
        return (ServerReflectionResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static ServerReflectionResponse parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ServerReflectionResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    private ServerReflectionResponse(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    int L = pVar.L();
                    if (L != 0) {
                        if (L != 10) {
                            if (L == 18) {
                                ServerReflectionRequest serverReflectionRequest = this.originalRequest_;
                                ServerReflectionRequest.c builder = serverReflectionRequest != null ? serverReflectionRequest.toBuilder() : null;
                                ServerReflectionRequest serverReflectionRequest2 = (ServerReflectionRequest) pVar.B(ServerReflectionRequest.parser(), f0Var);
                                this.originalRequest_ = serverReflectionRequest2;
                                if (builder != null) {
                                    builder.h0(serverReflectionRequest2);
                                    this.originalRequest_ = builder.I();
                                }
                            } else if (L == 34) {
                                FileDescriptorResponse.b builder2 = this.messageResponseCase_ == 4 ? ((FileDescriptorResponse) this.messageResponse_).toBuilder() : null;
                                o1 B = pVar.B(FileDescriptorResponse.parser(), f0Var);
                                this.messageResponse_ = B;
                                if (builder2 != null) {
                                    builder2.h0((FileDescriptorResponse) B);
                                    this.messageResponse_ = builder2.I();
                                }
                                this.messageResponseCase_ = 4;
                            } else if (L == 42) {
                                ExtensionNumberResponse.b builder3 = this.messageResponseCase_ == 5 ? ((ExtensionNumberResponse) this.messageResponse_).toBuilder() : null;
                                o1 B2 = pVar.B(ExtensionNumberResponse.parser(), f0Var);
                                this.messageResponse_ = B2;
                                if (builder3 != null) {
                                    builder3.h0((ExtensionNumberResponse) B2);
                                    this.messageResponse_ = builder3.I();
                                }
                                this.messageResponseCase_ = 5;
                            } else if (L == 50) {
                                ListServiceResponse.b builder4 = this.messageResponseCase_ == 6 ? ((ListServiceResponse) this.messageResponse_).toBuilder() : null;
                                o1 B3 = pVar.B(ListServiceResponse.parser(), f0Var);
                                this.messageResponse_ = B3;
                                if (builder4 != null) {
                                    builder4.i0((ListServiceResponse) B3);
                                    this.messageResponse_ = builder4.I();
                                }
                                this.messageResponseCase_ = 6;
                            } else if (L != 58) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                ErrorResponse.b builder5 = this.messageResponseCase_ == 7 ? ((ErrorResponse) this.messageResponse_).toBuilder() : null;
                                o1 B4 = pVar.B(ErrorResponse.parser(), f0Var);
                                this.messageResponse_ = B4;
                                if (builder5 != null) {
                                    builder5.g0((ErrorResponse) B4);
                                    this.messageResponse_ = builder5.I();
                                }
                                this.messageResponseCase_ = 7;
                            }
                        } else {
                            this.validHost_ = pVar.K();
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

    public static ServerReflectionResponse parseFrom(p pVar) throws IOException {
        return (ServerReflectionResponse) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static ServerReflectionResponse parseFrom(p pVar, f0 f0Var) throws IOException {
        return (ServerReflectionResponse) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
