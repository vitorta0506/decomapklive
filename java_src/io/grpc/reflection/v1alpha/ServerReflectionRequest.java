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
import com.google.protobuf.u0;
import io.grpc.reflection.v1alpha.ExtensionRequest;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class ServerReflectionRequest extends GeneratedMessageV3 implements g {
    public static final int ALL_EXTENSION_NUMBERS_OF_TYPE_FIELD_NUMBER = 6;
    public static final int FILE_BY_FILENAME_FIELD_NUMBER = 3;
    public static final int FILE_CONTAINING_EXTENSION_FIELD_NUMBER = 5;
    public static final int FILE_CONTAINING_SYMBOL_FIELD_NUMBER = 4;
    public static final int HOST_FIELD_NUMBER = 1;
    public static final int LIST_SERVICES_FIELD_NUMBER = 7;
    private static final long serialVersionUID = 0;
    private volatile Object host_;
    private byte memoizedIsInitialized;
    private int messageRequestCase_;
    private Object messageRequest_;
    private static final ServerReflectionRequest DEFAULT_INSTANCE = new ServerReflectionRequest();
    private static final e2<ServerReflectionRequest> PARSER = new a();

    /* loaded from: classes5.dex */
    public enum MessageRequestCase implements u0.c {
        FILE_BY_FILENAME(3),
        FILE_CONTAINING_SYMBOL(4),
        FILE_CONTAINING_EXTENSION(5),
        ALL_EXTENSION_NUMBERS_OF_TYPE(6),
        LIST_SERVICES(7),
        MESSAGEREQUEST_NOT_SET(0);
        
        private final int value;

        MessageRequestCase(int i9) {
            this.value = i9;
        }

        public static MessageRequestCase forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 3) {
                    if (i9 != 4) {
                        if (i9 != 5) {
                            if (i9 != 6) {
                                if (i9 != 7) {
                                    return null;
                                }
                                return LIST_SERVICES;
                            }
                            return ALL_EXTENSION_NUMBERS_OF_TYPE;
                        }
                        return FILE_CONTAINING_EXTENSION;
                    }
                    return FILE_CONTAINING_SYMBOL;
                }
                return FILE_BY_FILENAME;
            }
            return MESSAGEREQUEST_NOT_SET;
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static MessageRequestCase valueOf(int i9) {
            return forNumber(i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends com.google.protobuf.c<ServerReflectionRequest> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public ServerReflectionRequest m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new ServerReflectionRequest(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f45348a;

        static {
            int[] iArr = new int[MessageRequestCase.values().length];
            f45348a = iArr;
            try {
                iArr[MessageRequestCase.FILE_BY_FILENAME.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f45348a[MessageRequestCase.FILE_CONTAINING_SYMBOL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f45348a[MessageRequestCase.FILE_CONTAINING_EXTENSION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f45348a[MessageRequestCase.ALL_EXTENSION_NUMBERS_OF_TYPE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f45348a[MessageRequestCase.LIST_SERVICES.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f45348a[MessageRequestCase.MESSAGEREQUEST_NOT_SET.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* loaded from: classes5.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements g {

        /* renamed from: e  reason: collision with root package name */
        private int f45349e;

        /* renamed from: f  reason: collision with root package name */
        private Object f45350f;

        /* renamed from: g  reason: collision with root package name */
        private Object f45351g;

        /* renamed from: h  reason: collision with root package name */
        private q2<ExtensionRequest, ExtensionRequest.b, io.grpc.reflection.v1alpha.c> f45352h;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return f.f45365b.d(ServerReflectionRequest.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public ServerReflectionRequest build() {
            ServerReflectionRequest I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public ServerReflectionRequest I() {
            ServerReflectionRequest serverReflectionRequest = new ServerReflectionRequest(this, (a) null);
            serverReflectionRequest.host_ = this.f45351g;
            if (this.f45349e == 3) {
                serverReflectionRequest.messageRequest_ = this.f45350f;
            }
            if (this.f45349e == 4) {
                serverReflectionRequest.messageRequest_ = this.f45350f;
            }
            if (this.f45349e == 5) {
                q2<ExtensionRequest, ExtensionRequest.b, io.grpc.reflection.v1alpha.c> q2Var = this.f45352h;
                if (q2Var == null) {
                    serverReflectionRequest.messageRequest_ = this.f45350f;
                } else {
                    serverReflectionRequest.messageRequest_ = q2Var.b();
                }
            }
            if (this.f45349e == 6) {
                serverReflectionRequest.messageRequest_ = this.f45350f;
            }
            if (this.f45349e == 7) {
                serverReflectionRequest.messageRequest_ = this.f45350f;
            }
            serverReflectionRequest.messageRequestCase_ = this.f45349e;
            Q();
            return serverReflectionRequest;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public ServerReflectionRequest getDefaultInstanceForType() {
            return ServerReflectionRequest.getDefaultInstance();
        }

        public c d0(ExtensionRequest extensionRequest) {
            q2<ExtensionRequest, ExtensionRequest.b, io.grpc.reflection.v1alpha.c> q2Var = this.f45352h;
            if (q2Var == null) {
                if (this.f45349e == 5 && this.f45350f != ExtensionRequest.getDefaultInstance()) {
                    this.f45350f = ExtensionRequest.newBuilder((ExtensionRequest) this.f45350f).g0(extensionRequest).I();
                } else {
                    this.f45350f = extensionRequest;
                }
                R();
            } else {
                if (this.f45349e == 5) {
                    q2Var.e(extensionRequest);
                }
                this.f45352h.g(extensionRequest);
            }
            this.f45349e = 5;
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.reflection.v1alpha.ServerReflectionRequest.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.reflection.v1alpha.ServerReflectionRequest.access$800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.reflection.v1alpha.ServerReflectionRequest r3 = (io.grpc.reflection.v1alpha.ServerReflectionRequest) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.reflection.v1alpha.ServerReflectionRequest r4 = (io.grpc.reflection.v1alpha.ServerReflectionRequest) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.reflection.v1alpha.ServerReflectionRequest.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.reflection.v1alpha.ServerReflectionRequest$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        public c v(l1 l1Var) {
            if (l1Var instanceof ServerReflectionRequest) {
                return h0((ServerReflectionRequest) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return f.f45364a;
        }

        public c h0(ServerReflectionRequest serverReflectionRequest) {
            if (serverReflectionRequest == ServerReflectionRequest.getDefaultInstance()) {
                return this;
            }
            if (!serverReflectionRequest.getHost().isEmpty()) {
                this.f45351g = serverReflectionRequest.host_;
                R();
            }
            int i9 = b.f45348a[serverReflectionRequest.getMessageRequestCase().ordinal()];
            if (i9 == 1) {
                this.f45349e = 3;
                this.f45350f = serverReflectionRequest.messageRequest_;
                R();
            } else if (i9 == 2) {
                this.f45349e = 4;
                this.f45350f = serverReflectionRequest.messageRequest_;
                R();
            } else if (i9 == 3) {
                d0(serverReflectionRequest.getFileContainingExtension());
            } else if (i9 == 4) {
                this.f45349e = 6;
                this.f45350f = serverReflectionRequest.messageRequest_;
                R();
            } else if (i9 == 5) {
                this.f45349e = 7;
                this.f45350f = serverReflectionRequest.messageRequest_;
                R();
            }
            z(((GeneratedMessageV3) serverReflectionRequest).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public final c z(h3 h3Var) {
            return (c) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: j0 */
        public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.c(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: k0 */
        public final c f1(h3 h3Var) {
            return (c) super.f1(h3Var);
        }

        /* synthetic */ c(a aVar) {
            this();
        }

        private c() {
            this.f45349e = 0;
            this.f45351g = "";
            b0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f45349e = 0;
            this.f45351g = "";
            b0();
        }
    }

    /* synthetic */ ServerReflectionRequest(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static ServerReflectionRequest getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return f.f45364a;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static ServerReflectionRequest parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (ServerReflectionRequest) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static ServerReflectionRequest parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<ServerReflectionRequest> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ServerReflectionRequest)) {
            return super.equals(obj);
        }
        ServerReflectionRequest serverReflectionRequest = (ServerReflectionRequest) obj;
        if (getHost().equals(serverReflectionRequest.getHost()) && getMessageRequestCase().equals(serverReflectionRequest.getMessageRequestCase())) {
            int i9 = this.messageRequestCase_;
            if (i9 != 3) {
                if (i9 != 4) {
                    if (i9 != 5) {
                        if (i9 != 6) {
                            if (i9 == 7 && !getListServices().equals(serverReflectionRequest.getListServices())) {
                                return false;
                            }
                        } else if (!getAllExtensionNumbersOfType().equals(serverReflectionRequest.getAllExtensionNumbersOfType())) {
                            return false;
                        }
                    } else if (!getFileContainingExtension().equals(serverReflectionRequest.getFileContainingExtension())) {
                        return false;
                    }
                } else if (!getFileContainingSymbol().equals(serverReflectionRequest.getFileContainingSymbol())) {
                    return false;
                }
            } else if (!getFileByFilename().equals(serverReflectionRequest.getFileByFilename())) {
                return false;
            }
            return this.unknownFields.equals(serverReflectionRequest.unknownFields);
        }
        return false;
    }

    public String getAllExtensionNumbersOfType() {
        String str = this.messageRequestCase_ == 6 ? this.messageRequest_ : "";
        if (str instanceof String) {
            return (String) str;
        }
        String stringUtf8 = ((ByteString) str).toStringUtf8();
        if (this.messageRequestCase_ == 6) {
            this.messageRequest_ = stringUtf8;
        }
        return stringUtf8;
    }

    public ByteString getAllExtensionNumbersOfTypeBytes() {
        String str = this.messageRequestCase_ == 6 ? this.messageRequest_ : "";
        if (str instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) str);
            if (this.messageRequestCase_ == 6) {
                this.messageRequest_ = copyFromUtf8;
            }
            return copyFromUtf8;
        }
        return (ByteString) str;
    }

    public String getFileByFilename() {
        String str = this.messageRequestCase_ == 3 ? this.messageRequest_ : "";
        if (str instanceof String) {
            return (String) str;
        }
        String stringUtf8 = ((ByteString) str).toStringUtf8();
        if (this.messageRequestCase_ == 3) {
            this.messageRequest_ = stringUtf8;
        }
        return stringUtf8;
    }

    public ByteString getFileByFilenameBytes() {
        String str = this.messageRequestCase_ == 3 ? this.messageRequest_ : "";
        if (str instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) str);
            if (this.messageRequestCase_ == 3) {
                this.messageRequest_ = copyFromUtf8;
            }
            return copyFromUtf8;
        }
        return (ByteString) str;
    }

    public ExtensionRequest getFileContainingExtension() {
        if (this.messageRequestCase_ == 5) {
            return (ExtensionRequest) this.messageRequest_;
        }
        return ExtensionRequest.getDefaultInstance();
    }

    public io.grpc.reflection.v1alpha.c getFileContainingExtensionOrBuilder() {
        if (this.messageRequestCase_ == 5) {
            return (ExtensionRequest) this.messageRequest_;
        }
        return ExtensionRequest.getDefaultInstance();
    }

    public String getFileContainingSymbol() {
        String str = this.messageRequestCase_ == 4 ? this.messageRequest_ : "";
        if (str instanceof String) {
            return (String) str;
        }
        String stringUtf8 = ((ByteString) str).toStringUtf8();
        if (this.messageRequestCase_ == 4) {
            this.messageRequest_ = stringUtf8;
        }
        return stringUtf8;
    }

    public ByteString getFileContainingSymbolBytes() {
        String str = this.messageRequestCase_ == 4 ? this.messageRequest_ : "";
        if (str instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) str);
            if (this.messageRequestCase_ == 4) {
                this.messageRequest_ = copyFromUtf8;
            }
            return copyFromUtf8;
        }
        return (ByteString) str;
    }

    public String getHost() {
        Object obj = this.host_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.host_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getHostBytes() {
        Object obj = this.host_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.host_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public String getListServices() {
        String str = this.messageRequestCase_ == 7 ? this.messageRequest_ : "";
        if (str instanceof String) {
            return (String) str;
        }
        String stringUtf8 = ((ByteString) str).toStringUtf8();
        if (this.messageRequestCase_ == 7) {
            this.messageRequest_ = stringUtf8;
        }
        return stringUtf8;
    }

    public ByteString getListServicesBytes() {
        String str = this.messageRequestCase_ == 7 ? this.messageRequest_ : "";
        if (str instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) str);
            if (this.messageRequestCase_ == 7) {
                this.messageRequest_ = copyFromUtf8;
            }
            return copyFromUtf8;
        }
        return (ByteString) str;
    }

    public MessageRequestCase getMessageRequestCase() {
        return MessageRequestCase.forNumber(this.messageRequestCase_);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<ServerReflectionRequest> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = GeneratedMessageV3.isStringEmpty(this.host_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.host_);
        if (this.messageRequestCase_ == 3) {
            computeStringSize += GeneratedMessageV3.computeStringSize(3, this.messageRequest_);
        }
        if (this.messageRequestCase_ == 4) {
            computeStringSize += GeneratedMessageV3.computeStringSize(4, this.messageRequest_);
        }
        if (this.messageRequestCase_ == 5) {
            computeStringSize += CodedOutputStream.G(5, (ExtensionRequest) this.messageRequest_);
        }
        if (this.messageRequestCase_ == 6) {
            computeStringSize += GeneratedMessageV3.computeStringSize(6, this.messageRequest_);
        }
        if (this.messageRequestCase_ == 7) {
            computeStringSize += GeneratedMessageV3.computeStringSize(7, this.messageRequest_);
        }
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasAllExtensionNumbersOfType() {
        return this.messageRequestCase_ == 6;
    }

    public boolean hasFileByFilename() {
        return this.messageRequestCase_ == 3;
    }

    public boolean hasFileContainingExtension() {
        return this.messageRequestCase_ == 5;
    }

    public boolean hasFileContainingSymbol() {
        return this.messageRequestCase_ == 4;
    }

    public boolean hasListServices() {
        return this.messageRequestCase_ == 7;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9;
        int hashCode;
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int hashCode2 = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getHost().hashCode();
        int i11 = this.messageRequestCase_;
        if (i11 == 3) {
            i9 = ((hashCode2 * 37) + 3) * 53;
            hashCode = getFileByFilename().hashCode();
        } else if (i11 == 4) {
            i9 = ((hashCode2 * 37) + 4) * 53;
            hashCode = getFileContainingSymbol().hashCode();
        } else if (i11 == 5) {
            i9 = ((hashCode2 * 37) + 5) * 53;
            hashCode = getFileContainingExtension().hashCode();
        } else if (i11 == 6) {
            i9 = ((hashCode2 * 37) + 6) * 53;
            hashCode = getAllExtensionNumbersOfType().hashCode();
        } else {
            if (i11 == 7) {
                i9 = ((hashCode2 * 37) + 7) * 53;
                hashCode = getListServices().hashCode();
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
        return f.f45365b.d(ServerReflectionRequest.class, c.class);
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
        return new ServerReflectionRequest();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.host_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.host_);
        }
        if (this.messageRequestCase_ == 3) {
            GeneratedMessageV3.writeString(codedOutputStream, 3, this.messageRequest_);
        }
        if (this.messageRequestCase_ == 4) {
            GeneratedMessageV3.writeString(codedOutputStream, 4, this.messageRequest_);
        }
        if (this.messageRequestCase_ == 5) {
            codedOutputStream.L0(5, (ExtensionRequest) this.messageRequest_);
        }
        if (this.messageRequestCase_ == 6) {
            GeneratedMessageV3.writeString(codedOutputStream, 6, this.messageRequest_);
        }
        if (this.messageRequestCase_ == 7) {
            GeneratedMessageV3.writeString(codedOutputStream, 7, this.messageRequest_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ ServerReflectionRequest(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(ServerReflectionRequest serverReflectionRequest) {
        return DEFAULT_INSTANCE.toBuilder().h0(serverReflectionRequest);
    }

    public static ServerReflectionRequest parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private ServerReflectionRequest(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.messageRequestCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static ServerReflectionRequest parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ServerReflectionRequest) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static ServerReflectionRequest parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public ServerReflectionRequest getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).h0(this);
    }

    public static ServerReflectionRequest parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    public static ServerReflectionRequest parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    private ServerReflectionRequest() {
        this.messageRequestCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
        this.host_ = "";
    }

    public static ServerReflectionRequest parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static ServerReflectionRequest parseFrom(InputStream inputStream) throws IOException {
        return (ServerReflectionRequest) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static ServerReflectionRequest parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ServerReflectionRequest) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    private ServerReflectionRequest(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            this.host_ = pVar.K();
                        } else if (L == 26) {
                            String K = pVar.K();
                            this.messageRequestCase_ = 3;
                            this.messageRequest_ = K;
                        } else if (L == 34) {
                            String K2 = pVar.K();
                            this.messageRequestCase_ = 4;
                            this.messageRequest_ = K2;
                        } else if (L == 42) {
                            ExtensionRequest.b builder = this.messageRequestCase_ == 5 ? ((ExtensionRequest) this.messageRequest_).toBuilder() : null;
                            o1 B = pVar.B(ExtensionRequest.parser(), f0Var);
                            this.messageRequest_ = B;
                            if (builder != null) {
                                builder.g0((ExtensionRequest) B);
                                this.messageRequest_ = builder.I();
                            }
                            this.messageRequestCase_ = 5;
                        } else if (L == 50) {
                            String K3 = pVar.K();
                            this.messageRequestCase_ = 6;
                            this.messageRequest_ = K3;
                        } else if (L != 58) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            String K4 = pVar.K();
                            this.messageRequestCase_ = 7;
                            this.messageRequest_ = K4;
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

    public static ServerReflectionRequest parseFrom(p pVar) throws IOException {
        return (ServerReflectionRequest) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static ServerReflectionRequest parseFrom(p pVar, f0 f0Var) throws IOException {
        return (ServerReflectionRequest) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
