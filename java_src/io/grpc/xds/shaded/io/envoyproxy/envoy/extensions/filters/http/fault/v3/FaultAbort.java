package io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.http.fault.v3;

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
import io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.FractionalPercent;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class FaultAbort extends GeneratedMessageV3 implements io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.http.fault.v3.a {
    public static final int GRPC_STATUS_FIELD_NUMBER = 5;
    public static final int HEADER_ABORT_FIELD_NUMBER = 4;
    public static final int HTTP_STATUS_FIELD_NUMBER = 2;
    public static final int PERCENTAGE_FIELD_NUMBER = 3;
    private static final long serialVersionUID = 0;
    private int errorTypeCase_;
    private Object errorType_;
    private byte memoizedIsInitialized;
    private FractionalPercent percentage_;
    private static final FaultAbort DEFAULT_INSTANCE = new FaultAbort();
    private static final e2<FaultAbort> PARSER = new a();

    /* loaded from: classes6.dex */
    public enum ErrorTypeCase implements u0.c {
        HTTP_STATUS(2),
        GRPC_STATUS(5),
        HEADER_ABORT(4),
        ERRORTYPE_NOT_SET(0);
        
        private final int value;

        ErrorTypeCase(int i9) {
            this.value = i9;
        }

        public static ErrorTypeCase forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 2) {
                    if (i9 != 4) {
                        if (i9 != 5) {
                            return null;
                        }
                        return GRPC_STATUS;
                    }
                    return HEADER_ABORT;
                }
                return HTTP_STATUS;
            }
            return ERRORTYPE_NOT_SET;
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static ErrorTypeCase valueOf(int i9) {
            return forNumber(i9);
        }
    }

    /* loaded from: classes6.dex */
    public static final class HeaderAbort extends GeneratedMessageV3 implements d {
        private static final HeaderAbort DEFAULT_INSTANCE = new HeaderAbort();
        private static final e2<HeaderAbort> PARSER = new a();
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;

        /* loaded from: classes6.dex */
        class a extends com.google.protobuf.c<HeaderAbort> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public HeaderAbort m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new HeaderAbort(pVar, f0Var, null);
            }
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements d {
            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.http.fault.v3.b.f49724d.d(HeaderAbort.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public HeaderAbort build() {
                HeaderAbort I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public HeaderAbort I() {
                HeaderAbort headerAbort = new HeaderAbort(this, (a) null);
                Q();
                return headerAbort;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public HeaderAbort getDefaultInstanceForType() {
                return HeaderAbort.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: d0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.http.fault.v3.FaultAbort.HeaderAbort.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.http.fault.v3.FaultAbort.HeaderAbort.access$500()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.http.fault.v3.FaultAbort$HeaderAbort r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.http.fault.v3.FaultAbort.HeaderAbort) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.http.fault.v3.FaultAbort$HeaderAbort r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.http.fault.v3.FaultAbort.HeaderAbort) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.http.fault.v3.FaultAbort.HeaderAbort.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.http.fault.v3.FaultAbort$HeaderAbort$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof HeaderAbort) {
                    return g0((HeaderAbort) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b g0(HeaderAbort headerAbort) {
                if (headerAbort == HeaderAbort.getDefaultInstance()) {
                    return this;
                }
                z(((GeneratedMessageV3) headerAbort).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.http.fault.v3.b.f49723c;
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

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: j0 */
            public final b f1(h3 h3Var) {
                return (b) super.f1(h3Var);
            }

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                b0();
            }
        }

        /* synthetic */ HeaderAbort(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static HeaderAbort getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.http.fault.v3.b.f49723c;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static HeaderAbort parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (HeaderAbort) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static HeaderAbort parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<HeaderAbort> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj instanceof HeaderAbort) {
                return this.unknownFields.equals(((HeaderAbort) obj).unknownFields);
            }
            return super.equals(obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<HeaderAbort> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int serializedSize = this.unknownFields.getSerializedSize() + 0;
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
            int hashCode = ((779 + getDescriptor().hashCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode;
            return hashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.http.fault.v3.b.f49724d.d(HeaderAbort.class, b.class);
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
            return new HeaderAbort();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ HeaderAbort(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(HeaderAbort headerAbort) {
            return DEFAULT_INSTANCE.toBuilder().g0(headerAbort);
        }

        public static HeaderAbort parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private HeaderAbort(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static HeaderAbort parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (HeaderAbort) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static HeaderAbort parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public HeaderAbort getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
        }

        public static HeaderAbort parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private HeaderAbort() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static HeaderAbort parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static HeaderAbort parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        private HeaderAbort(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            this();
            Objects.requireNonNull(f0Var);
            h3.b h10 = h3.h();
            boolean z10 = false;
            while (!z10) {
                try {
                    try {
                        try {
                            int L = pVar.L();
                            if (L == 0 || !parseUnknownField(pVar, h10, f0Var, L)) {
                                z10 = true;
                            }
                        } catch (InvalidProtocolBufferException e10) {
                            throw e10.setUnfinishedMessage(this);
                        }
                    } catch (IOException e11) {
                        throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                    }
                } finally {
                    this.unknownFields = h10.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static HeaderAbort parseFrom(InputStream inputStream) throws IOException {
            return (HeaderAbort) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static HeaderAbort parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (HeaderAbort) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static HeaderAbort parseFrom(p pVar) throws IOException {
            return (HeaderAbort) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static HeaderAbort parseFrom(p pVar, f0 f0Var) throws IOException {
            return (HeaderAbort) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<FaultAbort> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public FaultAbort m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new FaultAbort(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f49694a;

        static {
            int[] iArr = new int[ErrorTypeCase.values().length];
            f49694a = iArr;
            try {
                iArr[ErrorTypeCase.HTTP_STATUS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f49694a[ErrorTypeCase.GRPC_STATUS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f49694a[ErrorTypeCase.HEADER_ABORT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f49694a[ErrorTypeCase.ERRORTYPE_NOT_SET.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.http.fault.v3.a {

        /* renamed from: e  reason: collision with root package name */
        private int f49695e;

        /* renamed from: f  reason: collision with root package name */
        private Object f49696f;

        /* renamed from: g  reason: collision with root package name */
        private q2<HeaderAbort, HeaderAbort.b, d> f49697g;

        /* renamed from: h  reason: collision with root package name */
        private FractionalPercent f49698h;

        /* renamed from: i  reason: collision with root package name */
        private q2<FractionalPercent, FractionalPercent.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.b> f49699i;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.http.fault.v3.b.f49722b.d(FaultAbort.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public FaultAbort build() {
            FaultAbort I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public FaultAbort I() {
            FaultAbort faultAbort = new FaultAbort(this, (a) null);
            if (this.f49695e == 2) {
                faultAbort.errorType_ = this.f49696f;
            }
            if (this.f49695e == 5) {
                faultAbort.errorType_ = this.f49696f;
            }
            if (this.f49695e == 4) {
                q2<HeaderAbort, HeaderAbort.b, d> q2Var = this.f49697g;
                if (q2Var == null) {
                    faultAbort.errorType_ = this.f49696f;
                } else {
                    faultAbort.errorType_ = q2Var.b();
                }
            }
            q2<FractionalPercent, FractionalPercent.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.b> q2Var2 = this.f49699i;
            if (q2Var2 == null) {
                faultAbort.percentage_ = this.f49698h;
            } else {
                faultAbort.percentage_ = q2Var2.b();
            }
            faultAbort.errorTypeCase_ = this.f49695e;
            Q();
            return faultAbort;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public FaultAbort getDefaultInstanceForType() {
            return FaultAbort.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.http.fault.v3.FaultAbort.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.http.fault.v3.FaultAbort.access$1500()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.http.fault.v3.FaultAbort r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.http.fault.v3.FaultAbort) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.http.fault.v3.FaultAbort r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.http.fault.v3.FaultAbort) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.http.fault.v3.FaultAbort.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.http.fault.v3.FaultAbort$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public c v(l1 l1Var) {
            if (l1Var instanceof FaultAbort) {
                return g0((FaultAbort) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public c g0(FaultAbort faultAbort) {
            if (faultAbort == FaultAbort.getDefaultInstance()) {
                return this;
            }
            if (faultAbort.hasPercentage()) {
                i0(faultAbort.getPercentage());
            }
            int i9 = b.f49694a[faultAbort.getErrorTypeCase().ordinal()];
            if (i9 == 1) {
                m0(faultAbort.getHttpStatus());
            } else if (i9 == 2) {
                l0(faultAbort.getGrpcStatus());
            } else if (i9 == 3) {
                h0(faultAbort.getHeaderAbort());
            }
            z(((GeneratedMessageV3) faultAbort).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.http.fault.v3.b.f49721a;
        }

        public c h0(HeaderAbort headerAbort) {
            q2<HeaderAbort, HeaderAbort.b, d> q2Var = this.f49697g;
            if (q2Var == null) {
                if (this.f49695e == 4 && this.f49696f != HeaderAbort.getDefaultInstance()) {
                    this.f49696f = HeaderAbort.newBuilder((HeaderAbort) this.f49696f).g0(headerAbort).I();
                } else {
                    this.f49696f = headerAbort;
                }
                R();
            } else {
                if (this.f49695e == 4) {
                    q2Var.e(headerAbort);
                }
                this.f49697g.g(headerAbort);
            }
            this.f49695e = 4;
            return this;
        }

        public c i0(FractionalPercent fractionalPercent) {
            q2<FractionalPercent, FractionalPercent.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.b> q2Var = this.f49699i;
            if (q2Var == null) {
                FractionalPercent fractionalPercent2 = this.f49698h;
                if (fractionalPercent2 != null) {
                    this.f49698h = FractionalPercent.newBuilder(fractionalPercent2).g0(fractionalPercent).I();
                } else {
                    this.f49698h = fractionalPercent;
                }
                R();
            } else {
                q2Var.e(fractionalPercent);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: j0 */
        public final c z(h3 h3Var) {
            return (c) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: k0 */
        public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.c(fieldDescriptor, obj);
        }

        public c l0(int i9) {
            this.f49695e = 5;
            this.f49696f = Integer.valueOf(i9);
            R();
            return this;
        }

        public c m0(int i9) {
            this.f49695e = 2;
            this.f49696f = Integer.valueOf(i9);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: n0 */
        public final c f1(h3 h3Var) {
            return (c) super.f1(h3Var);
        }

        /* synthetic */ c(a aVar) {
            this();
        }

        private c() {
            this.f49695e = 0;
            b0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f49695e = 0;
            b0();
        }
    }

    /* loaded from: classes6.dex */
    public interface d extends r1 {
    }

    /* synthetic */ FaultAbort(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static FaultAbort getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.http.fault.v3.b.f49721a;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static FaultAbort parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (FaultAbort) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static FaultAbort parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<FaultAbort> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof FaultAbort)) {
            return super.equals(obj);
        }
        FaultAbort faultAbort = (FaultAbort) obj;
        if (hasPercentage() != faultAbort.hasPercentage()) {
            return false;
        }
        if ((!hasPercentage() || getPercentage().equals(faultAbort.getPercentage())) && getErrorTypeCase().equals(faultAbort.getErrorTypeCase())) {
            int i9 = this.errorTypeCase_;
            if (i9 != 2) {
                if (i9 != 4) {
                    if (i9 == 5 && getGrpcStatus() != faultAbort.getGrpcStatus()) {
                        return false;
                    }
                } else if (!getHeaderAbort().equals(faultAbort.getHeaderAbort())) {
                    return false;
                }
            } else if (getHttpStatus() != faultAbort.getHttpStatus()) {
                return false;
            }
            return this.unknownFields.equals(faultAbort.unknownFields);
        }
        return false;
    }

    public ErrorTypeCase getErrorTypeCase() {
        return ErrorTypeCase.forNumber(this.errorTypeCase_);
    }

    public int getGrpcStatus() {
        if (this.errorTypeCase_ == 5) {
            return ((Integer) this.errorType_).intValue();
        }
        return 0;
    }

    public HeaderAbort getHeaderAbort() {
        if (this.errorTypeCase_ == 4) {
            return (HeaderAbort) this.errorType_;
        }
        return HeaderAbort.getDefaultInstance();
    }

    public d getHeaderAbortOrBuilder() {
        if (this.errorTypeCase_ == 4) {
            return (HeaderAbort) this.errorType_;
        }
        return HeaderAbort.getDefaultInstance();
    }

    public int getHttpStatus() {
        if (this.errorTypeCase_ == 2) {
            return ((Integer) this.errorType_).intValue();
        }
        return 0;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<FaultAbort> getParserForType() {
        return PARSER;
    }

    public FractionalPercent getPercentage() {
        FractionalPercent fractionalPercent = this.percentage_;
        return fractionalPercent == null ? FractionalPercent.getDefaultInstance() : fractionalPercent;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.b getPercentageOrBuilder() {
        return getPercentage();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int Y = this.errorTypeCase_ == 2 ? 0 + CodedOutputStream.Y(2, ((Integer) this.errorType_).intValue()) : 0;
        if (this.percentage_ != null) {
            Y += CodedOutputStream.G(3, getPercentage());
        }
        if (this.errorTypeCase_ == 4) {
            Y += CodedOutputStream.G(4, (HeaderAbort) this.errorType_);
        }
        if (this.errorTypeCase_ == 5) {
            Y += CodedOutputStream.Y(5, ((Integer) this.errorType_).intValue());
        }
        int serializedSize = Y + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasGrpcStatus() {
        return this.errorTypeCase_ == 5;
    }

    public boolean hasHeaderAbort() {
        return this.errorTypeCase_ == 4;
    }

    public boolean hasHttpStatus() {
        return this.errorTypeCase_ == 2;
    }

    public boolean hasPercentage() {
        return this.percentage_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9;
        int httpStatus;
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasPercentage()) {
            hashCode = (((hashCode * 37) + 3) * 53) + getPercentage().hashCode();
        }
        int i11 = this.errorTypeCase_;
        if (i11 == 2) {
            i9 = ((hashCode * 37) + 2) * 53;
            httpStatus = getHttpStatus();
        } else if (i11 == 4) {
            i9 = ((hashCode * 37) + 4) * 53;
            httpStatus = getHeaderAbort().hashCode();
        } else {
            if (i11 == 5) {
                i9 = ((hashCode * 37) + 5) * 53;
                httpStatus = getGrpcStatus();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }
        hashCode = i9 + httpStatus;
        int hashCode22 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode22;
        return hashCode22;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.http.fault.v3.b.f49722b.d(FaultAbort.class, c.class);
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
        return new FaultAbort();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.errorTypeCase_ == 2) {
            codedOutputStream.c1(2, ((Integer) this.errorType_).intValue());
        }
        if (this.percentage_ != null) {
            codedOutputStream.L0(3, getPercentage());
        }
        if (this.errorTypeCase_ == 4) {
            codedOutputStream.L0(4, (HeaderAbort) this.errorType_);
        }
        if (this.errorTypeCase_ == 5) {
            codedOutputStream.c1(5, ((Integer) this.errorType_).intValue());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ FaultAbort(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(FaultAbort faultAbort) {
        return DEFAULT_INSTANCE.toBuilder().g0(faultAbort);
    }

    public static FaultAbort parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private FaultAbort(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.errorTypeCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static FaultAbort parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (FaultAbort) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static FaultAbort parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public FaultAbort getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).g0(this);
    }

    public static FaultAbort parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    public static FaultAbort parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    private FaultAbort() {
        this.errorTypeCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static FaultAbort parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static FaultAbort parseFrom(InputStream inputStream) throws IOException {
        return (FaultAbort) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private FaultAbort(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            if (L != 16) {
                                if (L == 26) {
                                    FractionalPercent fractionalPercent = this.percentage_;
                                    FractionalPercent.b builder = fractionalPercent != null ? fractionalPercent.toBuilder() : null;
                                    FractionalPercent fractionalPercent2 = (FractionalPercent) pVar.B(FractionalPercent.parser(), f0Var);
                                    this.percentage_ = fractionalPercent2;
                                    if (builder != null) {
                                        builder.g0(fractionalPercent2);
                                        this.percentage_ = builder.I();
                                    }
                                } else if (L == 34) {
                                    HeaderAbort.b builder2 = this.errorTypeCase_ == 4 ? ((HeaderAbort) this.errorType_).toBuilder() : null;
                                    o1 B = pVar.B(HeaderAbort.parser(), f0Var);
                                    this.errorType_ = B;
                                    if (builder2 != null) {
                                        builder2.g0((HeaderAbort) B);
                                        this.errorType_ = builder2.I();
                                    }
                                    this.errorTypeCase_ = 4;
                                } else if (L != 40) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    this.errorType_ = Integer.valueOf(pVar.M());
                                    this.errorTypeCase_ = 5;
                                }
                            } else {
                                this.errorType_ = Integer.valueOf(pVar.M());
                                this.errorTypeCase_ = 2;
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

    public static FaultAbort parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (FaultAbort) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static FaultAbort parseFrom(p pVar) throws IOException {
        return (FaultAbort) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static FaultAbort parseFrom(p pVar, f0 f0Var) throws IOException {
        return (FaultAbort) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
